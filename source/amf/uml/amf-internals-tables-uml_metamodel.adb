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

package body AMF.Internals.Tables.UML_Metamodel is

   ----------------
   -- MM_UML_UML --
   ----------------

   function MM_UML_UML return AMF.Internals.CMOF_Element is
   begin
      return Base + 1285;
   end MM_UML_UML;

   -----------------------------
   -- MC_UML_Aggregation_Kind --
   -----------------------------

   function MC_UML_Aggregation_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 4679;
   end MC_UML_Aggregation_Kind;

   ----------------------------------
   -- MC_UML_Call_Concurrency_Kind --
   ----------------------------------

   function MC_UML_Call_Concurrency_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 4687;
   end MC_UML_Call_Concurrency_Kind;

   ---------------------------
   -- MC_UML_Connector_Kind --
   ---------------------------

   function MC_UML_Connector_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 4695;
   end MC_UML_Connector_Kind;

   ---------------------------
   -- MC_UML_Expansion_Kind --
   ---------------------------

   function MC_UML_Expansion_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 4701;
   end MC_UML_Expansion_Kind;

   --------------------------------------
   -- MC_UML_Interaction_Operator_Kind --
   --------------------------------------

   function MC_UML_Interaction_Operator_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 4709;
   end MC_UML_Interaction_Operator_Kind;

   -------------------------
   -- MC_UML_Message_Kind --
   -------------------------

   function MC_UML_Message_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 4735;
   end MC_UML_Message_Kind;

   -------------------------
   -- MC_UML_Message_Sort --
   -------------------------

   function MC_UML_Message_Sort return AMF.Internals.CMOF_Element is
   begin
      return Base + 4745;
   end MC_UML_Message_Sort;

   --------------------------------------
   -- MC_UML_Object_Node_Ordering_Kind --
   --------------------------------------

   function MC_UML_Object_Node_Ordering_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 4759;
   end MC_UML_Object_Node_Ordering_Kind;

   -------------------------------------
   -- MC_UML_Parameter_Direction_Kind --
   -------------------------------------

   function MC_UML_Parameter_Direction_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 4769;
   end MC_UML_Parameter_Direction_Kind;

   ----------------------------------
   -- MC_UML_Parameter_Effect_Kind --
   ----------------------------------

   function MC_UML_Parameter_Effect_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 4779;
   end MC_UML_Parameter_Effect_Kind;

   -----------------------------
   -- MC_UML_Pseudostate_Kind --
   -----------------------------

   function MC_UML_Pseudostate_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 4789;
   end MC_UML_Pseudostate_Kind;

   ----------------------------
   -- MC_UML_Transition_Kind --
   ----------------------------

   function MC_UML_Transition_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 4811;
   end MC_UML_Transition_Kind;

   ----------------------------
   -- MC_UML_Visibility_Kind --
   ----------------------------

   function MC_UML_Visibility_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 4819;
   end MC_UML_Visibility_Kind;

   ------------------------
   -- MC_UML_Abstraction --
   ------------------------

   function MC_UML_Abstraction return AMF.Internals.CMOF_Element is
   begin
      return Base + 1;
   end MC_UML_Abstraction;

   -------------------------------
   -- MC_UML_Accept_Call_Action --
   -------------------------------

   function MC_UML_Accept_Call_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 2;
   end MC_UML_Accept_Call_Action;

   --------------------------------
   -- MC_UML_Accept_Event_Action --
   --------------------------------

   function MC_UML_Accept_Event_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 3;
   end MC_UML_Accept_Event_Action;

   -------------------
   -- MC_UML_Action --
   -------------------

   function MC_UML_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 4;
   end MC_UML_Action;

   -------------------------------------------
   -- MC_UML_Action_Execution_Specification --
   -------------------------------------------

   function MC_UML_Action_Execution_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 5;
   end MC_UML_Action_Execution_Specification;

   -----------------------------
   -- MC_UML_Action_Input_Pin --
   -----------------------------

   function MC_UML_Action_Input_Pin return AMF.Internals.CMOF_Element is
   begin
      return Base + 6;
   end MC_UML_Action_Input_Pin;

   ---------------------
   -- MC_UML_Activity --
   ---------------------

   function MC_UML_Activity return AMF.Internals.CMOF_Element is
   begin
      return Base + 7;
   end MC_UML_Activity;

   --------------------------
   -- MC_UML_Activity_Edge --
   --------------------------

   function MC_UML_Activity_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 8;
   end MC_UML_Activity_Edge;

   --------------------------------
   -- MC_UML_Activity_Final_Node --
   --------------------------------

   function MC_UML_Activity_Final_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 9;
   end MC_UML_Activity_Final_Node;

   ---------------------------
   -- MC_UML_Activity_Group --
   ---------------------------

   function MC_UML_Activity_Group return AMF.Internals.CMOF_Element is
   begin
      return Base + 10;
   end MC_UML_Activity_Group;

   --------------------------
   -- MC_UML_Activity_Node --
   --------------------------

   function MC_UML_Activity_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 11;
   end MC_UML_Activity_Node;

   ------------------------------------
   -- MC_UML_Activity_Parameter_Node --
   ------------------------------------

   function MC_UML_Activity_Parameter_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 12;
   end MC_UML_Activity_Parameter_Node;

   -------------------------------
   -- MC_UML_Activity_Partition --
   -------------------------------

   function MC_UML_Activity_Partition return AMF.Internals.CMOF_Element is
   begin
      return Base + 13;
   end MC_UML_Activity_Partition;

   ------------------
   -- MC_UML_Actor --
   ------------------

   function MC_UML_Actor return AMF.Internals.CMOF_Element is
   begin
      return Base + 14;
   end MC_UML_Actor;

   ------------------------------------------------
   -- MC_UML_Add_Structural_Feature_Value_Action --
   ------------------------------------------------

   function MC_UML_Add_Structural_Feature_Value_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 15;
   end MC_UML_Add_Structural_Feature_Value_Action;

   --------------------------------------
   -- MC_UML_Add_Variable_Value_Action --
   --------------------------------------

   function MC_UML_Add_Variable_Value_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 16;
   end MC_UML_Add_Variable_Value_Action;

   ------------------------------
   -- MC_UML_Any_Receive_Event --
   ------------------------------

   function MC_UML_Any_Receive_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 17;
   end MC_UML_Any_Receive_Event;

   ---------------------
   -- MC_UML_Artifact --
   ---------------------

   function MC_UML_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 18;
   end MC_UML_Artifact;

   ------------------------
   -- MC_UML_Association --
   ------------------------

   function MC_UML_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 19;
   end MC_UML_Association;

   ------------------------------
   -- MC_UML_Association_Class --
   ------------------------------

   function MC_UML_Association_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 20;
   end MC_UML_Association_Class;

   ---------------------
   -- MC_UML_Behavior --
   ---------------------

   function MC_UML_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 21;
   end MC_UML_Behavior;

   ---------------------------------------------
   -- MC_UML_Behavior_Execution_Specification --
   ---------------------------------------------

   function MC_UML_Behavior_Execution_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 22;
   end MC_UML_Behavior_Execution_Specification;

   -------------------------------
   -- MC_UML_Behavioral_Feature --
   -------------------------------

   function MC_UML_Behavioral_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 23;
   end MC_UML_Behavioral_Feature;

   ----------------------------------
   -- MC_UML_Behaviored_Classifier --
   ----------------------------------

   function MC_UML_Behaviored_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 24;
   end MC_UML_Behaviored_Classifier;

   ------------------------------------
   -- MC_UML_Broadcast_Signal_Action --
   ------------------------------------

   function MC_UML_Broadcast_Signal_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 25;
   end MC_UML_Broadcast_Signal_Action;

   ------------------------
   -- MC_UML_Call_Action --
   ------------------------

   function MC_UML_Call_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 26;
   end MC_UML_Call_Action;

   ---------------------------------
   -- MC_UML_Call_Behavior_Action --
   ---------------------------------

   function MC_UML_Call_Behavior_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 27;
   end MC_UML_Call_Behavior_Action;

   -----------------------
   -- MC_UML_Call_Event --
   -----------------------

   function MC_UML_Call_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 28;
   end MC_UML_Call_Event;

   ----------------------------------
   -- MC_UML_Call_Operation_Action --
   ----------------------------------

   function MC_UML_Call_Operation_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 29;
   end MC_UML_Call_Operation_Action;

   --------------------------------
   -- MC_UML_Central_Buffer_Node --
   --------------------------------

   function MC_UML_Central_Buffer_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 30;
   end MC_UML_Central_Buffer_Node;

   -------------------------
   -- MC_UML_Change_Event --
   -------------------------

   function MC_UML_Change_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 31;
   end MC_UML_Change_Event;

   ------------------
   -- MC_UML_Class --
   ------------------

   function MC_UML_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 32;
   end MC_UML_Class;

   -----------------------
   -- MC_UML_Classifier --
   -----------------------

   function MC_UML_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 33;
   end MC_UML_Classifier;

   ------------------------------------------
   -- MC_UML_Classifier_Template_Parameter --
   ------------------------------------------

   function MC_UML_Classifier_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 34;
   end MC_UML_Classifier_Template_Parameter;

   -------------------
   -- MC_UML_Clause --
   -------------------

   function MC_UML_Clause return AMF.Internals.CMOF_Element is
   begin
      return Base + 35;
   end MC_UML_Clause;

   -------------------------------------
   -- MC_UML_Clear_Association_Action --
   -------------------------------------

   function MC_UML_Clear_Association_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 36;
   end MC_UML_Clear_Association_Action;

   --------------------------------------------
   -- MC_UML_Clear_Structural_Feature_Action --
   --------------------------------------------

   function MC_UML_Clear_Structural_Feature_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 37;
   end MC_UML_Clear_Structural_Feature_Action;

   ----------------------------------
   -- MC_UML_Clear_Variable_Action --
   ----------------------------------

   function MC_UML_Clear_Variable_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 38;
   end MC_UML_Clear_Variable_Action;

   --------------------------
   -- MC_UML_Collaboration --
   --------------------------

   function MC_UML_Collaboration return AMF.Internals.CMOF_Element is
   begin
      return Base + 39;
   end MC_UML_Collaboration;

   ------------------------------
   -- MC_UML_Collaboration_Use --
   ------------------------------

   function MC_UML_Collaboration_Use return AMF.Internals.CMOF_Element is
   begin
      return Base + 40;
   end MC_UML_Collaboration_Use;

   ------------------------------
   -- MC_UML_Combined_Fragment --
   ------------------------------

   function MC_UML_Combined_Fragment return AMF.Internals.CMOF_Element is
   begin
      return Base + 41;
   end MC_UML_Combined_Fragment;

   --------------------
   -- MC_UML_Comment --
   --------------------

   function MC_UML_Comment return AMF.Internals.CMOF_Element is
   begin
      return Base + 42;
   end MC_UML_Comment;

   -------------------------------
   -- MC_UML_Communication_Path --
   -------------------------------

   function MC_UML_Communication_Path return AMF.Internals.CMOF_Element is
   begin
      return Base + 43;
   end MC_UML_Communication_Path;

   ----------------------
   -- MC_UML_Component --
   ----------------------

   function MC_UML_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 44;
   end MC_UML_Component;

   ----------------------------------
   -- MC_UML_Component_Realization --
   ----------------------------------

   function MC_UML_Component_Realization return AMF.Internals.CMOF_Element is
   begin
      return Base + 45;
   end MC_UML_Component_Realization;

   -----------------------------
   -- MC_UML_Conditional_Node --
   -----------------------------

   function MC_UML_Conditional_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 46;
   end MC_UML_Conditional_Node;

   --------------------------------
   -- MC_UML_Connectable_Element --
   --------------------------------

   function MC_UML_Connectable_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 47;
   end MC_UML_Connectable_Element;

   ---------------------------------------------------
   -- MC_UML_Connectable_Element_Template_Parameter --
   ---------------------------------------------------

   function MC_UML_Connectable_Element_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 48;
   end MC_UML_Connectable_Element_Template_Parameter;

   ---------------------------------------
   -- MC_UML_Connection_Point_Reference --
   ---------------------------------------

   function MC_UML_Connection_Point_Reference return AMF.Internals.CMOF_Element is
   begin
      return Base + 49;
   end MC_UML_Connection_Point_Reference;

   ----------------------
   -- MC_UML_Connector --
   ----------------------

   function MC_UML_Connector return AMF.Internals.CMOF_Element is
   begin
      return Base + 50;
   end MC_UML_Connector;

   --------------------------
   -- MC_UML_Connector_End --
   --------------------------

   function MC_UML_Connector_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 51;
   end MC_UML_Connector_End;

   -------------------------------------
   -- MC_UML_Consider_Ignore_Fragment --
   -------------------------------------

   function MC_UML_Consider_Ignore_Fragment return AMF.Internals.CMOF_Element is
   begin
      return Base + 52;
   end MC_UML_Consider_Ignore_Fragment;

   -----------------------
   -- MC_UML_Constraint --
   -----------------------

   function MC_UML_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 53;
   end MC_UML_Constraint;

   -------------------------
   -- MC_UML_Continuation --
   -------------------------

   function MC_UML_Continuation return AMF.Internals.CMOF_Element is
   begin
      return Base + 54;
   end MC_UML_Continuation;

   -------------------------
   -- MC_UML_Control_Flow --
   -------------------------

   function MC_UML_Control_Flow return AMF.Internals.CMOF_Element is
   begin
      return Base + 55;
   end MC_UML_Control_Flow;

   -------------------------
   -- MC_UML_Control_Node --
   -------------------------

   function MC_UML_Control_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 56;
   end MC_UML_Control_Node;

   -------------------------------
   -- MC_UML_Create_Link_Action --
   -------------------------------

   function MC_UML_Create_Link_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 57;
   end MC_UML_Create_Link_Action;

   --------------------------------------
   -- MC_UML_Create_Link_Object_Action --
   --------------------------------------

   function MC_UML_Create_Link_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 58;
   end MC_UML_Create_Link_Object_Action;

   ---------------------------------
   -- MC_UML_Create_Object_Action --
   ---------------------------------

   function MC_UML_Create_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 59;
   end MC_UML_Create_Object_Action;

   ----------------------------
   -- MC_UML_Data_Store_Node --
   ----------------------------

   function MC_UML_Data_Store_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 60;
   end MC_UML_Data_Store_Node;

   ----------------------
   -- MC_UML_Data_Type --
   ----------------------

   function MC_UML_Data_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 61;
   end MC_UML_Data_Type;

   --------------------------
   -- MC_UML_Decision_Node --
   --------------------------

   function MC_UML_Decision_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 62;
   end MC_UML_Decision_Node;

   -----------------------
   -- MC_UML_Dependency --
   -----------------------

   function MC_UML_Dependency return AMF.Internals.CMOF_Element is
   begin
      return Base + 63;
   end MC_UML_Dependency;

   ------------------------------
   -- MC_UML_Deployed_Artifact --
   ------------------------------

   function MC_UML_Deployed_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 64;
   end MC_UML_Deployed_Artifact;

   -----------------------
   -- MC_UML_Deployment --
   -----------------------

   function MC_UML_Deployment return AMF.Internals.CMOF_Element is
   begin
      return Base + 65;
   end MC_UML_Deployment;

   -------------------------------------
   -- MC_UML_Deployment_Specification --
   -------------------------------------

   function MC_UML_Deployment_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 66;
   end MC_UML_Deployment_Specification;

   ------------------------------
   -- MC_UML_Deployment_Target --
   ------------------------------

   function MC_UML_Deployment_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 67;
   end MC_UML_Deployment_Target;

   --------------------------------
   -- MC_UML_Destroy_Link_Action --
   --------------------------------

   function MC_UML_Destroy_Link_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 68;
   end MC_UML_Destroy_Link_Action;

   ----------------------------------
   -- MC_UML_Destroy_Object_Action --
   ----------------------------------

   function MC_UML_Destroy_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 69;
   end MC_UML_Destroy_Object_Action;

   -------------------------------------------------
   -- MC_UML_Destruction_Occurrence_Specification --
   -------------------------------------------------

   function MC_UML_Destruction_Occurrence_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 70;
   end MC_UML_Destruction_Occurrence_Specification;

   -------------------
   -- MC_UML_Device --
   -------------------

   function MC_UML_Device return AMF.Internals.CMOF_Element is
   begin
      return Base + 71;
   end MC_UML_Device;

   ----------------------------------
   -- MC_UML_Directed_Relationship --
   ----------------------------------

   function MC_UML_Directed_Relationship return AMF.Internals.CMOF_Element is
   begin
      return Base + 72;
   end MC_UML_Directed_Relationship;

   ---------------------
   -- MC_UML_Duration --
   ---------------------

   function MC_UML_Duration return AMF.Internals.CMOF_Element is
   begin
      return Base + 73;
   end MC_UML_Duration;

   --------------------------------
   -- MC_UML_Duration_Constraint --
   --------------------------------

   function MC_UML_Duration_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 74;
   end MC_UML_Duration_Constraint;

   ------------------------------
   -- MC_UML_Duration_Interval --
   ------------------------------

   function MC_UML_Duration_Interval return AMF.Internals.CMOF_Element is
   begin
      return Base + 75;
   end MC_UML_Duration_Interval;

   ---------------------------------
   -- MC_UML_Duration_Observation --
   ---------------------------------

   function MC_UML_Duration_Observation return AMF.Internals.CMOF_Element is
   begin
      return Base + 76;
   end MC_UML_Duration_Observation;

   --------------------
   -- MC_UML_Element --
   --------------------

   function MC_UML_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 77;
   end MC_UML_Element;

   ---------------------------
   -- MC_UML_Element_Import --
   ---------------------------

   function MC_UML_Element_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 78;
   end MC_UML_Element_Import;

   ------------------------------------
   -- MC_UML_Encapsulated_Classifier --
   ------------------------------------

   function MC_UML_Encapsulated_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 79;
   end MC_UML_Encapsulated_Classifier;

   ------------------------
   -- MC_UML_Enumeration --
   ------------------------

   function MC_UML_Enumeration return AMF.Internals.CMOF_Element is
   begin
      return Base + 80;
   end MC_UML_Enumeration;

   --------------------------------
   -- MC_UML_Enumeration_Literal --
   --------------------------------

   function MC_UML_Enumeration_Literal return AMF.Internals.CMOF_Element is
   begin
      return Base + 81;
   end MC_UML_Enumeration_Literal;

   ------------------
   -- MC_UML_Event --
   ------------------

   function MC_UML_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 82;
   end MC_UML_Event;

   ------------------------------
   -- MC_UML_Exception_Handler --
   ------------------------------

   function MC_UML_Exception_Handler return AMF.Internals.CMOF_Element is
   begin
      return Base + 83;
   end MC_UML_Exception_Handler;

   ----------------------------
   -- MC_UML_Executable_Node --
   ----------------------------

   function MC_UML_Executable_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 84;
   end MC_UML_Executable_Node;

   ----------------------------------
   -- MC_UML_Execution_Environment --
   ----------------------------------

   function MC_UML_Execution_Environment return AMF.Internals.CMOF_Element is
   begin
      return Base + 85;
   end MC_UML_Execution_Environment;

   -----------------------------------------------
   -- MC_UML_Execution_Occurrence_Specification --
   -----------------------------------------------

   function MC_UML_Execution_Occurrence_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 86;
   end MC_UML_Execution_Occurrence_Specification;

   ------------------------------------
   -- MC_UML_Execution_Specification --
   ------------------------------------

   function MC_UML_Execution_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 87;
   end MC_UML_Execution_Specification;

   ---------------------------
   -- MC_UML_Expansion_Node --
   ---------------------------

   function MC_UML_Expansion_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 88;
   end MC_UML_Expansion_Node;

   -----------------------------
   -- MC_UML_Expansion_Region --
   -----------------------------

   function MC_UML_Expansion_Region return AMF.Internals.CMOF_Element is
   begin
      return Base + 89;
   end MC_UML_Expansion_Region;

   -----------------------
   -- MC_UML_Expression --
   -----------------------

   function MC_UML_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 90;
   end MC_UML_Expression;

   -------------------
   -- MC_UML_Extend --
   -------------------

   function MC_UML_Extend return AMF.Internals.CMOF_Element is
   begin
      return Base + 91;
   end MC_UML_Extend;

   ----------------------
   -- MC_UML_Extension --
   ----------------------

   function MC_UML_Extension return AMF.Internals.CMOF_Element is
   begin
      return Base + 92;
   end MC_UML_Extension;

   --------------------------
   -- MC_UML_Extension_End --
   --------------------------

   function MC_UML_Extension_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 93;
   end MC_UML_Extension_End;

   ----------------------------
   -- MC_UML_Extension_Point --
   ----------------------------

   function MC_UML_Extension_Point return AMF.Internals.CMOF_Element is
   begin
      return Base + 94;
   end MC_UML_Extension_Point;

   --------------------
   -- MC_UML_Feature --
   --------------------

   function MC_UML_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 95;
   end MC_UML_Feature;

   -----------------------
   -- MC_UML_Final_Node --
   -----------------------

   function MC_UML_Final_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 96;
   end MC_UML_Final_Node;

   ------------------------
   -- MC_UML_Final_State --
   ------------------------

   function MC_UML_Final_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 97;
   end MC_UML_Final_State;

   ----------------------------
   -- MC_UML_Flow_Final_Node --
   ----------------------------

   function MC_UML_Flow_Final_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 98;
   end MC_UML_Flow_Final_Node;

   ----------------------
   -- MC_UML_Fork_Node --
   ----------------------

   function MC_UML_Fork_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 99;
   end MC_UML_Fork_Node;

   ------------------------------
   -- MC_UML_Function_Behavior --
   ------------------------------

   function MC_UML_Function_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 100;
   end MC_UML_Function_Behavior;

   -----------------
   -- MC_UML_Gate --
   -----------------

   function MC_UML_Gate return AMF.Internals.CMOF_Element is
   begin
      return Base + 101;
   end MC_UML_Gate;

   -----------------------------
   -- MC_UML_General_Ordering --
   -----------------------------

   function MC_UML_General_Ordering return AMF.Internals.CMOF_Element is
   begin
      return Base + 102;
   end MC_UML_General_Ordering;

   ---------------------------
   -- MC_UML_Generalization --
   ---------------------------

   function MC_UML_Generalization return AMF.Internals.CMOF_Element is
   begin
      return Base + 103;
   end MC_UML_Generalization;

   -------------------------------
   -- MC_UML_Generalization_Set --
   -------------------------------

   function MC_UML_Generalization_Set return AMF.Internals.CMOF_Element is
   begin
      return Base + 104;
   end MC_UML_Generalization_Set;

   ------------------
   -- MC_UML_Image --
   ------------------

   function MC_UML_Image return AMF.Internals.CMOF_Element is
   begin
      return Base + 105;
   end MC_UML_Image;

   --------------------
   -- MC_UML_Include --
   --------------------

   function MC_UML_Include return AMF.Internals.CMOF_Element is
   begin
      return Base + 106;
   end MC_UML_Include;

   -----------------------------
   -- MC_UML_Information_Flow --
   -----------------------------

   function MC_UML_Information_Flow return AMF.Internals.CMOF_Element is
   begin
      return Base + 107;
   end MC_UML_Information_Flow;

   -----------------------------
   -- MC_UML_Information_Item --
   -----------------------------

   function MC_UML_Information_Item return AMF.Internals.CMOF_Element is
   begin
      return Base + 108;
   end MC_UML_Information_Item;

   -------------------------
   -- MC_UML_Initial_Node --
   -------------------------

   function MC_UML_Initial_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 109;
   end MC_UML_Initial_Node;

   ----------------------
   -- MC_UML_Input_Pin --
   ----------------------

   function MC_UML_Input_Pin return AMF.Internals.CMOF_Element is
   begin
      return Base + 110;
   end MC_UML_Input_Pin;

   -----------------------------------
   -- MC_UML_Instance_Specification --
   -----------------------------------

   function MC_UML_Instance_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 111;
   end MC_UML_Instance_Specification;

   ---------------------------
   -- MC_UML_Instance_Value --
   ---------------------------

   function MC_UML_Instance_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 112;
   end MC_UML_Instance_Value;

   ------------------------
   -- MC_UML_Interaction --
   ------------------------

   function MC_UML_Interaction return AMF.Internals.CMOF_Element is
   begin
      return Base + 113;
   end MC_UML_Interaction;

   -----------------------------------
   -- MC_UML_Interaction_Constraint --
   -----------------------------------

   function MC_UML_Interaction_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 114;
   end MC_UML_Interaction_Constraint;

   ---------------------------------
   -- MC_UML_Interaction_Fragment --
   ---------------------------------

   function MC_UML_Interaction_Fragment return AMF.Internals.CMOF_Element is
   begin
      return Base + 115;
   end MC_UML_Interaction_Fragment;

   --------------------------------
   -- MC_UML_Interaction_Operand --
   --------------------------------

   function MC_UML_Interaction_Operand return AMF.Internals.CMOF_Element is
   begin
      return Base + 116;
   end MC_UML_Interaction_Operand;

   ----------------------------
   -- MC_UML_Interaction_Use --
   ----------------------------

   function MC_UML_Interaction_Use return AMF.Internals.CMOF_Element is
   begin
      return Base + 117;
   end MC_UML_Interaction_Use;

   ----------------------
   -- MC_UML_Interface --
   ----------------------

   function MC_UML_Interface return AMF.Internals.CMOF_Element is
   begin
      return Base + 118;
   end MC_UML_Interface;

   ----------------------------------
   -- MC_UML_Interface_Realization --
   ----------------------------------

   function MC_UML_Interface_Realization return AMF.Internals.CMOF_Element is
   begin
      return Base + 119;
   end MC_UML_Interface_Realization;

   ------------------------------------------
   -- MC_UML_Interruptible_Activity_Region --
   ------------------------------------------

   function MC_UML_Interruptible_Activity_Region return AMF.Internals.CMOF_Element is
   begin
      return Base + 120;
   end MC_UML_Interruptible_Activity_Region;

   ---------------------
   -- MC_UML_Interval --
   ---------------------

   function MC_UML_Interval return AMF.Internals.CMOF_Element is
   begin
      return Base + 121;
   end MC_UML_Interval;

   --------------------------------
   -- MC_UML_Interval_Constraint --
   --------------------------------

   function MC_UML_Interval_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 122;
   end MC_UML_Interval_Constraint;

   ------------------------------
   -- MC_UML_Invocation_Action --
   ------------------------------

   function MC_UML_Invocation_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 123;
   end MC_UML_Invocation_Action;

   ----------------------
   -- MC_UML_Join_Node --
   ----------------------

   function MC_UML_Join_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 124;
   end MC_UML_Join_Node;

   ---------------------
   -- MC_UML_Lifeline --
   ---------------------

   function MC_UML_Lifeline return AMF.Internals.CMOF_Element is
   begin
      return Base + 125;
   end MC_UML_Lifeline;

   ------------------------
   -- MC_UML_Link_Action --
   ------------------------

   function MC_UML_Link_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 126;
   end MC_UML_Link_Action;

   -----------------------------------
   -- MC_UML_Link_End_Creation_Data --
   -----------------------------------

   function MC_UML_Link_End_Creation_Data return AMF.Internals.CMOF_Element is
   begin
      return Base + 127;
   end MC_UML_Link_End_Creation_Data;

   --------------------------
   -- MC_UML_Link_End_Data --
   --------------------------

   function MC_UML_Link_End_Data return AMF.Internals.CMOF_Element is
   begin
      return Base + 128;
   end MC_UML_Link_End_Data;

   --------------------------------------
   -- MC_UML_Link_End_Destruction_Data --
   --------------------------------------

   function MC_UML_Link_End_Destruction_Data return AMF.Internals.CMOF_Element is
   begin
      return Base + 129;
   end MC_UML_Link_End_Destruction_Data;

   ----------------------------
   -- MC_UML_Literal_Boolean --
   ----------------------------

   function MC_UML_Literal_Boolean return AMF.Internals.CMOF_Element is
   begin
      return Base + 130;
   end MC_UML_Literal_Boolean;

   ----------------------------
   -- MC_UML_Literal_Integer --
   ----------------------------

   function MC_UML_Literal_Integer return AMF.Internals.CMOF_Element is
   begin
      return Base + 131;
   end MC_UML_Literal_Integer;

   -------------------------
   -- MC_UML_Literal_Null --
   -------------------------

   function MC_UML_Literal_Null return AMF.Internals.CMOF_Element is
   begin
      return Base + 132;
   end MC_UML_Literal_Null;

   -------------------------
   -- MC_UML_Literal_Real --
   -------------------------

   function MC_UML_Literal_Real return AMF.Internals.CMOF_Element is
   begin
      return Base + 133;
   end MC_UML_Literal_Real;

   ----------------------------------
   -- MC_UML_Literal_Specification --
   ----------------------------------

   function MC_UML_Literal_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 134;
   end MC_UML_Literal_Specification;

   ---------------------------
   -- MC_UML_Literal_String --
   ---------------------------

   function MC_UML_Literal_String return AMF.Internals.CMOF_Element is
   begin
      return Base + 135;
   end MC_UML_Literal_String;

   --------------------------------------
   -- MC_UML_Literal_Unlimited_Natural --
   --------------------------------------

   function MC_UML_Literal_Unlimited_Natural return AMF.Internals.CMOF_Element is
   begin
      return Base + 136;
   end MC_UML_Literal_Unlimited_Natural;

   ----------------------
   -- MC_UML_Loop_Node --
   ----------------------

   function MC_UML_Loop_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 137;
   end MC_UML_Loop_Node;

   --------------------------
   -- MC_UML_Manifestation --
   --------------------------

   function MC_UML_Manifestation return AMF.Internals.CMOF_Element is
   begin
      return Base + 138;
   end MC_UML_Manifestation;

   -----------------------
   -- MC_UML_Merge_Node --
   -----------------------

   function MC_UML_Merge_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 139;
   end MC_UML_Merge_Node;

   --------------------
   -- MC_UML_Message --
   --------------------

   function MC_UML_Message return AMF.Internals.CMOF_Element is
   begin
      return Base + 140;
   end MC_UML_Message;

   ------------------------
   -- MC_UML_Message_End --
   ------------------------

   function MC_UML_Message_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 141;
   end MC_UML_Message_End;

   --------------------------
   -- MC_UML_Message_Event --
   --------------------------

   function MC_UML_Message_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 142;
   end MC_UML_Message_Event;

   ---------------------------------------------
   -- MC_UML_Message_Occurrence_Specification --
   ---------------------------------------------

   function MC_UML_Message_Occurrence_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 143;
   end MC_UML_Message_Occurrence_Specification;

   ------------------
   -- MC_UML_Model --
   ------------------

   function MC_UML_Model return AMF.Internals.CMOF_Element is
   begin
      return Base + 144;
   end MC_UML_Model;

   ---------------------------------
   -- MC_UML_Multiplicity_Element --
   ---------------------------------

   function MC_UML_Multiplicity_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 145;
   end MC_UML_Multiplicity_Element;

   --------------------------
   -- MC_UML_Named_Element --
   --------------------------

   function MC_UML_Named_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 146;
   end MC_UML_Named_Element;

   ----------------------
   -- MC_UML_Namespace --
   ----------------------

   function MC_UML_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 147;
   end MC_UML_Namespace;

   -----------------
   -- MC_UML_Node --
   -----------------

   function MC_UML_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 148;
   end MC_UML_Node;

   ------------------------
   -- MC_UML_Object_Flow --
   ------------------------

   function MC_UML_Object_Flow return AMF.Internals.CMOF_Element is
   begin
      return Base + 149;
   end MC_UML_Object_Flow;

   ------------------------
   -- MC_UML_Object_Node --
   ------------------------

   function MC_UML_Object_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 150;
   end MC_UML_Object_Node;

   ------------------------
   -- MC_UML_Observation --
   ------------------------

   function MC_UML_Observation return AMF.Internals.CMOF_Element is
   begin
      return Base + 151;
   end MC_UML_Observation;

   -------------------------------------
   -- MC_UML_Occurrence_Specification --
   -------------------------------------

   function MC_UML_Occurrence_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 152;
   end MC_UML_Occurrence_Specification;

   --------------------------
   -- MC_UML_Opaque_Action --
   --------------------------

   function MC_UML_Opaque_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 153;
   end MC_UML_Opaque_Action;

   ----------------------------
   -- MC_UML_Opaque_Behavior --
   ----------------------------

   function MC_UML_Opaque_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 154;
   end MC_UML_Opaque_Behavior;

   ------------------------------
   -- MC_UML_Opaque_Expression --
   ------------------------------

   function MC_UML_Opaque_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 155;
   end MC_UML_Opaque_Expression;

   ----------------------
   -- MC_UML_Operation --
   ----------------------

   function MC_UML_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 156;
   end MC_UML_Operation;

   -----------------------------------------
   -- MC_UML_Operation_Template_Parameter --
   -----------------------------------------

   function MC_UML_Operation_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 157;
   end MC_UML_Operation_Template_Parameter;

   -----------------------
   -- MC_UML_Output_Pin --
   -----------------------

   function MC_UML_Output_Pin return AMF.Internals.CMOF_Element is
   begin
      return Base + 158;
   end MC_UML_Output_Pin;

   --------------------
   -- MC_UML_Package --
   --------------------

   function MC_UML_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 159;
   end MC_UML_Package;

   ---------------------------
   -- MC_UML_Package_Import --
   ---------------------------

   function MC_UML_Package_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 160;
   end MC_UML_Package_Import;

   --------------------------
   -- MC_UML_Package_Merge --
   --------------------------

   function MC_UML_Package_Merge return AMF.Internals.CMOF_Element is
   begin
      return Base + 161;
   end MC_UML_Package_Merge;

   --------------------------------
   -- MC_UML_Packageable_Element --
   --------------------------------

   function MC_UML_Packageable_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 162;
   end MC_UML_Packageable_Element;

   ----------------------
   -- MC_UML_Parameter --
   ----------------------

   function MC_UML_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 163;
   end MC_UML_Parameter;

   --------------------------
   -- MC_UML_Parameter_Set --
   --------------------------

   function MC_UML_Parameter_Set return AMF.Internals.CMOF_Element is
   begin
      return Base + 164;
   end MC_UML_Parameter_Set;

   ----------------------------------
   -- MC_UML_Parameterable_Element --
   ----------------------------------

   function MC_UML_Parameterable_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 165;
   end MC_UML_Parameterable_Element;

   -------------------------------
   -- MC_UML_Part_Decomposition --
   -------------------------------

   function MC_UML_Part_Decomposition return AMF.Internals.CMOF_Element is
   begin
      return Base + 166;
   end MC_UML_Part_Decomposition;

   ----------------
   -- MC_UML_Pin --
   ----------------

   function MC_UML_Pin return AMF.Internals.CMOF_Element is
   begin
      return Base + 167;
   end MC_UML_Pin;

   -----------------
   -- MC_UML_Port --
   -----------------

   function MC_UML_Port return AMF.Internals.CMOF_Element is
   begin
      return Base + 168;
   end MC_UML_Port;

   ---------------------------
   -- MC_UML_Primitive_Type --
   ---------------------------

   function MC_UML_Primitive_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 169;
   end MC_UML_Primitive_Type;

   --------------------
   -- MC_UML_Profile --
   --------------------

   function MC_UML_Profile return AMF.Internals.CMOF_Element is
   begin
      return Base + 170;
   end MC_UML_Profile;

   --------------------------------
   -- MC_UML_Profile_Application --
   --------------------------------

   function MC_UML_Profile_Application return AMF.Internals.CMOF_Element is
   begin
      return Base + 171;
   end MC_UML_Profile_Application;

   ---------------------
   -- MC_UML_Property --
   ---------------------

   function MC_UML_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 172;
   end MC_UML_Property;

   ---------------------------------
   -- MC_UML_Protocol_Conformance --
   ---------------------------------

   function MC_UML_Protocol_Conformance return AMF.Internals.CMOF_Element is
   begin
      return Base + 173;
   end MC_UML_Protocol_Conformance;

   -----------------------------------
   -- MC_UML_Protocol_State_Machine --
   -----------------------------------

   function MC_UML_Protocol_State_Machine return AMF.Internals.CMOF_Element is
   begin
      return Base + 174;
   end MC_UML_Protocol_State_Machine;

   --------------------------------
   -- MC_UML_Protocol_Transition --
   --------------------------------

   function MC_UML_Protocol_Transition return AMF.Internals.CMOF_Element is
   begin
      return Base + 175;
   end MC_UML_Protocol_Transition;

   ------------------------
   -- MC_UML_Pseudostate --
   ------------------------

   function MC_UML_Pseudostate return AMF.Internals.CMOF_Element is
   begin
      return Base + 176;
   end MC_UML_Pseudostate;

   ----------------------------
   -- MC_UML_Qualifier_Value --
   ----------------------------

   function MC_UML_Qualifier_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 177;
   end MC_UML_Qualifier_Value;

   -----------------------------------
   -- MC_UML_Raise_Exception_Action --
   -----------------------------------

   function MC_UML_Raise_Exception_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 178;
   end MC_UML_Raise_Exception_Action;

   -------------------------------
   -- MC_UML_Read_Extent_Action --
   -------------------------------

   function MC_UML_Read_Extent_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 179;
   end MC_UML_Read_Extent_Action;

   ---------------------------------------------
   -- MC_UML_Read_Is_Classified_Object_Action --
   ---------------------------------------------

   function MC_UML_Read_Is_Classified_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 180;
   end MC_UML_Read_Is_Classified_Object_Action;

   -----------------------------
   -- MC_UML_Read_Link_Action --
   -----------------------------

   function MC_UML_Read_Link_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 181;
   end MC_UML_Read_Link_Action;

   ----------------------------------------
   -- MC_UML_Read_Link_Object_End_Action --
   ----------------------------------------

   function MC_UML_Read_Link_Object_End_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 182;
   end MC_UML_Read_Link_Object_End_Action;

   --------------------------------------------------
   -- MC_UML_Read_Link_Object_End_Qualifier_Action --
   --------------------------------------------------

   function MC_UML_Read_Link_Object_End_Qualifier_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 183;
   end MC_UML_Read_Link_Object_End_Qualifier_Action;

   -----------------------------
   -- MC_UML_Read_Self_Action --
   -----------------------------

   function MC_UML_Read_Self_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 184;
   end MC_UML_Read_Self_Action;

   -------------------------------------------
   -- MC_UML_Read_Structural_Feature_Action --
   -------------------------------------------

   function MC_UML_Read_Structural_Feature_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 185;
   end MC_UML_Read_Structural_Feature_Action;

   ---------------------------------
   -- MC_UML_Read_Variable_Action --
   ---------------------------------

   function MC_UML_Read_Variable_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 186;
   end MC_UML_Read_Variable_Action;

   ------------------------
   -- MC_UML_Realization --
   ------------------------

   function MC_UML_Realization return AMF.Internals.CMOF_Element is
   begin
      return Base + 187;
   end MC_UML_Realization;

   ----------------------
   -- MC_UML_Reception --
   ----------------------

   function MC_UML_Reception return AMF.Internals.CMOF_Element is
   begin
      return Base + 188;
   end MC_UML_Reception;

   -------------------------------------
   -- MC_UML_Reclassify_Object_Action --
   -------------------------------------

   function MC_UML_Reclassify_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 189;
   end MC_UML_Reclassify_Object_Action;

   --------------------------------
   -- MC_UML_Redefinable_Element --
   --------------------------------

   function MC_UML_Redefinable_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 190;
   end MC_UML_Redefinable_Element;

   -------------------------------------------
   -- MC_UML_Redefinable_Template_Signature --
   -------------------------------------------

   function MC_UML_Redefinable_Template_Signature return AMF.Internals.CMOF_Element is
   begin
      return Base + 191;
   end MC_UML_Redefinable_Template_Signature;

   --------------------------
   -- MC_UML_Reduce_Action --
   --------------------------

   function MC_UML_Reduce_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 192;
   end MC_UML_Reduce_Action;

   -------------------
   -- MC_UML_Region --
   -------------------

   function MC_UML_Region return AMF.Internals.CMOF_Element is
   begin
      return Base + 193;
   end MC_UML_Region;

   -------------------------
   -- MC_UML_Relationship --
   -------------------------

   function MC_UML_Relationship return AMF.Internals.CMOF_Element is
   begin
      return Base + 194;
   end MC_UML_Relationship;

   ---------------------------------------------------
   -- MC_UML_Remove_Structural_Feature_Value_Action --
   ---------------------------------------------------

   function MC_UML_Remove_Structural_Feature_Value_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 195;
   end MC_UML_Remove_Structural_Feature_Value_Action;

   -----------------------------------------
   -- MC_UML_Remove_Variable_Value_Action --
   -----------------------------------------

   function MC_UML_Remove_Variable_Value_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 196;
   end MC_UML_Remove_Variable_Value_Action;

   -------------------------
   -- MC_UML_Reply_Action --
   -------------------------

   function MC_UML_Reply_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 197;
   end MC_UML_Reply_Action;

   -------------------------------
   -- MC_UML_Send_Object_Action --
   -------------------------------

   function MC_UML_Send_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 198;
   end MC_UML_Send_Object_Action;

   -------------------------------
   -- MC_UML_Send_Signal_Action --
   -------------------------------

   function MC_UML_Send_Signal_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 199;
   end MC_UML_Send_Signal_Action;

   --------------------------
   -- MC_UML_Sequence_Node --
   --------------------------

   function MC_UML_Sequence_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 200;
   end MC_UML_Sequence_Node;

   -------------------
   -- MC_UML_Signal --
   -------------------

   function MC_UML_Signal return AMF.Internals.CMOF_Element is
   begin
      return Base + 201;
   end MC_UML_Signal;

   -------------------------
   -- MC_UML_Signal_Event --
   -------------------------

   function MC_UML_Signal_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 202;
   end MC_UML_Signal_Event;

   -----------------
   -- MC_UML_Slot --
   -----------------

   function MC_UML_Slot return AMF.Internals.CMOF_Element is
   begin
      return Base + 203;
   end MC_UML_Slot;

   ---------------------------------------------
   -- MC_UML_Start_Classifier_Behavior_Action --
   ---------------------------------------------

   function MC_UML_Start_Classifier_Behavior_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 204;
   end MC_UML_Start_Classifier_Behavior_Action;

   -----------------------------------------
   -- MC_UML_Start_Object_Behavior_Action --
   -----------------------------------------

   function MC_UML_Start_Object_Behavior_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 205;
   end MC_UML_Start_Object_Behavior_Action;

   ------------------
   -- MC_UML_State --
   ------------------

   function MC_UML_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 206;
   end MC_UML_State;

   ----------------------------
   -- MC_UML_State_Invariant --
   ----------------------------

   function MC_UML_State_Invariant return AMF.Internals.CMOF_Element is
   begin
      return Base + 207;
   end MC_UML_State_Invariant;

   --------------------------
   -- MC_UML_State_Machine --
   --------------------------

   function MC_UML_State_Machine return AMF.Internals.CMOF_Element is
   begin
      return Base + 208;
   end MC_UML_State_Machine;

   -----------------------
   -- MC_UML_Stereotype --
   -----------------------

   function MC_UML_Stereotype return AMF.Internals.CMOF_Element is
   begin
      return Base + 209;
   end MC_UML_Stereotype;

   ------------------------------
   -- MC_UML_String_Expression --
   ------------------------------

   function MC_UML_String_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 210;
   end MC_UML_String_Expression;

   -------------------------------
   -- MC_UML_Structural_Feature --
   -------------------------------

   function MC_UML_Structural_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 211;
   end MC_UML_Structural_Feature;

   --------------------------------------
   -- MC_UML_Structural_Feature_Action --
   --------------------------------------

   function MC_UML_Structural_Feature_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 212;
   end MC_UML_Structural_Feature_Action;

   -------------------------------------
   -- MC_UML_Structured_Activity_Node --
   -------------------------------------

   function MC_UML_Structured_Activity_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 213;
   end MC_UML_Structured_Activity_Node;

   ----------------------------------
   -- MC_UML_Structured_Classifier --
   ----------------------------------

   function MC_UML_Structured_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 214;
   end MC_UML_Structured_Classifier;

   -------------------------
   -- MC_UML_Substitution --
   -------------------------

   function MC_UML_Substitution return AMF.Internals.CMOF_Element is
   begin
      return Base + 215;
   end MC_UML_Substitution;

   -----------------------------
   -- MC_UML_Template_Binding --
   -----------------------------

   function MC_UML_Template_Binding return AMF.Internals.CMOF_Element is
   begin
      return Base + 216;
   end MC_UML_Template_Binding;

   -------------------------------
   -- MC_UML_Template_Parameter --
   -------------------------------

   function MC_UML_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 217;
   end MC_UML_Template_Parameter;

   --------------------------------------------
   -- MC_UML_Template_Parameter_Substitution --
   --------------------------------------------

   function MC_UML_Template_Parameter_Substitution return AMF.Internals.CMOF_Element is
   begin
      return Base + 218;
   end MC_UML_Template_Parameter_Substitution;

   -------------------------------
   -- MC_UML_Template_Signature --
   -------------------------------

   function MC_UML_Template_Signature return AMF.Internals.CMOF_Element is
   begin
      return Base + 219;
   end MC_UML_Template_Signature;

   ---------------------------------
   -- MC_UML_Templateable_Element --
   ---------------------------------

   function MC_UML_Templateable_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 220;
   end MC_UML_Templateable_Element;

   ---------------------------------
   -- MC_UML_Test_Identity_Action --
   ---------------------------------

   function MC_UML_Test_Identity_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 221;
   end MC_UML_Test_Identity_Action;

   ----------------------------
   -- MC_UML_Time_Constraint --
   ----------------------------

   function MC_UML_Time_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 222;
   end MC_UML_Time_Constraint;

   -----------------------
   -- MC_UML_Time_Event --
   -----------------------

   function MC_UML_Time_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 223;
   end MC_UML_Time_Event;

   ----------------------------
   -- MC_UML_Time_Expression --
   ----------------------------

   function MC_UML_Time_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 224;
   end MC_UML_Time_Expression;

   --------------------------
   -- MC_UML_Time_Interval --
   --------------------------

   function MC_UML_Time_Interval return AMF.Internals.CMOF_Element is
   begin
      return Base + 225;
   end MC_UML_Time_Interval;

   -----------------------------
   -- MC_UML_Time_Observation --
   -----------------------------

   function MC_UML_Time_Observation return AMF.Internals.CMOF_Element is
   begin
      return Base + 226;
   end MC_UML_Time_Observation;

   -----------------------
   -- MC_UML_Transition --
   -----------------------

   function MC_UML_Transition return AMF.Internals.CMOF_Element is
   begin
      return Base + 227;
   end MC_UML_Transition;

   --------------------
   -- MC_UML_Trigger --
   --------------------

   function MC_UML_Trigger return AMF.Internals.CMOF_Element is
   begin
      return Base + 228;
   end MC_UML_Trigger;

   -----------------
   -- MC_UML_Type --
   -----------------

   function MC_UML_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 229;
   end MC_UML_Type;

   --------------------------
   -- MC_UML_Typed_Element --
   --------------------------

   function MC_UML_Typed_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 230;
   end MC_UML_Typed_Element;

   ------------------------------
   -- MC_UML_Unmarshall_Action --
   ------------------------------

   function MC_UML_Unmarshall_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 231;
   end MC_UML_Unmarshall_Action;

   ------------------
   -- MC_UML_Usage --
   ------------------

   function MC_UML_Usage return AMF.Internals.CMOF_Element is
   begin
      return Base + 232;
   end MC_UML_Usage;

   ---------------------
   -- MC_UML_Use_Case --
   ---------------------

   function MC_UML_Use_Case return AMF.Internals.CMOF_Element is
   begin
      return Base + 233;
   end MC_UML_Use_Case;

   ----------------------
   -- MC_UML_Value_Pin --
   ----------------------

   function MC_UML_Value_Pin return AMF.Internals.CMOF_Element is
   begin
      return Base + 234;
   end MC_UML_Value_Pin;

   --------------------------------
   -- MC_UML_Value_Specification --
   --------------------------------

   function MC_UML_Value_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 235;
   end MC_UML_Value_Specification;

   ---------------------------------------
   -- MC_UML_Value_Specification_Action --
   ---------------------------------------

   function MC_UML_Value_Specification_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 236;
   end MC_UML_Value_Specification_Action;

   ---------------------
   -- MC_UML_Variable --
   ---------------------

   function MC_UML_Variable return AMF.Internals.CMOF_Element is
   begin
      return Base + 237;
   end MC_UML_Variable;

   ----------------------------
   -- MC_UML_Variable_Action --
   ----------------------------

   function MC_UML_Variable_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 238;
   end MC_UML_Variable_Action;

   -------------------
   -- MC_UML_Vertex --
   -------------------

   function MC_UML_Vertex return AMF.Internals.CMOF_Element is
   begin
      return Base + 239;
   end MC_UML_Vertex;

   ------------------------------
   -- MC_UML_Write_Link_Action --
   ------------------------------

   function MC_UML_Write_Link_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 240;
   end MC_UML_Write_Link_Action;

   --------------------------------------------
   -- MC_UML_Write_Structural_Feature_Action --
   --------------------------------------------

   function MC_UML_Write_Structural_Feature_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 241;
   end MC_UML_Write_Structural_Feature_Action;

   ----------------------------------
   -- MC_UML_Write_Variable_Action --
   ----------------------------------

   function MC_UML_Write_Variable_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 242;
   end MC_UML_Write_Variable_Action;

   --------------------------------
   -- MP_UML_Abstraction_Mapping --
   --------------------------------

   function MP_UML_Abstraction_Mapping return AMF.Internals.CMOF_Element is
   begin
      return Base + 491;
   end MP_UML_Abstraction_Mapping;

   --------------------------------------------------
   -- MP_UML_Accept_Call_Action_Return_Information --
   --------------------------------------------------

   function MP_UML_Accept_Call_Action_Return_Information return AMF.Internals.CMOF_Element is
   begin
      return Base + 492;
   end MP_UML_Accept_Call_Action_Return_Information;

   ----------------------------------------------
   -- MP_UML_Accept_Event_Action_Is_Unmarshall --
   ----------------------------------------------

   function MP_UML_Accept_Event_Action_Is_Unmarshall return AMF.Internals.CMOF_Element is
   begin
      return Base + 493;
   end MP_UML_Accept_Event_Action_Is_Unmarshall;

   ---------------------------------------
   -- MP_UML_Accept_Event_Action_Result --
   ---------------------------------------

   function MP_UML_Accept_Event_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 243;
   end MP_UML_Accept_Event_Action_Result;

   ----------------------------------------
   -- MP_UML_Accept_Event_Action_Trigger --
   ----------------------------------------

   function MP_UML_Accept_Event_Action_Trigger return AMF.Internals.CMOF_Element is
   begin
      return Base + 244;
   end MP_UML_Accept_Event_Action_Trigger;

   ---------------------------
   -- MP_UML_Action_Context --
   ---------------------------

   function MP_UML_Action_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 494;
   end MP_UML_Action_Context;

   -------------------------
   -- MP_UML_Action_Input --
   -------------------------

   function MP_UML_Action_Input return AMF.Internals.CMOF_Element is
   begin
      return Base + 245;
   end MP_UML_Action_Input;

   ----------------------------------------
   -- MP_UML_Action_Is_Locally_Reentrant --
   ----------------------------------------

   function MP_UML_Action_Is_Locally_Reentrant return AMF.Internals.CMOF_Element is
   begin
      return Base + 495;
   end MP_UML_Action_Is_Locally_Reentrant;

   ---------------------------------------
   -- MP_UML_Action_Local_Postcondition --
   ---------------------------------------

   function MP_UML_Action_Local_Postcondition return AMF.Internals.CMOF_Element is
   begin
      return Base + 246;
   end MP_UML_Action_Local_Postcondition;

   --------------------------------------
   -- MP_UML_Action_Local_Precondition --
   --------------------------------------

   function MP_UML_Action_Local_Precondition return AMF.Internals.CMOF_Element is
   begin
      return Base + 247;
   end MP_UML_Action_Local_Precondition;

   --------------------------
   -- MP_UML_Action_Output --
   --------------------------

   function MP_UML_Action_Output return AMF.Internals.CMOF_Element is
   begin
      return Base + 248;
   end MP_UML_Action_Output;

   --------------------------------------------------
   -- MP_UML_Action_Execution_Specification_Action --
   --------------------------------------------------

   function MP_UML_Action_Execution_Specification_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 496;
   end MP_UML_Action_Execution_Specification_Action;

   -----------------------------------------
   -- MP_UML_Action_Input_Pin_From_Action --
   -----------------------------------------

   function MP_UML_Action_Input_Pin_From_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 497;
   end MP_UML_Action_Input_Pin_From_Action;

   --------------------------
   -- MP_UML_Activity_Edge --
   --------------------------

   function MP_UML_Activity_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 249;
   end MP_UML_Activity_Edge;

   ---------------------------
   -- MP_UML_Activity_Group --
   ---------------------------

   function MP_UML_Activity_Group return AMF.Internals.CMOF_Element is
   begin
      return Base + 250;
   end MP_UML_Activity_Group;

   ----------------------------------
   -- MP_UML_Activity_Is_Read_Only --
   ----------------------------------

   function MP_UML_Activity_Is_Read_Only return AMF.Internals.CMOF_Element is
   begin
      return Base + 498;
   end MP_UML_Activity_Is_Read_Only;

   -----------------------------------------
   -- MP_UML_Activity_Is_Single_Execution --
   -----------------------------------------

   function MP_UML_Activity_Is_Single_Execution return AMF.Internals.CMOF_Element is
   begin
      return Base + 499;
   end MP_UML_Activity_Is_Single_Execution;

   --------------------------
   -- MP_UML_Activity_Node --
   --------------------------

   function MP_UML_Activity_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 251;
   end MP_UML_Activity_Node;

   -------------------------------
   -- MP_UML_Activity_Partition --
   -------------------------------

   function MP_UML_Activity_Partition return AMF.Internals.CMOF_Element is
   begin
      return Base + 252;
   end MP_UML_Activity_Partition;

   -------------------------------------
   -- MP_UML_Activity_Structured_Node --
   -------------------------------------

   function MP_UML_Activity_Structured_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 253;
   end MP_UML_Activity_Structured_Node;

   ------------------------------
   -- MP_UML_Activity_Variable --
   ------------------------------

   function MP_UML_Activity_Variable return AMF.Internals.CMOF_Element is
   begin
      return Base + 254;
   end MP_UML_Activity_Variable;

   -----------------------------------
   -- MP_UML_Activity_Edge_Activity --
   -----------------------------------

   function MP_UML_Activity_Edge_Activity return AMF.Internals.CMOF_Element is
   begin
      return Base + 500;
   end MP_UML_Activity_Edge_Activity;

   --------------------------------
   -- MP_UML_Activity_Edge_Guard --
   --------------------------------

   function MP_UML_Activity_Edge_Guard return AMF.Internals.CMOF_Element is
   begin
      return Base + 501;
   end MP_UML_Activity_Edge_Guard;

   -----------------------------------
   -- MP_UML_Activity_Edge_In_Group --
   -----------------------------------

   function MP_UML_Activity_Edge_In_Group return AMF.Internals.CMOF_Element is
   begin
      return Base + 255;
   end MP_UML_Activity_Edge_In_Group;

   ---------------------------------------
   -- MP_UML_Activity_Edge_In_Partition --
   ---------------------------------------

   function MP_UML_Activity_Edge_In_Partition return AMF.Internals.CMOF_Element is
   begin
      return Base + 256;
   end MP_UML_Activity_Edge_In_Partition;

   ---------------------------------------------
   -- MP_UML_Activity_Edge_In_Structured_Node --
   ---------------------------------------------

   function MP_UML_Activity_Edge_In_Structured_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 502;
   end MP_UML_Activity_Edge_In_Structured_Node;

   -------------------------------------
   -- MP_UML_Activity_Edge_Interrupts --
   -------------------------------------

   function MP_UML_Activity_Edge_Interrupts return AMF.Internals.CMOF_Element is
   begin
      return Base + 503;
   end MP_UML_Activity_Edge_Interrupts;

   -----------------------------------------
   -- MP_UML_Activity_Edge_Redefined_Edge --
   -----------------------------------------

   function MP_UML_Activity_Edge_Redefined_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 257;
   end MP_UML_Activity_Edge_Redefined_Edge;

   ---------------------------------
   -- MP_UML_Activity_Edge_Source --
   ---------------------------------

   function MP_UML_Activity_Edge_Source return AMF.Internals.CMOF_Element is
   begin
      return Base + 504;
   end MP_UML_Activity_Edge_Source;

   ---------------------------------
   -- MP_UML_Activity_Edge_Target --
   ---------------------------------

   function MP_UML_Activity_Edge_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 505;
   end MP_UML_Activity_Edge_Target;

   ---------------------------------
   -- MP_UML_Activity_Edge_Weight --
   ---------------------------------

   function MP_UML_Activity_Edge_Weight return AMF.Internals.CMOF_Element is
   begin
      return Base + 506;
   end MP_UML_Activity_Edge_Weight;

   ------------------------------------------
   -- MP_UML_Activity_Group_Contained_Edge --
   ------------------------------------------

   function MP_UML_Activity_Group_Contained_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 258;
   end MP_UML_Activity_Group_Contained_Edge;

   ------------------------------------------
   -- MP_UML_Activity_Group_Contained_Node --
   ------------------------------------------

   function MP_UML_Activity_Group_Contained_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 259;
   end MP_UML_Activity_Group_Contained_Node;

   ---------------------------------------
   -- MP_UML_Activity_Group_In_Activity --
   ---------------------------------------

   function MP_UML_Activity_Group_In_Activity return AMF.Internals.CMOF_Element is
   begin
      return Base + 507;
   end MP_UML_Activity_Group_In_Activity;

   ------------------------------------
   -- MP_UML_Activity_Group_Subgroup --
   ------------------------------------

   function MP_UML_Activity_Group_Subgroup return AMF.Internals.CMOF_Element is
   begin
      return Base + 260;
   end MP_UML_Activity_Group_Subgroup;

   ---------------------------------------
   -- MP_UML_Activity_Group_Super_Group --
   ---------------------------------------

   function MP_UML_Activity_Group_Super_Group return AMF.Internals.CMOF_Element is
   begin
      return Base + 508;
   end MP_UML_Activity_Group_Super_Group;

   -----------------------------------
   -- MP_UML_Activity_Node_Activity --
   -----------------------------------

   function MP_UML_Activity_Node_Activity return AMF.Internals.CMOF_Element is
   begin
      return Base + 509;
   end MP_UML_Activity_Node_Activity;

   -----------------------------------
   -- MP_UML_Activity_Node_In_Group --
   -----------------------------------

   function MP_UML_Activity_Node_In_Group return AMF.Internals.CMOF_Element is
   begin
      return Base + 261;
   end MP_UML_Activity_Node_In_Group;

   --------------------------------------------------
   -- MP_UML_Activity_Node_In_Interruptible_Region --
   --------------------------------------------------

   function MP_UML_Activity_Node_In_Interruptible_Region return AMF.Internals.CMOF_Element is
   begin
      return Base + 262;
   end MP_UML_Activity_Node_In_Interruptible_Region;

   ---------------------------------------
   -- MP_UML_Activity_Node_In_Partition --
   ---------------------------------------

   function MP_UML_Activity_Node_In_Partition return AMF.Internals.CMOF_Element is
   begin
      return Base + 263;
   end MP_UML_Activity_Node_In_Partition;

   ---------------------------------------------
   -- MP_UML_Activity_Node_In_Structured_Node --
   ---------------------------------------------

   function MP_UML_Activity_Node_In_Structured_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 510;
   end MP_UML_Activity_Node_In_Structured_Node;

   -----------------------------------
   -- MP_UML_Activity_Node_Incoming --
   -----------------------------------

   function MP_UML_Activity_Node_Incoming return AMF.Internals.CMOF_Element is
   begin
      return Base + 264;
   end MP_UML_Activity_Node_Incoming;

   -----------------------------------
   -- MP_UML_Activity_Node_Outgoing --
   -----------------------------------

   function MP_UML_Activity_Node_Outgoing return AMF.Internals.CMOF_Element is
   begin
      return Base + 265;
   end MP_UML_Activity_Node_Outgoing;

   -----------------------------------------
   -- MP_UML_Activity_Node_Redefined_Node --
   -----------------------------------------

   function MP_UML_Activity_Node_Redefined_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 266;
   end MP_UML_Activity_Node_Redefined_Node;

   ----------------------------------------------
   -- MP_UML_Activity_Parameter_Node_Parameter --
   ----------------------------------------------

   function MP_UML_Activity_Parameter_Node_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 511;
   end MP_UML_Activity_Parameter_Node_Parameter;

   ------------------------------------
   -- MP_UML_Activity_Partition_Edge --
   ------------------------------------

   function MP_UML_Activity_Partition_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 267;
   end MP_UML_Activity_Partition_Edge;

   --------------------------------------------
   -- MP_UML_Activity_Partition_Is_Dimension --
   --------------------------------------------

   function MP_UML_Activity_Partition_Is_Dimension return AMF.Internals.CMOF_Element is
   begin
      return Base + 512;
   end MP_UML_Activity_Partition_Is_Dimension;

   -------------------------------------------
   -- MP_UML_Activity_Partition_Is_External --
   -------------------------------------------

   function MP_UML_Activity_Partition_Is_External return AMF.Internals.CMOF_Element is
   begin
      return Base + 513;
   end MP_UML_Activity_Partition_Is_External;

   ------------------------------------
   -- MP_UML_Activity_Partition_Node --
   ------------------------------------

   function MP_UML_Activity_Partition_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 268;
   end MP_UML_Activity_Partition_Node;

   ------------------------------------------
   -- MP_UML_Activity_Partition_Represents --
   ------------------------------------------

   function MP_UML_Activity_Partition_Represents return AMF.Internals.CMOF_Element is
   begin
      return Base + 514;
   end MP_UML_Activity_Partition_Represents;

   --------------------------------------------
   -- MP_UML_Activity_Partition_Subpartition --
   --------------------------------------------

   function MP_UML_Activity_Partition_Subpartition return AMF.Internals.CMOF_Element is
   begin
      return Base + 269;
   end MP_UML_Activity_Partition_Subpartition;

   -----------------------------------------------
   -- MP_UML_Activity_Partition_Super_Partition --
   -----------------------------------------------

   function MP_UML_Activity_Partition_Super_Partition return AMF.Internals.CMOF_Element is
   begin
      return Base + 515;
   end MP_UML_Activity_Partition_Super_Partition;

   ----------------------------------------------------------
   -- MP_UML_Add_Structural_Feature_Value_Action_Insert_At --
   ----------------------------------------------------------

   function MP_UML_Add_Structural_Feature_Value_Action_Insert_At return AMF.Internals.CMOF_Element is
   begin
      return Base + 516;
   end MP_UML_Add_Structural_Feature_Value_Action_Insert_At;

   ---------------------------------------------------------------
   -- MP_UML_Add_Structural_Feature_Value_Action_Is_Replace_All --
   ---------------------------------------------------------------

   function MP_UML_Add_Structural_Feature_Value_Action_Is_Replace_All return AMF.Internals.CMOF_Element is
   begin
      return Base + 517;
   end MP_UML_Add_Structural_Feature_Value_Action_Is_Replace_All;

   ------------------------------------------------
   -- MP_UML_Add_Variable_Value_Action_Insert_At --
   ------------------------------------------------

   function MP_UML_Add_Variable_Value_Action_Insert_At return AMF.Internals.CMOF_Element is
   begin
      return Base + 518;
   end MP_UML_Add_Variable_Value_Action_Insert_At;

   -----------------------------------------------------
   -- MP_UML_Add_Variable_Value_Action_Is_Replace_All --
   -----------------------------------------------------

   function MP_UML_Add_Variable_Value_Action_Is_Replace_All return AMF.Internals.CMOF_Element is
   begin
      return Base + 519;
   end MP_UML_Add_Variable_Value_Action_Is_Replace_All;

   -------------------------------
   -- MP_UML_Artifact_File_Name --
   -------------------------------

   function MP_UML_Artifact_File_Name return AMF.Internals.CMOF_Element is
   begin
      return Base + 520;
   end MP_UML_Artifact_File_Name;

   -----------------------------------
   -- MP_UML_Artifact_Manifestation --
   -----------------------------------

   function MP_UML_Artifact_Manifestation return AMF.Internals.CMOF_Element is
   begin
      return Base + 270;
   end MP_UML_Artifact_Manifestation;

   -------------------------------------
   -- MP_UML_Artifact_Nested_Artifact --
   -------------------------------------

   function MP_UML_Artifact_Nested_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 271;
   end MP_UML_Artifact_Nested_Artifact;

   -------------------------------------
   -- MP_UML_Artifact_Owned_Attribute --
   -------------------------------------

   function MP_UML_Artifact_Owned_Attribute return AMF.Internals.CMOF_Element is
   begin
      return Base + 272;
   end MP_UML_Artifact_Owned_Attribute;

   -------------------------------------
   -- MP_UML_Artifact_Owned_Operation --
   -------------------------------------

   function MP_UML_Artifact_Owned_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 273;
   end MP_UML_Artifact_Owned_Operation;

   ---------------------------------
   -- MP_UML_Association_End_Type --
   ---------------------------------

   function MP_UML_Association_End_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 274;
   end MP_UML_Association_End_Type;

   -----------------------------------
   -- MP_UML_Association_Is_Derived --
   -----------------------------------

   function MP_UML_Association_Is_Derived return AMF.Internals.CMOF_Element is
   begin
      return Base + 521;
   end MP_UML_Association_Is_Derived;

   -----------------------------------
   -- MP_UML_Association_Member_End --
   -----------------------------------

   function MP_UML_Association_Member_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 275;
   end MP_UML_Association_Member_End;

   --------------------------------------------
   -- MP_UML_Association_Navigable_Owned_End --
   --------------------------------------------

   function MP_UML_Association_Navigable_Owned_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 276;
   end MP_UML_Association_Navigable_Owned_End;

   ----------------------------------
   -- MP_UML_Association_Owned_End --
   ----------------------------------

   function MP_UML_Association_Owned_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 277;
   end MP_UML_Association_Owned_End;

   -----------------------------
   -- MP_UML_Behavior_Context --
   -----------------------------

   function MP_UML_Behavior_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 522;
   end MP_UML_Behavior_Context;

   ----------------------------------
   -- MP_UML_Behavior_Is_Reentrant --
   ----------------------------------

   function MP_UML_Behavior_Is_Reentrant return AMF.Internals.CMOF_Element is
   begin
      return Base + 523;
   end MP_UML_Behavior_Is_Reentrant;

   -------------------------------------
   -- MP_UML_Behavior_Owned_Parameter --
   -------------------------------------

   function MP_UML_Behavior_Owned_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 278;
   end MP_UML_Behavior_Owned_Parameter;

   -----------------------------------------
   -- MP_UML_Behavior_Owned_Parameter_Set --
   -----------------------------------------

   function MP_UML_Behavior_Owned_Parameter_Set return AMF.Internals.CMOF_Element is
   begin
      return Base + 279;
   end MP_UML_Behavior_Owned_Parameter_Set;

   -----------------------------------
   -- MP_UML_Behavior_Postcondition --
   -----------------------------------

   function MP_UML_Behavior_Postcondition return AMF.Internals.CMOF_Element is
   begin
      return Base + 280;
   end MP_UML_Behavior_Postcondition;

   ----------------------------------
   -- MP_UML_Behavior_Precondition --
   ----------------------------------

   function MP_UML_Behavior_Precondition return AMF.Internals.CMOF_Element is
   begin
      return Base + 281;
   end MP_UML_Behavior_Precondition;

   ----------------------------------------
   -- MP_UML_Behavior_Redefined_Behavior --
   ----------------------------------------

   function MP_UML_Behavior_Redefined_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 282;
   end MP_UML_Behavior_Redefined_Behavior;

   -----------------------------------
   -- MP_UML_Behavior_Specification --
   -----------------------------------

   function MP_UML_Behavior_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 524;
   end MP_UML_Behavior_Specification;

   ------------------------------------------------------
   -- MP_UML_Behavior_Execution_Specification_Behavior --
   ------------------------------------------------------

   function MP_UML_Behavior_Execution_Specification_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 525;
   end MP_UML_Behavior_Execution_Specification_Behavior;

   -------------------------------------------
   -- MP_UML_Behavioral_Feature_Concurrency --
   -------------------------------------------

   function MP_UML_Behavioral_Feature_Concurrency return AMF.Internals.CMOF_Element is
   begin
      return Base + 526;
   end MP_UML_Behavioral_Feature_Concurrency;

   -------------------------------------------
   -- MP_UML_Behavioral_Feature_Is_Abstract --
   -------------------------------------------

   function MP_UML_Behavioral_Feature_Is_Abstract return AMF.Internals.CMOF_Element is
   begin
      return Base + 527;
   end MP_UML_Behavioral_Feature_Is_Abstract;

   --------------------------------------
   -- MP_UML_Behavioral_Feature_Method --
   --------------------------------------

   function MP_UML_Behavioral_Feature_Method return AMF.Internals.CMOF_Element is
   begin
      return Base + 283;
   end MP_UML_Behavioral_Feature_Method;

   -----------------------------------------------
   -- MP_UML_Behavioral_Feature_Owned_Parameter --
   -----------------------------------------------

   function MP_UML_Behavioral_Feature_Owned_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 284;
   end MP_UML_Behavioral_Feature_Owned_Parameter;

   ---------------------------------------------------
   -- MP_UML_Behavioral_Feature_Owned_Parameter_Set --
   ---------------------------------------------------

   function MP_UML_Behavioral_Feature_Owned_Parameter_Set return AMF.Internals.CMOF_Element is
   begin
      return Base + 285;
   end MP_UML_Behavioral_Feature_Owned_Parameter_Set;

   ------------------------------------------------
   -- MP_UML_Behavioral_Feature_Raised_Exception --
   ------------------------------------------------

   function MP_UML_Behavioral_Feature_Raised_Exception return AMF.Internals.CMOF_Element is
   begin
      return Base + 286;
   end MP_UML_Behavioral_Feature_Raised_Exception;

   ------------------------------------------------------
   -- MP_UML_Behaviored_Classifier_Classifier_Behavior --
   ------------------------------------------------------

   function MP_UML_Behaviored_Classifier_Classifier_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 528;
   end MP_UML_Behaviored_Classifier_Classifier_Behavior;

   --------------------------------------------------------
   -- MP_UML_Behaviored_Classifier_Interface_Realization --
   --------------------------------------------------------

   function MP_UML_Behaviored_Classifier_Interface_Realization return AMF.Internals.CMOF_Element is
   begin
      return Base + 287;
   end MP_UML_Behaviored_Classifier_Interface_Realization;

   -------------------------------------------------
   -- MP_UML_Behaviored_Classifier_Owned_Behavior --
   -------------------------------------------------

   function MP_UML_Behaviored_Classifier_Owned_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 288;
   end MP_UML_Behaviored_Classifier_Owned_Behavior;

   -------------------------------------------
   -- MP_UML_Broadcast_Signal_Action_Signal --
   -------------------------------------------

   function MP_UML_Broadcast_Signal_Action_Signal return AMF.Internals.CMOF_Element is
   begin
      return Base + 529;
   end MP_UML_Broadcast_Signal_Action_Signal;

   ---------------------------------------
   -- MP_UML_Call_Action_Is_Synchronous --
   ---------------------------------------

   function MP_UML_Call_Action_Is_Synchronous return AMF.Internals.CMOF_Element is
   begin
      return Base + 530;
   end MP_UML_Call_Action_Is_Synchronous;

   -------------------------------
   -- MP_UML_Call_Action_Result --
   -------------------------------

   function MP_UML_Call_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 289;
   end MP_UML_Call_Action_Result;

   ------------------------------------------
   -- MP_UML_Call_Behavior_Action_Behavior --
   ------------------------------------------

   function MP_UML_Call_Behavior_Action_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 531;
   end MP_UML_Call_Behavior_Action_Behavior;

   ---------------------------------
   -- MP_UML_Call_Event_Operation --
   ---------------------------------

   function MP_UML_Call_Event_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 532;
   end MP_UML_Call_Event_Operation;

   --------------------------------------------
   -- MP_UML_Call_Operation_Action_Operation --
   --------------------------------------------

   function MP_UML_Call_Operation_Action_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 533;
   end MP_UML_Call_Operation_Action_Operation;

   -----------------------------------------
   -- MP_UML_Call_Operation_Action_Target --
   -----------------------------------------

   function MP_UML_Call_Operation_Action_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 534;
   end MP_UML_Call_Operation_Action_Target;

   -------------------------------------------
   -- MP_UML_Change_Event_Change_Expression --
   -------------------------------------------

   function MP_UML_Change_Event_Change_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 535;
   end MP_UML_Change_Event_Change_Expression;

   ----------------------------
   -- MP_UML_Class_Extension --
   ----------------------------

   function MP_UML_Class_Extension return AMF.Internals.CMOF_Element is
   begin
      return Base + 290;
   end MP_UML_Class_Extension;

   ------------------------------
   -- MP_UML_Class_Is_Abstract --
   ------------------------------

   function MP_UML_Class_Is_Abstract return AMF.Internals.CMOF_Element is
   begin
      return Base + 536;
   end MP_UML_Class_Is_Abstract;

   ----------------------------
   -- MP_UML_Class_Is_Active --
   ----------------------------

   function MP_UML_Class_Is_Active return AMF.Internals.CMOF_Element is
   begin
      return Base + 537;
   end MP_UML_Class_Is_Active;

   ------------------------------------
   -- MP_UML_Class_Nested_Classifier --
   ------------------------------------

   function MP_UML_Class_Nested_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 291;
   end MP_UML_Class_Nested_Classifier;

   ----------------------------------
   -- MP_UML_Class_Owned_Attribute --
   ----------------------------------

   function MP_UML_Class_Owned_Attribute return AMF.Internals.CMOF_Element is
   begin
      return Base + 292;
   end MP_UML_Class_Owned_Attribute;

   ----------------------------------
   -- MP_UML_Class_Owned_Operation --
   ----------------------------------

   function MP_UML_Class_Owned_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 293;
   end MP_UML_Class_Owned_Operation;

   ----------------------------------
   -- MP_UML_Class_Owned_Reception --
   ----------------------------------

   function MP_UML_Class_Owned_Reception return AMF.Internals.CMOF_Element is
   begin
      return Base + 294;
   end MP_UML_Class_Owned_Reception;

   ------------------------------
   -- MP_UML_Class_Super_Class --
   ------------------------------

   function MP_UML_Class_Super_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 295;
   end MP_UML_Class_Super_Class;

   ---------------------------------
   -- MP_UML_Classifier_Attribute --
   ---------------------------------

   function MP_UML_Classifier_Attribute return AMF.Internals.CMOF_Element is
   begin
      return Base + 296;
   end MP_UML_Classifier_Attribute;

   -----------------------------------------
   -- MP_UML_Classifier_Collaboration_Use --
   -----------------------------------------

   function MP_UML_Classifier_Collaboration_Use return AMF.Internals.CMOF_Element is
   begin
      return Base + 297;
   end MP_UML_Classifier_Collaboration_Use;

   -------------------------------
   -- MP_UML_Classifier_Feature --
   -------------------------------

   function MP_UML_Classifier_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 298;
   end MP_UML_Classifier_Feature;

   -------------------------------
   -- MP_UML_Classifier_General --
   -------------------------------

   function MP_UML_Classifier_General return AMF.Internals.CMOF_Element is
   begin
      return Base + 299;
   end MP_UML_Classifier_General;

   --------------------------------------
   -- MP_UML_Classifier_Generalization --
   --------------------------------------

   function MP_UML_Classifier_Generalization return AMF.Internals.CMOF_Element is
   begin
      return Base + 300;
   end MP_UML_Classifier_Generalization;

   ----------------------------------------
   -- MP_UML_Classifier_Inherited_Member --
   ----------------------------------------

   function MP_UML_Classifier_Inherited_Member return AMF.Internals.CMOF_Element is
   begin
      return Base + 301;
   end MP_UML_Classifier_Inherited_Member;

   -----------------------------------
   -- MP_UML_Classifier_Is_Abstract --
   -----------------------------------

   function MP_UML_Classifier_Is_Abstract return AMF.Internals.CMOF_Element is
   begin
      return Base + 538;
   end MP_UML_Classifier_Is_Abstract;

   -----------------------------------------------
   -- MP_UML_Classifier_Is_Final_Specialization --
   -----------------------------------------------

   function MP_UML_Classifier_Is_Final_Specialization return AMF.Internals.CMOF_Element is
   begin
      return Base + 539;
   end MP_UML_Classifier_Is_Final_Specialization;

   ------------------------------------------------
   -- MP_UML_Classifier_Owned_Template_Signature --
   ------------------------------------------------

   function MP_UML_Classifier_Owned_Template_Signature return AMF.Internals.CMOF_Element is
   begin
      return Base + 540;
   end MP_UML_Classifier_Owned_Template_Signature;

   --------------------------------------
   -- MP_UML_Classifier_Owned_Use_Case --
   --------------------------------------

   function MP_UML_Classifier_Owned_Use_Case return AMF.Internals.CMOF_Element is
   begin
      return Base + 302;
   end MP_UML_Classifier_Owned_Use_Case;

   ----------------------------------------
   -- MP_UML_Classifier_Powertype_Extent --
   ----------------------------------------

   function MP_UML_Classifier_Powertype_Extent return AMF.Internals.CMOF_Element is
   begin
      return Base + 303;
   end MP_UML_Classifier_Powertype_Extent;

   --------------------------------------------
   -- MP_UML_Classifier_Redefined_Classifier --
   --------------------------------------------

   function MP_UML_Classifier_Redefined_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 304;
   end MP_UML_Classifier_Redefined_Classifier;

   --------------------------------------
   -- MP_UML_Classifier_Representation --
   --------------------------------------

   function MP_UML_Classifier_Representation return AMF.Internals.CMOF_Element is
   begin
      return Base + 541;
   end MP_UML_Classifier_Representation;

   ------------------------------------
   -- MP_UML_Classifier_Substitution --
   ------------------------------------

   function MP_UML_Classifier_Substitution return AMF.Internals.CMOF_Element is
   begin
      return Base + 305;
   end MP_UML_Classifier_Substitution;

   ------------------------------------------
   -- MP_UML_Classifier_Template_Parameter --
   ------------------------------------------

   function MP_UML_Classifier_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 542;
   end MP_UML_Classifier_Template_Parameter;

   --------------------------------
   -- MP_UML_Classifier_Use_Case --
   --------------------------------

   function MP_UML_Classifier_Use_Case return AMF.Internals.CMOF_Element is
   begin
      return Base + 306;
   end MP_UML_Classifier_Use_Case;

   --------------------------------------------------------------
   -- MP_UML_Classifier_Template_Parameter_Allow_Substitutable --
   --------------------------------------------------------------

   function MP_UML_Classifier_Template_Parameter_Allow_Substitutable return AMF.Internals.CMOF_Element is
   begin
      return Base + 543;
   end MP_UML_Classifier_Template_Parameter_Allow_Substitutable;

   ------------------------------------------------------------------
   -- MP_UML_Classifier_Template_Parameter_Constraining_Classifier --
   ------------------------------------------------------------------

   function MP_UML_Classifier_Template_Parameter_Constraining_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 307;
   end MP_UML_Classifier_Template_Parameter_Constraining_Classifier;

   --------------------------------------------------------------
   -- MP_UML_Classifier_Template_Parameter_Parametered_Element --
   --------------------------------------------------------------

   function MP_UML_Classifier_Template_Parameter_Parametered_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 544;
   end MP_UML_Classifier_Template_Parameter_Parametered_Element;

   ------------------------
   -- MP_UML_Clause_Body --
   ------------------------

   function MP_UML_Clause_Body return AMF.Internals.CMOF_Element is
   begin
      return Base + 308;
   end MP_UML_Clause_Body;

   -------------------------------
   -- MP_UML_Clause_Body_Output --
   -------------------------------

   function MP_UML_Clause_Body_Output return AMF.Internals.CMOF_Element is
   begin
      return Base + 309;
   end MP_UML_Clause_Body_Output;

   ---------------------------
   -- MP_UML_Clause_Decider --
   ---------------------------

   function MP_UML_Clause_Decider return AMF.Internals.CMOF_Element is
   begin
      return Base + 545;
   end MP_UML_Clause_Decider;

   --------------------------------------
   -- MP_UML_Clause_Predecessor_Clause --
   --------------------------------------

   function MP_UML_Clause_Predecessor_Clause return AMF.Internals.CMOF_Element is
   begin
      return Base + 310;
   end MP_UML_Clause_Predecessor_Clause;

   ------------------------------------
   -- MP_UML_Clause_Successor_Clause --
   ------------------------------------

   function MP_UML_Clause_Successor_Clause return AMF.Internals.CMOF_Element is
   begin
      return Base + 311;
   end MP_UML_Clause_Successor_Clause;

   ------------------------
   -- MP_UML_Clause_Test --
   ------------------------

   function MP_UML_Clause_Test return AMF.Internals.CMOF_Element is
   begin
      return Base + 312;
   end MP_UML_Clause_Test;

   -------------------------------------------------
   -- MP_UML_Clear_Association_Action_Association --
   -------------------------------------------------

   function MP_UML_Clear_Association_Action_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 546;
   end MP_UML_Clear_Association_Action_Association;

   --------------------------------------------
   -- MP_UML_Clear_Association_Action_Object --
   --------------------------------------------

   function MP_UML_Clear_Association_Action_Object return AMF.Internals.CMOF_Element is
   begin
      return Base + 547;
   end MP_UML_Clear_Association_Action_Object;

   ---------------------------------------------------
   -- MP_UML_Clear_Structural_Feature_Action_Result --
   ---------------------------------------------------

   function MP_UML_Clear_Structural_Feature_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 548;
   end MP_UML_Clear_Structural_Feature_Action_Result;

   ---------------------------------------------
   -- MP_UML_Collaboration_Collaboration_Role --
   ---------------------------------------------

   function MP_UML_Collaboration_Collaboration_Role return AMF.Internals.CMOF_Element is
   begin
      return Base + 313;
   end MP_UML_Collaboration_Collaboration_Role;

   -------------------------------------------
   -- MP_UML_Collaboration_Use_Role_Binding --
   -------------------------------------------

   function MP_UML_Collaboration_Use_Role_Binding return AMF.Internals.CMOF_Element is
   begin
      return Base + 314;
   end MP_UML_Collaboration_Use_Role_Binding;

   -----------------------------------
   -- MP_UML_Collaboration_Use_Type --
   -----------------------------------

   function MP_UML_Collaboration_Use_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 549;
   end MP_UML_Collaboration_Use_Type;

   ---------------------------------------------
   -- MP_UML_Combined_Fragment_Cfragment_Gate --
   ---------------------------------------------

   function MP_UML_Combined_Fragment_Cfragment_Gate return AMF.Internals.CMOF_Element is
   begin
      return Base + 315;
   end MP_UML_Combined_Fragment_Cfragment_Gate;

   ---------------------------------------------------
   -- MP_UML_Combined_Fragment_Interaction_Operator --
   ---------------------------------------------------

   function MP_UML_Combined_Fragment_Interaction_Operator return AMF.Internals.CMOF_Element is
   begin
      return Base + 550;
   end MP_UML_Combined_Fragment_Interaction_Operator;

   --------------------------------------
   -- MP_UML_Combined_Fragment_Operand --
   --------------------------------------

   function MP_UML_Combined_Fragment_Operand return AMF.Internals.CMOF_Element is
   begin
      return Base + 316;
   end MP_UML_Combined_Fragment_Operand;

   --------------------------------------
   -- MP_UML_Comment_Annotated_Element --
   --------------------------------------

   function MP_UML_Comment_Annotated_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 317;
   end MP_UML_Comment_Annotated_Element;

   -------------------------
   -- MP_UML_Comment_Body --
   -------------------------

   function MP_UML_Comment_Body return AMF.Internals.CMOF_Element is
   begin
      return Base + 551;
   end MP_UML_Comment_Body;

   -------------------------------------------------
   -- MP_UML_Component_Is_Indirectly_Instantiated --
   -------------------------------------------------

   function MP_UML_Component_Is_Indirectly_Instantiated return AMF.Internals.CMOF_Element is
   begin
      return Base + 552;
   end MP_UML_Component_Is_Indirectly_Instantiated;

   ---------------------------------------
   -- MP_UML_Component_Packaged_Element --
   ---------------------------------------

   function MP_UML_Component_Packaged_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 318;
   end MP_UML_Component_Packaged_Element;

   -------------------------------
   -- MP_UML_Component_Provided --
   -------------------------------

   function MP_UML_Component_Provided return AMF.Internals.CMOF_Element is
   begin
      return Base + 319;
   end MP_UML_Component_Provided;

   ----------------------------------
   -- MP_UML_Component_Realization --
   ----------------------------------

   function MP_UML_Component_Realization return AMF.Internals.CMOF_Element is
   begin
      return Base + 320;
   end MP_UML_Component_Realization;

   -------------------------------
   -- MP_UML_Component_Required --
   -------------------------------

   function MP_UML_Component_Required return AMF.Internals.CMOF_Element is
   begin
      return Base + 321;
   end MP_UML_Component_Required;

   ----------------------------------------------
   -- MP_UML_Component_Realization_Abstraction --
   ----------------------------------------------

   function MP_UML_Component_Realization_Abstraction return AMF.Internals.CMOF_Element is
   begin
      return Base + 553;
   end MP_UML_Component_Realization_Abstraction;

   -------------------------------------------------------
   -- MP_UML_Component_Realization_Realizing_Classifier --
   -------------------------------------------------------

   function MP_UML_Component_Realization_Realizing_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 322;
   end MP_UML_Component_Realization_Realizing_Classifier;

   ------------------------------------
   -- MP_UML_Conditional_Node_Clause --
   ------------------------------------

   function MP_UML_Conditional_Node_Clause return AMF.Internals.CMOF_Element is
   begin
      return Base + 323;
   end MP_UML_Conditional_Node_Clause;

   ----------------------------------------
   -- MP_UML_Conditional_Node_Is_Assured --
   ----------------------------------------

   function MP_UML_Conditional_Node_Is_Assured return AMF.Internals.CMOF_Element is
   begin
      return Base + 554;
   end MP_UML_Conditional_Node_Is_Assured;

   --------------------------------------------
   -- MP_UML_Conditional_Node_Is_Determinate --
   --------------------------------------------

   function MP_UML_Conditional_Node_Is_Determinate return AMF.Internals.CMOF_Element is
   begin
      return Base + 555;
   end MP_UML_Conditional_Node_Is_Determinate;

   ------------------------------------
   -- MP_UML_Conditional_Node_Result --
   ------------------------------------

   function MP_UML_Conditional_Node_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 324;
   end MP_UML_Conditional_Node_Result;

   ------------------------------------
   -- MP_UML_Connectable_Element_End --
   ------------------------------------

   function MP_UML_Connectable_Element_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 325;
   end MP_UML_Connectable_Element_End;

   ---------------------------------------------------
   -- MP_UML_Connectable_Element_Template_Parameter --
   ---------------------------------------------------

   function MP_UML_Connectable_Element_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 556;
   end MP_UML_Connectable_Element_Template_Parameter;

   -----------------------------------------------------------------------
   -- MP_UML_Connectable_Element_Template_Parameter_Parametered_Element --
   -----------------------------------------------------------------------

   function MP_UML_Connectable_Element_Template_Parameter_Parametered_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 557;
   end MP_UML_Connectable_Element_Template_Parameter_Parametered_Element;

   ---------------------------------------------
   -- MP_UML_Connection_Point_Reference_Entry --
   ---------------------------------------------

   function MP_UML_Connection_Point_Reference_Entry return AMF.Internals.CMOF_Element is
   begin
      return Base + 326;
   end MP_UML_Connection_Point_Reference_Entry;

   --------------------------------------------
   -- MP_UML_Connection_Point_Reference_Exit --
   --------------------------------------------

   function MP_UML_Connection_Point_Reference_Exit return AMF.Internals.CMOF_Element is
   begin
      return Base + 327;
   end MP_UML_Connection_Point_Reference_Exit;

   ---------------------------------------------
   -- MP_UML_Connection_Point_Reference_State --
   ---------------------------------------------

   function MP_UML_Connection_Point_Reference_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 558;
   end MP_UML_Connection_Point_Reference_State;

   -------------------------------
   -- MP_UML_Connector_Contract --
   -------------------------------

   function MP_UML_Connector_Contract return AMF.Internals.CMOF_Element is
   begin
      return Base + 328;
   end MP_UML_Connector_Contract;

   --------------------------
   -- MP_UML_Connector_End --
   --------------------------

   function MP_UML_Connector_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 329;
   end MP_UML_Connector_End;

   ---------------------------
   -- MP_UML_Connector_Kind --
   ---------------------------

   function MP_UML_Connector_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 559;
   end MP_UML_Connector_Kind;

   ------------------------------------------
   -- MP_UML_Connector_Redefined_Connector --
   ------------------------------------------

   function MP_UML_Connector_Redefined_Connector return AMF.Internals.CMOF_Element is
   begin
      return Base + 330;
   end MP_UML_Connector_Redefined_Connector;

   ---------------------------
   -- MP_UML_Connector_Type --
   ---------------------------

   function MP_UML_Connector_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 560;
   end MP_UML_Connector_Type;

   ---------------------------------------
   -- MP_UML_Connector_End_Defining_End --
   ---------------------------------------

   function MP_UML_Connector_End_Defining_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 561;
   end MP_UML_Connector_End_Defining_End;

   -----------------------------------------
   -- MP_UML_Connector_End_Part_With_Port --
   -----------------------------------------

   function MP_UML_Connector_End_Part_With_Port return AMF.Internals.CMOF_Element is
   begin
      return Base + 562;
   end MP_UML_Connector_End_Part_With_Port;

   -------------------------------
   -- MP_UML_Connector_End_Role --
   -------------------------------

   function MP_UML_Connector_End_Role return AMF.Internals.CMOF_Element is
   begin
      return Base + 563;
   end MP_UML_Connector_End_Role;

   ---------------------------------------------
   -- MP_UML_Consider_Ignore_Fragment_Message --
   ---------------------------------------------

   function MP_UML_Consider_Ignore_Fragment_Message return AMF.Internals.CMOF_Element is
   begin
      return Base + 331;
   end MP_UML_Consider_Ignore_Fragment_Message;

   -------------------------------------------
   -- MP_UML_Constraint_Constrained_Element --
   -------------------------------------------

   function MP_UML_Constraint_Constrained_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 332;
   end MP_UML_Constraint_Constrained_Element;

   -------------------------------
   -- MP_UML_Constraint_Context --
   -------------------------------

   function MP_UML_Constraint_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 564;
   end MP_UML_Constraint_Context;

   -------------------------------------
   -- MP_UML_Constraint_Specification --
   -------------------------------------

   function MP_UML_Constraint_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 565;
   end MP_UML_Constraint_Specification;

   ---------------------------------
   -- MP_UML_Continuation_Setting --
   ---------------------------------

   function MP_UML_Continuation_Setting return AMF.Internals.CMOF_Element is
   begin
      return Base + 566;
   end MP_UML_Continuation_Setting;

   ----------------------------------------
   -- MP_UML_Create_Link_Action_End_Data --
   ----------------------------------------

   function MP_UML_Create_Link_Action_End_Data return AMF.Internals.CMOF_Element is
   begin
      return Base + 333;
   end MP_UML_Create_Link_Action_End_Data;

   ---------------------------------------------
   -- MP_UML_Create_Link_Object_Action_Result --
   ---------------------------------------------

   function MP_UML_Create_Link_Object_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 567;
   end MP_UML_Create_Link_Object_Action_Result;

   --------------------------------------------
   -- MP_UML_Create_Object_Action_Classifier --
   --------------------------------------------

   function MP_UML_Create_Object_Action_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 568;
   end MP_UML_Create_Object_Action_Classifier;

   ----------------------------------------
   -- MP_UML_Create_Object_Action_Result --
   ----------------------------------------

   function MP_UML_Create_Object_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 569;
   end MP_UML_Create_Object_Action_Result;

   --------------------------------------
   -- MP_UML_Data_Type_Owned_Attribute --
   --------------------------------------

   function MP_UML_Data_Type_Owned_Attribute return AMF.Internals.CMOF_Element is
   begin
      return Base + 334;
   end MP_UML_Data_Type_Owned_Attribute;

   --------------------------------------
   -- MP_UML_Data_Type_Owned_Operation --
   --------------------------------------

   function MP_UML_Data_Type_Owned_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 335;
   end MP_UML_Data_Type_Owned_Operation;

   -----------------------------------------
   -- MP_UML_Decision_Node_Decision_Input --
   -----------------------------------------

   function MP_UML_Decision_Node_Decision_Input return AMF.Internals.CMOF_Element is
   begin
      return Base + 570;
   end MP_UML_Decision_Node_Decision_Input;

   ----------------------------------------------
   -- MP_UML_Decision_Node_Decision_Input_Flow --
   ----------------------------------------------

   function MP_UML_Decision_Node_Decision_Input_Flow return AMF.Internals.CMOF_Element is
   begin
      return Base + 571;
   end MP_UML_Decision_Node_Decision_Input_Flow;

   ------------------------------
   -- MP_UML_Dependency_Client --
   ------------------------------

   function MP_UML_Dependency_Client return AMF.Internals.CMOF_Element is
   begin
      return Base + 336;
   end MP_UML_Dependency_Client;

   --------------------------------
   -- MP_UML_Dependency_Supplier --
   --------------------------------

   function MP_UML_Dependency_Supplier return AMF.Internals.CMOF_Element is
   begin
      return Base + 337;
   end MP_UML_Dependency_Supplier;

   -------------------------------------
   -- MP_UML_Deployment_Configuration --
   -------------------------------------

   function MP_UML_Deployment_Configuration return AMF.Internals.CMOF_Element is
   begin
      return Base + 338;
   end MP_UML_Deployment_Configuration;

   -----------------------------------------
   -- MP_UML_Deployment_Deployed_Artifact --
   -----------------------------------------

   function MP_UML_Deployment_Deployed_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 339;
   end MP_UML_Deployment_Deployed_Artifact;

   --------------------------------
   -- MP_UML_Deployment_Location --
   --------------------------------

   function MP_UML_Deployment_Location return AMF.Internals.CMOF_Element is
   begin
      return Base + 572;
   end MP_UML_Deployment_Location;

   ------------------------------------------------
   -- MP_UML_Deployment_Specification_Deployment --
   ------------------------------------------------

   function MP_UML_Deployment_Specification_Deployment return AMF.Internals.CMOF_Element is
   begin
      return Base + 573;
   end MP_UML_Deployment_Specification_Deployment;

   ---------------------------------------------------------
   -- MP_UML_Deployment_Specification_Deployment_Location --
   ---------------------------------------------------------

   function MP_UML_Deployment_Specification_Deployment_Location return AMF.Internals.CMOF_Element is
   begin
      return Base + 574;
   end MP_UML_Deployment_Specification_Deployment_Location;

   --------------------------------------------------------
   -- MP_UML_Deployment_Specification_Execution_Location --
   --------------------------------------------------------

   function MP_UML_Deployment_Specification_Execution_Location return AMF.Internals.CMOF_Element is
   begin
      return Base + 575;
   end MP_UML_Deployment_Specification_Execution_Location;

   -----------------------------------------------
   -- MP_UML_Deployment_Target_Deployed_Element --
   -----------------------------------------------

   function MP_UML_Deployment_Target_Deployed_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 340;
   end MP_UML_Deployment_Target_Deployed_Element;

   -----------------------------------------
   -- MP_UML_Deployment_Target_Deployment --
   -----------------------------------------

   function MP_UML_Deployment_Target_Deployment return AMF.Internals.CMOF_Element is
   begin
      return Base + 341;
   end MP_UML_Deployment_Target_Deployment;

   -----------------------------------------
   -- MP_UML_Destroy_Link_Action_End_Data --
   -----------------------------------------

   function MP_UML_Destroy_Link_Action_End_Data return AMF.Internals.CMOF_Element is
   begin
      return Base + 342;
   end MP_UML_Destroy_Link_Action_End_Data;

   ---------------------------------------------------
   -- MP_UML_Destroy_Object_Action_Is_Destroy_Links --
   ---------------------------------------------------

   function MP_UML_Destroy_Object_Action_Is_Destroy_Links return AMF.Internals.CMOF_Element is
   begin
      return Base + 576;
   end MP_UML_Destroy_Object_Action_Is_Destroy_Links;

   -----------------------------------------------------------
   -- MP_UML_Destroy_Object_Action_Is_Destroy_Owned_Objects --
   -----------------------------------------------------------

   function MP_UML_Destroy_Object_Action_Is_Destroy_Owned_Objects return AMF.Internals.CMOF_Element is
   begin
      return Base + 577;
   end MP_UML_Destroy_Object_Action_Is_Destroy_Owned_Objects;

   -----------------------------------------
   -- MP_UML_Destroy_Object_Action_Target --
   -----------------------------------------

   function MP_UML_Destroy_Object_Action_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 578;
   end MP_UML_Destroy_Object_Action_Target;

   -----------------------------------------
   -- MP_UML_Directed_Relationship_Source --
   -----------------------------------------

   function MP_UML_Directed_Relationship_Source return AMF.Internals.CMOF_Element is
   begin
      return Base + 343;
   end MP_UML_Directed_Relationship_Source;

   -----------------------------------------
   -- MP_UML_Directed_Relationship_Target --
   -----------------------------------------

   function MP_UML_Directed_Relationship_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 344;
   end MP_UML_Directed_Relationship_Target;

   --------------------------
   -- MP_UML_Duration_Expr --
   --------------------------

   function MP_UML_Duration_Expr return AMF.Internals.CMOF_Element is
   begin
      return Base + 579;
   end MP_UML_Duration_Expr;

   ---------------------------------
   -- MP_UML_Duration_Observation --
   ---------------------------------

   function MP_UML_Duration_Observation return AMF.Internals.CMOF_Element is
   begin
      return Base + 345;
   end MP_UML_Duration_Observation;

   --------------------------------------------
   -- MP_UML_Duration_Constraint_First_Event --
   --------------------------------------------

   function MP_UML_Duration_Constraint_First_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 580;
   end MP_UML_Duration_Constraint_First_Event;

   ----------------------------------------------
   -- MP_UML_Duration_Constraint_Specification --
   ----------------------------------------------

   function MP_UML_Duration_Constraint_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 581;
   end MP_UML_Duration_Constraint_Specification;

   ----------------------------------
   -- MP_UML_Duration_Interval_Max --
   ----------------------------------

   function MP_UML_Duration_Interval_Max return AMF.Internals.CMOF_Element is
   begin
      return Base + 582;
   end MP_UML_Duration_Interval_Max;

   ----------------------------------
   -- MP_UML_Duration_Interval_Min --
   ----------------------------------

   function MP_UML_Duration_Interval_Min return AMF.Internals.CMOF_Element is
   begin
      return Base + 583;
   end MP_UML_Duration_Interval_Min;

   ---------------------------------------
   -- MP_UML_Duration_Observation_Event --
   ---------------------------------------

   function MP_UML_Duration_Observation_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 346;
   end MP_UML_Duration_Observation_Event;

   ---------------------------------------------
   -- MP_UML_Duration_Observation_First_Event --
   ---------------------------------------------

   function MP_UML_Duration_Observation_First_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 584;
   end MP_UML_Duration_Observation_First_Event;

   ----------------------------------
   -- MP_UML_Element_Owned_Comment --
   ----------------------------------

   function MP_UML_Element_Owned_Comment return AMF.Internals.CMOF_Element is
   begin
      return Base + 347;
   end MP_UML_Element_Owned_Comment;

   ----------------------------------
   -- MP_UML_Element_Owned_Element --
   ----------------------------------

   function MP_UML_Element_Owned_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 348;
   end MP_UML_Element_Owned_Element;

   --------------------------
   -- MP_UML_Element_Owner --
   --------------------------

   function MP_UML_Element_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 585;
   end MP_UML_Element_Owner;

   ---------------------------------
   -- MP_UML_Element_Import_Alias --
   ---------------------------------

   function MP_UML_Element_Import_Alias return AMF.Internals.CMOF_Element is
   begin
      return Base + 586;
   end MP_UML_Element_Import_Alias;

   --------------------------------------------
   -- MP_UML_Element_Import_Imported_Element --
   --------------------------------------------

   function MP_UML_Element_Import_Imported_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 587;
   end MP_UML_Element_Import_Imported_Element;

   -----------------------------------------------
   -- MP_UML_Element_Import_Importing_Namespace --
   -----------------------------------------------

   function MP_UML_Element_Import_Importing_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 588;
   end MP_UML_Element_Import_Importing_Namespace;

   --------------------------------------
   -- MP_UML_Element_Import_Visibility --
   --------------------------------------

   function MP_UML_Element_Import_Visibility return AMF.Internals.CMOF_Element is
   begin
      return Base + 589;
   end MP_UML_Element_Import_Visibility;

   -----------------------------------------------
   -- MP_UML_Encapsulated_Classifier_Owned_Port --
   -----------------------------------------------

   function MP_UML_Encapsulated_Classifier_Owned_Port return AMF.Internals.CMOF_Element is
   begin
      return Base + 349;
   end MP_UML_Encapsulated_Classifier_Owned_Port;

   --------------------------------------
   -- MP_UML_Enumeration_Owned_Literal --
   --------------------------------------

   function MP_UML_Enumeration_Owned_Literal return AMF.Internals.CMOF_Element is
   begin
      return Base + 350;
   end MP_UML_Enumeration_Owned_Literal;

   -------------------------------------------
   -- MP_UML_Enumeration_Literal_Classifier --
   -------------------------------------------

   function MP_UML_Enumeration_Literal_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 351;
   end MP_UML_Enumeration_Literal_Classifier;

   --------------------------------------------
   -- MP_UML_Enumeration_Literal_Enumeration --
   --------------------------------------------

   function MP_UML_Enumeration_Literal_Enumeration return AMF.Internals.CMOF_Element is
   begin
      return Base + 590;
   end MP_UML_Enumeration_Literal_Enumeration;

   ----------------------------------------------
   -- MP_UML_Exception_Handler_Exception_Input --
   ----------------------------------------------

   function MP_UML_Exception_Handler_Exception_Input return AMF.Internals.CMOF_Element is
   begin
      return Base + 591;
   end MP_UML_Exception_Handler_Exception_Input;

   ---------------------------------------------
   -- MP_UML_Exception_Handler_Exception_Type --
   ---------------------------------------------

   function MP_UML_Exception_Handler_Exception_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 352;
   end MP_UML_Exception_Handler_Exception_Type;

   -------------------------------------------
   -- MP_UML_Exception_Handler_Handler_Body --
   -------------------------------------------

   function MP_UML_Exception_Handler_Handler_Body return AMF.Internals.CMOF_Element is
   begin
      return Base + 592;
   end MP_UML_Exception_Handler_Handler_Body;

   ---------------------------------------------
   -- MP_UML_Exception_Handler_Protected_Node --
   ---------------------------------------------

   function MP_UML_Exception_Handler_Protected_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 593;
   end MP_UML_Exception_Handler_Protected_Node;

   ------------------------------------
   -- MP_UML_Executable_Node_Handler --
   ------------------------------------

   function MP_UML_Executable_Node_Handler return AMF.Internals.CMOF_Element is
   begin
      return Base + 353;
   end MP_UML_Executable_Node_Handler;

   ---------------------------------------------------------
   -- MP_UML_Execution_Occurrence_Specification_Execution --
   ---------------------------------------------------------

   function MP_UML_Execution_Occurrence_Specification_Execution return AMF.Internals.CMOF_Element is
   begin
      return Base + 594;
   end MP_UML_Execution_Occurrence_Specification_Execution;

   -------------------------------------------
   -- MP_UML_Execution_Specification_Finish --
   -------------------------------------------

   function MP_UML_Execution_Specification_Finish return AMF.Internals.CMOF_Element is
   begin
      return Base + 595;
   end MP_UML_Execution_Specification_Finish;

   ------------------------------------------
   -- MP_UML_Execution_Specification_Start --
   ------------------------------------------

   function MP_UML_Execution_Specification_Start return AMF.Internals.CMOF_Element is
   begin
      return Base + 596;
   end MP_UML_Execution_Specification_Start;

   -------------------------------------------
   -- MP_UML_Expansion_Node_Region_As_Input --
   -------------------------------------------

   function MP_UML_Expansion_Node_Region_As_Input return AMF.Internals.CMOF_Element is
   begin
      return Base + 597;
   end MP_UML_Expansion_Node_Region_As_Input;

   --------------------------------------------
   -- MP_UML_Expansion_Node_Region_As_Output --
   --------------------------------------------

   function MP_UML_Expansion_Node_Region_As_Output return AMF.Internals.CMOF_Element is
   begin
      return Base + 598;
   end MP_UML_Expansion_Node_Region_As_Output;

   -------------------------------------------
   -- MP_UML_Expansion_Region_Input_Element --
   -------------------------------------------

   function MP_UML_Expansion_Region_Input_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 354;
   end MP_UML_Expansion_Region_Input_Element;

   ----------------------------------
   -- MP_UML_Expansion_Region_Mode --
   ----------------------------------

   function MP_UML_Expansion_Region_Mode return AMF.Internals.CMOF_Element is
   begin
      return Base + 599;
   end MP_UML_Expansion_Region_Mode;

   --------------------------------------------
   -- MP_UML_Expansion_Region_Output_Element --
   --------------------------------------------

   function MP_UML_Expansion_Region_Output_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 355;
   end MP_UML_Expansion_Region_Output_Element;

   -------------------------------
   -- MP_UML_Expression_Operand --
   -------------------------------

   function MP_UML_Expression_Operand return AMF.Internals.CMOF_Element is
   begin
      return Base + 356;
   end MP_UML_Expression_Operand;

   ------------------------------
   -- MP_UML_Expression_Symbol --
   ------------------------------

   function MP_UML_Expression_Symbol return AMF.Internals.CMOF_Element is
   begin
      return Base + 600;
   end MP_UML_Expression_Symbol;

   -----------------------------
   -- MP_UML_Extend_Condition --
   -----------------------------

   function MP_UML_Extend_Condition return AMF.Internals.CMOF_Element is
   begin
      return Base + 601;
   end MP_UML_Extend_Condition;

   ---------------------------------
   -- MP_UML_Extend_Extended_Case --
   ---------------------------------

   function MP_UML_Extend_Extended_Case return AMF.Internals.CMOF_Element is
   begin
      return Base + 602;
   end MP_UML_Extend_Extended_Case;

   -----------------------------
   -- MP_UML_Extend_Extension --
   -----------------------------

   function MP_UML_Extend_Extension return AMF.Internals.CMOF_Element is
   begin
      return Base + 603;
   end MP_UML_Extend_Extension;

   --------------------------------------
   -- MP_UML_Extend_Extension_Location --
   --------------------------------------

   function MP_UML_Extend_Extension_Location return AMF.Internals.CMOF_Element is
   begin
      return Base + 357;
   end MP_UML_Extend_Extension_Location;

   ----------------------------------
   -- MP_UML_Extension_Is_Required --
   ----------------------------------

   function MP_UML_Extension_Is_Required return AMF.Internals.CMOF_Element is
   begin
      return Base + 604;
   end MP_UML_Extension_Is_Required;

   --------------------------------
   -- MP_UML_Extension_Metaclass --
   --------------------------------

   function MP_UML_Extension_Metaclass return AMF.Internals.CMOF_Element is
   begin
      return Base + 605;
   end MP_UML_Extension_Metaclass;

   --------------------------------
   -- MP_UML_Extension_Owned_End --
   --------------------------------

   function MP_UML_Extension_Owned_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 358;
   end MP_UML_Extension_Owned_End;

   --------------------------------
   -- MP_UML_Extension_End_Lower --
   --------------------------------

   function MP_UML_Extension_End_Lower return AMF.Internals.CMOF_Element is
   begin
      return Base + 606;
   end MP_UML_Extension_End_Lower;

   -------------------------------
   -- MP_UML_Extension_End_Type --
   -------------------------------

   function MP_UML_Extension_End_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 607;
   end MP_UML_Extension_End_Type;

   -------------------------------------
   -- MP_UML_Extension_Point_Use_Case --
   -------------------------------------

   function MP_UML_Extension_Point_Use_Case return AMF.Internals.CMOF_Element is
   begin
      return Base + 608;
   end MP_UML_Extension_Point_Use_Case;

   -----------------------------------------
   -- MP_UML_Feature_Featuring_Classifier --
   -----------------------------------------

   function MP_UML_Feature_Featuring_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 359;
   end MP_UML_Feature_Featuring_Classifier;

   ------------------------------
   -- MP_UML_Feature_Is_Static --
   ------------------------------

   function MP_UML_Feature_Is_Static return AMF.Internals.CMOF_Element is
   begin
      return Base + 609;
   end MP_UML_Feature_Is_Static;

   -----------------------------------
   -- MP_UML_General_Ordering_After --
   -----------------------------------

   function MP_UML_General_Ordering_After return AMF.Internals.CMOF_Element is
   begin
      return Base + 610;
   end MP_UML_General_Ordering_After;

   ------------------------------------
   -- MP_UML_General_Ordering_Before --
   ------------------------------------

   function MP_UML_General_Ordering_Before return AMF.Internals.CMOF_Element is
   begin
      return Base + 611;
   end MP_UML_General_Ordering_Before;

   -----------------------------------
   -- MP_UML_Generalization_General --
   -----------------------------------

   function MP_UML_Generalization_General return AMF.Internals.CMOF_Element is
   begin
      return Base + 612;
   end MP_UML_Generalization_General;

   ----------------------------------------------
   -- MP_UML_Generalization_Generalization_Set --
   ----------------------------------------------

   function MP_UML_Generalization_Generalization_Set return AMF.Internals.CMOF_Element is
   begin
      return Base + 360;
   end MP_UML_Generalization_Generalization_Set;

   --------------------------------------------
   -- MP_UML_Generalization_Is_Substitutable --
   --------------------------------------------

   function MP_UML_Generalization_Is_Substitutable return AMF.Internals.CMOF_Element is
   begin
      return Base + 613;
   end MP_UML_Generalization_Is_Substitutable;

   ------------------------------------
   -- MP_UML_Generalization_Specific --
   ------------------------------------

   function MP_UML_Generalization_Specific return AMF.Internals.CMOF_Element is
   begin
      return Base + 614;
   end MP_UML_Generalization_Specific;

   ----------------------------------------------
   -- MP_UML_Generalization_Set_Generalization --
   ----------------------------------------------

   function MP_UML_Generalization_Set_Generalization return AMF.Internals.CMOF_Element is
   begin
      return Base + 361;
   end MP_UML_Generalization_Set_Generalization;

   -------------------------------------------
   -- MP_UML_Generalization_Set_Is_Covering --
   -------------------------------------------

   function MP_UML_Generalization_Set_Is_Covering return AMF.Internals.CMOF_Element is
   begin
      return Base + 615;
   end MP_UML_Generalization_Set_Is_Covering;

   -------------------------------------------
   -- MP_UML_Generalization_Set_Is_Disjoint --
   -------------------------------------------

   function MP_UML_Generalization_Set_Is_Disjoint return AMF.Internals.CMOF_Element is
   begin
      return Base + 616;
   end MP_UML_Generalization_Set_Is_Disjoint;

   -----------------------------------------
   -- MP_UML_Generalization_Set_Powertype --
   -----------------------------------------

   function MP_UML_Generalization_Set_Powertype return AMF.Internals.CMOF_Element is
   begin
      return Base + 617;
   end MP_UML_Generalization_Set_Powertype;

   --------------------------
   -- MP_UML_Image_Content --
   --------------------------

   function MP_UML_Image_Content return AMF.Internals.CMOF_Element is
   begin
      return Base + 618;
   end MP_UML_Image_Content;

   -------------------------
   -- MP_UML_Image_Format --
   -------------------------

   function MP_UML_Image_Format return AMF.Internals.CMOF_Element is
   begin
      return Base + 619;
   end MP_UML_Image_Format;

   ---------------------------
   -- MP_UML_Image_Location --
   ---------------------------

   function MP_UML_Image_Location return AMF.Internals.CMOF_Element is
   begin
      return Base + 620;
   end MP_UML_Image_Location;

   -----------------------------
   -- MP_UML_Include_Addition --
   -----------------------------

   function MP_UML_Include_Addition return AMF.Internals.CMOF_Element is
   begin
      return Base + 621;
   end MP_UML_Include_Addition;

   -----------------------------------
   -- MP_UML_Include_Including_Case --
   -----------------------------------

   function MP_UML_Include_Including_Case return AMF.Internals.CMOF_Element is
   begin
      return Base + 622;
   end MP_UML_Include_Including_Case;

   --------------------------------------
   -- MP_UML_Information_Flow_Conveyed --
   --------------------------------------

   function MP_UML_Information_Flow_Conveyed return AMF.Internals.CMOF_Element is
   begin
      return Base + 362;
   end MP_UML_Information_Flow_Conveyed;

   ------------------------------------------------
   -- MP_UML_Information_Flow_Information_Source --
   ------------------------------------------------

   function MP_UML_Information_Flow_Information_Source return AMF.Internals.CMOF_Element is
   begin
      return Base + 363;
   end MP_UML_Information_Flow_Information_Source;

   ------------------------------------------------
   -- MP_UML_Information_Flow_Information_Target --
   ------------------------------------------------

   function MP_UML_Information_Flow_Information_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 364;
   end MP_UML_Information_Flow_Information_Target;

   -----------------------------------------
   -- MP_UML_Information_Flow_Realization --
   -----------------------------------------

   function MP_UML_Information_Flow_Realization return AMF.Internals.CMOF_Element is
   begin
      return Base + 365;
   end MP_UML_Information_Flow_Realization;

   -----------------------------------------------------
   -- MP_UML_Information_Flow_Realizing_Activity_Edge --
   -----------------------------------------------------

   function MP_UML_Information_Flow_Realizing_Activity_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 366;
   end MP_UML_Information_Flow_Realizing_Activity_Edge;

   -------------------------------------------------
   -- MP_UML_Information_Flow_Realizing_Connector --
   -------------------------------------------------

   function MP_UML_Information_Flow_Realizing_Connector return AMF.Internals.CMOF_Element is
   begin
      return Base + 367;
   end MP_UML_Information_Flow_Realizing_Connector;

   -----------------------------------------------
   -- MP_UML_Information_Flow_Realizing_Message --
   -----------------------------------------------

   function MP_UML_Information_Flow_Realizing_Message return AMF.Internals.CMOF_Element is
   begin
      return Base + 368;
   end MP_UML_Information_Flow_Realizing_Message;

   -----------------------------------------
   -- MP_UML_Information_Item_Represented --
   -----------------------------------------

   function MP_UML_Information_Item_Represented return AMF.Internals.CMOF_Element is
   begin
      return Base + 369;
   end MP_UML_Information_Item_Represented;

   ----------------------------------------------
   -- MP_UML_Instance_Specification_Classifier --
   ----------------------------------------------

   function MP_UML_Instance_Specification_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 370;
   end MP_UML_Instance_Specification_Classifier;

   ----------------------------------------
   -- MP_UML_Instance_Specification_Slot --
   ----------------------------------------

   function MP_UML_Instance_Specification_Slot return AMF.Internals.CMOF_Element is
   begin
      return Base + 371;
   end MP_UML_Instance_Specification_Slot;

   -------------------------------------------------
   -- MP_UML_Instance_Specification_Specification --
   -------------------------------------------------

   function MP_UML_Instance_Specification_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 623;
   end MP_UML_Instance_Specification_Specification;

   ------------------------------------
   -- MP_UML_Instance_Value_Instance --
   ------------------------------------

   function MP_UML_Instance_Value_Instance return AMF.Internals.CMOF_Element is
   begin
      return Base + 624;
   end MP_UML_Instance_Value_Instance;

   -------------------------------
   -- MP_UML_Interaction_Action --
   -------------------------------

   function MP_UML_Interaction_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 372;
   end MP_UML_Interaction_Action;

   ------------------------------------
   -- MP_UML_Interaction_Formal_Gate --
   ------------------------------------

   function MP_UML_Interaction_Formal_Gate return AMF.Internals.CMOF_Element is
   begin
      return Base + 373;
   end MP_UML_Interaction_Formal_Gate;

   ---------------------------------
   -- MP_UML_Interaction_Fragment --
   ---------------------------------

   function MP_UML_Interaction_Fragment return AMF.Internals.CMOF_Element is
   begin
      return Base + 374;
   end MP_UML_Interaction_Fragment;

   ---------------------------------
   -- MP_UML_Interaction_Lifeline --
   ---------------------------------

   function MP_UML_Interaction_Lifeline return AMF.Internals.CMOF_Element is
   begin
      return Base + 375;
   end MP_UML_Interaction_Lifeline;

   --------------------------------
   -- MP_UML_Interaction_Message --
   --------------------------------

   function MP_UML_Interaction_Message return AMF.Internals.CMOF_Element is
   begin
      return Base + 376;
   end MP_UML_Interaction_Message;

   ------------------------------------------
   -- MP_UML_Interaction_Constraint_Maxint --
   ------------------------------------------

   function MP_UML_Interaction_Constraint_Maxint return AMF.Internals.CMOF_Element is
   begin
      return Base + 625;
   end MP_UML_Interaction_Constraint_Maxint;

   ------------------------------------------
   -- MP_UML_Interaction_Constraint_Minint --
   ------------------------------------------

   function MP_UML_Interaction_Constraint_Minint return AMF.Internals.CMOF_Element is
   begin
      return Base + 626;
   end MP_UML_Interaction_Constraint_Minint;

   -----------------------------------------
   -- MP_UML_Interaction_Fragment_Covered --
   -----------------------------------------

   function MP_UML_Interaction_Fragment_Covered return AMF.Internals.CMOF_Element is
   begin
      return Base + 377;
   end MP_UML_Interaction_Fragment_Covered;

   -------------------------------------------------------
   -- MP_UML_Interaction_Fragment_Enclosing_Interaction --
   -------------------------------------------------------

   function MP_UML_Interaction_Fragment_Enclosing_Interaction return AMF.Internals.CMOF_Element is
   begin
      return Base + 627;
   end MP_UML_Interaction_Fragment_Enclosing_Interaction;

   ---------------------------------------------------
   -- MP_UML_Interaction_Fragment_Enclosing_Operand --
   ---------------------------------------------------

   function MP_UML_Interaction_Fragment_Enclosing_Operand return AMF.Internals.CMOF_Element is
   begin
      return Base + 628;
   end MP_UML_Interaction_Fragment_Enclosing_Operand;

   --------------------------------------------------
   -- MP_UML_Interaction_Fragment_General_Ordering --
   --------------------------------------------------

   function MP_UML_Interaction_Fragment_General_Ordering return AMF.Internals.CMOF_Element is
   begin
      return Base + 378;
   end MP_UML_Interaction_Fragment_General_Ordering;

   -----------------------------------------
   -- MP_UML_Interaction_Operand_Fragment --
   -----------------------------------------

   function MP_UML_Interaction_Operand_Fragment return AMF.Internals.CMOF_Element is
   begin
      return Base + 379;
   end MP_UML_Interaction_Operand_Fragment;

   --------------------------------------
   -- MP_UML_Interaction_Operand_Guard --
   --------------------------------------

   function MP_UML_Interaction_Operand_Guard return AMF.Internals.CMOF_Element is
   begin
      return Base + 629;
   end MP_UML_Interaction_Operand_Guard;

   ----------------------------------------
   -- MP_UML_Interaction_Use_Actual_Gate --
   ----------------------------------------

   function MP_UML_Interaction_Use_Actual_Gate return AMF.Internals.CMOF_Element is
   begin
      return Base + 380;
   end MP_UML_Interaction_Use_Actual_Gate;

   -------------------------------------
   -- MP_UML_Interaction_Use_Argument --
   -------------------------------------

   function MP_UML_Interaction_Use_Argument return AMF.Internals.CMOF_Element is
   begin
      return Base + 381;
   end MP_UML_Interaction_Use_Argument;

   --------------------------------------
   -- MP_UML_Interaction_Use_Refers_To --
   --------------------------------------

   function MP_UML_Interaction_Use_Refers_To return AMF.Internals.CMOF_Element is
   begin
      return Base + 630;
   end MP_UML_Interaction_Use_Refers_To;

   -----------------------------------------
   -- MP_UML_Interaction_Use_Return_Value --
   -----------------------------------------

   function MP_UML_Interaction_Use_Return_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 631;
   end MP_UML_Interaction_Use_Return_Value;

   ---------------------------------------------------
   -- MP_UML_Interaction_Use_Return_Value_Recipient --
   ---------------------------------------------------

   function MP_UML_Interaction_Use_Return_Value_Recipient return AMF.Internals.CMOF_Element is
   begin
      return Base + 632;
   end MP_UML_Interaction_Use_Return_Value_Recipient;

   ----------------------------------------
   -- MP_UML_Interface_Nested_Classifier --
   ----------------------------------------

   function MP_UML_Interface_Nested_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 382;
   end MP_UML_Interface_Nested_Classifier;

   --------------------------------------
   -- MP_UML_Interface_Owned_Attribute --
   --------------------------------------

   function MP_UML_Interface_Owned_Attribute return AMF.Internals.CMOF_Element is
   begin
      return Base + 383;
   end MP_UML_Interface_Owned_Attribute;

   --------------------------------------
   -- MP_UML_Interface_Owned_Operation --
   --------------------------------------

   function MP_UML_Interface_Owned_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 384;
   end MP_UML_Interface_Owned_Operation;

   --------------------------------------
   -- MP_UML_Interface_Owned_Reception --
   --------------------------------------

   function MP_UML_Interface_Owned_Reception return AMF.Internals.CMOF_Element is
   begin
      return Base + 385;
   end MP_UML_Interface_Owned_Reception;

   -------------------------------
   -- MP_UML_Interface_Protocol --
   -------------------------------

   function MP_UML_Interface_Protocol return AMF.Internals.CMOF_Element is
   begin
      return Base + 633;
   end MP_UML_Interface_Protocol;

   ------------------------------------------
   -- MP_UML_Interface_Redefined_Interface --
   ------------------------------------------

   function MP_UML_Interface_Redefined_Interface return AMF.Internals.CMOF_Element is
   begin
      return Base + 386;
   end MP_UML_Interface_Redefined_Interface;

   -------------------------------------------
   -- MP_UML_Interface_Realization_Contract --
   -------------------------------------------

   function MP_UML_Interface_Realization_Contract return AMF.Internals.CMOF_Element is
   begin
      return Base + 634;
   end MP_UML_Interface_Realization_Contract;

   ----------------------------------------------------------
   -- MP_UML_Interface_Realization_Implementing_Classifier --
   ----------------------------------------------------------

   function MP_UML_Interface_Realization_Implementing_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 635;
   end MP_UML_Interface_Realization_Implementing_Classifier;

   ------------------------------------------------------------
   -- MP_UML_Interruptible_Activity_Region_Interrupting_Edge --
   ------------------------------------------------------------

   function MP_UML_Interruptible_Activity_Region_Interrupting_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 387;
   end MP_UML_Interruptible_Activity_Region_Interrupting_Edge;

   -----------------------------------------------
   -- MP_UML_Interruptible_Activity_Region_Node --
   -----------------------------------------------

   function MP_UML_Interruptible_Activity_Region_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 388;
   end MP_UML_Interruptible_Activity_Region_Node;

   -------------------------
   -- MP_UML_Interval_Max --
   -------------------------

   function MP_UML_Interval_Max return AMF.Internals.CMOF_Element is
   begin
      return Base + 636;
   end MP_UML_Interval_Max;

   -------------------------
   -- MP_UML_Interval_Min --
   -------------------------

   function MP_UML_Interval_Min return AMF.Internals.CMOF_Element is
   begin
      return Base + 637;
   end MP_UML_Interval_Min;

   ----------------------------------------------
   -- MP_UML_Interval_Constraint_Specification --
   ----------------------------------------------

   function MP_UML_Interval_Constraint_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 638;
   end MP_UML_Interval_Constraint_Specification;

   ---------------------------------------
   -- MP_UML_Invocation_Action_Argument --
   ---------------------------------------

   function MP_UML_Invocation_Action_Argument return AMF.Internals.CMOF_Element is
   begin
      return Base + 389;
   end MP_UML_Invocation_Action_Argument;

   --------------------------------------
   -- MP_UML_Invocation_Action_On_Port --
   --------------------------------------

   function MP_UML_Invocation_Action_On_Port return AMF.Internals.CMOF_Element is
   begin
      return Base + 639;
   end MP_UML_Invocation_Action_On_Port;

   -------------------------------------------
   -- MP_UML_Join_Node_Is_Combine_Duplicate --
   -------------------------------------------

   function MP_UML_Join_Node_Is_Combine_Duplicate return AMF.Internals.CMOF_Element is
   begin
      return Base + 640;
   end MP_UML_Join_Node_Is_Combine_Duplicate;

   --------------------------------
   -- MP_UML_Join_Node_Join_Spec --
   --------------------------------

   function MP_UML_Join_Node_Join_Spec return AMF.Internals.CMOF_Element is
   begin
      return Base + 641;
   end MP_UML_Join_Node_Join_Spec;

   --------------------------------
   -- MP_UML_Lifeline_Covered_By --
   --------------------------------

   function MP_UML_Lifeline_Covered_By return AMF.Internals.CMOF_Element is
   begin
      return Base + 390;
   end MP_UML_Lifeline_Covered_By;

   -----------------------------------
   -- MP_UML_Lifeline_Decomposed_As --
   -----------------------------------

   function MP_UML_Lifeline_Decomposed_As return AMF.Internals.CMOF_Element is
   begin
      return Base + 642;
   end MP_UML_Lifeline_Decomposed_As;

   ---------------------------------
   -- MP_UML_Lifeline_Interaction --
   ---------------------------------

   function MP_UML_Lifeline_Interaction return AMF.Internals.CMOF_Element is
   begin
      return Base + 643;
   end MP_UML_Lifeline_Interaction;

   --------------------------------
   -- MP_UML_Lifeline_Represents --
   --------------------------------

   function MP_UML_Lifeline_Represents return AMF.Internals.CMOF_Element is
   begin
      return Base + 644;
   end MP_UML_Lifeline_Represents;

   ------------------------------
   -- MP_UML_Lifeline_Selector --
   ------------------------------

   function MP_UML_Lifeline_Selector return AMF.Internals.CMOF_Element is
   begin
      return Base + 645;
   end MP_UML_Lifeline_Selector;

   ---------------------------------
   -- MP_UML_Link_Action_End_Data --
   ---------------------------------

   function MP_UML_Link_Action_End_Data return AMF.Internals.CMOF_Element is
   begin
      return Base + 391;
   end MP_UML_Link_Action_End_Data;

   ------------------------------------
   -- MP_UML_Link_Action_Input_Value --
   ------------------------------------

   function MP_UML_Link_Action_Input_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 392;
   end MP_UML_Link_Action_Input_Value;

   ---------------------------------------------
   -- MP_UML_Link_End_Creation_Data_Insert_At --
   ---------------------------------------------

   function MP_UML_Link_End_Creation_Data_Insert_At return AMF.Internals.CMOF_Element is
   begin
      return Base + 646;
   end MP_UML_Link_End_Creation_Data_Insert_At;

   --------------------------------------------------
   -- MP_UML_Link_End_Creation_Data_Is_Replace_All --
   --------------------------------------------------

   function MP_UML_Link_End_Creation_Data_Is_Replace_All return AMF.Internals.CMOF_Element is
   begin
      return Base + 647;
   end MP_UML_Link_End_Creation_Data_Is_Replace_All;

   ------------------------------
   -- MP_UML_Link_End_Data_End --
   ------------------------------

   function MP_UML_Link_End_Data_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 648;
   end MP_UML_Link_End_Data_End;

   ------------------------------------
   -- MP_UML_Link_End_Data_Qualifier --
   ------------------------------------

   function MP_UML_Link_End_Data_Qualifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 393;
   end MP_UML_Link_End_Data_Qualifier;

   --------------------------------
   -- MP_UML_Link_End_Data_Value --
   --------------------------------

   function MP_UML_Link_End_Data_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 649;
   end MP_UML_Link_End_Data_Value;

   -------------------------------------------------
   -- MP_UML_Link_End_Destruction_Data_Destroy_At --
   -------------------------------------------------

   function MP_UML_Link_End_Destruction_Data_Destroy_At return AMF.Internals.CMOF_Element is
   begin
      return Base + 650;
   end MP_UML_Link_End_Destruction_Data_Destroy_At;

   ------------------------------------------------------------
   -- MP_UML_Link_End_Destruction_Data_Is_Destroy_Duplicates --
   ------------------------------------------------------------

   function MP_UML_Link_End_Destruction_Data_Is_Destroy_Duplicates return AMF.Internals.CMOF_Element is
   begin
      return Base + 651;
   end MP_UML_Link_End_Destruction_Data_Is_Destroy_Duplicates;

   ----------------------------------
   -- MP_UML_Literal_Boolean_Value --
   ----------------------------------

   function MP_UML_Literal_Boolean_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 652;
   end MP_UML_Literal_Boolean_Value;

   ----------------------------------
   -- MP_UML_Literal_Integer_Value --
   ----------------------------------

   function MP_UML_Literal_Integer_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 653;
   end MP_UML_Literal_Integer_Value;

   -------------------------------
   -- MP_UML_Literal_Real_Value --
   -------------------------------

   function MP_UML_Literal_Real_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 654;
   end MP_UML_Literal_Real_Value;

   ---------------------------------
   -- MP_UML_Literal_String_Value --
   ---------------------------------

   function MP_UML_Literal_String_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 655;
   end MP_UML_Literal_String_Value;

   --------------------------------------------
   -- MP_UML_Literal_Unlimited_Natural_Value --
   --------------------------------------------

   function MP_UML_Literal_Unlimited_Natural_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 656;
   end MP_UML_Literal_Unlimited_Natural_Value;

   ----------------------------------
   -- MP_UML_Loop_Node_Body_Output --
   ----------------------------------

   function MP_UML_Loop_Node_Body_Output return AMF.Internals.CMOF_Element is
   begin
      return Base + 394;
   end MP_UML_Loop_Node_Body_Output;

   --------------------------------
   -- MP_UML_Loop_Node_Body_Part --
   --------------------------------

   function MP_UML_Loop_Node_Body_Part return AMF.Internals.CMOF_Element is
   begin
      return Base + 395;
   end MP_UML_Loop_Node_Body_Part;

   ------------------------------
   -- MP_UML_Loop_Node_Decider --
   ------------------------------

   function MP_UML_Loop_Node_Decider return AMF.Internals.CMOF_Element is
   begin
      return Base + 657;
   end MP_UML_Loop_Node_Decider;

   --------------------------------------
   -- MP_UML_Loop_Node_Is_Tested_First --
   --------------------------------------

   function MP_UML_Loop_Node_Is_Tested_First return AMF.Internals.CMOF_Element is
   begin
      return Base + 658;
   end MP_UML_Loop_Node_Is_Tested_First;

   ------------------------------------
   -- MP_UML_Loop_Node_Loop_Variable --
   ------------------------------------

   function MP_UML_Loop_Node_Loop_Variable return AMF.Internals.CMOF_Element is
   begin
      return Base + 396;
   end MP_UML_Loop_Node_Loop_Variable;

   ------------------------------------------
   -- MP_UML_Loop_Node_Loop_Variable_Input --
   ------------------------------------------

   function MP_UML_Loop_Node_Loop_Variable_Input return AMF.Internals.CMOF_Element is
   begin
      return Base + 397;
   end MP_UML_Loop_Node_Loop_Variable_Input;

   -----------------------------
   -- MP_UML_Loop_Node_Result --
   -----------------------------

   function MP_UML_Loop_Node_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 398;
   end MP_UML_Loop_Node_Result;

   ---------------------------------
   -- MP_UML_Loop_Node_Setup_Part --
   ---------------------------------

   function MP_UML_Loop_Node_Setup_Part return AMF.Internals.CMOF_Element is
   begin
      return Base + 399;
   end MP_UML_Loop_Node_Setup_Part;

   ---------------------------
   -- MP_UML_Loop_Node_Test --
   ---------------------------

   function MP_UML_Loop_Node_Test return AMF.Internals.CMOF_Element is
   begin
      return Base + 400;
   end MP_UML_Loop_Node_Test;

   -------------------------------------------
   -- MP_UML_Manifestation_Utilized_Element --
   -------------------------------------------

   function MP_UML_Manifestation_Utilized_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 659;
   end MP_UML_Manifestation_Utilized_Element;

   -----------------------------
   -- MP_UML_Message_Argument --
   -----------------------------

   function MP_UML_Message_Argument return AMF.Internals.CMOF_Element is
   begin
      return Base + 401;
   end MP_UML_Message_Argument;

   ------------------------------
   -- MP_UML_Message_Connector --
   ------------------------------

   function MP_UML_Message_Connector return AMF.Internals.CMOF_Element is
   begin
      return Base + 660;
   end MP_UML_Message_Connector;

   --------------------------------
   -- MP_UML_Message_Interaction --
   --------------------------------

   function MP_UML_Message_Interaction return AMF.Internals.CMOF_Element is
   begin
      return Base + 661;
   end MP_UML_Message_Interaction;

   ---------------------------------
   -- MP_UML_Message_Message_Kind --
   ---------------------------------

   function MP_UML_Message_Message_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 662;
   end MP_UML_Message_Message_Kind;

   ---------------------------------
   -- MP_UML_Message_Message_Sort --
   ---------------------------------

   function MP_UML_Message_Message_Sort return AMF.Internals.CMOF_Element is
   begin
      return Base + 663;
   end MP_UML_Message_Message_Sort;

   ----------------------------------
   -- MP_UML_Message_Receive_Event --
   ----------------------------------

   function MP_UML_Message_Receive_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 664;
   end MP_UML_Message_Receive_Event;

   -------------------------------
   -- MP_UML_Message_Send_Event --
   -------------------------------

   function MP_UML_Message_Send_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 665;
   end MP_UML_Message_Send_Event;

   ------------------------------
   -- MP_UML_Message_Signature --
   ------------------------------

   function MP_UML_Message_Signature return AMF.Internals.CMOF_Element is
   begin
      return Base + 666;
   end MP_UML_Message_Signature;

   --------------------------------
   -- MP_UML_Message_End_Message --
   --------------------------------

   function MP_UML_Message_End_Message return AMF.Internals.CMOF_Element is
   begin
      return Base + 667;
   end MP_UML_Message_End_Message;

   ----------------------------
   -- MP_UML_Model_Viewpoint --
   ----------------------------

   function MP_UML_Model_Viewpoint return AMF.Internals.CMOF_Element is
   begin
      return Base + 668;
   end MP_UML_Model_Viewpoint;

   --------------------------------------------
   -- MP_UML_Multiplicity_Element_Is_Ordered --
   --------------------------------------------

   function MP_UML_Multiplicity_Element_Is_Ordered return AMF.Internals.CMOF_Element is
   begin
      return Base + 669;
   end MP_UML_Multiplicity_Element_Is_Ordered;

   -------------------------------------------
   -- MP_UML_Multiplicity_Element_Is_Unique --
   -------------------------------------------

   function MP_UML_Multiplicity_Element_Is_Unique return AMF.Internals.CMOF_Element is
   begin
      return Base + 670;
   end MP_UML_Multiplicity_Element_Is_Unique;

   ---------------------------------------
   -- MP_UML_Multiplicity_Element_Lower --
   ---------------------------------------

   function MP_UML_Multiplicity_Element_Lower return AMF.Internals.CMOF_Element is
   begin
      return Base + 671;
   end MP_UML_Multiplicity_Element_Lower;

   ---------------------------------------------
   -- MP_UML_Multiplicity_Element_Lower_Value --
   ---------------------------------------------

   function MP_UML_Multiplicity_Element_Lower_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 672;
   end MP_UML_Multiplicity_Element_Lower_Value;

   ---------------------------------------
   -- MP_UML_Multiplicity_Element_Upper --
   ---------------------------------------

   function MP_UML_Multiplicity_Element_Upper return AMF.Internals.CMOF_Element is
   begin
      return Base + 673;
   end MP_UML_Multiplicity_Element_Upper;

   ---------------------------------------------
   -- MP_UML_Multiplicity_Element_Upper_Value --
   ---------------------------------------------

   function MP_UML_Multiplicity_Element_Upper_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 674;
   end MP_UML_Multiplicity_Element_Upper_Value;

   --------------------------------------------
   -- MP_UML_Named_Element_Client_Dependency --
   --------------------------------------------

   function MP_UML_Named_Element_Client_Dependency return AMF.Internals.CMOF_Element is
   begin
      return Base + 402;
   end MP_UML_Named_Element_Client_Dependency;

   -------------------------------
   -- MP_UML_Named_Element_Name --
   -------------------------------

   function MP_UML_Named_Element_Name return AMF.Internals.CMOF_Element is
   begin
      return Base + 675;
   end MP_UML_Named_Element_Name;

   ------------------------------------------
   -- MP_UML_Named_Element_Name_Expression --
   ------------------------------------------

   function MP_UML_Named_Element_Name_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 676;
   end MP_UML_Named_Element_Name_Expression;

   ------------------------------------
   -- MP_UML_Named_Element_Namespace --
   ------------------------------------

   function MP_UML_Named_Element_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 677;
   end MP_UML_Named_Element_Namespace;

   -----------------------------------------
   -- MP_UML_Named_Element_Qualified_Name --
   -----------------------------------------

   function MP_UML_Named_Element_Qualified_Name return AMF.Internals.CMOF_Element is
   begin
      return Base + 678;
   end MP_UML_Named_Element_Qualified_Name;

   -------------------------------------
   -- MP_UML_Named_Element_Visibility --
   -------------------------------------

   function MP_UML_Named_Element_Visibility return AMF.Internals.CMOF_Element is
   begin
      return Base + 679;
   end MP_UML_Named_Element_Visibility;

   -------------------------------------
   -- MP_UML_Namespace_Element_Import --
   -------------------------------------

   function MP_UML_Namespace_Element_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 403;
   end MP_UML_Namespace_Element_Import;

   --------------------------------------
   -- MP_UML_Namespace_Imported_Member --
   --------------------------------------

   function MP_UML_Namespace_Imported_Member return AMF.Internals.CMOF_Element is
   begin
      return Base + 404;
   end MP_UML_Namespace_Imported_Member;

   -----------------------------
   -- MP_UML_Namespace_Member --
   -----------------------------

   function MP_UML_Namespace_Member return AMF.Internals.CMOF_Element is
   begin
      return Base + 405;
   end MP_UML_Namespace_Member;

   -----------------------------------
   -- MP_UML_Namespace_Owned_Member --
   -----------------------------------

   function MP_UML_Namespace_Owned_Member return AMF.Internals.CMOF_Element is
   begin
      return Base + 406;
   end MP_UML_Namespace_Owned_Member;

   ---------------------------------
   -- MP_UML_Namespace_Owned_Rule --
   ---------------------------------

   function MP_UML_Namespace_Owned_Rule return AMF.Internals.CMOF_Element is
   begin
      return Base + 407;
   end MP_UML_Namespace_Owned_Rule;

   -------------------------------------
   -- MP_UML_Namespace_Package_Import --
   -------------------------------------

   function MP_UML_Namespace_Package_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 408;
   end MP_UML_Namespace_Package_Import;

   -----------------------------
   -- MP_UML_Node_Nested_Node --
   -----------------------------

   function MP_UML_Node_Nested_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 409;
   end MP_UML_Node_Nested_Node;

   -------------------------------------
   -- MP_UML_Object_Flow_Is_Multicast --
   -------------------------------------

   function MP_UML_Object_Flow_Is_Multicast return AMF.Internals.CMOF_Element is
   begin
      return Base + 680;
   end MP_UML_Object_Flow_Is_Multicast;

   ----------------------------------------
   -- MP_UML_Object_Flow_Is_Multireceive --
   ----------------------------------------

   function MP_UML_Object_Flow_Is_Multireceive return AMF.Internals.CMOF_Element is
   begin
      return Base + 681;
   end MP_UML_Object_Flow_Is_Multireceive;

   ----------------------------------
   -- MP_UML_Object_Flow_Selection --
   ----------------------------------

   function MP_UML_Object_Flow_Selection return AMF.Internals.CMOF_Element is
   begin
      return Base + 682;
   end MP_UML_Object_Flow_Selection;

   ---------------------------------------
   -- MP_UML_Object_Flow_Transformation --
   ---------------------------------------

   function MP_UML_Object_Flow_Transformation return AMF.Internals.CMOF_Element is
   begin
      return Base + 683;
   end MP_UML_Object_Flow_Transformation;

   ---------------------------------
   -- MP_UML_Object_Node_In_State --
   ---------------------------------

   function MP_UML_Object_Node_In_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 410;
   end MP_UML_Object_Node_In_State;

   ----------------------------------------
   -- MP_UML_Object_Node_Is_Control_Type --
   ----------------------------------------

   function MP_UML_Object_Node_Is_Control_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 684;
   end MP_UML_Object_Node_Is_Control_Type;

   ---------------------------------
   -- MP_UML_Object_Node_Ordering --
   ---------------------------------

   function MP_UML_Object_Node_Ordering return AMF.Internals.CMOF_Element is
   begin
      return Base + 685;
   end MP_UML_Object_Node_Ordering;

   ----------------------------------
   -- MP_UML_Object_Node_Selection --
   ----------------------------------

   function MP_UML_Object_Node_Selection return AMF.Internals.CMOF_Element is
   begin
      return Base + 686;
   end MP_UML_Object_Node_Selection;

   ------------------------------------
   -- MP_UML_Object_Node_Upper_Bound --
   ------------------------------------

   function MP_UML_Object_Node_Upper_Bound return AMF.Internals.CMOF_Element is
   begin
      return Base + 687;
   end MP_UML_Object_Node_Upper_Bound;

   ---------------------------------------------
   -- MP_UML_Occurrence_Specification_Covered --
   ---------------------------------------------

   function MP_UML_Occurrence_Specification_Covered return AMF.Internals.CMOF_Element is
   begin
      return Base + 411;
   end MP_UML_Occurrence_Specification_Covered;

   ----------------------------------------------
   -- MP_UML_Occurrence_Specification_To_After --
   ----------------------------------------------

   function MP_UML_Occurrence_Specification_To_After return AMF.Internals.CMOF_Element is
   begin
      return Base + 412;
   end MP_UML_Occurrence_Specification_To_After;

   -----------------------------------------------
   -- MP_UML_Occurrence_Specification_To_Before --
   -----------------------------------------------

   function MP_UML_Occurrence_Specification_To_Before return AMF.Internals.CMOF_Element is
   begin
      return Base + 413;
   end MP_UML_Occurrence_Specification_To_Before;

   -------------------------------
   -- MP_UML_Opaque_Action_Body --
   -------------------------------

   function MP_UML_Opaque_Action_Body return AMF.Internals.CMOF_Element is
   begin
      return Base + 688;
   end MP_UML_Opaque_Action_Body;

   --------------------------------------
   -- MP_UML_Opaque_Action_Input_Value --
   --------------------------------------

   function MP_UML_Opaque_Action_Input_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 414;
   end MP_UML_Opaque_Action_Input_Value;

   -----------------------------------
   -- MP_UML_Opaque_Action_Language --
   -----------------------------------

   function MP_UML_Opaque_Action_Language return AMF.Internals.CMOF_Element is
   begin
      return Base + 689;
   end MP_UML_Opaque_Action_Language;

   ---------------------------------------
   -- MP_UML_Opaque_Action_Output_Value --
   ---------------------------------------

   function MP_UML_Opaque_Action_Output_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 415;
   end MP_UML_Opaque_Action_Output_Value;

   ---------------------------------
   -- MP_UML_Opaque_Behavior_Body --
   ---------------------------------

   function MP_UML_Opaque_Behavior_Body return AMF.Internals.CMOF_Element is
   begin
      return Base + 690;
   end MP_UML_Opaque_Behavior_Body;

   -------------------------------------
   -- MP_UML_Opaque_Behavior_Language --
   -------------------------------------

   function MP_UML_Opaque_Behavior_Language return AMF.Internals.CMOF_Element is
   begin
      return Base + 691;
   end MP_UML_Opaque_Behavior_Language;

   ---------------------------------------
   -- MP_UML_Opaque_Expression_Behavior --
   ---------------------------------------

   function MP_UML_Opaque_Expression_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 692;
   end MP_UML_Opaque_Expression_Behavior;

   -----------------------------------
   -- MP_UML_Opaque_Expression_Body --
   -----------------------------------

   function MP_UML_Opaque_Expression_Body return AMF.Internals.CMOF_Element is
   begin
      return Base + 693;
   end MP_UML_Opaque_Expression_Body;

   ---------------------------------------
   -- MP_UML_Opaque_Expression_Language --
   ---------------------------------------

   function MP_UML_Opaque_Expression_Language return AMF.Internals.CMOF_Element is
   begin
      return Base + 694;
   end MP_UML_Opaque_Expression_Language;

   -------------------------------------
   -- MP_UML_Opaque_Expression_Result --
   -------------------------------------

   function MP_UML_Opaque_Expression_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 695;
   end MP_UML_Opaque_Expression_Result;

   -------------------------------------
   -- MP_UML_Operation_Body_Condition --
   -------------------------------------

   function MP_UML_Operation_Body_Condition return AMF.Internals.CMOF_Element is
   begin
      return Base + 696;
   end MP_UML_Operation_Body_Condition;

   ----------------------------
   -- MP_UML_Operation_Class --
   ----------------------------

   function MP_UML_Operation_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 697;
   end MP_UML_Operation_Class;

   -------------------------------
   -- MP_UML_Operation_Datatype --
   -------------------------------

   function MP_UML_Operation_Datatype return AMF.Internals.CMOF_Element is
   begin
      return Base + 698;
   end MP_UML_Operation_Datatype;

   --------------------------------
   -- MP_UML_Operation_Interface --
   --------------------------------

   function MP_UML_Operation_Interface return AMF.Internals.CMOF_Element is
   begin
      return Base + 699;
   end MP_UML_Operation_Interface;

   ---------------------------------
   -- MP_UML_Operation_Is_Ordered --
   ---------------------------------

   function MP_UML_Operation_Is_Ordered return AMF.Internals.CMOF_Element is
   begin
      return Base + 700;
   end MP_UML_Operation_Is_Ordered;

   -------------------------------
   -- MP_UML_Operation_Is_Query --
   -------------------------------

   function MP_UML_Operation_Is_Query return AMF.Internals.CMOF_Element is
   begin
      return Base + 701;
   end MP_UML_Operation_Is_Query;

   --------------------------------
   -- MP_UML_Operation_Is_Unique --
   --------------------------------

   function MP_UML_Operation_Is_Unique return AMF.Internals.CMOF_Element is
   begin
      return Base + 702;
   end MP_UML_Operation_Is_Unique;

   ----------------------------
   -- MP_UML_Operation_Lower --
   ----------------------------

   function MP_UML_Operation_Lower return AMF.Internals.CMOF_Element is
   begin
      return Base + 703;
   end MP_UML_Operation_Lower;

   --------------------------------------
   -- MP_UML_Operation_Owned_Parameter --
   --------------------------------------

   function MP_UML_Operation_Owned_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 416;
   end MP_UML_Operation_Owned_Parameter;

   ------------------------------------
   -- MP_UML_Operation_Postcondition --
   ------------------------------------

   function MP_UML_Operation_Postcondition return AMF.Internals.CMOF_Element is
   begin
      return Base + 417;
   end MP_UML_Operation_Postcondition;

   -----------------------------------
   -- MP_UML_Operation_Precondition --
   -----------------------------------

   function MP_UML_Operation_Precondition return AMF.Internals.CMOF_Element is
   begin
      return Base + 418;
   end MP_UML_Operation_Precondition;

   ---------------------------------------
   -- MP_UML_Operation_Raised_Exception --
   ---------------------------------------

   function MP_UML_Operation_Raised_Exception return AMF.Internals.CMOF_Element is
   begin
      return Base + 419;
   end MP_UML_Operation_Raised_Exception;

   ------------------------------------------
   -- MP_UML_Operation_Redefined_Operation --
   ------------------------------------------

   function MP_UML_Operation_Redefined_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 420;
   end MP_UML_Operation_Redefined_Operation;

   -----------------------------------------
   -- MP_UML_Operation_Template_Parameter --
   -----------------------------------------

   function MP_UML_Operation_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 704;
   end MP_UML_Operation_Template_Parameter;

   ---------------------------
   -- MP_UML_Operation_Type --
   ---------------------------

   function MP_UML_Operation_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 705;
   end MP_UML_Operation_Type;

   ----------------------------
   -- MP_UML_Operation_Upper --
   ----------------------------

   function MP_UML_Operation_Upper return AMF.Internals.CMOF_Element is
   begin
      return Base + 706;
   end MP_UML_Operation_Upper;

   -------------------------------------------------------------
   -- MP_UML_Operation_Template_Parameter_Parametered_Element --
   -------------------------------------------------------------

   function MP_UML_Operation_Template_Parameter_Parametered_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 707;
   end MP_UML_Operation_Template_Parameter_Parametered_Element;

   ------------------------
   -- MP_UML_Package_URI --
   ------------------------

   function MP_UML_Package_URI return AMF.Internals.CMOF_Element is
   begin
      return Base + 708;
   end MP_UML_Package_URI;

   -----------------------------------
   -- MP_UML_Package_Nested_Package --
   -----------------------------------

   function MP_UML_Package_Nested_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 421;
   end MP_UML_Package_Nested_Package;

   ------------------------------------
   -- MP_UML_Package_Nesting_Package --
   ------------------------------------

   function MP_UML_Package_Nesting_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 709;
   end MP_UML_Package_Nesting_Package;

   -------------------------------------
   -- MP_UML_Package_Owned_Stereotype --
   -------------------------------------

   function MP_UML_Package_Owned_Stereotype return AMF.Internals.CMOF_Element is
   begin
      return Base + 422;
   end MP_UML_Package_Owned_Stereotype;

   -------------------------------
   -- MP_UML_Package_Owned_Type --
   -------------------------------

   function MP_UML_Package_Owned_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 423;
   end MP_UML_Package_Owned_Type;

   ----------------------------------
   -- MP_UML_Package_Package_Merge --
   ----------------------------------

   function MP_UML_Package_Package_Merge return AMF.Internals.CMOF_Element is
   begin
      return Base + 424;
   end MP_UML_Package_Package_Merge;

   -------------------------------------
   -- MP_UML_Package_Packaged_Element --
   -------------------------------------

   function MP_UML_Package_Packaged_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 425;
   end MP_UML_Package_Packaged_Element;

   ----------------------------------------
   -- MP_UML_Package_Profile_Application --
   ----------------------------------------

   function MP_UML_Package_Profile_Application return AMF.Internals.CMOF_Element is
   begin
      return Base + 426;
   end MP_UML_Package_Profile_Application;

   --------------------------------------------
   -- MP_UML_Package_Import_Imported_Package --
   --------------------------------------------

   function MP_UML_Package_Import_Imported_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 710;
   end MP_UML_Package_Import_Imported_Package;

   -----------------------------------------------
   -- MP_UML_Package_Import_Importing_Namespace --
   -----------------------------------------------

   function MP_UML_Package_Import_Importing_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 711;
   end MP_UML_Package_Import_Importing_Namespace;

   --------------------------------------
   -- MP_UML_Package_Import_Visibility --
   --------------------------------------

   function MP_UML_Package_Import_Visibility return AMF.Internals.CMOF_Element is
   begin
      return Base + 712;
   end MP_UML_Package_Import_Visibility;

   -----------------------------------------
   -- MP_UML_Package_Merge_Merged_Package --
   -----------------------------------------

   function MP_UML_Package_Merge_Merged_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 713;
   end MP_UML_Package_Merge_Merged_Package;

   --------------------------------------------
   -- MP_UML_Package_Merge_Receiving_Package --
   --------------------------------------------

   function MP_UML_Package_Merge_Receiving_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 714;
   end MP_UML_Package_Merge_Receiving_Package;

   -------------------------------------------
   -- MP_UML_Packageable_Element_Visibility --
   -------------------------------------------

   function MP_UML_Packageable_Element_Visibility return AMF.Internals.CMOF_Element is
   begin
      return Base + 715;
   end MP_UML_Packageable_Element_Visibility;

   ------------------------------
   -- MP_UML_Parameter_Default --
   ------------------------------

   function MP_UML_Parameter_Default return AMF.Internals.CMOF_Element is
   begin
      return Base + 716;
   end MP_UML_Parameter_Default;

   ------------------------------------
   -- MP_UML_Parameter_Default_Value --
   ------------------------------------

   function MP_UML_Parameter_Default_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 717;
   end MP_UML_Parameter_Default_Value;

   --------------------------------
   -- MP_UML_Parameter_Direction --
   --------------------------------

   function MP_UML_Parameter_Direction return AMF.Internals.CMOF_Element is
   begin
      return Base + 718;
   end MP_UML_Parameter_Direction;

   -----------------------------
   -- MP_UML_Parameter_Effect --
   -----------------------------

   function MP_UML_Parameter_Effect return AMF.Internals.CMOF_Element is
   begin
      return Base + 719;
   end MP_UML_Parameter_Effect;

   -----------------------------------
   -- MP_UML_Parameter_Is_Exception --
   -----------------------------------

   function MP_UML_Parameter_Is_Exception return AMF.Internals.CMOF_Element is
   begin
      return Base + 720;
   end MP_UML_Parameter_Is_Exception;

   --------------------------------
   -- MP_UML_Parameter_Is_Stream --
   --------------------------------

   function MP_UML_Parameter_Is_Stream return AMF.Internals.CMOF_Element is
   begin
      return Base + 721;
   end MP_UML_Parameter_Is_Stream;

   --------------------------------
   -- MP_UML_Parameter_Operation --
   --------------------------------

   function MP_UML_Parameter_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 722;
   end MP_UML_Parameter_Operation;

   ------------------------------------
   -- MP_UML_Parameter_Parameter_Set --
   ------------------------------------

   function MP_UML_Parameter_Parameter_Set return AMF.Internals.CMOF_Element is
   begin
      return Base + 427;
   end MP_UML_Parameter_Parameter_Set;

   ------------------------------------
   -- MP_UML_Parameter_Set_Condition --
   ------------------------------------

   function MP_UML_Parameter_Set_Condition return AMF.Internals.CMOF_Element is
   begin
      return Base + 428;
   end MP_UML_Parameter_Set_Condition;

   ------------------------------------
   -- MP_UML_Parameter_Set_Parameter --
   ------------------------------------

   function MP_UML_Parameter_Set_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 429;
   end MP_UML_Parameter_Set_Parameter;

   ------------------------------------------------------------
   -- MP_UML_Parameterable_Element_Owning_Template_Parameter --
   ------------------------------------------------------------

   function MP_UML_Parameterable_Element_Owning_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 723;
   end MP_UML_Parameterable_Element_Owning_Template_Parameter;

   -----------------------------------------------------
   -- MP_UML_Parameterable_Element_Template_Parameter --
   -----------------------------------------------------

   function MP_UML_Parameterable_Element_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 724;
   end MP_UML_Parameterable_Element_Template_Parameter;

   ---------------------------
   -- MP_UML_Pin_Is_Control --
   ---------------------------

   function MP_UML_Pin_Is_Control return AMF.Internals.CMOF_Element is
   begin
      return Base + 725;
   end MP_UML_Pin_Is_Control;

   -----------------------------
   -- MP_UML_Port_Is_Behavior --
   -----------------------------

   function MP_UML_Port_Is_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 726;
   end MP_UML_Port_Is_Behavior;

   -------------------------------
   -- MP_UML_Port_Is_Conjugated --
   -------------------------------

   function MP_UML_Port_Is_Conjugated return AMF.Internals.CMOF_Element is
   begin
      return Base + 727;
   end MP_UML_Port_Is_Conjugated;

   ----------------------------
   -- MP_UML_Port_Is_Service --
   ----------------------------

   function MP_UML_Port_Is_Service return AMF.Internals.CMOF_Element is
   begin
      return Base + 728;
   end MP_UML_Port_Is_Service;

   --------------------------
   -- MP_UML_Port_Protocol --
   --------------------------

   function MP_UML_Port_Protocol return AMF.Internals.CMOF_Element is
   begin
      return Base + 729;
   end MP_UML_Port_Protocol;

   --------------------------
   -- MP_UML_Port_Provided --
   --------------------------

   function MP_UML_Port_Provided return AMF.Internals.CMOF_Element is
   begin
      return Base + 430;
   end MP_UML_Port_Provided;

   --------------------------------
   -- MP_UML_Port_Redefined_Port --
   --------------------------------

   function MP_UML_Port_Redefined_Port return AMF.Internals.CMOF_Element is
   begin
      return Base + 431;
   end MP_UML_Port_Redefined_Port;

   --------------------------
   -- MP_UML_Port_Required --
   --------------------------

   function MP_UML_Port_Required return AMF.Internals.CMOF_Element is
   begin
      return Base + 432;
   end MP_UML_Port_Required;

   ----------------------------------------
   -- MP_UML_Profile_Metaclass_Reference --
   ----------------------------------------

   function MP_UML_Profile_Metaclass_Reference return AMF.Internals.CMOF_Element is
   begin
      return Base + 433;
   end MP_UML_Profile_Metaclass_Reference;

   ----------------------------------------
   -- MP_UML_Profile_Metamodel_Reference --
   ----------------------------------------

   function MP_UML_Profile_Metamodel_Reference return AMF.Internals.CMOF_Element is
   begin
      return Base + 434;
   end MP_UML_Profile_Metamodel_Reference;

   ------------------------------------------------
   -- MP_UML_Profile_Application_Applied_Profile --
   ------------------------------------------------

   function MP_UML_Profile_Application_Applied_Profile return AMF.Internals.CMOF_Element is
   begin
      return Base + 730;
   end MP_UML_Profile_Application_Applied_Profile;

   -------------------------------------------------
   -- MP_UML_Profile_Application_Applying_Package --
   -------------------------------------------------

   function MP_UML_Profile_Application_Applying_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 731;
   end MP_UML_Profile_Application_Applying_Package;

   ------------------------------------------
   -- MP_UML_Profile_Application_Is_Strict --
   ------------------------------------------

   function MP_UML_Profile_Application_Is_Strict return AMF.Internals.CMOF_Element is
   begin
      return Base + 732;
   end MP_UML_Profile_Application_Is_Strict;

   ---------------------------------
   -- MP_UML_Property_Aggregation --
   ---------------------------------

   function MP_UML_Property_Aggregation return AMF.Internals.CMOF_Element is
   begin
      return Base + 733;
   end MP_UML_Property_Aggregation;

   ---------------------------------
   -- MP_UML_Property_Association --
   ---------------------------------

   function MP_UML_Property_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 734;
   end MP_UML_Property_Association;

   -------------------------------------
   -- MP_UML_Property_Association_End --
   -------------------------------------

   function MP_UML_Property_Association_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 735;
   end MP_UML_Property_Association_End;

   ---------------------------
   -- MP_UML_Property_Class --
   ---------------------------

   function MP_UML_Property_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 736;
   end MP_UML_Property_Class;

   ------------------------------
   -- MP_UML_Property_Datatype --
   ------------------------------

   function MP_UML_Property_Datatype return AMF.Internals.CMOF_Element is
   begin
      return Base + 737;
   end MP_UML_Property_Datatype;

   -----------------------------
   -- MP_UML_Property_Default --
   -----------------------------

   function MP_UML_Property_Default return AMF.Internals.CMOF_Element is
   begin
      return Base + 738;
   end MP_UML_Property_Default;

   -----------------------------------
   -- MP_UML_Property_Default_Value --
   -----------------------------------

   function MP_UML_Property_Default_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 739;
   end MP_UML_Property_Default_Value;

   -------------------------------
   -- MP_UML_Property_Interface --
   -------------------------------

   function MP_UML_Property_Interface return AMF.Internals.CMOF_Element is
   begin
      return Base + 740;
   end MP_UML_Property_Interface;

   ----------------------------------
   -- MP_UML_Property_Is_Composite --
   ----------------------------------

   function MP_UML_Property_Is_Composite return AMF.Internals.CMOF_Element is
   begin
      return Base + 741;
   end MP_UML_Property_Is_Composite;

   --------------------------------
   -- MP_UML_Property_Is_Derived --
   --------------------------------

   function MP_UML_Property_Is_Derived return AMF.Internals.CMOF_Element is
   begin
      return Base + 742;
   end MP_UML_Property_Is_Derived;

   --------------------------------------
   -- MP_UML_Property_Is_Derived_Union --
   --------------------------------------

   function MP_UML_Property_Is_Derived_Union return AMF.Internals.CMOF_Element is
   begin
      return Base + 743;
   end MP_UML_Property_Is_Derived_Union;

   ---------------------------
   -- MP_UML_Property_Is_ID --
   ---------------------------

   function MP_UML_Property_Is_ID return AMF.Internals.CMOF_Element is
   begin
      return Base + 744;
   end MP_UML_Property_Is_ID;

   ----------------------------------
   -- MP_UML_Property_Is_Read_Only --
   ----------------------------------

   function MP_UML_Property_Is_Read_Only return AMF.Internals.CMOF_Element is
   begin
      return Base + 745;
   end MP_UML_Property_Is_Read_Only;

   ------------------------------
   -- MP_UML_Property_Opposite --
   ------------------------------

   function MP_UML_Property_Opposite return AMF.Internals.CMOF_Element is
   begin
      return Base + 746;
   end MP_UML_Property_Opposite;

   ----------------------------------------
   -- MP_UML_Property_Owning_Association --
   ----------------------------------------

   function MP_UML_Property_Owning_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 747;
   end MP_UML_Property_Owning_Association;

   -------------------------------
   -- MP_UML_Property_Qualifier --
   -------------------------------

   function MP_UML_Property_Qualifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 435;
   end MP_UML_Property_Qualifier;

   ----------------------------------------
   -- MP_UML_Property_Redefined_Property --
   ----------------------------------------

   function MP_UML_Property_Redefined_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 436;
   end MP_UML_Property_Redefined_Property;

   ----------------------------------------
   -- MP_UML_Property_Subsetted_Property --
   ----------------------------------------

   function MP_UML_Property_Subsetted_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 437;
   end MP_UML_Property_Subsetted_Property;

   -------------------------------------------------
   -- MP_UML_Protocol_Conformance_General_Machine --
   -------------------------------------------------

   function MP_UML_Protocol_Conformance_General_Machine return AMF.Internals.CMOF_Element is
   begin
      return Base + 748;
   end MP_UML_Protocol_Conformance_General_Machine;

   --------------------------------------------------
   -- MP_UML_Protocol_Conformance_Specific_Machine --
   --------------------------------------------------

   function MP_UML_Protocol_Conformance_Specific_Machine return AMF.Internals.CMOF_Element is
   begin
      return Base + 749;
   end MP_UML_Protocol_Conformance_Specific_Machine;

   -----------------------------------------------
   -- MP_UML_Protocol_State_Machine_Conformance --
   -----------------------------------------------

   function MP_UML_Protocol_State_Machine_Conformance return AMF.Internals.CMOF_Element is
   begin
      return Base + 438;
   end MP_UML_Protocol_State_Machine_Conformance;

   -----------------------------------------------
   -- MP_UML_Protocol_Transition_Post_Condition --
   -----------------------------------------------

   function MP_UML_Protocol_Transition_Post_Condition return AMF.Internals.CMOF_Element is
   begin
      return Base + 750;
   end MP_UML_Protocol_Transition_Post_Condition;

   ----------------------------------------------
   -- MP_UML_Protocol_Transition_Pre_Condition --
   ----------------------------------------------

   function MP_UML_Protocol_Transition_Pre_Condition return AMF.Internals.CMOF_Element is
   begin
      return Base + 751;
   end MP_UML_Protocol_Transition_Pre_Condition;

   -----------------------------------------
   -- MP_UML_Protocol_Transition_Referred --
   -----------------------------------------

   function MP_UML_Protocol_Transition_Referred return AMF.Internals.CMOF_Element is
   begin
      return Base + 439;
   end MP_UML_Protocol_Transition_Referred;

   -----------------------------
   -- MP_UML_Pseudostate_Kind --
   -----------------------------

   function MP_UML_Pseudostate_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 752;
   end MP_UML_Pseudostate_Kind;

   ------------------------------
   -- MP_UML_Pseudostate_State --
   ------------------------------

   function MP_UML_Pseudostate_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 753;
   end MP_UML_Pseudostate_State;

   --------------------------------------
   -- MP_UML_Pseudostate_State_Machine --
   --------------------------------------

   function MP_UML_Pseudostate_State_Machine return AMF.Internals.CMOF_Element is
   begin
      return Base + 754;
   end MP_UML_Pseudostate_State_Machine;

   --------------------------------------
   -- MP_UML_Qualifier_Value_Qualifier --
   --------------------------------------

   function MP_UML_Qualifier_Value_Qualifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 755;
   end MP_UML_Qualifier_Value_Qualifier;

   ----------------------------------
   -- MP_UML_Qualifier_Value_Value --
   ----------------------------------

   function MP_UML_Qualifier_Value_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 756;
   end MP_UML_Qualifier_Value_Value;

   ---------------------------------------------
   -- MP_UML_Raise_Exception_Action_Exception --
   ---------------------------------------------

   function MP_UML_Raise_Exception_Action_Exception return AMF.Internals.CMOF_Element is
   begin
      return Base + 757;
   end MP_UML_Raise_Exception_Action_Exception;

   ------------------------------------------
   -- MP_UML_Read_Extent_Action_Classifier --
   ------------------------------------------

   function MP_UML_Read_Extent_Action_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 758;
   end MP_UML_Read_Extent_Action_Classifier;

   --------------------------------------
   -- MP_UML_Read_Extent_Action_Result --
   --------------------------------------

   function MP_UML_Read_Extent_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 759;
   end MP_UML_Read_Extent_Action_Result;

   --------------------------------------------------------
   -- MP_UML_Read_Is_Classified_Object_Action_Classifier --
   --------------------------------------------------------

   function MP_UML_Read_Is_Classified_Object_Action_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 760;
   end MP_UML_Read_Is_Classified_Object_Action_Classifier;

   -------------------------------------------------------
   -- MP_UML_Read_Is_Classified_Object_Action_Is_Direct --
   -------------------------------------------------------

   function MP_UML_Read_Is_Classified_Object_Action_Is_Direct return AMF.Internals.CMOF_Element is
   begin
      return Base + 761;
   end MP_UML_Read_Is_Classified_Object_Action_Is_Direct;

   ----------------------------------------------------
   -- MP_UML_Read_Is_Classified_Object_Action_Object --
   ----------------------------------------------------

   function MP_UML_Read_Is_Classified_Object_Action_Object return AMF.Internals.CMOF_Element is
   begin
      return Base + 762;
   end MP_UML_Read_Is_Classified_Object_Action_Object;

   ----------------------------------------------------
   -- MP_UML_Read_Is_Classified_Object_Action_Result --
   ----------------------------------------------------

   function MP_UML_Read_Is_Classified_Object_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 763;
   end MP_UML_Read_Is_Classified_Object_Action_Result;

   ------------------------------------
   -- MP_UML_Read_Link_Action_Result --
   ------------------------------------

   function MP_UML_Read_Link_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 764;
   end MP_UML_Read_Link_Action_Result;

   --------------------------------------------
   -- MP_UML_Read_Link_Object_End_Action_End --
   --------------------------------------------

   function MP_UML_Read_Link_Object_End_Action_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 765;
   end MP_UML_Read_Link_Object_End_Action_End;

   -----------------------------------------------
   -- MP_UML_Read_Link_Object_End_Action_Object --
   -----------------------------------------------

   function MP_UML_Read_Link_Object_End_Action_Object return AMF.Internals.CMOF_Element is
   begin
      return Base + 766;
   end MP_UML_Read_Link_Object_End_Action_Object;

   -----------------------------------------------
   -- MP_UML_Read_Link_Object_End_Action_Result --
   -----------------------------------------------

   function MP_UML_Read_Link_Object_End_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 767;
   end MP_UML_Read_Link_Object_End_Action_Result;

   ---------------------------------------------------------
   -- MP_UML_Read_Link_Object_End_Qualifier_Action_Object --
   ---------------------------------------------------------

   function MP_UML_Read_Link_Object_End_Qualifier_Action_Object return AMF.Internals.CMOF_Element is
   begin
      return Base + 768;
   end MP_UML_Read_Link_Object_End_Qualifier_Action_Object;

   ------------------------------------------------------------
   -- MP_UML_Read_Link_Object_End_Qualifier_Action_Qualifier --
   ------------------------------------------------------------

   function MP_UML_Read_Link_Object_End_Qualifier_Action_Qualifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 769;
   end MP_UML_Read_Link_Object_End_Qualifier_Action_Qualifier;

   ---------------------------------------------------------
   -- MP_UML_Read_Link_Object_End_Qualifier_Action_Result --
   ---------------------------------------------------------

   function MP_UML_Read_Link_Object_End_Qualifier_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 770;
   end MP_UML_Read_Link_Object_End_Qualifier_Action_Result;

   ------------------------------------
   -- MP_UML_Read_Self_Action_Result --
   ------------------------------------

   function MP_UML_Read_Self_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 771;
   end MP_UML_Read_Self_Action_Result;

   --------------------------------------------------
   -- MP_UML_Read_Structural_Feature_Action_Result --
   --------------------------------------------------

   function MP_UML_Read_Structural_Feature_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 772;
   end MP_UML_Read_Structural_Feature_Action_Result;

   ----------------------------------------
   -- MP_UML_Read_Variable_Action_Result --
   ----------------------------------------

   function MP_UML_Read_Variable_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 773;
   end MP_UML_Read_Variable_Action_Result;

   -----------------------------
   -- MP_UML_Reception_Signal --
   -----------------------------

   function MP_UML_Reception_Signal return AMF.Internals.CMOF_Element is
   begin
      return Base + 774;
   end MP_UML_Reception_Signal;

   ----------------------------------------------------
   -- MP_UML_Reclassify_Object_Action_Is_Replace_All --
   ----------------------------------------------------

   function MP_UML_Reclassify_Object_Action_Is_Replace_All return AMF.Internals.CMOF_Element is
   begin
      return Base + 775;
   end MP_UML_Reclassify_Object_Action_Is_Replace_All;

   ----------------------------------------------------
   -- MP_UML_Reclassify_Object_Action_New_Classifier --
   ----------------------------------------------------

   function MP_UML_Reclassify_Object_Action_New_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 440;
   end MP_UML_Reclassify_Object_Action_New_Classifier;

   --------------------------------------------
   -- MP_UML_Reclassify_Object_Action_Object --
   --------------------------------------------

   function MP_UML_Reclassify_Object_Action_Object return AMF.Internals.CMOF_Element is
   begin
      return Base + 776;
   end MP_UML_Reclassify_Object_Action_Object;

   ----------------------------------------------------
   -- MP_UML_Reclassify_Object_Action_Old_Classifier --
   ----------------------------------------------------

   function MP_UML_Reclassify_Object_Action_Old_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 441;
   end MP_UML_Reclassify_Object_Action_Old_Classifier;

   ----------------------------------------
   -- MP_UML_Redefinable_Element_Is_Leaf --
   ----------------------------------------

   function MP_UML_Redefinable_Element_Is_Leaf return AMF.Internals.CMOF_Element is
   begin
      return Base + 777;
   end MP_UML_Redefinable_Element_Is_Leaf;

   --------------------------------------------------
   -- MP_UML_Redefinable_Element_Redefined_Element --
   --------------------------------------------------

   function MP_UML_Redefinable_Element_Redefined_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 442;
   end MP_UML_Redefinable_Element_Redefined_Element;

   -----------------------------------------------------
   -- MP_UML_Redefinable_Element_Redefinition_Context --
   -----------------------------------------------------

   function MP_UML_Redefinable_Element_Redefinition_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 443;
   end MP_UML_Redefinable_Element_Redefinition_Context;

   ------------------------------------------------------
   -- MP_UML_Redefinable_Template_Signature_Classifier --
   ------------------------------------------------------

   function MP_UML_Redefinable_Template_Signature_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 778;
   end MP_UML_Redefinable_Template_Signature_Classifier;

   --------------------------------------------------------------
   -- MP_UML_Redefinable_Template_Signature_Extended_Signature --
   --------------------------------------------------------------

   function MP_UML_Redefinable_Template_Signature_Extended_Signature return AMF.Internals.CMOF_Element is
   begin
      return Base + 444;
   end MP_UML_Redefinable_Template_Signature_Extended_Signature;

   ---------------------------------------------------------------
   -- MP_UML_Redefinable_Template_Signature_Inherited_Parameter --
   ---------------------------------------------------------------

   function MP_UML_Redefinable_Template_Signature_Inherited_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 445;
   end MP_UML_Redefinable_Template_Signature_Inherited_Parameter;

   -------------------------------------
   -- MP_UML_Reduce_Action_Collection --
   -------------------------------------

   function MP_UML_Reduce_Action_Collection return AMF.Internals.CMOF_Element is
   begin
      return Base + 779;
   end MP_UML_Reduce_Action_Collection;

   -------------------------------------
   -- MP_UML_Reduce_Action_Is_Ordered --
   -------------------------------------

   function MP_UML_Reduce_Action_Is_Ordered return AMF.Internals.CMOF_Element is
   begin
      return Base + 780;
   end MP_UML_Reduce_Action_Is_Ordered;

   ----------------------------------
   -- MP_UML_Reduce_Action_Reducer --
   ----------------------------------

   function MP_UML_Reduce_Action_Reducer return AMF.Internals.CMOF_Element is
   begin
      return Base + 781;
   end MP_UML_Reduce_Action_Reducer;

   ---------------------------------
   -- MP_UML_Reduce_Action_Result --
   ---------------------------------

   function MP_UML_Reduce_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 782;
   end MP_UML_Reduce_Action_Result;

   -----------------------------------
   -- MP_UML_Region_Extended_Region --
   -----------------------------------

   function MP_UML_Region_Extended_Region return AMF.Internals.CMOF_Element is
   begin
      return Base + 783;
   end MP_UML_Region_Extended_Region;

   ----------------------------------------
   -- MP_UML_Region_Redefinition_Context --
   ----------------------------------------

   function MP_UML_Region_Redefinition_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 446;
   end MP_UML_Region_Redefinition_Context;

   -------------------------
   -- MP_UML_Region_State --
   -------------------------

   function MP_UML_Region_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 784;
   end MP_UML_Region_State;

   ---------------------------------
   -- MP_UML_Region_State_Machine --
   ---------------------------------

   function MP_UML_Region_State_Machine return AMF.Internals.CMOF_Element is
   begin
      return Base + 785;
   end MP_UML_Region_State_Machine;

   -----------------------------
   -- MP_UML_Region_Subvertex --
   -----------------------------

   function MP_UML_Region_Subvertex return AMF.Internals.CMOF_Element is
   begin
      return Base + 447;
   end MP_UML_Region_Subvertex;

   ------------------------------
   -- MP_UML_Region_Transition --
   ------------------------------

   function MP_UML_Region_Transition return AMF.Internals.CMOF_Element is
   begin
      return Base + 448;
   end MP_UML_Region_Transition;

   -----------------------------------------
   -- MP_UML_Relationship_Related_Element --
   -----------------------------------------

   function MP_UML_Relationship_Related_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 449;
   end MP_UML_Relationship_Related_Element;

   ------------------------------------------------------------------------
   -- MP_UML_Remove_Structural_Feature_Value_Action_Is_Remove_Duplicates --
   ------------------------------------------------------------------------

   function MP_UML_Remove_Structural_Feature_Value_Action_Is_Remove_Duplicates return AMF.Internals.CMOF_Element is
   begin
      return Base + 786;
   end MP_UML_Remove_Structural_Feature_Value_Action_Is_Remove_Duplicates;

   -------------------------------------------------------------
   -- MP_UML_Remove_Structural_Feature_Value_Action_Remove_At --
   -------------------------------------------------------------

   function MP_UML_Remove_Structural_Feature_Value_Action_Remove_At return AMF.Internals.CMOF_Element is
   begin
      return Base + 787;
   end MP_UML_Remove_Structural_Feature_Value_Action_Remove_At;

   --------------------------------------------------------------
   -- MP_UML_Remove_Variable_Value_Action_Is_Remove_Duplicates --
   --------------------------------------------------------------

   function MP_UML_Remove_Variable_Value_Action_Is_Remove_Duplicates return AMF.Internals.CMOF_Element is
   begin
      return Base + 788;
   end MP_UML_Remove_Variable_Value_Action_Is_Remove_Duplicates;

   ---------------------------------------------------
   -- MP_UML_Remove_Variable_Value_Action_Remove_At --
   ---------------------------------------------------

   function MP_UML_Remove_Variable_Value_Action_Remove_At return AMF.Internals.CMOF_Element is
   begin
      return Base + 789;
   end MP_UML_Remove_Variable_Value_Action_Remove_At;

   ---------------------------------------
   -- MP_UML_Reply_Action_Reply_To_Call --
   ---------------------------------------

   function MP_UML_Reply_Action_Reply_To_Call return AMF.Internals.CMOF_Element is
   begin
      return Base + 790;
   end MP_UML_Reply_Action_Reply_To_Call;

   -------------------------------------
   -- MP_UML_Reply_Action_Reply_Value --
   -------------------------------------

   function MP_UML_Reply_Action_Reply_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 450;
   end MP_UML_Reply_Action_Reply_Value;

   --------------------------------------------
   -- MP_UML_Reply_Action_Return_Information --
   --------------------------------------------

   function MP_UML_Reply_Action_Return_Information return AMF.Internals.CMOF_Element is
   begin
      return Base + 791;
   end MP_UML_Reply_Action_Return_Information;

   ---------------------------------------
   -- MP_UML_Send_Object_Action_Request --
   ---------------------------------------

   function MP_UML_Send_Object_Action_Request return AMF.Internals.CMOF_Element is
   begin
      return Base + 451;
   end MP_UML_Send_Object_Action_Request;

   --------------------------------------
   -- MP_UML_Send_Object_Action_Target --
   --------------------------------------

   function MP_UML_Send_Object_Action_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 792;
   end MP_UML_Send_Object_Action_Target;

   --------------------------------------
   -- MP_UML_Send_Signal_Action_Signal --
   --------------------------------------

   function MP_UML_Send_Signal_Action_Signal return AMF.Internals.CMOF_Element is
   begin
      return Base + 793;
   end MP_UML_Send_Signal_Action_Signal;

   --------------------------------------
   -- MP_UML_Send_Signal_Action_Target --
   --------------------------------------

   function MP_UML_Send_Signal_Action_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 794;
   end MP_UML_Send_Signal_Action_Target;

   ------------------------------------------
   -- MP_UML_Sequence_Node_Executable_Node --
   ------------------------------------------

   function MP_UML_Sequence_Node_Executable_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 452;
   end MP_UML_Sequence_Node_Executable_Node;

   -----------------------------------
   -- MP_UML_Signal_Owned_Attribute --
   -----------------------------------

   function MP_UML_Signal_Owned_Attribute return AMF.Internals.CMOF_Element is
   begin
      return Base + 453;
   end MP_UML_Signal_Owned_Attribute;

   --------------------------------
   -- MP_UML_Signal_Event_Signal --
   --------------------------------

   function MP_UML_Signal_Event_Signal return AMF.Internals.CMOF_Element is
   begin
      return Base + 795;
   end MP_UML_Signal_Event_Signal;

   ----------------------------------
   -- MP_UML_Slot_Defining_Feature --
   ----------------------------------

   function MP_UML_Slot_Defining_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 796;
   end MP_UML_Slot_Defining_Feature;

   ---------------------------------
   -- MP_UML_Slot_Owning_Instance --
   ---------------------------------

   function MP_UML_Slot_Owning_Instance return AMF.Internals.CMOF_Element is
   begin
      return Base + 797;
   end MP_UML_Slot_Owning_Instance;

   -----------------------
   -- MP_UML_Slot_Value --
   -----------------------

   function MP_UML_Slot_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 454;
   end MP_UML_Slot_Value;

   ----------------------------------------------------
   -- MP_UML_Start_Classifier_Behavior_Action_Object --
   ----------------------------------------------------

   function MP_UML_Start_Classifier_Behavior_Action_Object return AMF.Internals.CMOF_Element is
   begin
      return Base + 798;
   end MP_UML_Start_Classifier_Behavior_Action_Object;

   ------------------------------------------------
   -- MP_UML_Start_Object_Behavior_Action_Object --
   ------------------------------------------------

   function MP_UML_Start_Object_Behavior_Action_Object return AMF.Internals.CMOF_Element is
   begin
      return Base + 799;
   end MP_UML_Start_Object_Behavior_Action_Object;

   -----------------------------
   -- MP_UML_State_Connection --
   -----------------------------

   function MP_UML_State_Connection return AMF.Internals.CMOF_Element is
   begin
      return Base + 455;
   end MP_UML_State_Connection;

   -----------------------------------
   -- MP_UML_State_Connection_Point --
   -----------------------------------

   function MP_UML_State_Connection_Point return AMF.Internals.CMOF_Element is
   begin
      return Base + 456;
   end MP_UML_State_Connection_Point;

   -------------------------------------
   -- MP_UML_State_Deferrable_Trigger --
   -------------------------------------

   function MP_UML_State_Deferrable_Trigger return AMF.Internals.CMOF_Element is
   begin
      return Base + 457;
   end MP_UML_State_Deferrable_Trigger;

   ------------------------------
   -- MP_UML_State_Do_Activity --
   ------------------------------

   function MP_UML_State_Do_Activity return AMF.Internals.CMOF_Element is
   begin
      return Base + 800;
   end MP_UML_State_Do_Activity;

   ------------------------
   -- MP_UML_State_Entry --
   ------------------------

   function MP_UML_State_Entry return AMF.Internals.CMOF_Element is
   begin
      return Base + 801;
   end MP_UML_State_Entry;

   -----------------------
   -- MP_UML_State_Exit --
   -----------------------

   function MP_UML_State_Exit return AMF.Internals.CMOF_Element is
   begin
      return Base + 802;
   end MP_UML_State_Exit;

   -------------------------------
   -- MP_UML_State_Is_Composite --
   -------------------------------

   function MP_UML_State_Is_Composite return AMF.Internals.CMOF_Element is
   begin
      return Base + 803;
   end MP_UML_State_Is_Composite;

   --------------------------------
   -- MP_UML_State_Is_Orthogonal --
   --------------------------------

   function MP_UML_State_Is_Orthogonal return AMF.Internals.CMOF_Element is
   begin
      return Base + 804;
   end MP_UML_State_Is_Orthogonal;

   ----------------------------
   -- MP_UML_State_Is_Simple --
   ----------------------------

   function MP_UML_State_Is_Simple return AMF.Internals.CMOF_Element is
   begin
      return Base + 805;
   end MP_UML_State_Is_Simple;

   --------------------------------------
   -- MP_UML_State_Is_Submachine_State --
   --------------------------------------

   function MP_UML_State_Is_Submachine_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 806;
   end MP_UML_State_Is_Submachine_State;

   ----------------------------------
   -- MP_UML_State_Redefined_State --
   ----------------------------------

   function MP_UML_State_Redefined_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 807;
   end MP_UML_State_Redefined_State;

   ---------------------------------------
   -- MP_UML_State_Redefinition_Context --
   ---------------------------------------

   function MP_UML_State_Redefinition_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 458;
   end MP_UML_State_Redefinition_Context;

   -------------------------
   -- MP_UML_State_Region --
   -------------------------

   function MP_UML_State_Region return AMF.Internals.CMOF_Element is
   begin
      return Base + 459;
   end MP_UML_State_Region;

   ----------------------------------
   -- MP_UML_State_State_Invariant --
   ----------------------------------

   function MP_UML_State_State_Invariant return AMF.Internals.CMOF_Element is
   begin
      return Base + 808;
   end MP_UML_State_State_Invariant;

   -----------------------------
   -- MP_UML_State_Submachine --
   -----------------------------

   function MP_UML_State_Submachine return AMF.Internals.CMOF_Element is
   begin
      return Base + 809;
   end MP_UML_State_Submachine;

   ------------------------------------
   -- MP_UML_State_Invariant_Covered --
   ------------------------------------

   function MP_UML_State_Invariant_Covered return AMF.Internals.CMOF_Element is
   begin
      return Base + 460;
   end MP_UML_State_Invariant_Covered;

   --------------------------------------
   -- MP_UML_State_Invariant_Invariant --
   --------------------------------------

   function MP_UML_State_Invariant_Invariant return AMF.Internals.CMOF_Element is
   begin
      return Base + 810;
   end MP_UML_State_Invariant_Invariant;

   -------------------------------------------
   -- MP_UML_State_Machine_Connection_Point --
   -------------------------------------------

   function MP_UML_State_Machine_Connection_Point return AMF.Internals.CMOF_Element is
   begin
      return Base + 461;
   end MP_UML_State_Machine_Connection_Point;

   -------------------------------------------------
   -- MP_UML_State_Machine_Extended_State_Machine --
   -------------------------------------------------

   function MP_UML_State_Machine_Extended_State_Machine return AMF.Internals.CMOF_Element is
   begin
      return Base + 462;
   end MP_UML_State_Machine_Extended_State_Machine;

   ---------------------------------
   -- MP_UML_State_Machine_Region --
   ---------------------------------

   function MP_UML_State_Machine_Region return AMF.Internals.CMOF_Element is
   begin
      return Base + 463;
   end MP_UML_State_Machine_Region;

   -------------------------------------------
   -- MP_UML_State_Machine_Submachine_State --
   -------------------------------------------

   function MP_UML_State_Machine_Submachine_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 464;
   end MP_UML_State_Machine_Submachine_State;

   ----------------------------
   -- MP_UML_Stereotype_Icon --
   ----------------------------

   function MP_UML_Stereotype_Icon return AMF.Internals.CMOF_Element is
   begin
      return Base + 465;
   end MP_UML_Stereotype_Icon;

   -------------------------------
   -- MP_UML_Stereotype_Profile --
   -------------------------------

   function MP_UML_Stereotype_Profile return AMF.Internals.CMOF_Element is
   begin
      return Base + 811;
   end MP_UML_Stereotype_Profile;

   ------------------------------------------------
   -- MP_UML_String_Expression_Owning_Expression --
   ------------------------------------------------

   function MP_UML_String_Expression_Owning_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 812;
   end MP_UML_String_Expression_Owning_Expression;

   ---------------------------------------------
   -- MP_UML_String_Expression_Sub_Expression --
   ---------------------------------------------

   function MP_UML_String_Expression_Sub_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 466;
   end MP_UML_String_Expression_Sub_Expression;

   --------------------------------------------
   -- MP_UML_Structural_Feature_Is_Read_Only --
   --------------------------------------------

   function MP_UML_Structural_Feature_Is_Read_Only return AMF.Internals.CMOF_Element is
   begin
      return Base + 813;
   end MP_UML_Structural_Feature_Is_Read_Only;

   ---------------------------------------------
   -- MP_UML_Structural_Feature_Action_Object --
   ---------------------------------------------

   function MP_UML_Structural_Feature_Action_Object return AMF.Internals.CMOF_Element is
   begin
      return Base + 814;
   end MP_UML_Structural_Feature_Action_Object;

   ---------------------------------------------------------
   -- MP_UML_Structural_Feature_Action_Structural_Feature --
   ---------------------------------------------------------

   function MP_UML_Structural_Feature_Action_Structural_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 815;
   end MP_UML_Structural_Feature_Action_Structural_Feature;

   ----------------------------------------------
   -- MP_UML_Structured_Activity_Node_Activity --
   ----------------------------------------------

   function MP_UML_Structured_Activity_Node_Activity return AMF.Internals.CMOF_Element is
   begin
      return Base + 816;
   end MP_UML_Structured_Activity_Node_Activity;

   ------------------------------------------
   -- MP_UML_Structured_Activity_Node_Edge --
   ------------------------------------------

   function MP_UML_Structured_Activity_Node_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 467;
   end MP_UML_Structured_Activity_Node_Edge;

   --------------------------------------------------
   -- MP_UML_Structured_Activity_Node_Must_Isolate --
   --------------------------------------------------

   function MP_UML_Structured_Activity_Node_Must_Isolate return AMF.Internals.CMOF_Element is
   begin
      return Base + 817;
   end MP_UML_Structured_Activity_Node_Must_Isolate;

   ------------------------------------------
   -- MP_UML_Structured_Activity_Node_Node --
   ------------------------------------------

   function MP_UML_Structured_Activity_Node_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 468;
   end MP_UML_Structured_Activity_Node_Node;

   -----------------------------------------------------------
   -- MP_UML_Structured_Activity_Node_Structured_Node_Input --
   -----------------------------------------------------------

   function MP_UML_Structured_Activity_Node_Structured_Node_Input return AMF.Internals.CMOF_Element is
   begin
      return Base + 469;
   end MP_UML_Structured_Activity_Node_Structured_Node_Input;

   ------------------------------------------------------------
   -- MP_UML_Structured_Activity_Node_Structured_Node_Output --
   ------------------------------------------------------------

   function MP_UML_Structured_Activity_Node_Structured_Node_Output return AMF.Internals.CMOF_Element is
   begin
      return Base + 470;
   end MP_UML_Structured_Activity_Node_Structured_Node_Output;

   ----------------------------------------------
   -- MP_UML_Structured_Activity_Node_Variable --
   ----------------------------------------------

   function MP_UML_Structured_Activity_Node_Variable return AMF.Internals.CMOF_Element is
   begin
      return Base + 471;
   end MP_UML_Structured_Activity_Node_Variable;

   --------------------------------------------------
   -- MP_UML_Structured_Classifier_Owned_Attribute --
   --------------------------------------------------

   function MP_UML_Structured_Classifier_Owned_Attribute return AMF.Internals.CMOF_Element is
   begin
      return Base + 472;
   end MP_UML_Structured_Classifier_Owned_Attribute;

   --------------------------------------------------
   -- MP_UML_Structured_Classifier_Owned_Connector --
   --------------------------------------------------

   function MP_UML_Structured_Classifier_Owned_Connector return AMF.Internals.CMOF_Element is
   begin
      return Base + 473;
   end MP_UML_Structured_Classifier_Owned_Connector;

   ---------------------------------------
   -- MP_UML_Structured_Classifier_Part --
   ---------------------------------------

   function MP_UML_Structured_Classifier_Part return AMF.Internals.CMOF_Element is
   begin
      return Base + 474;
   end MP_UML_Structured_Classifier_Part;

   ---------------------------------------
   -- MP_UML_Structured_Classifier_Role --
   ---------------------------------------

   function MP_UML_Structured_Classifier_Role return AMF.Internals.CMOF_Element is
   begin
      return Base + 475;
   end MP_UML_Structured_Classifier_Role;

   ----------------------------------
   -- MP_UML_Substitution_Contract --
   ----------------------------------

   function MP_UML_Substitution_Contract return AMF.Internals.CMOF_Element is
   begin
      return Base + 818;
   end MP_UML_Substitution_Contract;

   -------------------------------------------------
   -- MP_UML_Substitution_Substituting_Classifier --
   -------------------------------------------------

   function MP_UML_Substitution_Substituting_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 819;
   end MP_UML_Substitution_Substituting_Classifier;

   -------------------------------------------
   -- MP_UML_Template_Binding_Bound_Element --
   -------------------------------------------

   function MP_UML_Template_Binding_Bound_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 820;
   end MP_UML_Template_Binding_Bound_Element;

   ----------------------------------------------------
   -- MP_UML_Template_Binding_Parameter_Substitution --
   ----------------------------------------------------

   function MP_UML_Template_Binding_Parameter_Substitution return AMF.Internals.CMOF_Element is
   begin
      return Base + 476;
   end MP_UML_Template_Binding_Parameter_Substitution;

   ---------------------------------------
   -- MP_UML_Template_Binding_Signature --
   ---------------------------------------

   function MP_UML_Template_Binding_Signature return AMF.Internals.CMOF_Element is
   begin
      return Base + 821;
   end MP_UML_Template_Binding_Signature;

   ---------------------------------------
   -- MP_UML_Template_Parameter_Default --
   ---------------------------------------

   function MP_UML_Template_Parameter_Default return AMF.Internals.CMOF_Element is
   begin
      return Base + 822;
   end MP_UML_Template_Parameter_Default;

   ---------------------------------------------
   -- MP_UML_Template_Parameter_Owned_Default --
   ---------------------------------------------

   function MP_UML_Template_Parameter_Owned_Default return AMF.Internals.CMOF_Element is
   begin
      return Base + 823;
   end MP_UML_Template_Parameter_Owned_Default;

   ---------------------------------------------------------
   -- MP_UML_Template_Parameter_Owned_Parametered_Element --
   ---------------------------------------------------------

   function MP_UML_Template_Parameter_Owned_Parametered_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 824;
   end MP_UML_Template_Parameter_Owned_Parametered_Element;

   ---------------------------------------------------
   -- MP_UML_Template_Parameter_Parametered_Element --
   ---------------------------------------------------

   function MP_UML_Template_Parameter_Parametered_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 825;
   end MP_UML_Template_Parameter_Parametered_Element;

   -----------------------------------------
   -- MP_UML_Template_Parameter_Signature --
   -----------------------------------------

   function MP_UML_Template_Parameter_Signature return AMF.Internals.CMOF_Element is
   begin
      return Base + 826;
   end MP_UML_Template_Parameter_Signature;

   ---------------------------------------------------
   -- MP_UML_Template_Parameter_Substitution_Actual --
   ---------------------------------------------------

   function MP_UML_Template_Parameter_Substitution_Actual return AMF.Internals.CMOF_Element is
   begin
      return Base + 827;
   end MP_UML_Template_Parameter_Substitution_Actual;

   ---------------------------------------------------
   -- MP_UML_Template_Parameter_Substitution_Formal --
   ---------------------------------------------------

   function MP_UML_Template_Parameter_Substitution_Formal return AMF.Internals.CMOF_Element is
   begin
      return Base + 828;
   end MP_UML_Template_Parameter_Substitution_Formal;

   ---------------------------------------------------------
   -- MP_UML_Template_Parameter_Substitution_Owned_Actual --
   ---------------------------------------------------------

   function MP_UML_Template_Parameter_Substitution_Owned_Actual return AMF.Internals.CMOF_Element is
   begin
      return Base + 829;
   end MP_UML_Template_Parameter_Substitution_Owned_Actual;

   -------------------------------------------------------------
   -- MP_UML_Template_Parameter_Substitution_Template_Binding --
   -------------------------------------------------------------

   function MP_UML_Template_Parameter_Substitution_Template_Binding return AMF.Internals.CMOF_Element is
   begin
      return Base + 830;
   end MP_UML_Template_Parameter_Substitution_Template_Binding;

   -----------------------------------------------
   -- MP_UML_Template_Signature_Owned_Parameter --
   -----------------------------------------------

   function MP_UML_Template_Signature_Owned_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 477;
   end MP_UML_Template_Signature_Owned_Parameter;

   -----------------------------------------
   -- MP_UML_Template_Signature_Parameter --
   -----------------------------------------

   function MP_UML_Template_Signature_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 478;
   end MP_UML_Template_Signature_Parameter;

   ----------------------------------------
   -- MP_UML_Template_Signature_Template --
   ----------------------------------------

   function MP_UML_Template_Signature_Template return AMF.Internals.CMOF_Element is
   begin
      return Base + 831;
   end MP_UML_Template_Signature_Template;

   ----------------------------------------------------------
   -- MP_UML_Templateable_Element_Owned_Template_Signature --
   ----------------------------------------------------------

   function MP_UML_Templateable_Element_Owned_Template_Signature return AMF.Internals.CMOF_Element is
   begin
      return Base + 832;
   end MP_UML_Templateable_Element_Owned_Template_Signature;

   --------------------------------------------------
   -- MP_UML_Templateable_Element_Template_Binding --
   --------------------------------------------------

   function MP_UML_Templateable_Element_Template_Binding return AMF.Internals.CMOF_Element is
   begin
      return Base + 479;
   end MP_UML_Templateable_Element_Template_Binding;

   ---------------------------------------
   -- MP_UML_Test_Identity_Action_First --
   ---------------------------------------

   function MP_UML_Test_Identity_Action_First return AMF.Internals.CMOF_Element is
   begin
      return Base + 833;
   end MP_UML_Test_Identity_Action_First;

   ----------------------------------------
   -- MP_UML_Test_Identity_Action_Result --
   ----------------------------------------

   function MP_UML_Test_Identity_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 834;
   end MP_UML_Test_Identity_Action_Result;

   ----------------------------------------
   -- MP_UML_Test_Identity_Action_Second --
   ----------------------------------------

   function MP_UML_Test_Identity_Action_Second return AMF.Internals.CMOF_Element is
   begin
      return Base + 835;
   end MP_UML_Test_Identity_Action_Second;

   ----------------------------------------
   -- MP_UML_Time_Constraint_First_Event --
   ----------------------------------------

   function MP_UML_Time_Constraint_First_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 836;
   end MP_UML_Time_Constraint_First_Event;

   ------------------------------------------
   -- MP_UML_Time_Constraint_Specification --
   ------------------------------------------

   function MP_UML_Time_Constraint_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 837;
   end MP_UML_Time_Constraint_Specification;

   -----------------------------------
   -- MP_UML_Time_Event_Is_Relative --
   -----------------------------------

   function MP_UML_Time_Event_Is_Relative return AMF.Internals.CMOF_Element is
   begin
      return Base + 838;
   end MP_UML_Time_Event_Is_Relative;

   ----------------------------
   -- MP_UML_Time_Event_When --
   ----------------------------

   function MP_UML_Time_Event_When return AMF.Internals.CMOF_Element is
   begin
      return Base + 839;
   end MP_UML_Time_Event_When;

   ---------------------------------
   -- MP_UML_Time_Expression_Expr --
   ---------------------------------

   function MP_UML_Time_Expression_Expr return AMF.Internals.CMOF_Element is
   begin
      return Base + 840;
   end MP_UML_Time_Expression_Expr;

   ----------------------------------------
   -- MP_UML_Time_Expression_Observation --
   ----------------------------------------

   function MP_UML_Time_Expression_Observation return AMF.Internals.CMOF_Element is
   begin
      return Base + 480;
   end MP_UML_Time_Expression_Observation;

   ------------------------------
   -- MP_UML_Time_Interval_Max --
   ------------------------------

   function MP_UML_Time_Interval_Max return AMF.Internals.CMOF_Element is
   begin
      return Base + 841;
   end MP_UML_Time_Interval_Max;

   ------------------------------
   -- MP_UML_Time_Interval_Min --
   ------------------------------

   function MP_UML_Time_Interval_Min return AMF.Internals.CMOF_Element is
   begin
      return Base + 842;
   end MP_UML_Time_Interval_Min;

   -----------------------------------
   -- MP_UML_Time_Observation_Event --
   -----------------------------------

   function MP_UML_Time_Observation_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 843;
   end MP_UML_Time_Observation_Event;

   -----------------------------------------
   -- MP_UML_Time_Observation_First_Event --
   -----------------------------------------

   function MP_UML_Time_Observation_First_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 844;
   end MP_UML_Time_Observation_First_Event;

   ---------------------------------
   -- MP_UML_Transition_Container --
   ---------------------------------

   function MP_UML_Transition_Container return AMF.Internals.CMOF_Element is
   begin
      return Base + 845;
   end MP_UML_Transition_Container;

   ------------------------------
   -- MP_UML_Transition_Effect --
   ------------------------------

   function MP_UML_Transition_Effect return AMF.Internals.CMOF_Element is
   begin
      return Base + 846;
   end MP_UML_Transition_Effect;

   -----------------------------
   -- MP_UML_Transition_Guard --
   -----------------------------

   function MP_UML_Transition_Guard return AMF.Internals.CMOF_Element is
   begin
      return Base + 847;
   end MP_UML_Transition_Guard;

   ----------------------------
   -- MP_UML_Transition_Kind --
   ----------------------------

   function MP_UML_Transition_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 848;
   end MP_UML_Transition_Kind;

   --------------------------------------------
   -- MP_UML_Transition_Redefined_Transition --
   --------------------------------------------

   function MP_UML_Transition_Redefined_Transition return AMF.Internals.CMOF_Element is
   begin
      return Base + 849;
   end MP_UML_Transition_Redefined_Transition;

   --------------------------------------------
   -- MP_UML_Transition_Redefinition_Context --
   --------------------------------------------

   function MP_UML_Transition_Redefinition_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 481;
   end MP_UML_Transition_Redefinition_Context;

   ------------------------------
   -- MP_UML_Transition_Source --
   ------------------------------

   function MP_UML_Transition_Source return AMF.Internals.CMOF_Element is
   begin
      return Base + 850;
   end MP_UML_Transition_Source;

   ------------------------------
   -- MP_UML_Transition_Target --
   ------------------------------

   function MP_UML_Transition_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 851;
   end MP_UML_Transition_Target;

   -------------------------------
   -- MP_UML_Transition_Trigger --
   -------------------------------

   function MP_UML_Transition_Trigger return AMF.Internals.CMOF_Element is
   begin
      return Base + 482;
   end MP_UML_Transition_Trigger;

   --------------------------
   -- MP_UML_Trigger_Event --
   --------------------------

   function MP_UML_Trigger_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 852;
   end MP_UML_Trigger_Event;

   -------------------------
   -- MP_UML_Trigger_Port --
   -------------------------

   function MP_UML_Trigger_Port return AMF.Internals.CMOF_Element is
   begin
      return Base + 483;
   end MP_UML_Trigger_Port;

   -------------------------
   -- MP_UML_Type_Package --
   -------------------------

   function MP_UML_Type_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 853;
   end MP_UML_Type_Package;

   -------------------------------
   -- MP_UML_Typed_Element_Type --
   -------------------------------

   function MP_UML_Typed_Element_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 854;
   end MP_UML_Typed_Element_Type;

   -------------------------------------
   -- MP_UML_Unmarshall_Action_Object --
   -------------------------------------

   function MP_UML_Unmarshall_Action_Object return AMF.Internals.CMOF_Element is
   begin
      return Base + 855;
   end MP_UML_Unmarshall_Action_Object;

   -------------------------------------
   -- MP_UML_Unmarshall_Action_Result --
   -------------------------------------

   function MP_UML_Unmarshall_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 484;
   end MP_UML_Unmarshall_Action_Result;

   ----------------------------------------------
   -- MP_UML_Unmarshall_Action_Unmarshall_Type --
   ----------------------------------------------

   function MP_UML_Unmarshall_Action_Unmarshall_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 856;
   end MP_UML_Unmarshall_Action_Unmarshall_Type;

   ----------------------------
   -- MP_UML_Use_Case_Extend --
   ----------------------------

   function MP_UML_Use_Case_Extend return AMF.Internals.CMOF_Element is
   begin
      return Base + 485;
   end MP_UML_Use_Case_Extend;

   -------------------------------------
   -- MP_UML_Use_Case_Extension_Point --
   -------------------------------------

   function MP_UML_Use_Case_Extension_Point return AMF.Internals.CMOF_Element is
   begin
      return Base + 486;
   end MP_UML_Use_Case_Extension_Point;

   -----------------------------
   -- MP_UML_Use_Case_Include --
   -----------------------------

   function MP_UML_Use_Case_Include return AMF.Internals.CMOF_Element is
   begin
      return Base + 487;
   end MP_UML_Use_Case_Include;

   -----------------------------
   -- MP_UML_Use_Case_Subject --
   -----------------------------

   function MP_UML_Use_Case_Subject return AMF.Internals.CMOF_Element is
   begin
      return Base + 488;
   end MP_UML_Use_Case_Subject;

   ----------------------------
   -- MP_UML_Value_Pin_Value --
   ----------------------------

   function MP_UML_Value_Pin_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 857;
   end MP_UML_Value_Pin_Value;

   ----------------------------------------------
   -- MP_UML_Value_Specification_Action_Result --
   ----------------------------------------------

   function MP_UML_Value_Specification_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 858;
   end MP_UML_Value_Specification_Action_Result;

   ---------------------------------------------
   -- MP_UML_Value_Specification_Action_Value --
   ---------------------------------------------

   function MP_UML_Value_Specification_Action_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 859;
   end MP_UML_Value_Specification_Action_Value;

   ------------------------------------
   -- MP_UML_Variable_Activity_Scope --
   ------------------------------------

   function MP_UML_Variable_Activity_Scope return AMF.Internals.CMOF_Element is
   begin
      return Base + 860;
   end MP_UML_Variable_Activity_Scope;

   ---------------------------
   -- MP_UML_Variable_Scope --
   ---------------------------

   function MP_UML_Variable_Scope return AMF.Internals.CMOF_Element is
   begin
      return Base + 861;
   end MP_UML_Variable_Scope;

   -------------------------------------
   -- MP_UML_Variable_Action_Variable --
   -------------------------------------

   function MP_UML_Variable_Action_Variable return AMF.Internals.CMOF_Element is
   begin
      return Base + 862;
   end MP_UML_Variable_Action_Variable;

   -----------------------------
   -- MP_UML_Vertex_Container --
   -----------------------------

   function MP_UML_Vertex_Container return AMF.Internals.CMOF_Element is
   begin
      return Base + 863;
   end MP_UML_Vertex_Container;

   ----------------------------
   -- MP_UML_Vertex_Incoming --
   ----------------------------

   function MP_UML_Vertex_Incoming return AMF.Internals.CMOF_Element is
   begin
      return Base + 489;
   end MP_UML_Vertex_Incoming;

   ----------------------------
   -- MP_UML_Vertex_Outgoing --
   ----------------------------

   function MP_UML_Vertex_Outgoing return AMF.Internals.CMOF_Element is
   begin
      return Base + 490;
   end MP_UML_Vertex_Outgoing;

   ---------------------------------------------------
   -- MP_UML_Write_Structural_Feature_Action_Result --
   ---------------------------------------------------

   function MP_UML_Write_Structural_Feature_Action_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 864;
   end MP_UML_Write_Structural_Feature_Action_Result;

   --------------------------------------------------
   -- MP_UML_Write_Structural_Feature_Action_Value --
   --------------------------------------------------

   function MP_UML_Write_Structural_Feature_Action_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 865;
   end MP_UML_Write_Structural_Feature_Action_Value;

   ----------------------------------------
   -- MP_UML_Write_Variable_Action_Value --
   ----------------------------------------

   function MP_UML_Write_Variable_Action_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 866;
   end MP_UML_Write_Variable_Action_Value;

   --------------------------------------
   -- MA_UML_Value_Pin_Value_Value_Pin --
   --------------------------------------

   function MA_UML_Value_Pin_Value_Value_Pin return AMF.Internals.CMOF_Element is
   begin
      return Base + 867;
   end MA_UML_Value_Pin_Value_Value_Pin;

   ------------------------------------------------------------------------
   -- MA_UML_Value_Specification_Action_Value_Value_Specification_Action --
   ------------------------------------------------------------------------

   function MA_UML_Value_Specification_Action_Value_Value_Specification_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 868;
   end MA_UML_Value_Specification_Action_Value_Value_Specification_Action;

   ----------------------------------------------------------------------------------
   -- MA_UML_Write_Structural_Feature_Action_Value_Write_Structural_Feature_Action --
   ----------------------------------------------------------------------------------

   function MA_UML_Write_Structural_Feature_Action_Value_Write_Structural_Feature_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 869;
   end MA_UML_Write_Structural_Feature_Action_Value_Write_Structural_Feature_Action;

   --------------------------------------------------------------
   -- MA_UML_Write_Variable_Action_Value_Write_Variable_Action --
   --------------------------------------------------------------

   function MA_UML_Write_Variable_Action_Value_Write_Variable_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 870;
   end MA_UML_Write_Variable_Action_Value_Write_Variable_Action;

   ---------------------------------------------
   -- MA_UML_Activity_Variable_Activity_Scope --
   ---------------------------------------------

   function MA_UML_Activity_Variable_Activity_Scope return AMF.Internals.CMOF_Element is
   begin
      return Base + 871;
   end MA_UML_Activity_Variable_Activity_Scope;

   ----------------------------------------------------
   -- MA_UML_Structured_Activity_Node_Variable_Scope --
   ----------------------------------------------------

   function MA_UML_Structured_Activity_Node_Variable_Scope return AMF.Internals.CMOF_Element is
   begin
      return Base + 872;
   end MA_UML_Structured_Activity_Node_Variable_Scope;

   -----------------------------------------------------
   -- MA_UML_Variable_Action_Variable_Variable_Action --
   -----------------------------------------------------

   function MA_UML_Variable_Action_Variable_Variable_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 873;
   end MA_UML_Variable_Action_Variable_Variable_Action;

   -----------------------------------------------
   -- MA_UML_Activity_Edge_Weight_Activity_Edge --
   -----------------------------------------------

   function MA_UML_Activity_Edge_Weight_Activity_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 874;
   end MA_UML_Activity_Edge_Weight_Activity_Edge;

   ---------------------------------------
   -- MA_UML_Time_Event_When_Time_Event --
   ---------------------------------------

   function MA_UML_Time_Event_When_Time_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 875;
   end MA_UML_Time_Event_When_Time_Event;

   ---------------------------------------------------------------------------------
   -- MA_UML_Action_Execution_Specification_Action_Action_Execution_Specification --
   ---------------------------------------------------------------------------------

   function MA_UML_Action_Execution_Specification_Action_Action_Execution_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 876;
   end MA_UML_Action_Execution_Specification_Action_Action_Execution_Specification;

   -------------------------------------------
   -- MA_UML_Interaction_Action_Interaction --
   -------------------------------------------

   function MA_UML_Interaction_Action_Interaction return AMF.Internals.CMOF_Element is
   begin
      return Base + 877;
   end MA_UML_Interaction_Action_Interaction;

   --------------------------------------------------------
   -- MA_UML_Interaction_Use_Actual_Gate_Interaction_Use --
   --------------------------------------------------------

   function MA_UML_Interaction_Use_Actual_Gate_Interaction_Use return AMF.Internals.CMOF_Element is
   begin
      return Base + 878;
   end MA_UML_Interaction_Use_Actual_Gate_Interaction_Use;

   -----------------------------------------------------------------------------------
   -- MA_UML_Template_Parameter_Substitution_Actual_Template_Parameter_Substitution --
   -----------------------------------------------------------------------------------

   function MA_UML_Template_Parameter_Substitution_Actual_Template_Parameter_Substitution return AMF.Internals.CMOF_Element is
   begin
      return Base + 879;
   end MA_UML_Template_Parameter_Substitution_Actual_Template_Parameter_Substitution;

   -------------------------------------
   -- MA_UML_Include_Addition_Include --
   -------------------------------------

   function MA_UML_Include_Addition_Include return AMF.Internals.CMOF_Element is
   begin
      return Base + 880;
   end MA_UML_Include_Addition_Include;

   ----------------------------------------------
   -- MA_UML_Comment_Annotated_Element_Comment --
   ----------------------------------------------

   function MA_UML_Comment_Annotated_Element_Comment return AMF.Internals.CMOF_Element is
   begin
      return Base + 881;
   end MA_UML_Comment_Annotated_Element_Comment;

   --------------------------------------------------------------------
   -- MA_UML_Profile_Application_Applied_Profile_Profile_Application --
   --------------------------------------------------------------------

   function MA_UML_Profile_Application_Applied_Profile_Profile_Application return AMF.Internals.CMOF_Element is
   begin
      return Base + 882;
   end MA_UML_Profile_Application_Applied_Profile_Profile_Application;

   -----------------------------------------------------
   -- MA_UML_Interaction_Use_Argument_Interaction_Use --
   -----------------------------------------------------

   function MA_UML_Interaction_Use_Argument_Interaction_Use return AMF.Internals.CMOF_Element is
   begin
      return Base + 883;
   end MA_UML_Interaction_Use_Argument_Interaction_Use;

   ---------------------------------------------------------
   -- MA_UML_Invocation_Action_Argument_Invocation_Action --
   ---------------------------------------------------------

   function MA_UML_Invocation_Action_Argument_Invocation_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 884;
   end MA_UML_Invocation_Action_Argument_Invocation_Action;

   -------------------------------------
   -- MA_UML_Message_Argument_Message --
   -------------------------------------

   function MA_UML_Message_Argument_Message return AMF.Internals.CMOF_Element is
   begin
      return Base + 885;
   end MA_UML_Message_Argument_Message;

   --------------------------------------------------------------------------
   -- MA_UML_Clear_Association_Action_Association_Clear_Association_Action --
   --------------------------------------------------------------------------

   function MA_UML_Clear_Association_Action_Association_Clear_Association_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 886;
   end MA_UML_Clear_Association_Action_Association_Clear_Association_Action;

   --------------------------------------------
   -- MA_UML_Classifier_Attribute_Classifier --
   --------------------------------------------

   function MA_UML_Classifier_Attribute_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 887;
   end MA_UML_Classifier_Attribute_Classifier;

   ---------------------------------------------
   -- MA_UML_General_Ordering_Before_To_After --
   ---------------------------------------------

   function MA_UML_General_Ordering_Before_To_After return AMF.Internals.CMOF_Element is
   begin
      return Base + 888;
   end MA_UML_General_Ordering_Before_To_After;

   ---------------------------------------------------------------------------------------
   -- MA_UML_Behavior_Execution_Specification_Behavior_Behavior_Execution_Specification --
   ---------------------------------------------------------------------------------------

   function MA_UML_Behavior_Execution_Specification_Behavior_Behavior_Execution_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 889;
   end MA_UML_Behavior_Execution_Specification_Behavior_Behavior_Execution_Specification;

   ---------------------------------------------------------------
   -- MA_UML_Call_Behavior_Action_Behavior_Call_Behavior_Action --
   ---------------------------------------------------------------

   function MA_UML_Call_Behavior_Action_Behavior_Call_Behavior_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 890;
   end MA_UML_Call_Behavior_Action_Behavior_Call_Behavior_Action;

   ---------------------------------------------------------
   -- MA_UML_Opaque_Expression_Behavior_Opaque_Expression --
   ---------------------------------------------------------

   function MA_UML_Opaque_Expression_Behavior_Opaque_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 891;
   end MA_UML_Opaque_Expression_Behavior_Opaque_Expression;

   --------------------------------------------------
   -- MA_UML_Operation_Body_Condition_Body_Context --
   --------------------------------------------------

   function MA_UML_Operation_Body_Condition_Body_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 892;
   end MA_UML_Operation_Body_Condition_Body_Context;

   --------------------------------------
   -- MA_UML_Clause_Body_Output_Clause --
   --------------------------------------

   function MA_UML_Clause_Body_Output_Clause return AMF.Internals.CMOF_Element is
   begin
      return Base + 893;
   end MA_UML_Clause_Body_Output_Clause;

   --------------------------------------------
   -- MA_UML_Loop_Node_Body_Output_Loop_Node --
   --------------------------------------------

   function MA_UML_Loop_Node_Body_Output_Loop_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 894;
   end MA_UML_Loop_Node_Body_Output_Loop_Node;

   ------------------------------------------
   -- MA_UML_Loop_Node_Body_Part_Loop_Node --
   ------------------------------------------

   function MA_UML_Loop_Node_Body_Part_Loop_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 895;
   end MA_UML_Loop_Node_Body_Part_Loop_Node;

   -------------------------------
   -- MA_UML_Clause_Body_Clause --
   -------------------------------

   function MA_UML_Clause_Body_Clause return AMF.Internals.CMOF_Element is
   begin
      return Base + 896;
   end MA_UML_Clause_Body_Clause;

   ---------------------------------------------------------------
   -- MA_UML_Combined_Fragment_Cfragment_Gate_Combined_Fragment --
   ---------------------------------------------------------------

   function MA_UML_Combined_Fragment_Cfragment_Gate_Combined_Fragment return AMF.Internals.CMOF_Element is
   begin
      return Base + 897;
   end MA_UML_Combined_Fragment_Cfragment_Gate_Combined_Fragment;

   --------------------------------------------------------
   -- MA_UML_Change_Event_Change_Expression_Change_Event --
   --------------------------------------------------------

   function MA_UML_Change_Event_Change_Expression_Change_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 898;
   end MA_UML_Change_Event_Change_Expression_Change_Event;

   ----------------------------------------------------------------------------
   -- MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier --
   ----------------------------------------------------------------------------

   function MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 899;
   end MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier;

   -----------------------------------------------------------------
   -- MA_UML_Create_Object_Action_Classifier_Create_Object_Action --
   -----------------------------------------------------------------

   function MA_UML_Create_Object_Action_Classifier_Create_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 900;
   end MA_UML_Create_Object_Action_Classifier_Create_Object_Action;

   ---------------------------------------------------------------
   -- MA_UML_Enumeration_Literal_Classifier_Enumeration_Literal --
   ---------------------------------------------------------------

   function MA_UML_Enumeration_Literal_Classifier_Enumeration_Literal return AMF.Internals.CMOF_Element is
   begin
      return Base + 901;
   end MA_UML_Enumeration_Literal_Classifier_Enumeration_Literal;

   ---------------------------------------------------------------------
   -- MA_UML_Instance_Specification_Classifier_Instance_Specification --
   ---------------------------------------------------------------------

   function MA_UML_Instance_Specification_Classifier_Instance_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 902;
   end MA_UML_Instance_Specification_Classifier_Instance_Specification;

   -------------------------------------------------------------
   -- MA_UML_Read_Extent_Action_Classifier_Read_Extent_Action --
   -------------------------------------------------------------

   function MA_UML_Read_Extent_Action_Classifier_Read_Extent_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 903;
   end MA_UML_Read_Extent_Action_Classifier_Read_Extent_Action;

   -----------------------------------------------------------------------------------------
   -- MA_UML_Read_Is_Classified_Object_Action_Classifier_Read_Is_Classified_Object_Action --
   -----------------------------------------------------------------------------------------

   function MA_UML_Read_Is_Classified_Object_Action_Classifier_Read_Is_Classified_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 904;
   end MA_UML_Read_Is_Classified_Object_Action_Classifier_Read_Is_Classified_Object_Action;

   --------------------------------------------------------------
   -- MA_UML_Classifier_Template_Parameter_Parametered_Element --
   --------------------------------------------------------------

   function MA_UML_Classifier_Template_Parameter_Parametered_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 905;
   end MA_UML_Classifier_Template_Parameter_Parametered_Element;

   -----------------------------------------------------
   -- MA_UML_Conditional_Node_Clause_Conditional_Node --
   -----------------------------------------------------

   function MA_UML_Conditional_Node_Clause_Conditional_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 906;
   end MA_UML_Conditional_Node_Clause_Conditional_Node;

   ---------------------------------------------------
   -- MA_UML_Named_Element_Client_Dependency_Client --
   ---------------------------------------------------

   function MA_UML_Named_Element_Client_Dependency_Client return AMF.Internals.CMOF_Element is
   begin
      return Base + 907;
   end MA_UML_Named_Element_Client_Dependency_Client;

   -----------------------------------------------------------
   -- MA_UML_Collaboration_Collaboration_Role_Collaboration --
   -----------------------------------------------------------

   function MA_UML_Collaboration_Collaboration_Role_Collaboration return AMF.Internals.CMOF_Element is
   begin
      return Base + 908;
   end MA_UML_Collaboration_Collaboration_Role_Collaboration;

   ----------------------------------------------------
   -- MA_UML_Classifier_Collaboration_Use_Classifier --
   ----------------------------------------------------

   function MA_UML_Classifier_Collaboration_Use_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 909;
   end MA_UML_Classifier_Collaboration_Use_Classifier;

   ---------------------------------------------------
   -- MA_UML_Reduce_Action_Collection_Reduce_Action --
   ---------------------------------------------------

   function MA_UML_Reduce_Action_Collection_Reduce_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 910;
   end MA_UML_Reduce_Action_Collection_Reduce_Action;

   ------------------------------------
   -- MA_UML_Extend_Condition_Extend --
   ------------------------------------

   function MA_UML_Extend_Condition_Extend return AMF.Internals.CMOF_Element is
   begin
      return Base + 911;
   end MA_UML_Extend_Condition_Extend;

   --------------------------------------------------
   -- MA_UML_Parameter_Set_Condition_Parameter_Set --
   --------------------------------------------------

   function MA_UML_Parameter_Set_Condition_Parameter_Set return AMF.Internals.CMOF_Element is
   begin
      return Base + 912;
   end MA_UML_Parameter_Set_Condition_Parameter_Set;

   ------------------------------------------------
   -- MA_UML_Deployment_Configuration_Deployment --
   ------------------------------------------------

   function MA_UML_Deployment_Configuration_Deployment return AMF.Internals.CMOF_Element is
   begin
      return Base + 913;
   end MA_UML_Deployment_Configuration_Deployment;

   ----------------------------------------------------------------
   -- MA_UML_Protocol_State_Machine_Conformance_Specific_Machine --
   ----------------------------------------------------------------

   function MA_UML_Protocol_State_Machine_Conformance_Specific_Machine return AMF.Internals.CMOF_Element is
   begin
      return Base + 914;
   end MA_UML_Protocol_State_Machine_Conformance_Specific_Machine;

   -----------------------------------------------------------------------
   -- MA_UML_Connectable_Element_Template_Parameter_Parametered_Element --
   -----------------------------------------------------------------------

   function MA_UML_Connectable_Element_Template_Parameter_Parametered_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 915;
   end MA_UML_Connectable_Element_Template_Parameter_Parametered_Element;

   -----------------------------------------
   -- MA_UML_State_Connection_Point_State --
   -----------------------------------------

   function MA_UML_State_Connection_Point_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 916;
   end MA_UML_State_Connection_Point_State;

   ---------------------------------------------------------
   -- MA_UML_State_Machine_Connection_Point_State_Machine --
   ---------------------------------------------------------

   function MA_UML_State_Machine_Connection_Point_State_Machine return AMF.Internals.CMOF_Element is
   begin
      return Base + 917;
   end MA_UML_State_Machine_Connection_Point_State_Machine;

   -----------------------------------
   -- MA_UML_State_Connection_State --
   -----------------------------------

   function MA_UML_State_Connection_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 918;
   end MA_UML_State_Connection_State;

   --------------------------------------
   -- MA_UML_Message_Connector_Message --
   --------------------------------------

   function MA_UML_Message_Connector_Message return AMF.Internals.CMOF_Element is
   begin
      return Base + 919;
   end MA_UML_Message_Connector_Message;

   ------------------------------------------------------
   -- MA_UML_Constraint_Constrained_Element_Constraint --
   ------------------------------------------------------

   function MA_UML_Constraint_Constrained_Element_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 920;
   end MA_UML_Constraint_Constrained_Element_Constraint;

   ------------------------------------------------------------------------------------------------
   -- MA_UML_Classifier_Template_Parameter_Constraining_Classifier_Classifier_Template_Parameter --
   ------------------------------------------------------------------------------------------------

   function MA_UML_Classifier_Template_Parameter_Constraining_Classifier_Classifier_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 921;
   end MA_UML_Classifier_Template_Parameter_Constraining_Classifier_Classifier_Template_Parameter;

   ---------------------------------------------------
   -- MA_UML_Activity_Group_Contained_Edge_In_Group --
   ---------------------------------------------------

   function MA_UML_Activity_Group_Contained_Edge_In_Group return AMF.Internals.CMOF_Element is
   begin
      return Base + 922;
   end MA_UML_Activity_Group_Contained_Edge_In_Group;

   ---------------------------------------------------
   -- MA_UML_Activity_Group_Contained_Node_In_Group --
   ---------------------------------------------------

   function MA_UML_Activity_Group_Contained_Node_In_Group return AMF.Internals.CMOF_Element is
   begin
      return Base + 923;
   end MA_UML_Activity_Group_Contained_Node_In_Group;

   ----------------------------------
   -- MA_UML_Action_Context_Action --
   ----------------------------------

   function MA_UML_Action_Context_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 924;
   end MA_UML_Action_Context_Action;

   --------------------------------------
   -- MA_UML_Behavior_Context_Behavior --
   --------------------------------------

   function MA_UML_Behavior_Context_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 925;
   end MA_UML_Behavior_Context_Behavior;

   -----------------------------------------
   -- MA_UML_Connector_Contract_Connector --
   -----------------------------------------

   function MA_UML_Connector_Contract_Connector return AMF.Internals.CMOF_Element is
   begin
      return Base + 926;
   end MA_UML_Connector_Contract_Connector;

   -----------------------------------------------------------------
   -- MA_UML_Interface_Realization_Contract_Interface_Realization --
   -----------------------------------------------------------------

   function MA_UML_Interface_Realization_Contract_Interface_Realization return AMF.Internals.CMOF_Element is
   begin
      return Base + 927;
   end MA_UML_Interface_Realization_Contract_Interface_Realization;

   -----------------------------------------------
   -- MA_UML_Substitution_Contract_Substitution --
   -----------------------------------------------

   function MA_UML_Substitution_Contract_Substitution return AMF.Internals.CMOF_Element is
   begin
      return Base + 928;
   end MA_UML_Substitution_Contract_Substitution;

   -------------------------------------------------------
   -- MA_UML_Information_Flow_Conveyed_Information_Flow --
   -------------------------------------------------------

   function MA_UML_Information_Flow_Conveyed_Information_Flow return AMF.Internals.CMOF_Element is
   begin
      return Base + 929;
   end MA_UML_Information_Flow_Conveyed_Information_Flow;

   ----------------------------------------------------
   -- MA_UML_Interaction_Fragment_Covered_Covered_By --
   ----------------------------------------------------

   function MA_UML_Interaction_Fragment_Covered_Covered_By return AMF.Internals.CMOF_Element is
   begin
      return Base + 930;
   end MA_UML_Interaction_Fragment_Covered_Covered_By;

   ----------------------------------------------------
   -- MA_UML_Occurrence_Specification_Covered_Events --
   ----------------------------------------------------

   function MA_UML_Occurrence_Specification_Covered_Events return AMF.Internals.CMOF_Element is
   begin
      return Base + 931;
   end MA_UML_Occurrence_Specification_Covered_Events;

   ----------------------------------------------------
   -- MA_UML_State_Invariant_Covered_State_Invariant --
   ----------------------------------------------------

   function MA_UML_State_Invariant_Covered_State_Invariant return AMF.Internals.CMOF_Element is
   begin
      return Base + 932;
   end MA_UML_State_Invariant_Covered_State_Invariant;

   ----------------------------------
   -- MA_UML_Clause_Decider_Clause --
   ----------------------------------

   function MA_UML_Clause_Decider_Clause return AMF.Internals.CMOF_Element is
   begin
      return Base + 933;
   end MA_UML_Clause_Decider_Clause;

   ----------------------------------------
   -- MA_UML_Loop_Node_Decider_Loop_Node --
   ----------------------------------------

   function MA_UML_Loop_Node_Decider_Loop_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 934;
   end MA_UML_Loop_Node_Decider_Loop_Node;

   ------------------------------------------------------------
   -- MA_UML_Decision_Node_Decision_Input_Flow_Decision_Node --
   ------------------------------------------------------------

   function MA_UML_Decision_Node_Decision_Input_Flow_Decision_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 935;
   end MA_UML_Decision_Node_Decision_Input_Flow_Decision_Node;

   -------------------------------------------------------
   -- MA_UML_Decision_Node_Decision_Input_Decision_Node --
   -------------------------------------------------------

   function MA_UML_Decision_Node_Decision_Input_Decision_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 936;
   end MA_UML_Decision_Node_Decision_Input_Decision_Node;

   --------------------------------------------
   -- MA_UML_Lifeline_Decomposed_As_Lifeline --
   --------------------------------------------

   function MA_UML_Lifeline_Decomposed_As_Lifeline return AMF.Internals.CMOF_Element is
   begin
      return Base + 937;
   end MA_UML_Lifeline_Decomposed_As_Lifeline;

   -----------------------------------------------------
   -- MA_UML_Parameter_Default_Value_Owning_Parameter --
   -----------------------------------------------------

   function MA_UML_Parameter_Default_Value_Owning_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 938;
   end MA_UML_Parameter_Default_Value_Owning_Parameter;

   ---------------------------------------------------
   -- MA_UML_Property_Default_Value_Owning_Property --
   ---------------------------------------------------

   function MA_UML_Property_Default_Value_Owning_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 939;
   end MA_UML_Property_Default_Value_Owning_Property;

   ----------------------------------------------------------
   -- MA_UML_Template_Parameter_Default_Template_Parameter --
   ----------------------------------------------------------

   function MA_UML_Template_Parameter_Default_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 940;
   end MA_UML_Template_Parameter_Default_Template_Parameter;

   -------------------------------------------
   -- MA_UML_State_Deferrable_Trigger_State --
   -------------------------------------------

   function MA_UML_State_Deferrable_Trigger_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 941;
   end MA_UML_State_Deferrable_Trigger_State;

   -----------------------------------------------------
   -- MA_UML_Connector_End_Defining_End_Connector_End --
   -----------------------------------------------------

   function MA_UML_Connector_End_Defining_End_Connector_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 942;
   end MA_UML_Connector_End_Defining_End_Connector_End;

   ---------------------------------------
   -- MA_UML_Slot_Defining_Feature_Slot --
   ---------------------------------------

   function MA_UML_Slot_Defining_Feature_Slot return AMF.Internals.CMOF_Element is
   begin
      return Base + 943;
   end MA_UML_Slot_Defining_Feature_Slot;

   ----------------------------------------------------
   -- MA_UML_Deployment_Deployed_Artifact_Deployment --
   ----------------------------------------------------

   function MA_UML_Deployment_Deployed_Artifact_Deployment return AMF.Internals.CMOF_Element is
   begin
      return Base + 944;
   end MA_UML_Deployment_Deployed_Artifact_Deployment;

   -----------------------------------------------------------------
   -- MA_UML_Deployment_Target_Deployed_Element_Deployment_Target --
   -----------------------------------------------------------------

   function MA_UML_Deployment_Target_Deployed_Element_Deployment_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 945;
   end MA_UML_Deployment_Target_Deployed_Element_Deployment_Target;

   --------------------------------------------------
   -- MA_UML_Deployment_Target_Deployment_Location --
   --------------------------------------------------

   function MA_UML_Deployment_Target_Deployment_Location return AMF.Internals.CMOF_Element is
   begin
      return Base + 946;
   end MA_UML_Deployment_Target_Deployment_Location;

   ---------------------------------------------------------------------------
   -- MA_UML_Link_End_Destruction_Data_Destroy_At_Link_End_Destruction_Data --
   ---------------------------------------------------------------------------

   function MA_UML_Link_End_Destruction_Data_Destroy_At_Link_End_Destruction_Data return AMF.Internals.CMOF_Element is
   begin
      return Base + 947;
   end MA_UML_Link_End_Destruction_Data_Destroy_At_Link_End_Destruction_Data;

   ------------------------------------
   -- MA_UML_State_Do_Activity_State --
   ------------------------------------

   function MA_UML_State_Do_Activity_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 948;
   end MA_UML_State_Do_Activity_State;

   -----------------------------------
   -- MA_UML_Activity_Edge_Activity --
   -----------------------------------

   function MA_UML_Activity_Edge_Activity return AMF.Internals.CMOF_Element is
   begin
      return Base + 949;
   end MA_UML_Activity_Edge_Activity;

   -------------------------------------------------
   -- MA_UML_Activity_Partition_Edge_In_Partition --
   -------------------------------------------------

   function MA_UML_Activity_Partition_Edge_In_Partition return AMF.Internals.CMOF_Element is
   begin
      return Base + 950;
   end MA_UML_Activity_Partition_Edge_In_Partition;

   -------------------------------------------------------------
   -- MA_UML_Structured_Activity_Node_Edge_In_Structured_Node --
   -------------------------------------------------------------

   function MA_UML_Structured_Activity_Node_Edge_In_Structured_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 951;
   end MA_UML_Structured_Activity_Node_Edge_In_Structured_Node;

   -----------------------------------------
   -- MA_UML_Transition_Effect_Transition --
   -----------------------------------------

   function MA_UML_Transition_Effect_Transition return AMF.Internals.CMOF_Element is
   begin
      return Base + 952;
   end MA_UML_Transition_Effect_Transition;

   ---------------------------------------------------------
   -- MA_UML_Namespace_Element_Import_Importing_Namespace --
   ---------------------------------------------------------

   function MA_UML_Namespace_Element_Import_Importing_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 953;
   end MA_UML_Namespace_Element_Import_Importing_Namespace;

   -----------------------------------------------------------
   -- MA_UML_Create_Link_Action_End_Data_Create_Link_Action --
   -----------------------------------------------------------

   function MA_UML_Create_Link_Action_End_Data_Create_Link_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 954;
   end MA_UML_Create_Link_Action_End_Data_Create_Link_Action;

   -------------------------------------------------------------
   -- MA_UML_Destroy_Link_Action_End_Data_Destroy_Link_Action --
   -------------------------------------------------------------

   function MA_UML_Destroy_Link_Action_End_Data_Destroy_Link_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 955;
   end MA_UML_Destroy_Link_Action_End_Data_Destroy_Link_Action;

   ---------------------------------------------
   -- MA_UML_Link_Action_End_Data_Link_Action --
   ---------------------------------------------

   function MA_UML_Link_Action_End_Data_Link_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 956;
   end MA_UML_Link_Action_End_Data_Link_Action;

   ---------------------------------------------
   -- MA_UML_Association_End_Type_Association --
   ---------------------------------------------

   function MA_UML_Association_End_Type_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 957;
   end MA_UML_Association_End_Type_Association;

   ------------------------------------
   -- MA_UML_Connector_End_Connector --
   ------------------------------------

   function MA_UML_Connector_End_Connector return AMF.Internals.CMOF_Element is
   begin
      return Base + 958;
   end MA_UML_Connector_End_Connector;

   --------------------------------------------
   -- MA_UML_Link_End_Data_End_Link_End_Data --
   --------------------------------------------

   function MA_UML_Link_End_Data_End_Link_End_Data return AMF.Internals.CMOF_Element is
   begin
      return Base + 959;
   end MA_UML_Link_End_Data_End_Link_End_Data;

   ------------------------------------------------------------------------
   -- MA_UML_Read_Link_Object_End_Action_End_Read_Link_Object_End_Action --
   ------------------------------------------------------------------------

   function MA_UML_Read_Link_Object_End_Action_End_Read_Link_Object_End_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 960;
   end MA_UML_Read_Link_Object_End_Action_End_Read_Link_Object_End_Action;

   -----------------------------------------
   -- MA_UML_Connectable_Element_End_Role --
   -----------------------------------------

   function MA_UML_Connectable_Element_End_Role return AMF.Internals.CMOF_Element is
   begin
      return Base + 961;
   end MA_UML_Connectable_Element_End_Role;

   ------------------------------------------------------------------------
   -- MA_UML_Connection_Point_Reference_Entry_Connection_Point_Reference --
   ------------------------------------------------------------------------

   function MA_UML_Connection_Point_Reference_Entry_Connection_Point_Reference return AMF.Internals.CMOF_Element is
   begin
      return Base + 962;
   end MA_UML_Connection_Point_Reference_Entry_Connection_Point_Reference;

   ------------------------------
   -- MA_UML_State_Entry_State --
   ------------------------------

   function MA_UML_State_Entry_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 963;
   end MA_UML_State_Entry_State;

   ------------------------------------------------------------
   -- MA_UML_Duration_Observation_Event_Duration_Observation --
   ------------------------------------------------------------

   function MA_UML_Duration_Observation_Event_Duration_Observation return AMF.Internals.CMOF_Element is
   begin
      return Base + 964;
   end MA_UML_Duration_Observation_Event_Duration_Observation;

   ----------------------------------------------------
   -- MA_UML_Time_Observation_Event_Time_Observation --
   ----------------------------------------------------

   function MA_UML_Time_Observation_Event_Time_Observation return AMF.Internals.CMOF_Element is
   begin
      return Base + 965;
   end MA_UML_Time_Observation_Event_Time_Observation;

   ----------------------------------
   -- MA_UML_Trigger_Event_Trigger --
   ----------------------------------

   function MA_UML_Trigger_Event_Trigger return AMF.Internals.CMOF_Element is
   begin
      return Base + 966;
   end MA_UML_Trigger_Event_Trigger;

   ----------------------------------------------------------------
   -- MA_UML_Exception_Handler_Exception_Input_Exception_Handler --
   ----------------------------------------------------------------

   function MA_UML_Exception_Handler_Exception_Input_Exception_Handler return AMF.Internals.CMOF_Element is
   begin
      return Base + 967;
   end MA_UML_Exception_Handler_Exception_Input_Exception_Handler;

   ---------------------------------------------------------------
   -- MA_UML_Exception_Handler_Exception_Type_Exception_Handler --
   ---------------------------------------------------------------

   function MA_UML_Exception_Handler_Exception_Type_Exception_Handler return AMF.Internals.CMOF_Element is
   begin
      return Base + 968;
   end MA_UML_Exception_Handler_Exception_Type_Exception_Handler;

   --------------------------------------------------------------------
   -- MA_UML_Raise_Exception_Action_Exception_Raise_Exception_Action --
   --------------------------------------------------------------------

   function MA_UML_Raise_Exception_Action_Exception_Raise_Exception_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 969;
   end MA_UML_Raise_Exception_Action_Exception_Raise_Exception_Action;

   --------------------------------------------------------
   -- MA_UML_Sequence_Node_Executable_Node_Sequence_Node --
   --------------------------------------------------------

   function MA_UML_Sequence_Node_Executable_Node_Sequence_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 970;
   end MA_UML_Sequence_Node_Executable_Node_Sequence_Node;

   --------------------------------------------------------------------------------------------
   -- MA_UML_Execution_Occurrence_Specification_Execution_Execution_Occurrence_Specification --
   --------------------------------------------------------------------------------------------

   function MA_UML_Execution_Occurrence_Specification_Execution_Execution_Occurrence_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 971;
   end MA_UML_Execution_Occurrence_Specification_Execution_Execution_Occurrence_Specification;

   -----------------------------------------------------------------------
   -- MA_UML_Connection_Point_Reference_Exit_Connection_Point_Reference --
   -----------------------------------------------------------------------

   function MA_UML_Connection_Point_Reference_Exit_Connection_Point_Reference return AMF.Internals.CMOF_Element is
   begin
      return Base + 972;
   end MA_UML_Connection_Point_Reference_Exit_Connection_Point_Reference;

   -----------------------------
   -- MA_UML_State_Exit_State --
   -----------------------------

   function MA_UML_State_Exit_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 973;
   end MA_UML_State_Exit_State;

   -----------------------------------
   -- MA_UML_Duration_Expr_Duration --
   -----------------------------------

   function MA_UML_Duration_Expr_Duration return AMF.Internals.CMOF_Element is
   begin
      return Base + 974;
   end MA_UML_Duration_Expr_Duration;

   -------------------------------------------------
   -- MA_UML_Time_Expression_Expr_Time_Expression --
   -------------------------------------------------

   function MA_UML_Time_Expression_Expr_Time_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 975;
   end MA_UML_Time_Expression_Expr_Time_Expression;

   --------------------------------------
   -- MA_UML_Use_Case_Extend_Extension --
   --------------------------------------

   function MA_UML_Use_Case_Extend_Extension return AMF.Internals.CMOF_Element is
   begin
      return Base + 976;
   end MA_UML_Use_Case_Extend_Extension;

   ----------------------------------------
   -- MA_UML_Extend_Extended_Case_Extend --
   ----------------------------------------

   function MA_UML_Extend_Extended_Case_Extend return AMF.Internals.CMOF_Element is
   begin
      return Base + 977;
   end MA_UML_Extend_Extended_Case_Extend;

   ------------------------------------------
   -- MA_UML_Region_Extended_Region_Region --
   ------------------------------------------

   function MA_UML_Region_Extended_Region_Region return AMF.Internals.CMOF_Element is
   begin
      return Base + 978;
   end MA_UML_Region_Extended_Region_Region;

   ---------------------------------------------------------------------------------------------
   -- MA_UML_Redefinable_Template_Signature_Extended_Signature_Redefinable_Template_Signature --
   ---------------------------------------------------------------------------------------------

   function MA_UML_Redefinable_Template_Signature_Extended_Signature_Redefinable_Template_Signature return AMF.Internals.CMOF_Element is
   begin
      return Base + 979;
   end MA_UML_Redefinable_Template_Signature_Extended_Signature_Redefinable_Template_Signature;

   ---------------------------------------------------------------
   -- MA_UML_State_Machine_Extended_State_Machine_State_Machine --
   ---------------------------------------------------------------

   function MA_UML_State_Machine_Extended_State_Machine_State_Machine return AMF.Internals.CMOF_Element is
   begin
      return Base + 980;
   end MA_UML_State_Machine_Extended_State_Machine_State_Machine;

   ------------------------------------------------
   -- MA_UML_Extend_Extension_Location_Extension --
   ------------------------------------------------

   function MA_UML_Extend_Extension_Location_Extension return AMF.Internals.CMOF_Element is
   begin
      return Base + 981;
   end MA_UML_Extend_Extension_Location_Extension;

   ----------------------------------------------
   -- MA_UML_Use_Case_Extension_Point_Use_Case --
   ----------------------------------------------

   function MA_UML_Use_Case_Extension_Point_Use_Case return AMF.Internals.CMOF_Element is
   begin
      return Base + 982;
   end MA_UML_Use_Case_Extension_Point_Use_Case;

   --------------------------------------
   -- MA_UML_Class_Extension_Metaclass --
   --------------------------------------

   function MA_UML_Class_Extension_Metaclass return AMF.Internals.CMOF_Element is
   begin
      return Base + 983;
   end MA_UML_Class_Extension_Metaclass;

   ----------------------------------------------------
   -- MA_UML_Classifier_Feature_Featuring_Classifier --
   ----------------------------------------------------

   function MA_UML_Classifier_Feature_Featuring_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 984;
   end MA_UML_Classifier_Feature_Featuring_Classifier;

   -------------------------------------------------------------------
   -- MA_UML_Execution_Specification_Finish_Execution_Specification --
   -------------------------------------------------------------------

   function MA_UML_Execution_Specification_Finish_Execution_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 985;
   end MA_UML_Execution_Specification_Finish_Execution_Specification;

   ------------------------------------------------------------
   -- MA_UML_Test_Identity_Action_First_Test_Identity_Action --
   ------------------------------------------------------------

   function MA_UML_Test_Identity_Action_First_Test_Identity_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 986;
   end MA_UML_Test_Identity_Action_First_Test_Identity_Action;

   ------------------------------------------------
   -- MA_UML_Interaction_Formal_Gate_Interaction --
   ------------------------------------------------

   function MA_UML_Interaction_Formal_Gate_Interaction return AMF.Internals.CMOF_Element is
   begin
      return Base + 987;
   end MA_UML_Interaction_Formal_Gate_Interaction;

   -----------------------------------------------------------------------------------
   -- MA_UML_Template_Parameter_Substitution_Formal_Template_Parameter_Substitution --
   -----------------------------------------------------------------------------------

   function MA_UML_Template_Parameter_Substitution_Formal_Template_Parameter_Substitution return AMF.Internals.CMOF_Element is
   begin
      return Base + 988;
   end MA_UML_Template_Parameter_Substitution_Formal_Template_Parameter_Substitution;

   -------------------------------------------------------
   -- MA_UML_Interaction_Fragment_Enclosing_Interaction --
   -------------------------------------------------------

   function MA_UML_Interaction_Fragment_Enclosing_Interaction return AMF.Internals.CMOF_Element is
   begin
      return Base + 989;
   end MA_UML_Interaction_Fragment_Enclosing_Interaction;

   -----------------------------------------------------------
   -- MA_UML_Interaction_Operand_Fragment_Enclosing_Operand --
   -----------------------------------------------------------

   function MA_UML_Interaction_Operand_Fragment_Enclosing_Operand return AMF.Internals.CMOF_Element is
   begin
      return Base + 990;
   end MA_UML_Interaction_Operand_Fragment_Enclosing_Operand;

   ----------------------------------------------------------
   -- MA_UML_Action_Input_Pin_From_Action_Action_Input_Pin --
   ----------------------------------------------------------

   function MA_UML_Action_Input_Pin_From_Action_Action_Input_Pin return AMF.Internals.CMOF_Element is
   begin
      return Base + 991;
   end MA_UML_Action_Input_Pin_From_Action_Action_Input_Pin;

   ----------------------------------------------------------------------
   -- MA_UML_Protocol_Conformance_General_Machine_Protocol_Conformance --
   ----------------------------------------------------------------------

   function MA_UML_Protocol_Conformance_General_Machine_Protocol_Conformance return AMF.Internals.CMOF_Element is
   begin
      return Base + 992;
   end MA_UML_Protocol_Conformance_General_Machine_Protocol_Conformance;

   -----------------------------------------------------------------------
   -- MA_UML_Interaction_Fragment_General_Ordering_Interaction_Fragment --
   -----------------------------------------------------------------------

   function MA_UML_Interaction_Fragment_General_Ordering_Interaction_Fragment return AMF.Internals.CMOF_Element is
   begin
      return Base + 993;
   end MA_UML_Interaction_Fragment_General_Ordering_Interaction_Fragment;

   ------------------------------------------
   -- MA_UML_Classifier_General_Classifier --
   ------------------------------------------

   function MA_UML_Classifier_General_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 994;
   end MA_UML_Classifier_General_Classifier;

   --------------------------------------------------
   -- MA_UML_Generalization_General_Generalization --
   --------------------------------------------------

   function MA_UML_Generalization_General_Generalization return AMF.Internals.CMOF_Element is
   begin
      return Base + 995;
   end MA_UML_Generalization_General_Generalization;

   -------------------------------------------------------------
   -- MA_UML_Generalization_Generalization_Set_Generalization --
   -------------------------------------------------------------

   function MA_UML_Generalization_Generalization_Set_Generalization return AMF.Internals.CMOF_Element is
   begin
      return Base + 996;
   end MA_UML_Generalization_Generalization_Set_Generalization;

   -----------------------------------------------
   -- MA_UML_Classifier_Generalization_Specific --
   -----------------------------------------------

   function MA_UML_Classifier_Generalization_Specific return AMF.Internals.CMOF_Element is
   begin
      return Base + 997;
   end MA_UML_Classifier_Generalization_Specific;

   ---------------------------------------
   -- MA_UML_Activity_Group_In_Activity --
   ---------------------------------------

   function MA_UML_Activity_Group_In_Activity return AMF.Internals.CMOF_Element is
   begin
      return Base + 998;
   end MA_UML_Activity_Group_In_Activity;

   ----------------------------------------------
   -- MA_UML_Activity_Edge_Guard_Activity_Edge --
   ----------------------------------------------

   function MA_UML_Activity_Edge_Guard_Activity_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 999;
   end MA_UML_Activity_Edge_Guard_Activity_Edge;

   ----------------------------------------------------------
   -- MA_UML_Interaction_Operand_Guard_Interaction_Operand --
   ----------------------------------------------------------

   function MA_UML_Interaction_Operand_Guard_Interaction_Operand return AMF.Internals.CMOF_Element is
   begin
      return Base + 1000;
   end MA_UML_Interaction_Operand_Guard_Interaction_Operand;

   ----------------------------------------
   -- MA_UML_Transition_Guard_Transition --
   ----------------------------------------

   function MA_UML_Transition_Guard_Transition return AMF.Internals.CMOF_Element is
   begin
      return Base + 1001;
   end MA_UML_Transition_Guard_Transition;

   -------------------------------------------------------------
   -- MA_UML_Exception_Handler_Handler_Body_Exception_Handler --
   -------------------------------------------------------------

   function MA_UML_Exception_Handler_Handler_Body_Exception_Handler return AMF.Internals.CMOF_Element is
   begin
      return Base + 1002;
   end MA_UML_Exception_Handler_Handler_Body_Exception_Handler;

   ---------------------------------------------------
   -- MA_UML_Executable_Node_Handler_Protected_Node --
   ---------------------------------------------------

   function MA_UML_Executable_Node_Handler_Protected_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1003;
   end MA_UML_Executable_Node_Handler_Protected_Node;

   ---------------------------------------
   -- MA_UML_Stereotype_Icon_Stereotype --
   ---------------------------------------

   function MA_UML_Stereotype_Icon_Stereotype return AMF.Internals.CMOF_Element is
   begin
      return Base + 1004;
   end MA_UML_Stereotype_Icon_Stereotype;

   -----------------------------------------------------------
   -- MA_UML_Element_Import_Imported_Element_Element_Import --
   -----------------------------------------------------------

   function MA_UML_Element_Import_Imported_Element_Element_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 1005;
   end MA_UML_Element_Import_Imported_Element_Element_Import;

   ------------------------------------------------
   -- MA_UML_Namespace_Imported_Member_Namespace --
   ------------------------------------------------

   function MA_UML_Namespace_Imported_Member_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 1006;
   end MA_UML_Namespace_Imported_Member_Namespace;

   -----------------------------------------------------------
   -- MA_UML_Package_Import_Imported_Package_Package_Import --
   -----------------------------------------------------------

   function MA_UML_Package_Import_Imported_Package_Package_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 1007;
   end MA_UML_Package_Import_Imported_Package_Package_Import;

   -------------------------------------------------------
   -- MA_UML_Activity_Node_In_Interruptible_Region_Node --
   -------------------------------------------------------

   function MA_UML_Activity_Node_In_Interruptible_Region_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1008;
   end MA_UML_Activity_Node_In_Interruptible_Region_Node;

   --------------------------------------------
   -- MA_UML_Activity_Node_In_Partition_Node --
   --------------------------------------------

   function MA_UML_Activity_Node_In_Partition_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1009;
   end MA_UML_Activity_Node_In_Partition_Node;

   ---------------------------------------------
   -- MA_UML_Object_Node_In_State_Object_Node --
   ---------------------------------------------

   function MA_UML_Object_Node_In_State_Object_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1010;
   end MA_UML_Object_Node_In_State_Object_Node;

   --------------------------------------------
   -- MA_UML_Use_Case_Include_Including_Case --
   --------------------------------------------

   function MA_UML_Use_Case_Include_Including_Case return AMF.Internals.CMOF_Element is
   begin
      return Base + 1011;
   end MA_UML_Use_Case_Include_Including_Case;

   ------------------------------------------
   -- MA_UML_Activity_Node_Incoming_Target --
   ------------------------------------------

   function MA_UML_Activity_Node_Incoming_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 1012;
   end MA_UML_Activity_Node_Incoming_Target;

   -----------------------------------
   -- MA_UML_Vertex_Incoming_Target --
   -----------------------------------

   function MA_UML_Vertex_Incoming_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 1013;
   end MA_UML_Vertex_Incoming_Target;

   -----------------------------------------------------------------
   -- MA_UML_Information_Flow_Information_Source_Information_Flow --
   -----------------------------------------------------------------

   function MA_UML_Information_Flow_Information_Source_Information_Flow return AMF.Internals.CMOF_Element is
   begin
      return Base + 1014;
   end MA_UML_Information_Flow_Information_Source_Information_Flow;

   -----------------------------------------------------------------
   -- MA_UML_Information_Flow_Information_Target_Information_Flow --
   -----------------------------------------------------------------

   function MA_UML_Information_Flow_Information_Target_Information_Flow return AMF.Internals.CMOF_Element is
   begin
      return Base + 1015;
   end MA_UML_Information_Flow_Information_Target_Information_Flow;

   ---------------------------------------------------
   -- MA_UML_Classifier_Inherited_Member_Classifier --
   ---------------------------------------------------

   function MA_UML_Classifier_Inherited_Member_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 1016;
   end MA_UML_Classifier_Inherited_Member_Classifier;

   ----------------------------------------------------------------------------------------------
   -- MA_UML_Redefinable_Template_Signature_Inherited_Parameter_Redefinable_Template_Signature --
   ----------------------------------------------------------------------------------------------

   function MA_UML_Redefinable_Template_Signature_Inherited_Parameter_Redefinable_Template_Signature return AMF.Internals.CMOF_Element is
   begin
      return Base + 1017;
   end MA_UML_Redefinable_Template_Signature_Inherited_Parameter_Redefinable_Template_Signature;

   -----------------------------------------------------------
   -- MA_UML_Expansion_Region_Input_Element_Region_As_Input --
   -----------------------------------------------------------

   function MA_UML_Expansion_Region_Input_Element_Region_As_Input return AMF.Internals.CMOF_Element is
   begin
      return Base + 1018;
   end MA_UML_Expansion_Region_Input_Element_Region_As_Input;

   ------------------------------------------------
   -- MA_UML_Link_Action_Input_Value_Link_Action --
   ------------------------------------------------

   function MA_UML_Link_Action_Input_Value_Link_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1019;
   end MA_UML_Link_Action_Input_Value_Link_Action;

   ----------------------------------------------------
   -- MA_UML_Opaque_Action_Input_Value_Opaque_Action --
   ----------------------------------------------------

   function MA_UML_Opaque_Action_Input_Value_Opaque_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1020;
   end MA_UML_Opaque_Action_Input_Value_Opaque_Action;

   --------------------------------
   -- MA_UML_Action_Input_Action --
   --------------------------------

   function MA_UML_Action_Input_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1021;
   end MA_UML_Action_Input_Action;

   ----------------------------------------------------------------------------------------------
   -- MA_UML_Add_Structural_Feature_Value_Action_Insert_At_Add_Structural_Feature_Value_Action --
   ----------------------------------------------------------------------------------------------

   function MA_UML_Add_Structural_Feature_Value_Action_Insert_At_Add_Structural_Feature_Value_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1022;
   end MA_UML_Add_Structural_Feature_Value_Action_Insert_At_Add_Structural_Feature_Value_Action;

   --------------------------------------------------------------------------
   -- MA_UML_Add_Variable_Value_Action_Insert_At_Add_Variable_Value_Action --
   --------------------------------------------------------------------------

   function MA_UML_Add_Variable_Value_Action_Insert_At_Add_Variable_Value_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1023;
   end MA_UML_Add_Variable_Value_Action_Insert_At_Add_Variable_Value_Action;

   --------------------------------------------------------------------
   -- MA_UML_Link_End_Creation_Data_Insert_At_Link_End_Creation_Data --
   --------------------------------------------------------------------

   function MA_UML_Link_End_Creation_Data_Insert_At_Link_End_Creation_Data return AMF.Internals.CMOF_Element is
   begin
      return Base + 1024;
   end MA_UML_Link_End_Creation_Data_Insert_At_Link_End_Creation_Data;

   ---------------------------------------------------
   -- MA_UML_Instance_Value_Instance_Instance_Value --
   ---------------------------------------------------

   function MA_UML_Instance_Value_Instance_Instance_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 1025;
   end MA_UML_Instance_Value_Instance_Instance_Value;

   --------------------------------------------------------------------------------
   -- MA_UML_Behaviored_Classifier_Interface_Realization_Implementing_Classifier --
   --------------------------------------------------------------------------------

   function MA_UML_Behaviored_Classifier_Interface_Realization_Implementing_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 1026;
   end MA_UML_Behaviored_Classifier_Interface_Realization_Implementing_Classifier;

   -----------------------------------------------------------------------
   -- MA_UML_Interruptible_Activity_Region_Interrupting_Edge_Interrupts --
   -----------------------------------------------------------------------

   function MA_UML_Interruptible_Activity_Region_Interrupting_Edge_Interrupts return AMF.Internals.CMOF_Element is
   begin
      return Base + 1027;
   end MA_UML_Interruptible_Activity_Region_Interrupting_Edge_Interrupts;

   ------------------------------------------------------
   -- MA_UML_State_Invariant_Invariant_State_Invariant --
   ------------------------------------------------------

   function MA_UML_State_Invariant_Invariant_State_Invariant return AMF.Internals.CMOF_Element is
   begin
      return Base + 1028;
   end MA_UML_State_Invariant_Invariant_State_Invariant;

   ------------------------------------------
   -- MA_UML_Join_Node_Join_Spec_Join_Node --
   ------------------------------------------

   function MA_UML_Join_Node_Join_Spec_Join_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1029;
   end MA_UML_Join_Node_Join_Spec_Join_Node;

   ---------------------------------------------
   -- MA_UML_Interaction_Lifeline_Interaction --
   ---------------------------------------------

   function MA_UML_Interaction_Lifeline_Interaction return AMF.Internals.CMOF_Element is
   begin
      return Base + 1030;
   end MA_UML_Interaction_Lifeline_Interaction;

   ----------------------------------------------
   -- MA_UML_Action_Local_Postcondition_Action --
   ----------------------------------------------

   function MA_UML_Action_Local_Postcondition_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1031;
   end MA_UML_Action_Local_Postcondition_Action;

   ---------------------------------------------
   -- MA_UML_Action_Local_Precondition_Action --
   ---------------------------------------------

   function MA_UML_Action_Local_Precondition_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1032;
   end MA_UML_Action_Local_Precondition_Action;

   ----------------------------------------------------
   -- MA_UML_Loop_Node_Loop_Variable_Input_Loop_Node --
   ----------------------------------------------------

   function MA_UML_Loop_Node_Loop_Variable_Input_Loop_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1033;
   end MA_UML_Loop_Node_Loop_Variable_Input_Loop_Node;

   ----------------------------------------------
   -- MA_UML_Loop_Node_Loop_Variable_Loop_Node --
   ----------------------------------------------

   function MA_UML_Loop_Node_Loop_Variable_Loop_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1034;
   end MA_UML_Loop_Node_Loop_Variable_Loop_Node;

   ----------------------------------------------------------
   -- MA_UML_Multiplicity_Element_Lower_Value_Owning_Lower --
   ----------------------------------------------------------

   function MA_UML_Multiplicity_Element_Lower_Value_Owning_Lower return AMF.Internals.CMOF_Element is
   begin
      return Base + 1035;
   end MA_UML_Multiplicity_Element_Lower_Value_Owning_Lower;

   --------------------------------------------
   -- MA_UML_Artifact_Manifestation_Artifact --
   --------------------------------------------

   function MA_UML_Artifact_Manifestation_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 1036;
   end MA_UML_Artifact_Manifestation_Artifact;

   --------------------------------------------
   -- MA_UML_Abstraction_Mapping_Abstraction --
   --------------------------------------------

   function MA_UML_Abstraction_Mapping_Abstraction return AMF.Internals.CMOF_Element is
   begin
      return Base + 1037;
   end MA_UML_Abstraction_Mapping_Abstraction;

   ----------------------------------------------------
   -- MA_UML_Duration_Interval_Max_Duration_Interval --
   ----------------------------------------------------

   function MA_UML_Duration_Interval_Max_Duration_Interval return AMF.Internals.CMOF_Element is
   begin
      return Base + 1038;
   end MA_UML_Duration_Interval_Max_Duration_Interval;

   ----------------------------------
   -- MA_UML_Interval_Max_Interval --
   ----------------------------------

   function MA_UML_Interval_Max_Interval return AMF.Internals.CMOF_Element is
   begin
      return Base + 1039;
   end MA_UML_Interval_Max_Interval;

   --------------------------------------------
   -- MA_UML_Time_Interval_Max_Time_Interval --
   --------------------------------------------

   function MA_UML_Time_Interval_Max_Time_Interval return AMF.Internals.CMOF_Element is
   begin
      return Base + 1040;
   end MA_UML_Time_Interval_Max_Time_Interval;

   -----------------------------------------------------------------
   -- MA_UML_Interaction_Constraint_Maxint_Interaction_Constraint --
   -----------------------------------------------------------------

   function MA_UML_Interaction_Constraint_Maxint_Interaction_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 1041;
   end MA_UML_Interaction_Constraint_Maxint_Interaction_Constraint;

   -----------------------------------------------
   -- MA_UML_Association_Member_End_Association --
   -----------------------------------------------

   function MA_UML_Association_Member_End_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 1042;
   end MA_UML_Association_Member_End_Association;

   ----------------------------------------------
   -- MA_UML_Namespace_Member_Member_Namespace --
   ----------------------------------------------

   function MA_UML_Namespace_Member_Member_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 1043;
   end MA_UML_Namespace_Member_Member_Namespace;

   -------------------------------------------------------
   -- MA_UML_Package_Merge_Merged_Package_Package_Merge --
   -------------------------------------------------------

   function MA_UML_Package_Merge_Merged_Package_Package_Merge return AMF.Internals.CMOF_Element is
   begin
      return Base + 1044;
   end MA_UML_Package_Merge_Merged_Package_Package_Merge;

   ----------------------------------------------------------------------
   -- MA_UML_Consider_Ignore_Fragment_Message_Consider_Ignore_Fragment --
   ----------------------------------------------------------------------

   function MA_UML_Consider_Ignore_Fragment_Message_Consider_Ignore_Fragment return AMF.Internals.CMOF_Element is
   begin
      return Base + 1045;
   end MA_UML_Consider_Ignore_Fragment_Message_Consider_Ignore_Fragment;

   --------------------------------------------
   -- MA_UML_Interaction_Message_Interaction --
   --------------------------------------------

   function MA_UML_Interaction_Message_Interaction return AMF.Internals.CMOF_Element is
   begin
      return Base + 1046;
   end MA_UML_Interaction_Message_Interaction;

   --------------------------------------------
   -- MA_UML_Message_End_Message_Message_End --
   --------------------------------------------

   function MA_UML_Message_End_Message_Message_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 1047;
   end MA_UML_Message_End_Message_Message_End;

   ------------------------------------------------
   -- MA_UML_Profile_Metaclass_Reference_Profile --
   ------------------------------------------------

   function MA_UML_Profile_Metaclass_Reference_Profile return AMF.Internals.CMOF_Element is
   begin
      return Base + 1048;
   end MA_UML_Profile_Metaclass_Reference_Profile;

   ------------------------------------------------
   -- MA_UML_Profile_Metamodel_Reference_Profile --
   ------------------------------------------------

   function MA_UML_Profile_Metamodel_Reference_Profile return AMF.Internals.CMOF_Element is
   begin
      return Base + 1049;
   end MA_UML_Profile_Metamodel_Reference_Profile;

   ----------------------------------------------------
   -- MA_UML_Behavioral_Feature_Method_Specification --
   ----------------------------------------------------

   function MA_UML_Behavioral_Feature_Method_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 1050;
   end MA_UML_Behavioral_Feature_Method_Specification;

   ----------------------------------------------------
   -- MA_UML_Duration_Interval_Min_Duration_Interval --
   ----------------------------------------------------

   function MA_UML_Duration_Interval_Min_Duration_Interval return AMF.Internals.CMOF_Element is
   begin
      return Base + 1051;
   end MA_UML_Duration_Interval_Min_Duration_Interval;

   ----------------------------------
   -- MA_UML_Interval_Min_Interval --
   ----------------------------------

   function MA_UML_Interval_Min_Interval return AMF.Internals.CMOF_Element is
   begin
      return Base + 1052;
   end MA_UML_Interval_Min_Interval;

   --------------------------------------------
   -- MA_UML_Time_Interval_Min_Time_Interval --
   --------------------------------------------

   function MA_UML_Time_Interval_Min_Time_Interval return AMF.Internals.CMOF_Element is
   begin
      return Base + 1053;
   end MA_UML_Time_Interval_Min_Time_Interval;

   -----------------------------------------------------------------
   -- MA_UML_Interaction_Constraint_Minint_Interaction_Constraint --
   -----------------------------------------------------------------

   function MA_UML_Interaction_Constraint_Minint_Interaction_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 1054;
   end MA_UML_Interaction_Constraint_Minint_Interaction_Constraint;

   --------------------------------------------------------
   -- MA_UML_Named_Element_Name_Expression_Named_Element --
   --------------------------------------------------------

   function MA_UML_Named_Element_Name_Expression_Named_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 1055;
   end MA_UML_Named_Element_Name_Expression_Named_Element;

   --------------------------------------------------------
   -- MA_UML_Association_Navigable_Owned_End_Association --
   --------------------------------------------------------

   function MA_UML_Association_Navigable_Owned_End_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 1056;
   end MA_UML_Association_Navigable_Owned_End_Association;

   ----------------------------------------------
   -- MA_UML_Artifact_Nested_Artifact_Artifact --
   ----------------------------------------------

   function MA_UML_Artifact_Nested_Artifact_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 1057;
   end MA_UML_Artifact_Nested_Artifact_Artifact;

   ------------------------------------------
   -- MA_UML_Class_Nested_Classifier_Class --
   ------------------------------------------

   function MA_UML_Class_Nested_Classifier_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 1058;
   end MA_UML_Class_Nested_Classifier_Class;

   --------------------------------------------------
   -- MA_UML_Interface_Nested_Classifier_Interface --
   --------------------------------------------------

   function MA_UML_Interface_Nested_Classifier_Interface return AMF.Internals.CMOF_Element is
   begin
      return Base + 1059;
   end MA_UML_Interface_Nested_Classifier_Interface;

   ----------------------------------
   -- MA_UML_Node_Nested_Node_Node --
   ----------------------------------

   function MA_UML_Node_Nested_Node_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1060;
   end MA_UML_Node_Nested_Node_Node;

   ---------------------------------------------------
   -- MA_UML_Package_Nested_Package_Nesting_Package --
   ---------------------------------------------------

   function MA_UML_Package_Nested_Package_Nesting_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 1061;
   end MA_UML_Package_Nested_Package_Nesting_Package;

   -----------------------------------------------------------------------------
   -- MA_UML_Reclassify_Object_Action_New_Classifier_Reclassify_Object_Action --
   -----------------------------------------------------------------------------

   function MA_UML_Reclassify_Object_Action_New_Classifier_Reclassify_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1062;
   end MA_UML_Reclassify_Object_Action_New_Classifier_Reclassify_Object_Action;

   -----------------------------------
   -- MA_UML_Activity_Node_Activity --
   -----------------------------------

   function MA_UML_Activity_Node_Activity return AMF.Internals.CMOF_Element is
   begin
      return Base + 1063;
   end MA_UML_Activity_Node_Activity;

   -------------------------------------------------------------
   -- MA_UML_Structured_Activity_Node_Node_In_Structured_Node --
   -------------------------------------------------------------

   function MA_UML_Structured_Activity_Node_Node_In_Structured_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1064;
   end MA_UML_Structured_Activity_Node_Node_In_Structured_Node;

   ---------------------------------------------------------------------
   -- MA_UML_Clear_Association_Action_Object_Clear_Association_Action --
   ---------------------------------------------------------------------

   function MA_UML_Clear_Association_Action_Object_Clear_Association_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1065;
   end MA_UML_Clear_Association_Action_Object_Clear_Association_Action;

   -------------------------------------------------------------------------------------
   -- MA_UML_Read_Is_Classified_Object_Action_Object_Read_Is_Classified_Object_Action --
   -------------------------------------------------------------------------------------

   function MA_UML_Read_Is_Classified_Object_Action_Object_Read_Is_Classified_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1066;
   end MA_UML_Read_Is_Classified_Object_Action_Object_Read_Is_Classified_Object_Action;

   ---------------------------------------------------------------------------
   -- MA_UML_Read_Link_Object_End_Action_Object_Read_Link_Object_End_Action --
   ---------------------------------------------------------------------------

   function MA_UML_Read_Link_Object_End_Action_Object_Read_Link_Object_End_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1067;
   end MA_UML_Read_Link_Object_End_Action_Object_Read_Link_Object_End_Action;

   -----------------------------------------------------------------------------------------------
   -- MA_UML_Read_Link_Object_End_Qualifier_Action_Object_Read_Link_Object_End_Qualifier_Action --
   -----------------------------------------------------------------------------------------------

   function MA_UML_Read_Link_Object_End_Qualifier_Action_Object_Read_Link_Object_End_Qualifier_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1068;
   end MA_UML_Read_Link_Object_End_Qualifier_Action_Object_Read_Link_Object_End_Qualifier_Action;

   ---------------------------------------------------------------------
   -- MA_UML_Reclassify_Object_Action_Object_Reclassify_Object_Action --
   ---------------------------------------------------------------------

   function MA_UML_Reclassify_Object_Action_Object_Reclassify_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1069;
   end MA_UML_Reclassify_Object_Action_Object_Reclassify_Object_Action;

   -------------------------------------------------------------------------------------
   -- MA_UML_Start_Classifier_Behavior_Action_Object_Start_Classifier_Behavior_Action --
   -------------------------------------------------------------------------------------

   function MA_UML_Start_Classifier_Behavior_Action_Object_Start_Classifier_Behavior_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1070;
   end MA_UML_Start_Classifier_Behavior_Action_Object_Start_Classifier_Behavior_Action;

   -----------------------------------------------------------------------------
   -- MA_UML_Start_Object_Behavior_Action_Object_Start_Object_Behavior_Action --
   -----------------------------------------------------------------------------

   function MA_UML_Start_Object_Behavior_Action_Object_Start_Object_Behavior_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1071;
   end MA_UML_Start_Object_Behavior_Action_Object_Start_Object_Behavior_Action;

   -----------------------------------------------------------------------
   -- MA_UML_Structural_Feature_Action_Object_Structural_Feature_Action --
   -----------------------------------------------------------------------

   function MA_UML_Structural_Feature_Action_Object_Structural_Feature_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1072;
   end MA_UML_Structural_Feature_Action_Object_Structural_Feature_Action;

   -------------------------------------------------------
   -- MA_UML_Unmarshall_Action_Object_Unmarshall_Action --
   -------------------------------------------------------

   function MA_UML_Unmarshall_Action_Object_Unmarshall_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1073;
   end MA_UML_Unmarshall_Action_Object_Unmarshall_Action;

   ------------------------------------------
   -- MA_UML_Duration_Observation_Duration --
   ------------------------------------------

   function MA_UML_Duration_Observation_Duration return AMF.Internals.CMOF_Element is
   begin
      return Base + 1074;
   end MA_UML_Duration_Observation_Duration;

   --------------------------------------------------------
   -- MA_UML_Time_Expression_Observation_Time_Expression --
   --------------------------------------------------------

   function MA_UML_Time_Expression_Observation_Time_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 1075;
   end MA_UML_Time_Expression_Observation_Time_Expression;

   -----------------------------------------------------------------------------
   -- MA_UML_Reclassify_Object_Action_Old_Classifier_Reclassify_Object_Action --
   -----------------------------------------------------------------------------

   function MA_UML_Reclassify_Object_Action_Old_Classifier_Reclassify_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1076;
   end MA_UML_Reclassify_Object_Action_Old_Classifier_Reclassify_Object_Action;

   --------------------------------------------------------
   -- MA_UML_Invocation_Action_On_Port_Invocation_Action --
   --------------------------------------------------------

   function MA_UML_Invocation_Action_On_Port_Invocation_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1077;
   end MA_UML_Invocation_Action_On_Port_Invocation_Action;

   --------------------------------------------------------
   -- MA_UML_Combined_Fragment_Operand_Combined_Fragment --
   --------------------------------------------------------

   function MA_UML_Combined_Fragment_Operand_Combined_Fragment return AMF.Internals.CMOF_Element is
   begin
      return Base + 1078;
   end MA_UML_Combined_Fragment_Operand_Combined_Fragment;

   ------------------------------------------
   -- MA_UML_Expression_Operand_Expression --
   ------------------------------------------

   function MA_UML_Expression_Operand_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 1079;
   end MA_UML_Expression_Operand_Expression;

   --------------------------------------------
   -- MA_UML_Call_Event_Operation_Call_Event --
   --------------------------------------------

   function MA_UML_Call_Event_Operation_Call_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 1080;
   end MA_UML_Call_Event_Operation_Call_Event;

   ------------------------------------------------------------------
   -- MA_UML_Call_Operation_Action_Operation_Call_Operation_Action --
   ------------------------------------------------------------------

   function MA_UML_Call_Operation_Action_Operation_Call_Operation_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1081;
   end MA_UML_Call_Operation_Action_Operation_Call_Operation_Action;

   -------------------------------------------------------------
   -- MA_UML_Operation_Template_Parameter_Parametered_Element --
   -------------------------------------------------------------

   function MA_UML_Operation_Template_Parameter_Parametered_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 1082;
   end MA_UML_Operation_Template_Parameter_Parametered_Element;

   ---------------------------------------
   -- MA_UML_Property_Opposite_Property --
   ---------------------------------------

   function MA_UML_Property_Opposite_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 1083;
   end MA_UML_Property_Opposite_Property;

   ------------------------------------------
   -- MA_UML_Activity_Node_Outgoing_Source --
   ------------------------------------------

   function MA_UML_Activity_Node_Outgoing_Source return AMF.Internals.CMOF_Element is
   begin
      return Base + 1084;
   end MA_UML_Activity_Node_Outgoing_Source;

   -----------------------------------
   -- MA_UML_Vertex_Outgoing_Source --
   -----------------------------------

   function MA_UML_Vertex_Outgoing_Source return AMF.Internals.CMOF_Element is
   begin
      return Base + 1085;
   end MA_UML_Vertex_Outgoing_Source;

   -------------------------------------------------------------
   -- MA_UML_Expansion_Region_Output_Element_Region_As_Output --
   -------------------------------------------------------------

   function MA_UML_Expansion_Region_Output_Element_Region_As_Output return AMF.Internals.CMOF_Element is
   begin
      return Base + 1086;
   end MA_UML_Expansion_Region_Output_Element_Region_As_Output;

   -----------------------------------------------------
   -- MA_UML_Opaque_Action_Output_Value_Opaque_Action --
   -----------------------------------------------------

   function MA_UML_Opaque_Action_Output_Value_Opaque_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1087;
   end MA_UML_Opaque_Action_Output_Value_Opaque_Action;

   ---------------------------------
   -- MA_UML_Action_Output_Action --
   ---------------------------------

   function MA_UML_Action_Output_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1088;
   end MA_UML_Action_Output_Action;

   -----------------------------------------------------------------------------------------
   -- MA_UML_Template_Parameter_Substitution_Owned_Actual_Template_Parameter_Substitution --
   -----------------------------------------------------------------------------------------

   function MA_UML_Template_Parameter_Substitution_Owned_Actual_Template_Parameter_Substitution return AMF.Internals.CMOF_Element is
   begin
      return Base + 1089;
   end MA_UML_Template_Parameter_Substitution_Owned_Actual_Template_Parameter_Substitution;

   ----------------------------------------------
   -- MA_UML_Artifact_Owned_Attribute_Artifact --
   ----------------------------------------------

   function MA_UML_Artifact_Owned_Attribute_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 1090;
   end MA_UML_Artifact_Owned_Attribute_Artifact;

   ----------------------------------------
   -- MA_UML_Class_Owned_Attribute_Class --
   ----------------------------------------

   function MA_UML_Class_Owned_Attribute_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 1091;
   end MA_UML_Class_Owned_Attribute_Class;

   -----------------------------------------------
   -- MA_UML_Data_Type_Owned_Attribute_Datatype --
   -----------------------------------------------

   function MA_UML_Data_Type_Owned_Attribute_Datatype return AMF.Internals.CMOF_Element is
   begin
      return Base + 1092;
   end MA_UML_Data_Type_Owned_Attribute_Datatype;

   ------------------------------------------------
   -- MA_UML_Interface_Owned_Attribute_Interface --
   ------------------------------------------------

   function MA_UML_Interface_Owned_Attribute_Interface return AMF.Internals.CMOF_Element is
   begin
      return Base + 1093;
   end MA_UML_Interface_Owned_Attribute_Interface;

   -------------------------------------------------
   -- MA_UML_Signal_Owned_Attribute_Owning_Signal --
   -------------------------------------------------

   function MA_UML_Signal_Owned_Attribute_Owning_Signal return AMF.Internals.CMOF_Element is
   begin
      return Base + 1094;
   end MA_UML_Signal_Owned_Attribute_Owning_Signal;

   ------------------------------------------------------------------------
   -- MA_UML_Structured_Classifier_Owned_Attribute_Structured_Classifier --
   ------------------------------------------------------------------------

   function MA_UML_Structured_Classifier_Owned_Attribute_Structured_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 1095;
   end MA_UML_Structured_Classifier_Owned_Attribute_Structured_Classifier;

   -----------------------------------------------------------------------
   -- MA_UML_Behaviored_Classifier_Owned_Behavior_Behaviored_Classifier --
   -----------------------------------------------------------------------

   function MA_UML_Behaviored_Classifier_Owned_Behavior_Behaviored_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 1096;
   end MA_UML_Behaviored_Classifier_Owned_Behavior_Behaviored_Classifier;

   -------------------------------------------------
   -- MA_UML_Element_Owned_Comment_Owning_Element --
   -------------------------------------------------

   function MA_UML_Element_Owned_Comment_Owning_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 1097;
   end MA_UML_Element_Owned_Comment_Owning_Element;

   ------------------------------------------------------------------------
   -- MA_UML_Structured_Classifier_Owned_Connector_Structured_Classifier --
   ------------------------------------------------------------------------

   function MA_UML_Structured_Classifier_Owned_Connector_Structured_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 1098;
   end MA_UML_Structured_Classifier_Owned_Connector_Structured_Classifier;

   ----------------------------------------------------------------
   -- MA_UML_Template_Parameter_Owned_Default_Template_Parameter --
   ----------------------------------------------------------------

   function MA_UML_Template_Parameter_Owned_Default_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 1099;
   end MA_UML_Template_Parameter_Owned_Default_Template_Parameter;

   ----------------------------------------
   -- MA_UML_Element_Owned_Element_Owner --
   ----------------------------------------

   function MA_UML_Element_Owned_Element_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 1100;
   end MA_UML_Element_Owned_Element_Owner;

   ------------------------------------------
   -- MA_UML_Extension_Owned_End_Extension --
   ------------------------------------------

   function MA_UML_Extension_Owned_End_Extension return AMF.Internals.CMOF_Element is
   begin
      return Base + 1101;
   end MA_UML_Extension_Owned_End_Extension;

   -----------------------------------------------------
   -- MA_UML_Association_Owned_End_Owning_Association --
   -----------------------------------------------------

   function MA_UML_Association_Owned_End_Owning_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 1102;
   end MA_UML_Association_Owned_End_Owning_Association;

   --------------------------------------------------
   -- MA_UML_Enumeration_Owned_Literal_Enumeration --
   --------------------------------------------------

   function MA_UML_Enumeration_Owned_Literal_Enumeration return AMF.Internals.CMOF_Element is
   begin
      return Base + 1103;
   end MA_UML_Enumeration_Owned_Literal_Enumeration;

   ---------------------------------------------
   -- MA_UML_Namespace_Owned_Member_Namespace --
   ---------------------------------------------

   function MA_UML_Namespace_Owned_Member_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 1104;
   end MA_UML_Namespace_Owned_Member_Namespace;

   ----------------------------------------------
   -- MA_UML_Artifact_Owned_Operation_Artifact --
   ----------------------------------------------

   function MA_UML_Artifact_Owned_Operation_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 1105;
   end MA_UML_Artifact_Owned_Operation_Artifact;

   ----------------------------------------
   -- MA_UML_Class_Owned_Operation_Class --
   ----------------------------------------

   function MA_UML_Class_Owned_Operation_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 1106;
   end MA_UML_Class_Owned_Operation_Class;

   -----------------------------------------------
   -- MA_UML_Data_Type_Owned_Operation_Datatype --
   -----------------------------------------------

   function MA_UML_Data_Type_Owned_Operation_Datatype return AMF.Internals.CMOF_Element is
   begin
      return Base + 1107;
   end MA_UML_Data_Type_Owned_Operation_Datatype;

   ------------------------------------------------
   -- MA_UML_Interface_Owned_Operation_Interface --
   ------------------------------------------------

   function MA_UML_Interface_Owned_Operation_Interface return AMF.Internals.CMOF_Element is
   begin
      return Base + 1108;
   end MA_UML_Interface_Owned_Operation_Interface;

   --------------------------------------------------
   -- MA_UML_Behavior_Owned_Parameter_Set_Behavior --
   --------------------------------------------------

   function MA_UML_Behavior_Owned_Parameter_Set_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 1109;
   end MA_UML_Behavior_Owned_Parameter_Set_Behavior;

   ----------------------------------------------------------------------
   -- MA_UML_Behavioral_Feature_Owned_Parameter_Set_Behavioral_Feature --
   ----------------------------------------------------------------------

   function MA_UML_Behavioral_Feature_Owned_Parameter_Set_Behavioral_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 1110;
   end MA_UML_Behavioral_Feature_Owned_Parameter_Set_Behavioral_Feature;

   ----------------------------------------------
   -- MA_UML_Behavior_Owned_Parameter_Behavior --
   ----------------------------------------------

   function MA_UML_Behavior_Owned_Parameter_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 1111;
   end MA_UML_Behavior_Owned_Parameter_Behavior;

   ------------------------------------------------
   -- MA_UML_Operation_Owned_Parameter_Operation --
   ------------------------------------------------

   function MA_UML_Operation_Owned_Parameter_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 1112;
   end MA_UML_Operation_Owned_Parameter_Operation;

   ------------------------------------------------------------------
   -- MA_UML_Behavioral_Feature_Owned_Parameter_Owner_Formal_Param --
   ------------------------------------------------------------------

   function MA_UML_Behavioral_Feature_Owned_Parameter_Owner_Formal_Param return AMF.Internals.CMOF_Element is
   begin
      return Base + 1113;
   end MA_UML_Behavioral_Feature_Owned_Parameter_Owner_Formal_Param;

   ---------------------------------------------------------
   -- MA_UML_Template_Signature_Owned_Parameter_Signature --
   ---------------------------------------------------------

   function MA_UML_Template_Signature_Owned_Parameter_Signature return AMF.Internals.CMOF_Element is
   begin
      return Base + 1114;
   end MA_UML_Template_Signature_Owned_Parameter_Signature;

   -----------------------------------------------------------------------------------
   -- MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter --
   -----------------------------------------------------------------------------------

   function MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 1115;
   end MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter;

   -----------------------------------------------------------------------
   -- MA_UML_Encapsulated_Classifier_Owned_Port_Encapsulated_Classifier --
   -----------------------------------------------------------------------

   function MA_UML_Encapsulated_Classifier_Owned_Port_Encapsulated_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 1116;
   end MA_UML_Encapsulated_Classifier_Owned_Port_Encapsulated_Classifier;

   ----------------------------------------
   -- MA_UML_Class_Owned_Reception_Class --
   ----------------------------------------

   function MA_UML_Class_Owned_Reception_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 1117;
   end MA_UML_Class_Owned_Reception_Class;

   ------------------------------------------------
   -- MA_UML_Interface_Owned_Reception_Interface --
   ------------------------------------------------

   function MA_UML_Interface_Owned_Reception_Interface return AMF.Internals.CMOF_Element is
   begin
      return Base + 1118;
   end MA_UML_Interface_Owned_Reception_Interface;

   -----------------------------------------
   -- MA_UML_Namespace_Owned_Rule_Context --
   -----------------------------------------

   function MA_UML_Namespace_Owned_Rule_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 1119;
   end MA_UML_Namespace_Owned_Rule_Context;

   ----------------------------------------------------
   -- MA_UML_Package_Owned_Stereotype_Owning_Package --
   ----------------------------------------------------

   function MA_UML_Package_Owned_Stereotype_Owning_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 1120;
   end MA_UML_Package_Owned_Stereotype_Owning_Package;

   -----------------------------------------------------------
   -- MA_UML_Classifier_Owned_Template_Signature_Classifier --
   -----------------------------------------------------------

   function MA_UML_Classifier_Owned_Template_Signature_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 1121;
   end MA_UML_Classifier_Owned_Template_Signature_Classifier;

   -------------------------------------------------------------------
   -- MA_UML_Templateable_Element_Owned_Template_Signature_Template --
   -------------------------------------------------------------------

   function MA_UML_Templateable_Element_Owned_Template_Signature_Template return AMF.Internals.CMOF_Element is
   begin
      return Base + 1122;
   end MA_UML_Templateable_Element_Owned_Template_Signature_Template;

   ---------------------------------------
   -- MA_UML_Package_Owned_Type_Package --
   ---------------------------------------

   function MA_UML_Package_Owned_Type_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 1123;
   end MA_UML_Package_Owned_Type_Package;

   -------------------------------------------------
   -- MA_UML_Classifier_Owned_Use_Case_Classifier --
   -------------------------------------------------

   function MA_UML_Classifier_Owned_Use_Case_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 1124;
   end MA_UML_Classifier_Owned_Use_Case_Classifier;

   ---------------------------------------------------------
   -- MA_UML_Namespace_Package_Import_Importing_Namespace --
   ---------------------------------------------------------

   function MA_UML_Namespace_Package_Import_Importing_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 1125;
   end MA_UML_Namespace_Package_Import_Importing_Namespace;

   ----------------------------------------------------
   -- MA_UML_Package_Package_Merge_Receiving_Package --
   ----------------------------------------------------

   function MA_UML_Package_Package_Merge_Receiving_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 1126;
   end MA_UML_Package_Package_Merge_Receiving_Package;

   -------------------------------------------------
   -- MA_UML_Component_Packaged_Element_Component --
   -------------------------------------------------

   function MA_UML_Component_Packaged_Element_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 1127;
   end MA_UML_Component_Packaged_Element_Component;

   ----------------------------------------------------
   -- MA_UML_Package_Packaged_Element_Owning_Package --
   ----------------------------------------------------

   function MA_UML_Package_Packaged_Element_Owning_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 1128;
   end MA_UML_Package_Packaged_Element_Owning_Package;

   ----------------------------------------------
   -- MA_UML_Parameter_Parameter_Set_Parameter --
   ----------------------------------------------

   function MA_UML_Parameter_Parameter_Set_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 1129;
   end MA_UML_Parameter_Parameter_Set_Parameter;

   ---------------------------------------------------------------------
   -- MA_UML_Template_Binding_Parameter_Substitution_Template_Binding --
   ---------------------------------------------------------------------

   function MA_UML_Template_Binding_Parameter_Substitution_Template_Binding return AMF.Internals.CMOF_Element is
   begin
      return Base + 1130;
   end MA_UML_Template_Binding_Parameter_Substitution_Template_Binding;

   ----------------------------------------------------------------------
   -- MA_UML_Activity_Parameter_Node_Parameter_Activity_Parameter_Node --
   ----------------------------------------------------------------------

   function MA_UML_Activity_Parameter_Node_Parameter_Activity_Parameter_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1131;
   end MA_UML_Activity_Parameter_Node_Parameter_Activity_Parameter_Node;

   ------------------------------------------------------------
   -- MA_UML_Template_Signature_Parameter_Template_Signature --
   ------------------------------------------------------------

   function MA_UML_Template_Signature_Parameter_Template_Signature return AMF.Internals.CMOF_Element is
   begin
      return Base + 1132;
   end MA_UML_Template_Signature_Parameter_Template_Signature;

   ----------------------------------------------------------------------
   -- MA_UML_Template_Parameter_Parametered_Element_Template_Parameter --
   ----------------------------------------------------------------------

   function MA_UML_Template_Parameter_Parametered_Element_Template_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 1133;
   end MA_UML_Template_Parameter_Parametered_Element_Template_Parameter;

   -------------------------------------------------------
   -- MA_UML_Connector_End_Part_With_Port_Connector_End --
   -------------------------------------------------------

   function MA_UML_Connector_End_Part_With_Port_Connector_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 1134;
   end MA_UML_Connector_End_Part_With_Port_Connector_End;

   -------------------------------------------------------------
   -- MA_UML_Structured_Classifier_Part_Structured_Classifier --
   -------------------------------------------------------------

   function MA_UML_Structured_Classifier_Part_Structured_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 1135;
   end MA_UML_Structured_Classifier_Part_Structured_Classifier;

   ----------------------------------------
   -- MA_UML_Activity_Partition_Activity --
   ----------------------------------------

   function MA_UML_Activity_Partition_Activity return AMF.Internals.CMOF_Element is
   begin
      return Base + 1136;
   end MA_UML_Activity_Partition_Activity;

   ---------------------------------
   -- MA_UML_Trigger_Port_Trigger --
   ---------------------------------

   function MA_UML_Trigger_Port_Trigger return AMF.Internals.CMOF_Element is
   begin
      return Base + 1137;
   end MA_UML_Trigger_Port_Trigger;

   -----------------------------------------------------------------
   -- MA_UML_Protocol_Transition_Post_Condition_Owning_Transition --
   -----------------------------------------------------------------

   function MA_UML_Protocol_Transition_Post_Condition_Owning_Transition return AMF.Internals.CMOF_Element is
   begin
      return Base + 1138;
   end MA_UML_Protocol_Transition_Post_Condition_Owning_Transition;

   --------------------------------------------
   -- MA_UML_Behavior_Postcondition_Behavior --
   --------------------------------------------

   function MA_UML_Behavior_Postcondition_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 1139;
   end MA_UML_Behavior_Postcondition_Behavior;

   -------------------------------------------------
   -- MA_UML_Operation_Postcondition_Post_Context --
   -------------------------------------------------

   function MA_UML_Operation_Postcondition_Post_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 1140;
   end MA_UML_Operation_Postcondition_Post_Context;

   --------------------------------------------------
   -- MA_UML_Classifier_Powertype_Extent_Powertype --
   --------------------------------------------------

   function MA_UML_Classifier_Powertype_Extent_Powertype return AMF.Internals.CMOF_Element is
   begin
      return Base + 1141;
   end MA_UML_Classifier_Powertype_Extent_Powertype;

   ------------------------------------------------------------------
   -- MA_UML_Protocol_Transition_Pre_Condition_Protocol_Transition --
   ------------------------------------------------------------------

   function MA_UML_Protocol_Transition_Pre_Condition_Protocol_Transition return AMF.Internals.CMOF_Element is
   begin
      return Base + 1142;
   end MA_UML_Protocol_Transition_Pre_Condition_Protocol_Transition;

   -------------------------------------------
   -- MA_UML_Behavior_Precondition_Behavior --
   -------------------------------------------

   function MA_UML_Behavior_Precondition_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 1143;
   end MA_UML_Behavior_Precondition_Behavior;

   -----------------------------------------------
   -- MA_UML_Operation_Precondition_Pre_Context --
   -----------------------------------------------

   function MA_UML_Operation_Precondition_Pre_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 1144;
   end MA_UML_Operation_Precondition_Pre_Context;

   -------------------------------------------------------
   -- MA_UML_Clause_Predecessor_Clause_Successor_Clause --
   -------------------------------------------------------

   function MA_UML_Clause_Predecessor_Clause_Successor_Clause return AMF.Internals.CMOF_Element is
   begin
      return Base + 1145;
   end MA_UML_Clause_Predecessor_Clause_Successor_Clause;

   ---------------------------------------------------------
   -- MA_UML_Package_Profile_Application_Applying_Package --
   ---------------------------------------------------------

   function MA_UML_Package_Profile_Application_Applying_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 1146;
   end MA_UML_Package_Profile_Application_Applying_Package;

   ------------------------------------------
   -- MA_UML_Stereotype_Profile_Stereotype --
   ------------------------------------------

   function MA_UML_Stereotype_Profile_Stereotype return AMF.Internals.CMOF_Element is
   begin
      return Base + 1147;
   end MA_UML_Stereotype_Profile_Stereotype;

   -----------------------------------------
   -- MA_UML_Interface_Protocol_Interface --
   -----------------------------------------

   function MA_UML_Interface_Protocol_Interface return AMF.Internals.CMOF_Element is
   begin
      return Base + 1148;
   end MA_UML_Interface_Protocol_Interface;

   -------------------------------
   -- MA_UML_Port_Protocol_Port --
   -------------------------------

   function MA_UML_Port_Protocol_Port return AMF.Internals.CMOF_Element is
   begin
      return Base + 1149;
   end MA_UML_Port_Protocol_Port;

   -----------------------------------------
   -- MA_UML_Component_Provided_Component --
   -----------------------------------------

   function MA_UML_Component_Provided_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 1150;
   end MA_UML_Component_Provided_Component;

   -------------------------------
   -- MA_UML_Port_Provided_Port --
   -------------------------------

   function MA_UML_Port_Provided_Port return AMF.Internals.CMOF_Element is
   begin
      return Base + 1151;
   end MA_UML_Port_Provided_Port;

   -----------------------------------------------
   -- MA_UML_Property_Qualifier_Association_End --
   -----------------------------------------------

   function MA_UML_Property_Qualifier_Association_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 1152;
   end MA_UML_Property_Qualifier_Association_End;

   --------------------------------------------------
   -- MA_UML_Link_End_Data_Qualifier_Link_End_Data --
   --------------------------------------------------

   function MA_UML_Link_End_Data_Qualifier_Link_End_Data return AMF.Internals.CMOF_Element is
   begin
      return Base + 1153;
   end MA_UML_Link_End_Data_Qualifier_Link_End_Data;

   ------------------------------------------------------
   -- MA_UML_Qualifier_Value_Qualifier_Qualifier_Value --
   ------------------------------------------------------

   function MA_UML_Qualifier_Value_Qualifier_Qualifier_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 1154;
   end MA_UML_Qualifier_Value_Qualifier_Qualifier_Value;

   --------------------------------------------------------------------------------------------------
   -- MA_UML_Read_Link_Object_End_Qualifier_Action_Qualifier_Read_Link_Object_End_Qualifier_Action --
   --------------------------------------------------------------------------------------------------

   function MA_UML_Read_Link_Object_End_Qualifier_Action_Qualifier_Read_Link_Object_End_Qualifier_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1155;
   end MA_UML_Read_Link_Object_End_Qualifier_Action_Qualifier_Read_Link_Object_End_Qualifier_Action;

   -------------------------------------------------------------------
   -- MA_UML_Behavioral_Feature_Raised_Exception_Behavioral_Feature --
   -------------------------------------------------------------------

   function MA_UML_Behavioral_Feature_Raised_Exception_Behavioral_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 1156;
   end MA_UML_Behavioral_Feature_Raised_Exception_Behavioral_Feature;

   -------------------------------------------------
   -- MA_UML_Operation_Raised_Exception_Operation --
   -------------------------------------------------

   function MA_UML_Operation_Raised_Exception_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 1157;
   end MA_UML_Operation_Raised_Exception_Operation;

   ----------------------------------------------
   -- MA_UML_Component_Realization_Abstraction --
   ----------------------------------------------

   function MA_UML_Component_Realization_Abstraction return AMF.Internals.CMOF_Element is
   begin
      return Base + 1158;
   end MA_UML_Component_Realization_Abstraction;

   -----------------------------------------------------
   -- MA_UML_Information_Flow_Realization_Abstraction --
   -----------------------------------------------------

   function MA_UML_Information_Flow_Realization_Abstraction return AMF.Internals.CMOF_Element is
   begin
      return Base + 1159;
   end MA_UML_Information_Flow_Realization_Abstraction;

   ----------------------------------------------------------------------
   -- MA_UML_Information_Flow_Realizing_Activity_Edge_Information_Flow --
   ----------------------------------------------------------------------

   function MA_UML_Information_Flow_Realizing_Activity_Edge_Information_Flow return AMF.Internals.CMOF_Element is
   begin
      return Base + 1160;
   end MA_UML_Information_Flow_Realizing_Activity_Edge_Information_Flow;

   -----------------------------------------------------------------------------
   -- MA_UML_Component_Realization_Realizing_Classifier_Component_Realization --
   -----------------------------------------------------------------------------

   function MA_UML_Component_Realization_Realizing_Classifier_Component_Realization return AMF.Internals.CMOF_Element is
   begin
      return Base + 1161;
   end MA_UML_Component_Realization_Realizing_Classifier_Component_Realization;

   ------------------------------------------------------------------
   -- MA_UML_Information_Flow_Realizing_Connector_Information_Flow --
   ------------------------------------------------------------------

   function MA_UML_Information_Flow_Realizing_Connector_Information_Flow return AMF.Internals.CMOF_Element is
   begin
      return Base + 1162;
   end MA_UML_Information_Flow_Realizing_Connector_Information_Flow;

   ----------------------------------------------------------------
   -- MA_UML_Information_Flow_Realizing_Message_Information_Flow --
   ----------------------------------------------------------------

   function MA_UML_Information_Flow_Realizing_Message_Information_Flow return AMF.Internals.CMOF_Element is
   begin
      return Base + 1163;
   end MA_UML_Information_Flow_Realizing_Message_Information_Flow;

   ----------------------------------------------
   -- MA_UML_Message_Receive_Event_End_Message --
   ----------------------------------------------

   function MA_UML_Message_Receive_Event_End_Message return AMF.Internals.CMOF_Element is
   begin
      return Base + 1164;
   end MA_UML_Message_Receive_Event_End_Message;

   -------------------------------------------------
   -- MA_UML_Behavior_Redefined_Behavior_Behavior --
   -------------------------------------------------

   function MA_UML_Behavior_Redefined_Behavior_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 1165;
   end MA_UML_Behavior_Redefined_Behavior_Behavior;

   -------------------------------------------------------
   -- MA_UML_Classifier_Redefined_Classifier_Classifier --
   -------------------------------------------------------

   function MA_UML_Classifier_Redefined_Classifier_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 1166;
   end MA_UML_Classifier_Redefined_Classifier_Classifier;

   ----------------------------------------------------
   -- MA_UML_Connector_Redefined_Connector_Connector --
   ----------------------------------------------------

   function MA_UML_Connector_Redefined_Connector_Connector return AMF.Internals.CMOF_Element is
   begin
      return Base + 1167;
   end MA_UML_Connector_Redefined_Connector_Connector;

   -------------------------------------------------------
   -- MA_UML_Activity_Edge_Redefined_Edge_Activity_Edge --
   -------------------------------------------------------

   function MA_UML_Activity_Edge_Redefined_Edge_Activity_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 1168;
   end MA_UML_Activity_Edge_Redefined_Edge_Activity_Edge;

   ----------------------------------------------------------------------
   -- MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element --
   ----------------------------------------------------------------------

   function MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 1169;
   end MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element;

   ----------------------------------------------------
   -- MA_UML_Interface_Redefined_Interface_Interface --
   ----------------------------------------------------

   function MA_UML_Interface_Redefined_Interface_Interface return AMF.Internals.CMOF_Element is
   begin
      return Base + 1170;
   end MA_UML_Interface_Redefined_Interface_Interface;

   -------------------------------------------------------
   -- MA_UML_Activity_Node_Redefined_Node_Activity_Node --
   -------------------------------------------------------

   function MA_UML_Activity_Node_Redefined_Node_Activity_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1171;
   end MA_UML_Activity_Node_Redefined_Node_Activity_Node;

   ----------------------------------------------------
   -- MA_UML_Operation_Redefined_Operation_Operation --
   ----------------------------------------------------

   function MA_UML_Operation_Redefined_Operation_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 1172;
   end MA_UML_Operation_Redefined_Operation_Operation;

   -------------------------------------
   -- MA_UML_Port_Redefined_Port_Port --
   -------------------------------------

   function MA_UML_Port_Redefined_Port_Port return AMF.Internals.CMOF_Element is
   begin
      return Base + 1173;
   end MA_UML_Port_Redefined_Port_Port;

   -------------------------------------------------
   -- MA_UML_Property_Redefined_Property_Property --
   -------------------------------------------------

   function MA_UML_Property_Redefined_Property_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 1174;
   end MA_UML_Property_Redefined_Property_Property;

   ----------------------------------------
   -- MA_UML_State_Redefined_State_State --
   ----------------------------------------

   function MA_UML_State_Redefined_State_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 1175;
   end MA_UML_State_Redefined_State_State;

   -------------------------------------------------------
   -- MA_UML_Transition_Redefined_Transition_Transition --
   -------------------------------------------------------

   function MA_UML_Transition_Redefined_Transition_Transition return AMF.Internals.CMOF_Element is
   begin
      return Base + 1176;
   end MA_UML_Transition_Redefined_Transition_Transition;

   -------------------------------------------------------------------------
   -- MA_UML_Redefinable_Element_Redefinition_Context_Redefinable_Element --
   -------------------------------------------------------------------------

   function MA_UML_Redefinable_Element_Redefinition_Context_Redefinable_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 1177;
   end MA_UML_Redefinable_Element_Redefinition_Context_Redefinable_Element;

   -----------------------------------------------
   -- MA_UML_Region_Redefinition_Context_Region --
   -----------------------------------------------

   function MA_UML_Region_Redefinition_Context_Region return AMF.Internals.CMOF_Element is
   begin
      return Base + 1178;
   end MA_UML_Region_Redefinition_Context_Region;

   ---------------------------------------------
   -- MA_UML_State_Redefinition_Context_State --
   ---------------------------------------------

   function MA_UML_State_Redefinition_Context_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 1179;
   end MA_UML_State_Redefinition_Context_State;

   -------------------------------------------------------
   -- MA_UML_Transition_Redefinition_Context_Transition --
   -------------------------------------------------------

   function MA_UML_Transition_Redefinition_Context_Transition return AMF.Internals.CMOF_Element is
   begin
      return Base + 1180;
   end MA_UML_Transition_Redefinition_Context_Transition;

   ------------------------------------------------
   -- MA_UML_Reduce_Action_Reducer_Reduce_Action --
   ------------------------------------------------

   function MA_UML_Reduce_Action_Reducer_Reduce_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1181;
   end MA_UML_Reduce_Action_Reducer_Reduce_Action;

   -------------------------------------------------------------
   -- MA_UML_Protocol_Transition_Referred_Protocol_Transition --
   -------------------------------------------------------------

   function MA_UML_Protocol_Transition_Referred_Protocol_Transition return AMF.Internals.CMOF_Element is
   begin
      return Base + 1182;
   end MA_UML_Protocol_Transition_Referred_Protocol_Transition;

   ------------------------------------------------------
   -- MA_UML_Interaction_Use_Refers_To_Interaction_Use --
   ------------------------------------------------------

   function MA_UML_Interaction_Use_Refers_To_Interaction_Use return AMF.Internals.CMOF_Element is
   begin
      return Base + 1183;
   end MA_UML_Interaction_Use_Refers_To_Interaction_Use;

   -------------------------------
   -- MA_UML_State_Region_State --
   -------------------------------

   function MA_UML_State_Region_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 1184;
   end MA_UML_State_Region_State;

   -----------------------------------------------
   -- MA_UML_State_Machine_Region_State_Machine --
   -----------------------------------------------

   function MA_UML_State_Machine_Region_State_Machine return AMF.Internals.CMOF_Element is
   begin
      return Base + 1185;
   end MA_UML_State_Machine_Region_State_Machine;

   ------------------------------------------------------
   -- MA_UML_Relationship_Related_Element_Relationship --
   ------------------------------------------------------

   function MA_UML_Relationship_Related_Element_Relationship return AMF.Internals.CMOF_Element is
   begin
      return Base + 1186;
   end MA_UML_Relationship_Related_Element_Relationship;

   ----------------------------------------------------------------------------------------------------
   -- MA_UML_Remove_Structural_Feature_Value_Action_Remove_At_Remove_Structural_Feature_Value_Action --
   ----------------------------------------------------------------------------------------------------

   function MA_UML_Remove_Structural_Feature_Value_Action_Remove_At_Remove_Structural_Feature_Value_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1187;
   end MA_UML_Remove_Structural_Feature_Value_Action_Remove_At_Remove_Structural_Feature_Value_Action;

   --------------------------------------------------------------------------------
   -- MA_UML_Remove_Variable_Value_Action_Remove_At_Remove_Variable_Value_Action --
   --------------------------------------------------------------------------------

   function MA_UML_Remove_Variable_Value_Action_Remove_At_Remove_Variable_Value_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1188;
   end MA_UML_Remove_Variable_Value_Action_Remove_At_Remove_Variable_Value_Action;

   ----------------------------------------------------
   -- MA_UML_Reply_Action_Reply_To_Call_Reply_Action --
   ----------------------------------------------------

   function MA_UML_Reply_Action_Reply_To_Call_Reply_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1189;
   end MA_UML_Reply_Action_Reply_To_Call_Reply_Action;

   --------------------------------------------------
   -- MA_UML_Reply_Action_Reply_Value_Reply_Action --
   --------------------------------------------------

   function MA_UML_Reply_Action_Reply_Value_Reply_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1190;
   end MA_UML_Reply_Action_Reply_Value_Reply_Action;

   -------------------------------------------------
   -- MA_UML_Classifier_Representation_Classifier --
   -------------------------------------------------

   function MA_UML_Classifier_Representation_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 1191;
   end MA_UML_Classifier_Representation_Classifier;

   --------------------------------------------------------
   -- MA_UML_Information_Item_Represented_Representation --
   --------------------------------------------------------

   function MA_UML_Information_Item_Represented_Representation return AMF.Internals.CMOF_Element is
   begin
      return Base + 1192;
   end MA_UML_Information_Item_Represented_Representation;

   -------------------------------------------------------------
   -- MA_UML_Activity_Partition_Represents_Activity_Partition --
   -------------------------------------------------------------

   function MA_UML_Activity_Partition_Represents_Activity_Partition return AMF.Internals.CMOF_Element is
   begin
      return Base + 1193;
   end MA_UML_Activity_Partition_Represents_Activity_Partition;

   -----------------------------------------
   -- MA_UML_Lifeline_Represents_Lifeline --
   -----------------------------------------

   function MA_UML_Lifeline_Represents_Lifeline return AMF.Internals.CMOF_Element is
   begin
      return Base + 1194;
   end MA_UML_Lifeline_Represents_Lifeline;

   ----------------------------------------------------------
   -- MA_UML_Send_Object_Action_Request_Send_Object_Action --
   ----------------------------------------------------------

   function MA_UML_Send_Object_Action_Request_Send_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1195;
   end MA_UML_Send_Object_Action_Request_Send_Object_Action;

   -----------------------------------------
   -- MA_UML_Component_Required_Component --
   -----------------------------------------

   function MA_UML_Component_Required_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 1196;
   end MA_UML_Component_Required_Component;

   -------------------------------
   -- MA_UML_Port_Required_Port --
   -------------------------------

   function MA_UML_Port_Required_Port return AMF.Internals.CMOF_Element is
   begin
      return Base + 1197;
   end MA_UML_Port_Required_Port;

   -----------------------------------------------------------
   -- MA_UML_Accept_Event_Action_Result_Accept_Event_Action --
   -----------------------------------------------------------

   function MA_UML_Accept_Event_Action_Result_Accept_Event_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1198;
   end MA_UML_Accept_Event_Action_Result_Accept_Event_Action;

   -------------------------------------------
   -- MA_UML_Call_Action_Result_Call_Action --
   -------------------------------------------

   function MA_UML_Call_Action_Result_Call_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1199;
   end MA_UML_Call_Action_Result_Call_Action;

   -----------------------------------------------------------------------------------
   -- MA_UML_Clear_Structural_Feature_Action_Result_Clear_Structural_Feature_Action --
   -----------------------------------------------------------------------------------

   function MA_UML_Clear_Structural_Feature_Action_Result_Clear_Structural_Feature_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1200;
   end MA_UML_Clear_Structural_Feature_Action_Result_Clear_Structural_Feature_Action;

   -----------------------------------------------------
   -- MA_UML_Conditional_Node_Result_Conditional_Node --
   -----------------------------------------------------

   function MA_UML_Conditional_Node_Result_Conditional_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1201;
   end MA_UML_Conditional_Node_Result_Conditional_Node;

   -----------------------------------------------------------------------
   -- MA_UML_Create_Link_Object_Action_Result_Create_Link_Object_Action --
   -----------------------------------------------------------------------

   function MA_UML_Create_Link_Object_Action_Result_Create_Link_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1202;
   end MA_UML_Create_Link_Object_Action_Result_Create_Link_Object_Action;

   -------------------------------------------------------------
   -- MA_UML_Create_Object_Action_Result_Create_Object_Action --
   -------------------------------------------------------------

   function MA_UML_Create_Object_Action_Result_Create_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1203;
   end MA_UML_Create_Object_Action_Result_Create_Object_Action;

   ---------------------------------------
   -- MA_UML_Loop_Node_Result_Loop_Node --
   ---------------------------------------

   function MA_UML_Loop_Node_Result_Loop_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1204;
   end MA_UML_Loop_Node_Result_Loop_Node;

   -------------------------------------------------------
   -- MA_UML_Opaque_Expression_Result_Opaque_Expression --
   -------------------------------------------------------

   function MA_UML_Opaque_Expression_Result_Opaque_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 1205;
   end MA_UML_Opaque_Expression_Result_Opaque_Expression;

   ---------------------------------------------------------
   -- MA_UML_Read_Extent_Action_Result_Read_Extent_Action --
   ---------------------------------------------------------

   function MA_UML_Read_Extent_Action_Result_Read_Extent_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1206;
   end MA_UML_Read_Extent_Action_Result_Read_Extent_Action;

   -------------------------------------------------------------------------------------
   -- MA_UML_Read_Is_Classified_Object_Action_Result_Read_Is_Classified_Object_Action --
   -------------------------------------------------------------------------------------

   function MA_UML_Read_Is_Classified_Object_Action_Result_Read_Is_Classified_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1207;
   end MA_UML_Read_Is_Classified_Object_Action_Result_Read_Is_Classified_Object_Action;

   -----------------------------------------------------
   -- MA_UML_Read_Link_Action_Result_Read_Link_Action --
   -----------------------------------------------------

   function MA_UML_Read_Link_Action_Result_Read_Link_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1208;
   end MA_UML_Read_Link_Action_Result_Read_Link_Action;

   ---------------------------------------------------------------------------
   -- MA_UML_Read_Link_Object_End_Action_Result_Read_Link_Object_End_Action --
   ---------------------------------------------------------------------------

   function MA_UML_Read_Link_Object_End_Action_Result_Read_Link_Object_End_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1209;
   end MA_UML_Read_Link_Object_End_Action_Result_Read_Link_Object_End_Action;

   -----------------------------------------------------------------------------------------------
   -- MA_UML_Read_Link_Object_End_Qualifier_Action_Result_Read_Link_Object_End_Qualifier_Action --
   -----------------------------------------------------------------------------------------------

   function MA_UML_Read_Link_Object_End_Qualifier_Action_Result_Read_Link_Object_End_Qualifier_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1210;
   end MA_UML_Read_Link_Object_End_Qualifier_Action_Result_Read_Link_Object_End_Qualifier_Action;

   -----------------------------------------------------
   -- MA_UML_Read_Self_Action_Result_Read_Self_Action --
   -----------------------------------------------------

   function MA_UML_Read_Self_Action_Result_Read_Self_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1211;
   end MA_UML_Read_Self_Action_Result_Read_Self_Action;

   ---------------------------------------------------------------------------------
   -- MA_UML_Read_Structural_Feature_Action_Result_Read_Structural_Feature_Action --
   ---------------------------------------------------------------------------------

   function MA_UML_Read_Structural_Feature_Action_Result_Read_Structural_Feature_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1212;
   end MA_UML_Read_Structural_Feature_Action_Result_Read_Structural_Feature_Action;

   -------------------------------------------------------------
   -- MA_UML_Read_Variable_Action_Result_Read_Variable_Action --
   -------------------------------------------------------------

   function MA_UML_Read_Variable_Action_Result_Read_Variable_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1213;
   end MA_UML_Read_Variable_Action_Result_Read_Variable_Action;

   -----------------------------------------------
   -- MA_UML_Reduce_Action_Result_Reduce_Action --
   -----------------------------------------------

   function MA_UML_Reduce_Action_Result_Reduce_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1214;
   end MA_UML_Reduce_Action_Result_Reduce_Action;

   -------------------------------------------------------------
   -- MA_UML_Test_Identity_Action_Result_Test_Identity_Action --
   -------------------------------------------------------------

   function MA_UML_Test_Identity_Action_Result_Test_Identity_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1215;
   end MA_UML_Test_Identity_Action_Result_Test_Identity_Action;

   -------------------------------------------------------
   -- MA_UML_Unmarshall_Action_Result_Unmarshall_Action --
   -------------------------------------------------------

   function MA_UML_Unmarshall_Action_Result_Unmarshall_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1216;
   end MA_UML_Unmarshall_Action_Result_Unmarshall_Action;

   -------------------------------------------------------------------------
   -- MA_UML_Value_Specification_Action_Result_Value_Specification_Action --
   -------------------------------------------------------------------------

   function MA_UML_Value_Specification_Action_Result_Value_Specification_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1217;
   end MA_UML_Value_Specification_Action_Result_Value_Specification_Action;

   -----------------------------------------------------------------------------------
   -- MA_UML_Write_Structural_Feature_Action_Result_Write_Structural_Feature_Action --
   -----------------------------------------------------------------------------------

   function MA_UML_Write_Structural_Feature_Action_Result_Write_Structural_Feature_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1218;
   end MA_UML_Write_Structural_Feature_Action_Result_Write_Structural_Feature_Action;

   ---------------------------------------------------------------------
   -- MA_UML_Accept_Call_Action_Return_Information_Accept_Call_Action --
   ---------------------------------------------------------------------

   function MA_UML_Accept_Call_Action_Return_Information_Accept_Call_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1219;
   end MA_UML_Accept_Call_Action_Return_Information_Accept_Call_Action;

   ---------------------------------------------------------
   -- MA_UML_Reply_Action_Return_Information_Reply_Action --
   ---------------------------------------------------------

   function MA_UML_Reply_Action_Return_Information_Reply_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1220;
   end MA_UML_Reply_Action_Return_Information_Reply_Action;

   -------------------------------------------------------------------
   -- MA_UML_Interaction_Use_Return_Value_Recipient_Interaction_Use --
   -------------------------------------------------------------------

   function MA_UML_Interaction_Use_Return_Value_Recipient_Interaction_Use return AMF.Internals.CMOF_Element is
   begin
      return Base + 1221;
   end MA_UML_Interaction_Use_Return_Value_Recipient_Interaction_Use;

   ---------------------------------------------------------
   -- MA_UML_Interaction_Use_Return_Value_Interaction_Use --
   ---------------------------------------------------------

   function MA_UML_Interaction_Use_Return_Value_Interaction_Use return AMF.Internals.CMOF_Element is
   begin
      return Base + 1222;
   end MA_UML_Interaction_Use_Return_Value_Interaction_Use;

   -------------------------------------------------------------
   -- MA_UML_Collaboration_Use_Role_Binding_Collaboration_Use --
   -------------------------------------------------------------

   function MA_UML_Collaboration_Use_Role_Binding_Collaboration_Use return AMF.Internals.CMOF_Element is
   begin
      return Base + 1223;
   end MA_UML_Collaboration_Use_Role_Binding_Collaboration_Use;

   -------------------------------------------------------------
   -- MA_UML_Structured_Classifier_Role_Structured_Classifier --
   -------------------------------------------------------------

   function MA_UML_Structured_Classifier_Role_Structured_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 1224;
   end MA_UML_Structured_Classifier_Role_Structured_Classifier;

   -------------------------------------------------------------
   -- MA_UML_Test_Identity_Action_Second_Test_Identity_Action --
   -------------------------------------------------------------

   function MA_UML_Test_Identity_Action_Second_Test_Identity_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1225;
   end MA_UML_Test_Identity_Action_Second_Test_Identity_Action;

   ----------------------------------------------
   -- MA_UML_Object_Flow_Selection_Object_Flow --
   ----------------------------------------------

   function MA_UML_Object_Flow_Selection_Object_Flow return AMF.Internals.CMOF_Element is
   begin
      return Base + 1226;
   end MA_UML_Object_Flow_Selection_Object_Flow;

   ----------------------------------------------
   -- MA_UML_Object_Node_Selection_Object_Node --
   ----------------------------------------------

   function MA_UML_Object_Node_Selection_Object_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1227;
   end MA_UML_Object_Node_Selection_Object_Node;

   ---------------------------------------
   -- MA_UML_Lifeline_Selector_Lifeline --
   ---------------------------------------

   function MA_UML_Lifeline_Selector_Lifeline return AMF.Internals.CMOF_Element is
   begin
      return Base + 1228;
   end MA_UML_Lifeline_Selector_Lifeline;

   -------------------------------------------
   -- MA_UML_Message_Send_Event_End_Message --
   -------------------------------------------

   function MA_UML_Message_Send_Event_End_Message return AMF.Internals.CMOF_Element is
   begin
      return Base + 1229;
   end MA_UML_Message_Send_Event_End_Message;

   -------------------------------------------
   -- MA_UML_Loop_Node_Setup_Part_Loop_Node --
   -------------------------------------------

   function MA_UML_Loop_Node_Setup_Part_Loop_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1230;
   end MA_UML_Loop_Node_Setup_Part_Loop_Node;

   -------------------------------------------------------------------
   -- MA_UML_Broadcast_Signal_Action_Signal_Broadcast_Signal_Action --
   -------------------------------------------------------------------

   function MA_UML_Broadcast_Signal_Action_Signal_Broadcast_Signal_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1231;
   end MA_UML_Broadcast_Signal_Action_Signal_Broadcast_Signal_Action;

   ---------------------------------------
   -- MA_UML_Reception_Signal_Reception --
   ---------------------------------------

   function MA_UML_Reception_Signal_Reception return AMF.Internals.CMOF_Element is
   begin
      return Base + 1232;
   end MA_UML_Reception_Signal_Reception;

   ---------------------------------------------------------
   -- MA_UML_Send_Signal_Action_Signal_Send_Signal_Action --
   ---------------------------------------------------------

   function MA_UML_Send_Signal_Action_Signal_Send_Signal_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1233;
   end MA_UML_Send_Signal_Action_Signal_Send_Signal_Action;

   ---------------------------------------------
   -- MA_UML_Signal_Event_Signal_Signal_Event --
   ---------------------------------------------

   function MA_UML_Signal_Event_Signal_Signal_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 1234;
   end MA_UML_Signal_Event_Signal_Signal_Event;

   --------------------------------------
   -- MA_UML_Message_Signature_Message --
   --------------------------------------

   function MA_UML_Message_Signature_Message return AMF.Internals.CMOF_Element is
   begin
      return Base + 1235;
   end MA_UML_Message_Signature_Message;

   --------------------------------------------------------
   -- MA_UML_Template_Binding_Signature_Template_Binding --
   --------------------------------------------------------

   function MA_UML_Template_Binding_Signature_Template_Binding return AMF.Internals.CMOF_Element is
   begin
      return Base + 1236;
   end MA_UML_Template_Binding_Signature_Template_Binding;

   --------------------------------------------------------
   -- MA_UML_Instance_Specification_Slot_Owning_Instance --
   --------------------------------------------------------

   function MA_UML_Instance_Specification_Slot_Owning_Instance return AMF.Internals.CMOF_Element is
   begin
      return Base + 1237;
   end MA_UML_Instance_Specification_Slot_Owning_Instance;

   ---------------------------------------------------------------
   -- MA_UML_Directed_Relationship_Source_Directed_Relationship --
   ---------------------------------------------------------------

   function MA_UML_Directed_Relationship_Source_Directed_Relationship return AMF.Internals.CMOF_Element is
   begin
      return Base + 1238;
   end MA_UML_Directed_Relationship_Source_Directed_Relationship;

   ------------------------------------------------------------------
   -- MA_UML_Duration_Constraint_Specification_Duration_Constraint --
   ------------------------------------------------------------------

   function MA_UML_Duration_Constraint_Specification_Duration_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 1239;
   end MA_UML_Duration_Constraint_Specification_Duration_Constraint;

   ------------------------------------------------------------------
   -- MA_UML_Interval_Constraint_Specification_Interval_Constraint --
   ------------------------------------------------------------------

   function MA_UML_Interval_Constraint_Specification_Interval_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 1240;
   end MA_UML_Interval_Constraint_Specification_Interval_Constraint;

   -------------------------------------------------------
   -- MA_UML_Constraint_Specification_Owning_Constraint --
   -------------------------------------------------------

   function MA_UML_Constraint_Specification_Owning_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 1241;
   end MA_UML_Constraint_Specification_Owning_Constraint;

   ----------------------------------------------------------------------
   -- MA_UML_Instance_Specification_Specification_Owning_Instance_Spec --
   ----------------------------------------------------------------------

   function MA_UML_Instance_Specification_Specification_Owning_Instance_Spec return AMF.Internals.CMOF_Element is
   begin
      return Base + 1242;
   end MA_UML_Instance_Specification_Specification_Owning_Instance_Spec;

   ----------------------------------------------------------
   -- MA_UML_Time_Constraint_Specification_Time_Constraint --
   ----------------------------------------------------------

   function MA_UML_Time_Constraint_Specification_Time_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 1243;
   end MA_UML_Time_Constraint_Specification_Time_Constraint;

   ------------------------------------------------------------------
   -- MA_UML_Execution_Specification_Start_Execution_Specification --
   ------------------------------------------------------------------

   function MA_UML_Execution_Specification_Start_Execution_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 1244;
   end MA_UML_Execution_Specification_Start_Execution_Specification;

   -----------------------------------------------
   -- MA_UML_State_State_Invariant_Owning_State --
   -----------------------------------------------

   function MA_UML_State_State_Invariant_Owning_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 1245;
   end MA_UML_State_State_Invariant_Owning_State;

   -----------------------------------------------------------------------------------
   -- MA_UML_Structural_Feature_Action_Structural_Feature_Structural_Feature_Action --
   -----------------------------------------------------------------------------------

   function MA_UML_Structural_Feature_Action_Structural_Feature_Structural_Feature_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1246;
   end MA_UML_Structural_Feature_Action_Structural_Feature_Structural_Feature_Action;

   ------------------------------------------------------------------------------------
   -- MA_UML_Structured_Activity_Node_Structured_Node_Input_Structured_Activity_Node --
   ------------------------------------------------------------------------------------

   function MA_UML_Structured_Activity_Node_Structured_Node_Input_Structured_Activity_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1247;
   end MA_UML_Structured_Activity_Node_Structured_Node_Input_Structured_Activity_Node;

   -------------------------------------------------------------------------------------
   -- MA_UML_Structured_Activity_Node_Structured_Node_Output_Structured_Activity_Node --
   -------------------------------------------------------------------------------------

   function MA_UML_Structured_Activity_Node_Structured_Node_Output_Structured_Activity_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1248;
   end MA_UML_Structured_Activity_Node_Structured_Node_Output_Structured_Activity_Node;

   ----------------------------------------------
   -- MA_UML_Activity_Structured_Node_Activity --
   ----------------------------------------------

   function MA_UML_Activity_Structured_Node_Activity return AMF.Internals.CMOF_Element is
   begin
      return Base + 1249;
   end MA_UML_Activity_Structured_Node_Activity;

   ---------------------------------------------------------------
   -- MA_UML_String_Expression_Sub_Expression_Owning_Expression --
   ---------------------------------------------------------------

   function MA_UML_String_Expression_Sub_Expression_Owning_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 1250;
   end MA_UML_String_Expression_Sub_Expression_Owning_Expression;

   ------------------------------------------------
   -- MA_UML_Activity_Group_Subgroup_Super_Group --
   ------------------------------------------------

   function MA_UML_Activity_Group_Subgroup_Super_Group return AMF.Internals.CMOF_Element is
   begin
      return Base + 1251;
   end MA_UML_Activity_Group_Subgroup_Super_Group;

   --------------------------------------
   -- MA_UML_Use_Case_Subject_Use_Case --
   --------------------------------------

   function MA_UML_Use_Case_Subject_Use_Case return AMF.Internals.CMOF_Element is
   begin
      return Base + 1252;
   end MA_UML_Use_Case_Subject_Use_Case;

   ------------------------------------------------------
   -- MA_UML_State_Machine_Submachine_State_Submachine --
   ------------------------------------------------------

   function MA_UML_State_Machine_Submachine_State_Submachine return AMF.Internals.CMOF_Element is
   begin
      return Base + 1253;
   end MA_UML_State_Machine_Submachine_State_Submachine;

   ------------------------------------------------------------
   -- MA_UML_Activity_Partition_Subpartition_Super_Partition --
   ------------------------------------------------------------

   function MA_UML_Activity_Partition_Subpartition_Super_Partition return AMF.Internals.CMOF_Element is
   begin
      return Base + 1254;
   end MA_UML_Activity_Partition_Subpartition_Super_Partition;

   -------------------------------------------------
   -- MA_UML_Property_Subsetted_Property_Property --
   -------------------------------------------------

   function MA_UML_Property_Subsetted_Property_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 1255;
   end MA_UML_Property_Subsetted_Property_Property;

   ------------------------------------------------------------
   -- MA_UML_Classifier_Substitution_Substituting_Classifier --
   ------------------------------------------------------------

   function MA_UML_Classifier_Substitution_Substituting_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 1256;
   end MA_UML_Classifier_Substitution_Substituting_Classifier;

   ---------------------------------------
   -- MA_UML_Region_Subvertex_Container --
   ---------------------------------------

   function MA_UML_Region_Subvertex_Container return AMF.Internals.CMOF_Element is
   begin
      return Base + 1257;
   end MA_UML_Region_Subvertex_Container;

   ------------------------------------
   -- MA_UML_Class_Super_Class_Class --
   ------------------------------------

   function MA_UML_Class_Super_Class_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 1258;
   end MA_UML_Class_Super_Class_Class;

   ----------------------------------------------------
   -- MA_UML_Dependency_Supplier_Supplier_Dependency --
   ----------------------------------------------------

   function MA_UML_Dependency_Supplier_Supplier_Dependency return AMF.Internals.CMOF_Element is
   begin
      return Base + 1259;
   end MA_UML_Dependency_Supplier_Supplier_Dependency;

   ---------------------------------------------------------------
   -- MA_UML_Call_Operation_Action_Target_Call_Operation_Action --
   ---------------------------------------------------------------

   function MA_UML_Call_Operation_Action_Target_Call_Operation_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1260;
   end MA_UML_Call_Operation_Action_Target_Call_Operation_Action;

   ---------------------------------------------------------------
   -- MA_UML_Destroy_Object_Action_Target_Destroy_Object_Action --
   ---------------------------------------------------------------

   function MA_UML_Destroy_Object_Action_Target_Destroy_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1261;
   end MA_UML_Destroy_Object_Action_Target_Destroy_Object_Action;

   ---------------------------------------------------------------
   -- MA_UML_Directed_Relationship_Target_Directed_Relationship --
   ---------------------------------------------------------------

   function MA_UML_Directed_Relationship_Target_Directed_Relationship return AMF.Internals.CMOF_Element is
   begin
      return Base + 1262;
   end MA_UML_Directed_Relationship_Target_Directed_Relationship;

   ---------------------------------------------------------
   -- MA_UML_Send_Object_Action_Target_Send_Object_Action --
   ---------------------------------------------------------

   function MA_UML_Send_Object_Action_Target_Send_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1263;
   end MA_UML_Send_Object_Action_Target_Send_Object_Action;

   ---------------------------------------------------------
   -- MA_UML_Send_Signal_Action_Target_Send_Signal_Action --
   ---------------------------------------------------------

   function MA_UML_Send_Signal_Action_Target_Send_Signal_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1264;
   end MA_UML_Send_Signal_Action_Target_Send_Signal_Action;

   ----------------------------------------------------------------
   -- MA_UML_Templateable_Element_Template_Binding_Bound_Element --
   ----------------------------------------------------------------

   function MA_UML_Templateable_Element_Template_Binding_Bound_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 1265;
   end MA_UML_Templateable_Element_Template_Binding_Bound_Element;

   -------------------------------
   -- MA_UML_Clause_Test_Clause --
   -------------------------------

   function MA_UML_Clause_Test_Clause return AMF.Internals.CMOF_Element is
   begin
      return Base + 1266;
   end MA_UML_Clause_Test_Clause;

   -------------------------------------
   -- MA_UML_Loop_Node_Test_Loop_Node --
   -------------------------------------

   function MA_UML_Loop_Node_Test_Loop_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1267;
   end MA_UML_Loop_Node_Test_Loop_Node;

   -----------------------------------------------------
   -- MA_UML_Occurrence_Specification_To_Before_After --
   -----------------------------------------------------

   function MA_UML_Occurrence_Specification_To_Before_After return AMF.Internals.CMOF_Element is
   begin
      return Base + 1268;
   end MA_UML_Occurrence_Specification_To_Before_After;

   ---------------------------------------------------
   -- MA_UML_Object_Flow_Transformation_Object_Flow --
   ---------------------------------------------------

   function MA_UML_Object_Flow_Transformation_Object_Flow return AMF.Internals.CMOF_Element is
   begin
      return Base + 1269;
   end MA_UML_Object_Flow_Transformation_Object_Flow;

   ----------------------------------------
   -- MA_UML_Region_Transition_Container --
   ----------------------------------------

   function MA_UML_Region_Transition_Container return AMF.Internals.CMOF_Element is
   begin
      return Base + 1270;
   end MA_UML_Region_Transition_Container;

   ------------------------------------------------------------
   -- MA_UML_Accept_Event_Action_Trigger_Accept_Event_Action --
   ------------------------------------------------------------

   function MA_UML_Accept_Event_Action_Trigger_Accept_Event_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1271;
   end MA_UML_Accept_Event_Action_Trigger_Accept_Event_Action;

   ------------------------------------------
   -- MA_UML_Transition_Trigger_Transition --
   ------------------------------------------

   function MA_UML_Transition_Trigger_Transition return AMF.Internals.CMOF_Element is
   begin
      return Base + 1272;
   end MA_UML_Transition_Trigger_Transition;

   -----------------------------------------------------
   -- MA_UML_Collaboration_Use_Type_Collaboration_Use --
   -----------------------------------------------------

   function MA_UML_Collaboration_Use_Type_Collaboration_Use return AMF.Internals.CMOF_Element is
   begin
      return Base + 1273;
   end MA_UML_Collaboration_Use_Type_Collaboration_Use;

   -------------------------------------
   -- MA_UML_Connector_Type_Connector --
   -------------------------------------

   function MA_UML_Connector_Type_Connector return AMF.Internals.CMOF_Element is
   begin
      return Base + 1274;
   end MA_UML_Connector_Type_Connector;

   ---------------------------------------------
   -- MA_UML_Extension_End_Type_Extension_End --
   ---------------------------------------------

   function MA_UML_Extension_End_Type_Extension_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 1275;
   end MA_UML_Extension_End_Type_Extension_End;

   -------------------------------------
   -- MA_UML_Operation_Type_Operation --
   -------------------------------------

   function MA_UML_Operation_Type_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 1276;
   end MA_UML_Operation_Type_Operation;

   ---------------------------------------------
   -- MA_UML_Typed_Element_Type_Typed_Element --
   ---------------------------------------------

   function MA_UML_Typed_Element_Type_Typed_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 1277;
   end MA_UML_Typed_Element_Type_Typed_Element;

   ----------------------------------------------------------------
   -- MA_UML_Unmarshall_Action_Unmarshall_Type_Unmarshall_Action --
   ----------------------------------------------------------------

   function MA_UML_Unmarshall_Action_Unmarshall_Type_Unmarshall_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 1278;
   end MA_UML_Unmarshall_Action_Unmarshall_Type_Unmarshall_Action;

   ------------------------------------------------
   -- MA_UML_Object_Node_Upper_Bound_Object_Node --
   ------------------------------------------------

   function MA_UML_Object_Node_Upper_Bound_Object_Node return AMF.Internals.CMOF_Element is
   begin
      return Base + 1279;
   end MA_UML_Object_Node_Upper_Bound_Object_Node;

   ----------------------------------------------------------
   -- MA_UML_Multiplicity_Element_Upper_Value_Owning_Upper --
   ----------------------------------------------------------

   function MA_UML_Multiplicity_Element_Upper_Value_Owning_Upper return AMF.Internals.CMOF_Element is
   begin
      return Base + 1280;
   end MA_UML_Multiplicity_Element_Upper_Value_Owning_Upper;

   ---------------------------------------------------------
   -- MA_UML_Manifestation_Utilized_Element_Manifestation --
   ---------------------------------------------------------

   function MA_UML_Manifestation_Utilized_Element_Manifestation return AMF.Internals.CMOF_Element is
   begin
      return Base + 1281;
   end MA_UML_Manifestation_Utilized_Element_Manifestation;

   ----------------------------------------------
   -- MA_UML_Link_End_Data_Value_Link_End_Data --
   ----------------------------------------------

   function MA_UML_Link_End_Data_Value_Link_End_Data return AMF.Internals.CMOF_Element is
   begin
      return Base + 1282;
   end MA_UML_Link_End_Data_Value_Link_End_Data;

   -----------------------------------
   -- MA_UML_Slot_Value_Owning_Slot --
   -----------------------------------

   function MA_UML_Slot_Value_Owning_Slot return AMF.Internals.CMOF_Element is
   begin
      return Base + 1283;
   end MA_UML_Slot_Value_Owning_Slot;

   --------------------------------------------------
   -- MA_UML_Qualifier_Value_Value_Qualifier_Value --
   --------------------------------------------------

   function MA_UML_Qualifier_Value_Value_Qualifier_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 1284;
   end MA_UML_Qualifier_Value_Value_Qualifier_Value;

   ------------
   -- MB_UML --
   ------------

   function MB_UML return AMF.Internals.AMF_Element is
   begin
      return Base;
   end MB_UML;

   ------------
   -- MB_UML --
   ------------

   function ML_UML return AMF.Internals.AMF_Element is
   begin
      return Base + 4829;
   end ML_UML;

end AMF.Internals.Tables.UML_Metamodel;
