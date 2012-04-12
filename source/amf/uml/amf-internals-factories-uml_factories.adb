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
with AMF.Internals.Elements;
with AMF.Internals.Extents;
with AMF.Internals.Helpers;
with AMF.Internals.Links;
with AMF.Internals.Listener_Registry;
with AMF.Internals.Tables.UML_Constructors;
with AMF.Internals.Tables.UML_Metamodel;
with AMF.UML.Holders.Aggregation_Kinds;
with AMF.UML.Holders.Call_Concurrency_Kinds;
with AMF.UML.Holders.Connector_Kinds;
with AMF.UML.Holders.Expansion_Kinds;
with AMF.UML.Holders.Interaction_Operator_Kinds;
with AMF.UML.Holders.Message_Kinds;
with AMF.UML.Holders.Message_Sorts;
with AMF.UML.Holders.Object_Node_Ordering_Kinds;
with AMF.UML.Holders.Parameter_Direction_Kinds;
with AMF.UML.Holders.Parameter_Effect_Kinds;
with AMF.UML.Holders.Pseudostate_Kinds;
with AMF.UML.Holders.Transition_Kinds;
with AMF.UML.Holders.Visibility_Kinds;

package body AMF.Internals.Factories.UML_Factories is

   None_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("none");
   Shared_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("shared");
   Composite_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("composite");

   Sequential_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("sequential");
   Guarded_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("guarded");
   Concurrent_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("concurrent");

   Assembly_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("assembly");
   Delegation_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("delegation");

   Parallel_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("parallel");
   Iterative_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("iterative");
   Stream_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("stream");

   Seq_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("seq");
   Alt_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("alt");
   Opt_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("opt");
   Break_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("break");
   Par_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("par");
   Strict_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("strict");
   Loop_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("loop");
   Critical_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("critical");
   Neg_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("neg");
   Assert_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("assert");
   Ignore_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("ignore");
   Consider_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("consider");

   Complete_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("complete");
   Lost_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("lost");
   Found_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("found");
   Unknown_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("unknown");

   Synch_Call_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("synchCall");
   Asynch_Call_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("asynchCall");
   Asynch_Signal_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("asynchSignal");
   Create_Message_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("createMessage");
   Delete_Message_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("deleteMessage");
   Reply_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("reply");

   Unordered_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("unordered");
   Ordered_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("ordered");
   LIFO_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("LIFO");
   FIFO_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("FIFO");

   In_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("in");
   Inout_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("inout");
   Out_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("out");
   Return_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("return");

   Create_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("create");
   Read_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("read");
   Update_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("update");
   Delete_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("delete");

   Initial_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("initial");
   Deep_History_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("deepHistory");
   Shallow_History_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("shallowHistory");
   Join_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("join");
   Fork_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("fork");
   Junction_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("junction");
   Choice_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("choice");
   Entry_Point_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("entryPoint");
   Exit_Point_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("exitPoint");
   Terminate_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("terminate");

   Internal_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("internal");
   Local_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("local");
   External_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("external");

   Public_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("public");
   Private_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("private");
   Protected_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("protected");
   Package_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("package");

   -----------------
   -- Constructor --
   -----------------

   function Constructor
    (Extent : AMF.Internals.AMF_Extent)
       return not null AMF.Factories.Factory_Access is
   begin
      return new UML_Factory'(Extent => Extent);
   end Constructor;

   -----------------------
   -- Convert_To_String --
   -----------------------

   overriding function Convert_To_String
    (Self      : not null access UML_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Aggregation_Kind then
         declare
            Item : constant AMF.UML.UML_Aggregation_Kind
              := AMF.UML.Holders.Aggregation_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UML.None =>
                  return None_Image;

               when AMF.UML.Shared =>
                  return Shared_Image;

               when AMF.UML.Composite =>
                  return Composite_Image;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Call_Concurrency_Kind then
         declare
            Item : constant AMF.UML.UML_Call_Concurrency_Kind
              := AMF.UML.Holders.Call_Concurrency_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UML.Sequential =>
                  return Sequential_Image;

               when AMF.UML.Guarded =>
                  return Guarded_Image;

               when AMF.UML.Concurrent =>
                  return Concurrent_Image;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Connector_Kind then
         declare
            Item : constant AMF.UML.UML_Connector_Kind
              := AMF.UML.Holders.Connector_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UML.Assembly =>
                  return Assembly_Image;

               when AMF.UML.Delegation =>
                  return Delegation_Image;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Expansion_Kind then
         declare
            Item : constant AMF.UML.UML_Expansion_Kind
              := AMF.UML.Holders.Expansion_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UML.Parallel =>
                  return Parallel_Image;

               when AMF.UML.Iterative =>
                  return Iterative_Image;

               when AMF.UML.Stream =>
                  return Stream_Image;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Interaction_Operator_Kind then
         declare
            Item : constant AMF.UML.UML_Interaction_Operator_Kind
              := AMF.UML.Holders.Interaction_Operator_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UML.Seq_Operator =>
                  return Seq_Image;

               when AMF.UML.Alt_Operator =>
                  return Alt_Image;

               when AMF.UML.Opt_Operator =>
                  return Opt_Image;

               when AMF.UML.Break_Operator =>
                  return Break_Image;

               when AMF.UML.Par_Operator =>
                  return Par_Image;

               when AMF.UML.Strict_Operator =>
                  return Strict_Image;

               when AMF.UML.Loop_Operator =>
                  return Loop_Image;

               when AMF.UML.Critical_Operator =>
                  return Critical_Image;

               when AMF.UML.Neg_Operator =>
                  return Neg_Image;

               when AMF.UML.Assert_Operator =>
                  return Assert_Image;

               when AMF.UML.Ignore_Operator =>
                  return Ignore_Image;

               when AMF.UML.Consider_Operator =>
                  return Consider_Image;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Message_Kind then
         declare
            Item : constant AMF.UML.UML_Message_Kind
              := AMF.UML.Holders.Message_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UML.Complete =>
                  return Complete_Image;

               when AMF.UML.Lost =>
                  return Lost_Image;

               when AMF.UML.Found =>
                  return Found_Image;

               when AMF.UML.Unknown =>
                  return Unknown_Image;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Message_Sort then
         declare
            Item : constant AMF.UML.UML_Message_Sort
              := AMF.UML.Holders.Message_Sorts.Element (Value);

         begin
            case Item is
               when AMF.UML.Synch_Call =>
                  return Synch_Call_Image;

               when AMF.UML.Asynch_Call =>
                  return Asynch_Call_Image;

               when AMF.UML.Asynch_Signal =>
                  return Asynch_Signal_Image;

               when AMF.UML.Create_Message =>
                  return Create_Message_Image;

               when AMF.UML.Delete_Message =>
                  return Delete_Message_Image;

               when AMF.UML.Reply =>
                  return Reply_Image;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Object_Node_Ordering_Kind then
         declare
            Item : constant AMF.UML.UML_Object_Node_Ordering_Kind
              := AMF.UML.Holders.Object_Node_Ordering_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UML.Unordered =>
                  return Unordered_Image;

               when AMF.UML.Ordered =>
                  return Ordered_Image;

               when AMF.UML.LIFO =>
                  return LIFO_Image;

               when AMF.UML.FIFO =>
                  return FIFO_Image;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Parameter_Direction_Kind then
         declare
            Item : constant AMF.UML.UML_Parameter_Direction_Kind
              := AMF.UML.Holders.Parameter_Direction_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UML.In_Parameter =>
                  return In_Image;

               when AMF.UML.In_Out_Parameter =>
                  return Inout_Image;

               when AMF.UML.Out_Parameter =>
                  return Out_Image;

               when AMF.UML.Return_Parameter =>
                  return Return_Image;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Parameter_Effect_Kind then
         declare
            Item : constant AMF.UML.UML_Parameter_Effect_Kind
              := AMF.UML.Holders.Parameter_Effect_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UML.Create =>
                  return Create_Image;

               when AMF.UML.Read =>
                  return Read_Image;

               when AMF.UML.Update =>
                  return Update_Image;

               when AMF.UML.Delete =>
                  return Delete_Image;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Pseudostate_Kind then
         declare
            Item : constant AMF.UML.UML_Pseudostate_Kind
              := AMF.UML.Holders.Pseudostate_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UML.Initial_Pseudostate =>
                  return Initial_Image;

               when AMF.UML.Deep_History_Pseudostate =>
                  return Deep_History_Image;

               when AMF.UML.Shallow_History_Pseudostate =>
                  return Shallow_History_Image;

               when AMF.UML.Join_Pseudostate =>
                  return Join_Image;

               when AMF.UML.Fork_Pseudostate =>
                  return Fork_Image;

               when AMF.UML.Junction_Pseudostate =>
                  return Junction_Image;

               when AMF.UML.Choice_Pseudostate =>
                  return Choice_Image;

               when AMF.UML.Entry_Point_Pseudostate =>
                  return Entry_Point_Image;

               when AMF.UML.Exit_Point_Pseudostate =>
                  return Exit_Point_Image;

               when AMF.UML.Terminate_Pseudostate =>
                  return Terminate_Image;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Transition_Kind then
         declare
            Item : constant AMF.UML.UML_Transition_Kind
              := AMF.UML.Holders.Transition_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UML.Internal =>
                  return Internal_Image;

               when AMF.UML.Local =>
                  return Local_Image;

               when AMF.UML.External =>
                  return External_Image;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Visibility_Kind then
         declare
            Item : constant AMF.UML.UML_Visibility_Kind
              := AMF.UML.Holders.Visibility_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UML.Public_Visibility =>
                  return Public_Image;

               when AMF.UML.Private_Visibility =>
                  return Private_Image;

               when AMF.UML.Protected_Visibility =>
                  return Protected_Image;

               when AMF.UML.Package_Visibility =>
                  return Package_Image;
            end case;
         end;

      else
         raise Program_Error;
      end if;
   end Convert_To_String;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self       : not null access UML_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access
   is
      MC      : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Meta_Class.all).Element;
      Element : AMF.Internals.AMF_Element;

   begin
      if MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Abstraction then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Abstraction;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Accept_Call_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Accept_Call_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Accept_Event_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Accept_Event_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Action_Execution_Specification then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Action_Execution_Specification;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Action_Input_Pin then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Action_Input_Pin;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Activity then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Activity;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Activity_Final_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Activity_Final_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Activity_Parameter_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Activity_Parameter_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Activity_Partition then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Activity_Partition;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Actor then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Actor;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Add_Structural_Feature_Value_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Add_Structural_Feature_Value_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Add_Variable_Value_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Add_Variable_Value_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Any_Receive_Event then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Any_Receive_Event;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Artifact;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Association then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Association;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Association_Class then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Association_Class;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Behavior_Execution_Specification then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Behavior_Execution_Specification;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Broadcast_Signal_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Broadcast_Signal_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Call_Behavior_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Call_Behavior_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Call_Event then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Call_Event;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Call_Operation_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Call_Operation_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Central_Buffer_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Central_Buffer_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Change_Event then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Change_Event;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Class then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Class;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier_Template_Parameter then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Classifier_Template_Parameter;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Clause then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Clause;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Clear_Association_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Clear_Association_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Clear_Structural_Feature_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Clear_Structural_Feature_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Clear_Variable_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Clear_Variable_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Collaboration then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Collaboration;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Collaboration_Use then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Collaboration_Use;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Combined_Fragment then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Combined_Fragment;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Comment then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Comment;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Communication_Path then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Communication_Path;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Component then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Component;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Component_Realization then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Component_Realization;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Conditional_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Conditional_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Connectable_Element_Template_Parameter then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Connectable_Element_Template_Parameter;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Connection_Point_Reference then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Connection_Point_Reference;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Connector then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Connector;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Connector_End then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Connector_End;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Consider_Ignore_Fragment then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Consider_Ignore_Fragment;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Constraint then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Constraint;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Continuation then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Continuation;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Control_Flow then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Control_Flow;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Create_Link_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Create_Link_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Create_Link_Object_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Create_Link_Object_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Create_Object_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Create_Object_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Data_Store_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Data_Store_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Data_Type then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Data_Type;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Decision_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Decision_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Dependency then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Dependency;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Deployment then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Deployment;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Deployment_Specification then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Deployment_Specification;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Destroy_Link_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Destroy_Link_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Destroy_Object_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Destroy_Object_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Destruction_Occurrence_Specification then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Destruction_Occurrence_Specification;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Device then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Device;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Duration then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Duration;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Duration_Constraint then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Duration_Constraint;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Duration_Interval then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Duration_Interval;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Duration_Observation then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Duration_Observation;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Element_Import then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Element_Import;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Enumeration then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Enumeration;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Enumeration_Literal then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Enumeration_Literal;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Exception_Handler then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Exception_Handler;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Execution_Environment then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Execution_Environment;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Execution_Occurrence_Specification then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Execution_Occurrence_Specification;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Expansion_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Expansion_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Expansion_Region then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Expansion_Region;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Expression then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Expression;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Extend then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Extend;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Extension then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Extension;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Extension_End then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Extension_End;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Extension_Point then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Extension_Point;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Final_State then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Final_State;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Flow_Final_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Flow_Final_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Fork_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Fork_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Function_Behavior then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Function_Behavior;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Gate then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Gate;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_General_Ordering then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_General_Ordering;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Generalization then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Generalization;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Generalization_Set then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Generalization_Set;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Image then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Image;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Include then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Include;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Information_Flow then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Information_Flow;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Information_Item then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Information_Item;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Initial_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Initial_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Input_Pin then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Input_Pin;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Instance_Specification then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Instance_Specification;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Instance_Value then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Instance_Value;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Interaction then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Interaction;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Interaction_Constraint then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Interaction_Constraint;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Interaction_Operand then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Interaction_Operand;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Interaction_Use then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Interaction_Use;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Interface then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Interface;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Interface_Realization then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Interface_Realization;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Interruptible_Activity_Region then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Interruptible_Activity_Region;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Interval then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Interval;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Interval_Constraint then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Interval_Constraint;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Join_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Join_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Lifeline then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Lifeline;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Link_End_Creation_Data then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Link_End_Creation_Data;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Link_End_Data then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Link_End_Data;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Link_End_Destruction_Data then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Link_End_Destruction_Data;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_Boolean then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Literal_Boolean;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_Integer then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Literal_Integer;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_Null then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Literal_Null;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_Real then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Literal_Real;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_String then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Literal_String;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_Unlimited_Natural then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Literal_Unlimited_Natural;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Loop_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Loop_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Manifestation then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Manifestation;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Merge_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Merge_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Message then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Message;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Message_Occurrence_Specification then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Message_Occurrence_Specification;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Model then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Model;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Object_Flow then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Object_Flow;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Occurrence_Specification then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Occurrence_Specification;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Opaque_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Opaque_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Opaque_Behavior then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Opaque_Behavior;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Opaque_Expression then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Opaque_Expression;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Operation then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Operation;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Operation_Template_Parameter then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Operation_Template_Parameter;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Output_Pin then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Output_Pin;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Package then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Package;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Package_Import then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Package_Import;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Package_Merge then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Package_Merge;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Parameter then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Parameter;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Parameter_Set then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Parameter_Set;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Part_Decomposition then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Part_Decomposition;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Port then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Port;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Primitive_Type then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Primitive_Type;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Profile then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Profile;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Profile_Application then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Profile_Application;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Property then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Property;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Protocol_Conformance then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Protocol_Conformance;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Protocol_State_Machine then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Protocol_State_Machine;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Protocol_Transition then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Protocol_Transition;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Pseudostate then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Pseudostate;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Qualifier_Value then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Qualifier_Value;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Raise_Exception_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Raise_Exception_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Extent_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Read_Extent_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Is_Classified_Object_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Read_Is_Classified_Object_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Link_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Read_Link_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Link_Object_End_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Read_Link_Object_End_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Link_Object_End_Qualifier_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Read_Link_Object_End_Qualifier_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Self_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Read_Self_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Structural_Feature_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Read_Structural_Feature_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Variable_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Read_Variable_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Realization then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Realization;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Reception then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Reception;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Reclassify_Object_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Reclassify_Object_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Redefinable_Template_Signature then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Redefinable_Template_Signature;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Reduce_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Reduce_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Region then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Region;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Remove_Structural_Feature_Value_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Remove_Structural_Feature_Value_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Remove_Variable_Value_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Remove_Variable_Value_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Reply_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Reply_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Send_Object_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Send_Object_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Send_Signal_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Send_Signal_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Sequence_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Sequence_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Signal then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Signal;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Signal_Event then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Signal_Event;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Slot then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Slot;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Start_Classifier_Behavior_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Start_Classifier_Behavior_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Start_Object_Behavior_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Start_Object_Behavior_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_State then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_State;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_State_Invariant then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_State_Invariant;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_State_Machine then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_State_Machine;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Stereotype then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Stereotype;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_String_Expression then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_String_Expression;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Structured_Activity_Node then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Structured_Activity_Node;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Substitution then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Substitution;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Template_Binding then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Template_Binding;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Template_Parameter then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Template_Parameter;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Template_Parameter_Substitution then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Template_Parameter_Substitution;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Template_Signature then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Template_Signature;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Test_Identity_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Test_Identity_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Time_Constraint then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Time_Constraint;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Time_Event then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Time_Event;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Time_Expression then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Time_Expression;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Time_Interval then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Time_Interval;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Time_Observation then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Time_Observation;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Transition then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Transition;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Trigger then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Trigger;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Unmarshall_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Unmarshall_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Usage then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Usage;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Use_Case then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Use_Case;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Value_Pin then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Value_Pin;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Value_Specification_Action then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Value_Specification_Action;

      elsif MC = AMF.Internals.Tables.UML_Metamodel.MC_UML_Variable then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UML_Variable;

      else
         raise Program_Error;
      end if;

      AMF.Internals.Extents.Internal_Append (Self.Extent, Element);
      AMF.Internals.Listener_Registry.Notify_Instance_Create
       (AMF.Internals.Helpers.To_Element (Element));

      return AMF.Internals.Helpers.To_Element (Element);
   end Create;

   ------------------------
   -- Create_From_String --
   ------------------------

   overriding function Create_From_String
    (Self      : not null access UML_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder
   is
      pragma Unreferenced (Self);

      use type League.Strings.Universal_String;

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Aggregation_Kind then
         if Image = None_Image then
            return
              AMF.UML.Holders.Aggregation_Kinds.To_Holder
               (AMF.UML.None);

         elsif Image = Shared_Image then
            return
              AMF.UML.Holders.Aggregation_Kinds.To_Holder
               (AMF.UML.Shared);

         elsif Image = Composite_Image then
            return
              AMF.UML.Holders.Aggregation_Kinds.To_Holder
               (AMF.UML.Composite);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Call_Concurrency_Kind then
         if Image = Sequential_Image then
            return
              AMF.UML.Holders.Call_Concurrency_Kinds.To_Holder
               (AMF.UML.Sequential);

         elsif Image = Guarded_Image then
            return
              AMF.UML.Holders.Call_Concurrency_Kinds.To_Holder
               (AMF.UML.Guarded);

         elsif Image = Concurrent_Image then
            return
              AMF.UML.Holders.Call_Concurrency_Kinds.To_Holder
               (AMF.UML.Concurrent);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Connector_Kind then
         if Image = Assembly_Image then
            return
              AMF.UML.Holders.Connector_Kinds.To_Holder
               (AMF.UML.Assembly);

         elsif Image = Delegation_Image then
            return
              AMF.UML.Holders.Connector_Kinds.To_Holder
               (AMF.UML.Delegation);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Expansion_Kind then
         if Image = Parallel_Image then
            return
              AMF.UML.Holders.Expansion_Kinds.To_Holder
               (AMF.UML.Parallel);

         elsif Image = Iterative_Image then
            return
              AMF.UML.Holders.Expansion_Kinds.To_Holder
               (AMF.UML.Iterative);

         elsif Image = Stream_Image then
            return
              AMF.UML.Holders.Expansion_Kinds.To_Holder
               (AMF.UML.Stream);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Interaction_Operator_Kind then
         if Image = Seq_Image then
            return
              AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder
               (AMF.UML.Seq_Operator);

         elsif Image = Alt_Image then
            return
              AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder
               (AMF.UML.Alt_Operator);

         elsif Image = Opt_Image then
            return
              AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder
               (AMF.UML.Opt_Operator);

         elsif Image = Break_Image then
            return
              AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder
               (AMF.UML.Break_Operator);

         elsif Image = Par_Image then
            return
              AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder
               (AMF.UML.Par_Operator);

         elsif Image = Strict_Image then
            return
              AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder
               (AMF.UML.Strict_Operator);

         elsif Image = Loop_Image then
            return
              AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder
               (AMF.UML.Loop_Operator);

         elsif Image = Critical_Image then
            return
              AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder
               (AMF.UML.Critical_Operator);

         elsif Image = Neg_Image then
            return
              AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder
               (AMF.UML.Neg_Operator);

         elsif Image = Assert_Image then
            return
              AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder
               (AMF.UML.Assert_Operator);

         elsif Image = Ignore_Image then
            return
              AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder
               (AMF.UML.Ignore_Operator);

         elsif Image = Consider_Image then
            return
              AMF.UML.Holders.Interaction_Operator_Kinds.To_Holder
               (AMF.UML.Consider_Operator);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Message_Kind then
         if Image = Complete_Image then
            return
              AMF.UML.Holders.Message_Kinds.To_Holder
               (AMF.UML.Complete);

         elsif Image = Lost_Image then
            return
              AMF.UML.Holders.Message_Kinds.To_Holder
               (AMF.UML.Lost);

         elsif Image = Found_Image then
            return
              AMF.UML.Holders.Message_Kinds.To_Holder
               (AMF.UML.Found);

         elsif Image = Unknown_Image then
            return
              AMF.UML.Holders.Message_Kinds.To_Holder
               (AMF.UML.Unknown);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Message_Sort then
         if Image = Synch_Call_Image then
            return
              AMF.UML.Holders.Message_Sorts.To_Holder
               (AMF.UML.Synch_Call);

         elsif Image = Asynch_Call_Image then
            return
              AMF.UML.Holders.Message_Sorts.To_Holder
               (AMF.UML.Asynch_Call);

         elsif Image = Asynch_Signal_Image then
            return
              AMF.UML.Holders.Message_Sorts.To_Holder
               (AMF.UML.Asynch_Signal);

         elsif Image = Create_Message_Image then
            return
              AMF.UML.Holders.Message_Sorts.To_Holder
               (AMF.UML.Create_Message);

         elsif Image = Delete_Message_Image then
            return
              AMF.UML.Holders.Message_Sorts.To_Holder
               (AMF.UML.Delete_Message);

         elsif Image = Reply_Image then
            return
              AMF.UML.Holders.Message_Sorts.To_Holder
               (AMF.UML.Reply);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Object_Node_Ordering_Kind then
         if Image = Unordered_Image then
            return
              AMF.UML.Holders.Object_Node_Ordering_Kinds.To_Holder
               (AMF.UML.Unordered);

         elsif Image = Ordered_Image then
            return
              AMF.UML.Holders.Object_Node_Ordering_Kinds.To_Holder
               (AMF.UML.Ordered);

         elsif Image = LIFO_Image then
            return
              AMF.UML.Holders.Object_Node_Ordering_Kinds.To_Holder
               (AMF.UML.LIFO);

         elsif Image = FIFO_Image then
            return
              AMF.UML.Holders.Object_Node_Ordering_Kinds.To_Holder
               (AMF.UML.FIFO);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Parameter_Direction_Kind then
         if Image = In_Image then
            return
              AMF.UML.Holders.Parameter_Direction_Kinds.To_Holder
               (AMF.UML.In_Parameter);

         elsif Image = Inout_Image then
            return
              AMF.UML.Holders.Parameter_Direction_Kinds.To_Holder
               (AMF.UML.In_Out_Parameter);

         elsif Image = Out_Image then
            return
              AMF.UML.Holders.Parameter_Direction_Kinds.To_Holder
               (AMF.UML.Out_Parameter);

         elsif Image = Return_Image then
            return
              AMF.UML.Holders.Parameter_Direction_Kinds.To_Holder
               (AMF.UML.Return_Parameter);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Parameter_Effect_Kind then
         if Image = Create_Image then
            return
              AMF.UML.Holders.Parameter_Effect_Kinds.To_Holder
               (AMF.UML.Create);

         elsif Image = Read_Image then
            return
              AMF.UML.Holders.Parameter_Effect_Kinds.To_Holder
               (AMF.UML.Read);

         elsif Image = Update_Image then
            return
              AMF.UML.Holders.Parameter_Effect_Kinds.To_Holder
               (AMF.UML.Update);

         elsif Image = Delete_Image then
            return
              AMF.UML.Holders.Parameter_Effect_Kinds.To_Holder
               (AMF.UML.Delete);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Pseudostate_Kind then
         if Image = Initial_Image then
            return
              AMF.UML.Holders.Pseudostate_Kinds.To_Holder
               (AMF.UML.Initial_Pseudostate);

         elsif Image = Deep_History_Image then
            return
              AMF.UML.Holders.Pseudostate_Kinds.To_Holder
               (AMF.UML.Deep_History_Pseudostate);

         elsif Image = Shallow_History_Image then
            return
              AMF.UML.Holders.Pseudostate_Kinds.To_Holder
               (AMF.UML.Shallow_History_Pseudostate);

         elsif Image = Join_Image then
            return
              AMF.UML.Holders.Pseudostate_Kinds.To_Holder
               (AMF.UML.Join_Pseudostate);

         elsif Image = Fork_Image then
            return
              AMF.UML.Holders.Pseudostate_Kinds.To_Holder
               (AMF.UML.Fork_Pseudostate);

         elsif Image = Junction_Image then
            return
              AMF.UML.Holders.Pseudostate_Kinds.To_Holder
               (AMF.UML.Junction_Pseudostate);

         elsif Image = Choice_Image then
            return
              AMF.UML.Holders.Pseudostate_Kinds.To_Holder
               (AMF.UML.Choice_Pseudostate);

         elsif Image = Entry_Point_Image then
            return
              AMF.UML.Holders.Pseudostate_Kinds.To_Holder
               (AMF.UML.Entry_Point_Pseudostate);

         elsif Image = Exit_Point_Image then
            return
              AMF.UML.Holders.Pseudostate_Kinds.To_Holder
               (AMF.UML.Exit_Point_Pseudostate);

         elsif Image = Terminate_Image then
            return
              AMF.UML.Holders.Pseudostate_Kinds.To_Holder
               (AMF.UML.Terminate_Pseudostate);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Transition_Kind then
         if Image = Internal_Image then
            return
              AMF.UML.Holders.Transition_Kinds.To_Holder
               (AMF.UML.Internal);

         elsif Image = Local_Image then
            return
              AMF.UML.Holders.Transition_Kinds.To_Holder
               (AMF.UML.Local);

         elsif Image = External_Image then
            return
              AMF.UML.Holders.Transition_Kinds.To_Holder
               (AMF.UML.External);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UML_Metamodel.MC_UML_Visibility_Kind then
         if Image = Public_Image then
            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.UML.Public_Visibility);

         elsif Image = Private_Image then
            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.UML.Private_Visibility);

         elsif Image = Protected_Image then
            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.UML.Protected_Visibility);

         elsif Image = Package_Image then
            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.UML.Package_Visibility);

         else
            raise Constraint_Error;
         end if;

      else
         raise Program_Error;
      end if;
   end Create_From_String;

   -----------------
   -- Create_Link --
   -----------------

   overriding function Create_Link
    (Self           : not null access UML_Factory;
     Association    :
       not null access AMF.CMOF.Associations.CMOF_Association'Class;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access)
       return not null AMF.Links.Link_Access
   is
      pragma Unreferenced (Self);

   begin
      return
        AMF.Internals.Links.Proxy
         (AMF.Internals.Links.Create_Link
           (AMF.Internals.Elements.Element_Base'Class
             (Association.all).Element,
            AMF.Internals.Helpers.To_Element (First_Element),
            AMF.Internals.Helpers.To_Element (Second_Element)));
   end Create_Link;

   -----------------
   -- Get_Package --
   -----------------

   overriding function Get_Package
    (Self : not null access constant UML_Factory)
       return AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package
   is
      pragma Unreferenced (Self);

   begin
      return Result : AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package do
         Result.Add (Get_Package);
      end return;
   end Get_Package;

   -----------------
   -- Get_Package --
   -----------------

   function Get_Package return not null AMF.CMOF.Packages.CMOF_Package_Access is
   begin
      return
        AMF.CMOF.Packages.CMOF_Package_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Metamodel.MM_UML_UML));
   end Get_Package;

   ------------------------
   -- Create_Abstraction --
   ------------------------

   overriding function Create_Abstraction
    (Self : not null access UML_Factory)
       return AMF.UML.Abstractions.UML_Abstraction_Access is
   begin
      return
        AMF.UML.Abstractions.UML_Abstraction_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Abstraction))));
   end Create_Abstraction;

   -------------------------------
   -- Create_Accept_Call_Action --
   -------------------------------

   overriding function Create_Accept_Call_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Accept_Call_Actions.UML_Accept_Call_Action_Access is
   begin
      return
        AMF.UML.Accept_Call_Actions.UML_Accept_Call_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Accept_Call_Action))));
   end Create_Accept_Call_Action;

   --------------------------------
   -- Create_Accept_Event_Action --
   --------------------------------

   overriding function Create_Accept_Event_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Accept_Event_Actions.UML_Accept_Event_Action_Access is
   begin
      return
        AMF.UML.Accept_Event_Actions.UML_Accept_Event_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Accept_Event_Action))));
   end Create_Accept_Event_Action;

   -------------------------------------------
   -- Create_Action_Execution_Specification --
   -------------------------------------------

   overriding function Create_Action_Execution_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Action_Execution_Specifications.UML_Action_Execution_Specification_Access is
   begin
      return
        AMF.UML.Action_Execution_Specifications.UML_Action_Execution_Specification_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Action_Execution_Specification))));
   end Create_Action_Execution_Specification;

   -----------------------------
   -- Create_Action_Input_Pin --
   -----------------------------

   overriding function Create_Action_Input_Pin
    (Self : not null access UML_Factory)
       return AMF.UML.Action_Input_Pins.UML_Action_Input_Pin_Access is
   begin
      return
        AMF.UML.Action_Input_Pins.UML_Action_Input_Pin_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Action_Input_Pin))));
   end Create_Action_Input_Pin;

   ---------------------
   -- Create_Activity --
   ---------------------

   overriding function Create_Activity
    (Self : not null access UML_Factory)
       return AMF.UML.Activities.UML_Activity_Access is
   begin
      return
        AMF.UML.Activities.UML_Activity_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Activity))));
   end Create_Activity;

   --------------------------------
   -- Create_Activity_Final_Node --
   --------------------------------

   overriding function Create_Activity_Final_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Activity_Final_Nodes.UML_Activity_Final_Node_Access is
   begin
      return
        AMF.UML.Activity_Final_Nodes.UML_Activity_Final_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Activity_Final_Node))));
   end Create_Activity_Final_Node;

   ------------------------------------
   -- Create_Activity_Parameter_Node --
   ------------------------------------

   overriding function Create_Activity_Parameter_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Activity_Parameter_Nodes.UML_Activity_Parameter_Node_Access is
   begin
      return
        AMF.UML.Activity_Parameter_Nodes.UML_Activity_Parameter_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Activity_Parameter_Node))));
   end Create_Activity_Parameter_Node;

   -------------------------------
   -- Create_Activity_Partition --
   -------------------------------

   overriding function Create_Activity_Partition
    (Self : not null access UML_Factory)
       return AMF.UML.Activity_Partitions.UML_Activity_Partition_Access is
   begin
      return
        AMF.UML.Activity_Partitions.UML_Activity_Partition_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Activity_Partition))));
   end Create_Activity_Partition;

   ------------------
   -- Create_Actor --
   ------------------

   overriding function Create_Actor
    (Self : not null access UML_Factory)
       return AMF.UML.Actors.UML_Actor_Access is
   begin
      return
        AMF.UML.Actors.UML_Actor_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Actor))));
   end Create_Actor;

   ------------------------------------------------
   -- Create_Add_Structural_Feature_Value_Action --
   ------------------------------------------------

   overriding function Create_Add_Structural_Feature_Value_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Add_Structural_Feature_Value_Actions.UML_Add_Structural_Feature_Value_Action_Access is
   begin
      return
        AMF.UML.Add_Structural_Feature_Value_Actions.UML_Add_Structural_Feature_Value_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Add_Structural_Feature_Value_Action))));
   end Create_Add_Structural_Feature_Value_Action;

   --------------------------------------
   -- Create_Add_Variable_Value_Action --
   --------------------------------------

   overriding function Create_Add_Variable_Value_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Add_Variable_Value_Actions.UML_Add_Variable_Value_Action_Access is
   begin
      return
        AMF.UML.Add_Variable_Value_Actions.UML_Add_Variable_Value_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Add_Variable_Value_Action))));
   end Create_Add_Variable_Value_Action;

   ------------------------------
   -- Create_Any_Receive_Event --
   ------------------------------

   overriding function Create_Any_Receive_Event
    (Self : not null access UML_Factory)
       return AMF.UML.Any_Receive_Events.UML_Any_Receive_Event_Access is
   begin
      return
        AMF.UML.Any_Receive_Events.UML_Any_Receive_Event_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Any_Receive_Event))));
   end Create_Any_Receive_Event;

   ---------------------
   -- Create_Artifact --
   ---------------------

   overriding function Create_Artifact
    (Self : not null access UML_Factory)
       return AMF.UML.Artifacts.UML_Artifact_Access is
   begin
      return
        AMF.UML.Artifacts.UML_Artifact_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact))));
   end Create_Artifact;

   ------------------------
   -- Create_Association --
   ------------------------

   overriding function Create_Association
    (Self : not null access UML_Factory)
       return AMF.UML.Associations.UML_Association_Access is
   begin
      return
        AMF.UML.Associations.UML_Association_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Association))));
   end Create_Association;

   ------------------------------
   -- Create_Association_Class --
   ------------------------------

   overriding function Create_Association_Class
    (Self : not null access UML_Factory)
       return AMF.UML.Association_Classes.UML_Association_Class_Access is
   begin
      return
        AMF.UML.Association_Classes.UML_Association_Class_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Association_Class))));
   end Create_Association_Class;

   ---------------------------------------------
   -- Create_Behavior_Execution_Specification --
   ---------------------------------------------

   overriding function Create_Behavior_Execution_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Behavior_Execution_Specifications.UML_Behavior_Execution_Specification_Access is
   begin
      return
        AMF.UML.Behavior_Execution_Specifications.UML_Behavior_Execution_Specification_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Behavior_Execution_Specification))));
   end Create_Behavior_Execution_Specification;

   ------------------------------------
   -- Create_Broadcast_Signal_Action --
   ------------------------------------

   overriding function Create_Broadcast_Signal_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Broadcast_Signal_Actions.UML_Broadcast_Signal_Action_Access is
   begin
      return
        AMF.UML.Broadcast_Signal_Actions.UML_Broadcast_Signal_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Broadcast_Signal_Action))));
   end Create_Broadcast_Signal_Action;

   ---------------------------------
   -- Create_Call_Behavior_Action --
   ---------------------------------

   overriding function Create_Call_Behavior_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Call_Behavior_Actions.UML_Call_Behavior_Action_Access is
   begin
      return
        AMF.UML.Call_Behavior_Actions.UML_Call_Behavior_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Call_Behavior_Action))));
   end Create_Call_Behavior_Action;

   -----------------------
   -- Create_Call_Event --
   -----------------------

   overriding function Create_Call_Event
    (Self : not null access UML_Factory)
       return AMF.UML.Call_Events.UML_Call_Event_Access is
   begin
      return
        AMF.UML.Call_Events.UML_Call_Event_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Call_Event))));
   end Create_Call_Event;

   ----------------------------------
   -- Create_Call_Operation_Action --
   ----------------------------------

   overriding function Create_Call_Operation_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access is
   begin
      return
        AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Call_Operation_Action))));
   end Create_Call_Operation_Action;

   --------------------------------
   -- Create_Central_Buffer_Node --
   --------------------------------

   overriding function Create_Central_Buffer_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Central_Buffer_Nodes.UML_Central_Buffer_Node_Access is
   begin
      return
        AMF.UML.Central_Buffer_Nodes.UML_Central_Buffer_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Central_Buffer_Node))));
   end Create_Central_Buffer_Node;

   -------------------------
   -- Create_Change_Event --
   -------------------------

   overriding function Create_Change_Event
    (Self : not null access UML_Factory)
       return AMF.UML.Change_Events.UML_Change_Event_Access is
   begin
      return
        AMF.UML.Change_Events.UML_Change_Event_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Change_Event))));
   end Create_Change_Event;

   ------------------
   -- Create_Class --
   ------------------

   overriding function Create_Class
    (Self : not null access UML_Factory)
       return AMF.UML.Classes.UML_Class_Access is
   begin
      return
        AMF.UML.Classes.UML_Class_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Class))));
   end Create_Class;

   ------------------------------------------
   -- Create_Classifier_Template_Parameter --
   ------------------------------------------

   overriding function Create_Classifier_Template_Parameter
    (Self : not null access UML_Factory)
       return AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access is
   begin
      return
        AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier_Template_Parameter))));
   end Create_Classifier_Template_Parameter;

   -------------------
   -- Create_Clause --
   -------------------

   overriding function Create_Clause
    (Self : not null access UML_Factory)
       return AMF.UML.Clauses.UML_Clause_Access is
   begin
      return
        AMF.UML.Clauses.UML_Clause_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Clause))));
   end Create_Clause;

   -------------------------------------
   -- Create_Clear_Association_Action --
   -------------------------------------

   overriding function Create_Clear_Association_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Clear_Association_Actions.UML_Clear_Association_Action_Access is
   begin
      return
        AMF.UML.Clear_Association_Actions.UML_Clear_Association_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Clear_Association_Action))));
   end Create_Clear_Association_Action;

   --------------------------------------------
   -- Create_Clear_Structural_Feature_Action --
   --------------------------------------------

   overriding function Create_Clear_Structural_Feature_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Clear_Structural_Feature_Actions.UML_Clear_Structural_Feature_Action_Access is
   begin
      return
        AMF.UML.Clear_Structural_Feature_Actions.UML_Clear_Structural_Feature_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Clear_Structural_Feature_Action))));
   end Create_Clear_Structural_Feature_Action;

   ----------------------------------
   -- Create_Clear_Variable_Action --
   ----------------------------------

   overriding function Create_Clear_Variable_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Clear_Variable_Actions.UML_Clear_Variable_Action_Access is
   begin
      return
        AMF.UML.Clear_Variable_Actions.UML_Clear_Variable_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Clear_Variable_Action))));
   end Create_Clear_Variable_Action;

   --------------------------
   -- Create_Collaboration --
   --------------------------

   overriding function Create_Collaboration
    (Self : not null access UML_Factory)
       return AMF.UML.Collaborations.UML_Collaboration_Access is
   begin
      return
        AMF.UML.Collaborations.UML_Collaboration_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Collaboration))));
   end Create_Collaboration;

   ------------------------------
   -- Create_Collaboration_Use --
   ------------------------------

   overriding function Create_Collaboration_Use
    (Self : not null access UML_Factory)
       return AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access is
   begin
      return
        AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Collaboration_Use))));
   end Create_Collaboration_Use;

   ------------------------------
   -- Create_Combined_Fragment --
   ------------------------------

   overriding function Create_Combined_Fragment
    (Self : not null access UML_Factory)
       return AMF.UML.Combined_Fragments.UML_Combined_Fragment_Access is
   begin
      return
        AMF.UML.Combined_Fragments.UML_Combined_Fragment_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Combined_Fragment))));
   end Create_Combined_Fragment;

   --------------------
   -- Create_Comment --
   --------------------

   overriding function Create_Comment
    (Self : not null access UML_Factory)
       return AMF.UML.Comments.UML_Comment_Access is
   begin
      return
        AMF.UML.Comments.UML_Comment_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Comment))));
   end Create_Comment;

   -------------------------------
   -- Create_Communication_Path --
   -------------------------------

   overriding function Create_Communication_Path
    (Self : not null access UML_Factory)
       return AMF.UML.Communication_Paths.UML_Communication_Path_Access is
   begin
      return
        AMF.UML.Communication_Paths.UML_Communication_Path_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Communication_Path))));
   end Create_Communication_Path;

   ----------------------
   -- Create_Component --
   ----------------------

   overriding function Create_Component
    (Self : not null access UML_Factory)
       return AMF.UML.Components.UML_Component_Access is
   begin
      return
        AMF.UML.Components.UML_Component_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Component))));
   end Create_Component;

   ----------------------------------
   -- Create_Component_Realization --
   ----------------------------------

   overriding function Create_Component_Realization
    (Self : not null access UML_Factory)
       return AMF.UML.Component_Realizations.UML_Component_Realization_Access is
   begin
      return
        AMF.UML.Component_Realizations.UML_Component_Realization_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Component_Realization))));
   end Create_Component_Realization;

   -----------------------------
   -- Create_Conditional_Node --
   -----------------------------

   overriding function Create_Conditional_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Conditional_Nodes.UML_Conditional_Node_Access is
   begin
      return
        AMF.UML.Conditional_Nodes.UML_Conditional_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Conditional_Node))));
   end Create_Conditional_Node;

   ---------------------------------------------------
   -- Create_Connectable_Element_Template_Parameter --
   ---------------------------------------------------

   overriding function Create_Connectable_Element_Template_Parameter
    (Self : not null access UML_Factory)
       return AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access is
   begin
      return
        AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Connectable_Element_Template_Parameter))));
   end Create_Connectable_Element_Template_Parameter;

   ---------------------------------------
   -- Create_Connection_Point_Reference --
   ---------------------------------------

   overriding function Create_Connection_Point_Reference
    (Self : not null access UML_Factory)
       return AMF.UML.Connection_Point_References.UML_Connection_Point_Reference_Access is
   begin
      return
        AMF.UML.Connection_Point_References.UML_Connection_Point_Reference_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Connection_Point_Reference))));
   end Create_Connection_Point_Reference;

   ----------------------
   -- Create_Connector --
   ----------------------

   overriding function Create_Connector
    (Self : not null access UML_Factory)
       return AMF.UML.Connectors.UML_Connector_Access is
   begin
      return
        AMF.UML.Connectors.UML_Connector_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Connector))));
   end Create_Connector;

   --------------------------
   -- Create_Connector_End --
   --------------------------

   overriding function Create_Connector_End
    (Self : not null access UML_Factory)
       return AMF.UML.Connector_Ends.UML_Connector_End_Access is
   begin
      return
        AMF.UML.Connector_Ends.UML_Connector_End_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Connector_End))));
   end Create_Connector_End;

   -------------------------------------
   -- Create_Consider_Ignore_Fragment --
   -------------------------------------

   overriding function Create_Consider_Ignore_Fragment
    (Self : not null access UML_Factory)
       return AMF.UML.Consider_Ignore_Fragments.UML_Consider_Ignore_Fragment_Access is
   begin
      return
        AMF.UML.Consider_Ignore_Fragments.UML_Consider_Ignore_Fragment_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Consider_Ignore_Fragment))));
   end Create_Consider_Ignore_Fragment;

   -----------------------
   -- Create_Constraint --
   -----------------------

   overriding function Create_Constraint
    (Self : not null access UML_Factory)
       return AMF.UML.Constraints.UML_Constraint_Access is
   begin
      return
        AMF.UML.Constraints.UML_Constraint_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Constraint))));
   end Create_Constraint;

   -------------------------
   -- Create_Continuation --
   -------------------------

   overriding function Create_Continuation
    (Self : not null access UML_Factory)
       return AMF.UML.Continuations.UML_Continuation_Access is
   begin
      return
        AMF.UML.Continuations.UML_Continuation_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Continuation))));
   end Create_Continuation;

   -------------------------
   -- Create_Control_Flow --
   -------------------------

   overriding function Create_Control_Flow
    (Self : not null access UML_Factory)
       return AMF.UML.Control_Flows.UML_Control_Flow_Access is
   begin
      return
        AMF.UML.Control_Flows.UML_Control_Flow_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Control_Flow))));
   end Create_Control_Flow;

   -------------------------------
   -- Create_Create_Link_Action --
   -------------------------------

   overriding function Create_Create_Link_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Create_Link_Actions.UML_Create_Link_Action_Access is
   begin
      return
        AMF.UML.Create_Link_Actions.UML_Create_Link_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Create_Link_Action))));
   end Create_Create_Link_Action;

   --------------------------------------
   -- Create_Create_Link_Object_Action --
   --------------------------------------

   overriding function Create_Create_Link_Object_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Create_Link_Object_Actions.UML_Create_Link_Object_Action_Access is
   begin
      return
        AMF.UML.Create_Link_Object_Actions.UML_Create_Link_Object_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Create_Link_Object_Action))));
   end Create_Create_Link_Object_Action;

   ---------------------------------
   -- Create_Create_Object_Action --
   ---------------------------------

   overriding function Create_Create_Object_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Create_Object_Actions.UML_Create_Object_Action_Access is
   begin
      return
        AMF.UML.Create_Object_Actions.UML_Create_Object_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Create_Object_Action))));
   end Create_Create_Object_Action;

   ----------------------------
   -- Create_Data_Store_Node --
   ----------------------------

   overriding function Create_Data_Store_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Data_Store_Nodes.UML_Data_Store_Node_Access is
   begin
      return
        AMF.UML.Data_Store_Nodes.UML_Data_Store_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Data_Store_Node))));
   end Create_Data_Store_Node;

   ----------------------
   -- Create_Data_Type --
   ----------------------

   overriding function Create_Data_Type
    (Self : not null access UML_Factory)
       return AMF.UML.Data_Types.UML_Data_Type_Access is
   begin
      return
        AMF.UML.Data_Types.UML_Data_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Data_Type))));
   end Create_Data_Type;

   --------------------------
   -- Create_Decision_Node --
   --------------------------

   overriding function Create_Decision_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Decision_Nodes.UML_Decision_Node_Access is
   begin
      return
        AMF.UML.Decision_Nodes.UML_Decision_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Decision_Node))));
   end Create_Decision_Node;

   -----------------------
   -- Create_Dependency --
   -----------------------

   overriding function Create_Dependency
    (Self : not null access UML_Factory)
       return AMF.UML.Dependencies.UML_Dependency_Access is
   begin
      return
        AMF.UML.Dependencies.UML_Dependency_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Dependency))));
   end Create_Dependency;

   -----------------------
   -- Create_Deployment --
   -----------------------

   overriding function Create_Deployment
    (Self : not null access UML_Factory)
       return AMF.UML.Deployments.UML_Deployment_Access is
   begin
      return
        AMF.UML.Deployments.UML_Deployment_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Deployment))));
   end Create_Deployment;

   -------------------------------------
   -- Create_Deployment_Specification --
   -------------------------------------

   overriding function Create_Deployment_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Deployment_Specifications.UML_Deployment_Specification_Access is
   begin
      return
        AMF.UML.Deployment_Specifications.UML_Deployment_Specification_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Deployment_Specification))));
   end Create_Deployment_Specification;

   --------------------------------
   -- Create_Destroy_Link_Action --
   --------------------------------

   overriding function Create_Destroy_Link_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Destroy_Link_Actions.UML_Destroy_Link_Action_Access is
   begin
      return
        AMF.UML.Destroy_Link_Actions.UML_Destroy_Link_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Destroy_Link_Action))));
   end Create_Destroy_Link_Action;

   ----------------------------------
   -- Create_Destroy_Object_Action --
   ----------------------------------

   overriding function Create_Destroy_Object_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Destroy_Object_Actions.UML_Destroy_Object_Action_Access is
   begin
      return
        AMF.UML.Destroy_Object_Actions.UML_Destroy_Object_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Destroy_Object_Action))));
   end Create_Destroy_Object_Action;

   -------------------------------------------------
   -- Create_Destruction_Occurrence_Specification --
   -------------------------------------------------

   overriding function Create_Destruction_Occurrence_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Destruction_Occurrence_Specifications.UML_Destruction_Occurrence_Specification_Access is
   begin
      return
        AMF.UML.Destruction_Occurrence_Specifications.UML_Destruction_Occurrence_Specification_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Destruction_Occurrence_Specification))));
   end Create_Destruction_Occurrence_Specification;

   -------------------
   -- Create_Device --
   -------------------

   overriding function Create_Device
    (Self : not null access UML_Factory)
       return AMF.UML.Devices.UML_Device_Access is
   begin
      return
        AMF.UML.Devices.UML_Device_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Device))));
   end Create_Device;

   ---------------------
   -- Create_Duration --
   ---------------------

   overriding function Create_Duration
    (Self : not null access UML_Factory)
       return AMF.UML.Durations.UML_Duration_Access is
   begin
      return
        AMF.UML.Durations.UML_Duration_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Duration))));
   end Create_Duration;

   --------------------------------
   -- Create_Duration_Constraint --
   --------------------------------

   overriding function Create_Duration_Constraint
    (Self : not null access UML_Factory)
       return AMF.UML.Duration_Constraints.UML_Duration_Constraint_Access is
   begin
      return
        AMF.UML.Duration_Constraints.UML_Duration_Constraint_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Duration_Constraint))));
   end Create_Duration_Constraint;

   ------------------------------
   -- Create_Duration_Interval --
   ------------------------------

   overriding function Create_Duration_Interval
    (Self : not null access UML_Factory)
       return AMF.UML.Duration_Intervals.UML_Duration_Interval_Access is
   begin
      return
        AMF.UML.Duration_Intervals.UML_Duration_Interval_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Duration_Interval))));
   end Create_Duration_Interval;

   ---------------------------------
   -- Create_Duration_Observation --
   ---------------------------------

   overriding function Create_Duration_Observation
    (Self : not null access UML_Factory)
       return AMF.UML.Duration_Observations.UML_Duration_Observation_Access is
   begin
      return
        AMF.UML.Duration_Observations.UML_Duration_Observation_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Duration_Observation))));
   end Create_Duration_Observation;

   ---------------------------
   -- Create_Element_Import --
   ---------------------------

   overriding function Create_Element_Import
    (Self : not null access UML_Factory)
       return AMF.UML.Element_Imports.UML_Element_Import_Access is
   begin
      return
        AMF.UML.Element_Imports.UML_Element_Import_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Element_Import))));
   end Create_Element_Import;

   ------------------------
   -- Create_Enumeration --
   ------------------------

   overriding function Create_Enumeration
    (Self : not null access UML_Factory)
       return AMF.UML.Enumerations.UML_Enumeration_Access is
   begin
      return
        AMF.UML.Enumerations.UML_Enumeration_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Enumeration))));
   end Create_Enumeration;

   --------------------------------
   -- Create_Enumeration_Literal --
   --------------------------------

   overriding function Create_Enumeration_Literal
    (Self : not null access UML_Factory)
       return AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access is
   begin
      return
        AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Enumeration_Literal))));
   end Create_Enumeration_Literal;

   ------------------------------
   -- Create_Exception_Handler --
   ------------------------------

   overriding function Create_Exception_Handler
    (Self : not null access UML_Factory)
       return AMF.UML.Exception_Handlers.UML_Exception_Handler_Access is
   begin
      return
        AMF.UML.Exception_Handlers.UML_Exception_Handler_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Exception_Handler))));
   end Create_Exception_Handler;

   ----------------------------------
   -- Create_Execution_Environment --
   ----------------------------------

   overriding function Create_Execution_Environment
    (Self : not null access UML_Factory)
       return AMF.UML.Execution_Environments.UML_Execution_Environment_Access is
   begin
      return
        AMF.UML.Execution_Environments.UML_Execution_Environment_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Execution_Environment))));
   end Create_Execution_Environment;

   -----------------------------------------------
   -- Create_Execution_Occurrence_Specification --
   -----------------------------------------------

   overriding function Create_Execution_Occurrence_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Execution_Occurrence_Specifications.UML_Execution_Occurrence_Specification_Access is
   begin
      return
        AMF.UML.Execution_Occurrence_Specifications.UML_Execution_Occurrence_Specification_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Execution_Occurrence_Specification))));
   end Create_Execution_Occurrence_Specification;

   ---------------------------
   -- Create_Expansion_Node --
   ---------------------------

   overriding function Create_Expansion_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Expansion_Nodes.UML_Expansion_Node_Access is
   begin
      return
        AMF.UML.Expansion_Nodes.UML_Expansion_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Expansion_Node))));
   end Create_Expansion_Node;

   -----------------------------
   -- Create_Expansion_Region --
   -----------------------------

   overriding function Create_Expansion_Region
    (Self : not null access UML_Factory)
       return AMF.UML.Expansion_Regions.UML_Expansion_Region_Access is
   begin
      return
        AMF.UML.Expansion_Regions.UML_Expansion_Region_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Expansion_Region))));
   end Create_Expansion_Region;

   -----------------------
   -- Create_Expression --
   -----------------------

   overriding function Create_Expression
    (Self : not null access UML_Factory)
       return AMF.UML.Expressions.UML_Expression_Access is
   begin
      return
        AMF.UML.Expressions.UML_Expression_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Expression))));
   end Create_Expression;

   -------------------
   -- Create_Extend --
   -------------------

   overriding function Create_Extend
    (Self : not null access UML_Factory)
       return AMF.UML.Extends.UML_Extend_Access is
   begin
      return
        AMF.UML.Extends.UML_Extend_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Extend))));
   end Create_Extend;

   ----------------------
   -- Create_Extension --
   ----------------------

   overriding function Create_Extension
    (Self : not null access UML_Factory)
       return AMF.UML.Extensions.UML_Extension_Access is
   begin
      return
        AMF.UML.Extensions.UML_Extension_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Extension))));
   end Create_Extension;

   --------------------------
   -- Create_Extension_End --
   --------------------------

   overriding function Create_Extension_End
    (Self : not null access UML_Factory)
       return AMF.UML.Extension_Ends.UML_Extension_End_Access is
   begin
      return
        AMF.UML.Extension_Ends.UML_Extension_End_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Extension_End))));
   end Create_Extension_End;

   ----------------------------
   -- Create_Extension_Point --
   ----------------------------

   overriding function Create_Extension_Point
    (Self : not null access UML_Factory)
       return AMF.UML.Extension_Points.UML_Extension_Point_Access is
   begin
      return
        AMF.UML.Extension_Points.UML_Extension_Point_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Extension_Point))));
   end Create_Extension_Point;

   ------------------------
   -- Create_Final_State --
   ------------------------

   overriding function Create_Final_State
    (Self : not null access UML_Factory)
       return AMF.UML.Final_States.UML_Final_State_Access is
   begin
      return
        AMF.UML.Final_States.UML_Final_State_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Final_State))));
   end Create_Final_State;

   ----------------------------
   -- Create_Flow_Final_Node --
   ----------------------------

   overriding function Create_Flow_Final_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Flow_Final_Nodes.UML_Flow_Final_Node_Access is
   begin
      return
        AMF.UML.Flow_Final_Nodes.UML_Flow_Final_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Flow_Final_Node))));
   end Create_Flow_Final_Node;

   ----------------------
   -- Create_Fork_Node --
   ----------------------

   overriding function Create_Fork_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Fork_Nodes.UML_Fork_Node_Access is
   begin
      return
        AMF.UML.Fork_Nodes.UML_Fork_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Fork_Node))));
   end Create_Fork_Node;

   ------------------------------
   -- Create_Function_Behavior --
   ------------------------------

   overriding function Create_Function_Behavior
    (Self : not null access UML_Factory)
       return AMF.UML.Function_Behaviors.UML_Function_Behavior_Access is
   begin
      return
        AMF.UML.Function_Behaviors.UML_Function_Behavior_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Function_Behavior))));
   end Create_Function_Behavior;

   -----------------
   -- Create_Gate --
   -----------------

   overriding function Create_Gate
    (Self : not null access UML_Factory)
       return AMF.UML.Gates.UML_Gate_Access is
   begin
      return
        AMF.UML.Gates.UML_Gate_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Gate))));
   end Create_Gate;

   -----------------------------
   -- Create_General_Ordering --
   -----------------------------

   overriding function Create_General_Ordering
    (Self : not null access UML_Factory)
       return AMF.UML.General_Orderings.UML_General_Ordering_Access is
   begin
      return
        AMF.UML.General_Orderings.UML_General_Ordering_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_General_Ordering))));
   end Create_General_Ordering;

   ---------------------------
   -- Create_Generalization --
   ---------------------------

   overriding function Create_Generalization
    (Self : not null access UML_Factory)
       return AMF.UML.Generalizations.UML_Generalization_Access is
   begin
      return
        AMF.UML.Generalizations.UML_Generalization_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Generalization))));
   end Create_Generalization;

   -------------------------------
   -- Create_Generalization_Set --
   -------------------------------

   overriding function Create_Generalization_Set
    (Self : not null access UML_Factory)
       return AMF.UML.Generalization_Sets.UML_Generalization_Set_Access is
   begin
      return
        AMF.UML.Generalization_Sets.UML_Generalization_Set_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Generalization_Set))));
   end Create_Generalization_Set;

   ------------------
   -- Create_Image --
   ------------------

   overriding function Create_Image
    (Self : not null access UML_Factory)
       return AMF.UML.Images.UML_Image_Access is
   begin
      return
        AMF.UML.Images.UML_Image_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Image))));
   end Create_Image;

   --------------------
   -- Create_Include --
   --------------------

   overriding function Create_Include
    (Self : not null access UML_Factory)
       return AMF.UML.Includes.UML_Include_Access is
   begin
      return
        AMF.UML.Includes.UML_Include_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Include))));
   end Create_Include;

   -----------------------------
   -- Create_Information_Flow --
   -----------------------------

   overriding function Create_Information_Flow
    (Self : not null access UML_Factory)
       return AMF.UML.Information_Flows.UML_Information_Flow_Access is
   begin
      return
        AMF.UML.Information_Flows.UML_Information_Flow_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Information_Flow))));
   end Create_Information_Flow;

   -----------------------------
   -- Create_Information_Item --
   -----------------------------

   overriding function Create_Information_Item
    (Self : not null access UML_Factory)
       return AMF.UML.Information_Items.UML_Information_Item_Access is
   begin
      return
        AMF.UML.Information_Items.UML_Information_Item_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Information_Item))));
   end Create_Information_Item;

   -------------------------
   -- Create_Initial_Node --
   -------------------------

   overriding function Create_Initial_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Initial_Nodes.UML_Initial_Node_Access is
   begin
      return
        AMF.UML.Initial_Nodes.UML_Initial_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Initial_Node))));
   end Create_Initial_Node;

   ----------------------
   -- Create_Input_Pin --
   ----------------------

   overriding function Create_Input_Pin
    (Self : not null access UML_Factory)
       return AMF.UML.Input_Pins.UML_Input_Pin_Access is
   begin
      return
        AMF.UML.Input_Pins.UML_Input_Pin_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Input_Pin))));
   end Create_Input_Pin;

   -----------------------------------
   -- Create_Instance_Specification --
   -----------------------------------

   overriding function Create_Instance_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Instance_Specifications.UML_Instance_Specification_Access is
   begin
      return
        AMF.UML.Instance_Specifications.UML_Instance_Specification_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Instance_Specification))));
   end Create_Instance_Specification;

   ---------------------------
   -- Create_Instance_Value --
   ---------------------------

   overriding function Create_Instance_Value
    (Self : not null access UML_Factory)
       return AMF.UML.Instance_Values.UML_Instance_Value_Access is
   begin
      return
        AMF.UML.Instance_Values.UML_Instance_Value_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Instance_Value))));
   end Create_Instance_Value;

   ------------------------
   -- Create_Interaction --
   ------------------------

   overriding function Create_Interaction
    (Self : not null access UML_Factory)
       return AMF.UML.Interactions.UML_Interaction_Access is
   begin
      return
        AMF.UML.Interactions.UML_Interaction_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Interaction))));
   end Create_Interaction;

   -----------------------------------
   -- Create_Interaction_Constraint --
   -----------------------------------

   overriding function Create_Interaction_Constraint
    (Self : not null access UML_Factory)
       return AMF.UML.Interaction_Constraints.UML_Interaction_Constraint_Access is
   begin
      return
        AMF.UML.Interaction_Constraints.UML_Interaction_Constraint_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Interaction_Constraint))));
   end Create_Interaction_Constraint;

   --------------------------------
   -- Create_Interaction_Operand --
   --------------------------------

   overriding function Create_Interaction_Operand
    (Self : not null access UML_Factory)
       return AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access is
   begin
      return
        AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Interaction_Operand))));
   end Create_Interaction_Operand;

   ----------------------------
   -- Create_Interaction_Use --
   ----------------------------

   overriding function Create_Interaction_Use
    (Self : not null access UML_Factory)
       return AMF.UML.Interaction_Uses.UML_Interaction_Use_Access is
   begin
      return
        AMF.UML.Interaction_Uses.UML_Interaction_Use_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Interaction_Use))));
   end Create_Interaction_Use;

   ----------------------
   -- Create_Interface --
   ----------------------

   overriding function Create_Interface
    (Self : not null access UML_Factory)
       return AMF.UML.Interfaces.UML_Interface_Access is
   begin
      return
        AMF.UML.Interfaces.UML_Interface_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Interface))));
   end Create_Interface;

   ----------------------------------
   -- Create_Interface_Realization --
   ----------------------------------

   overriding function Create_Interface_Realization
    (Self : not null access UML_Factory)
       return AMF.UML.Interface_Realizations.UML_Interface_Realization_Access is
   begin
      return
        AMF.UML.Interface_Realizations.UML_Interface_Realization_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Interface_Realization))));
   end Create_Interface_Realization;

   ------------------------------------------
   -- Create_Interruptible_Activity_Region --
   ------------------------------------------

   overriding function Create_Interruptible_Activity_Region
    (Self : not null access UML_Factory)
       return AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region_Access is
   begin
      return
        AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Interruptible_Activity_Region))));
   end Create_Interruptible_Activity_Region;

   ---------------------
   -- Create_Interval --
   ---------------------

   overriding function Create_Interval
    (Self : not null access UML_Factory)
       return AMF.UML.Intervals.UML_Interval_Access is
   begin
      return
        AMF.UML.Intervals.UML_Interval_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Interval))));
   end Create_Interval;

   --------------------------------
   -- Create_Interval_Constraint --
   --------------------------------

   overriding function Create_Interval_Constraint
    (Self : not null access UML_Factory)
       return AMF.UML.Interval_Constraints.UML_Interval_Constraint_Access is
   begin
      return
        AMF.UML.Interval_Constraints.UML_Interval_Constraint_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Interval_Constraint))));
   end Create_Interval_Constraint;

   ----------------------
   -- Create_Join_Node --
   ----------------------

   overriding function Create_Join_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Join_Nodes.UML_Join_Node_Access is
   begin
      return
        AMF.UML.Join_Nodes.UML_Join_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Join_Node))));
   end Create_Join_Node;

   ---------------------
   -- Create_Lifeline --
   ---------------------

   overriding function Create_Lifeline
    (Self : not null access UML_Factory)
       return AMF.UML.Lifelines.UML_Lifeline_Access is
   begin
      return
        AMF.UML.Lifelines.UML_Lifeline_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Lifeline))));
   end Create_Lifeline;

   -----------------------------------
   -- Create_Link_End_Creation_Data --
   -----------------------------------

   overriding function Create_Link_End_Creation_Data
    (Self : not null access UML_Factory)
       return AMF.UML.Link_End_Creation_Datas.UML_Link_End_Creation_Data_Access is
   begin
      return
        AMF.UML.Link_End_Creation_Datas.UML_Link_End_Creation_Data_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Link_End_Creation_Data))));
   end Create_Link_End_Creation_Data;

   --------------------------
   -- Create_Link_End_Data --
   --------------------------

   overriding function Create_Link_End_Data
    (Self : not null access UML_Factory)
       return AMF.UML.Link_End_Datas.UML_Link_End_Data_Access is
   begin
      return
        AMF.UML.Link_End_Datas.UML_Link_End_Data_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Link_End_Data))));
   end Create_Link_End_Data;

   --------------------------------------
   -- Create_Link_End_Destruction_Data --
   --------------------------------------

   overriding function Create_Link_End_Destruction_Data
    (Self : not null access UML_Factory)
       return AMF.UML.Link_End_Destruction_Datas.UML_Link_End_Destruction_Data_Access is
   begin
      return
        AMF.UML.Link_End_Destruction_Datas.UML_Link_End_Destruction_Data_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Link_End_Destruction_Data))));
   end Create_Link_End_Destruction_Data;

   ----------------------------
   -- Create_Literal_Boolean --
   ----------------------------

   overriding function Create_Literal_Boolean
    (Self : not null access UML_Factory)
       return AMF.UML.Literal_Booleans.UML_Literal_Boolean_Access is
   begin
      return
        AMF.UML.Literal_Booleans.UML_Literal_Boolean_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_Boolean))));
   end Create_Literal_Boolean;

   ----------------------------
   -- Create_Literal_Integer --
   ----------------------------

   overriding function Create_Literal_Integer
    (Self : not null access UML_Factory)
       return AMF.UML.Literal_Integers.UML_Literal_Integer_Access is
   begin
      return
        AMF.UML.Literal_Integers.UML_Literal_Integer_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_Integer))));
   end Create_Literal_Integer;

   -------------------------
   -- Create_Literal_Null --
   -------------------------

   overriding function Create_Literal_Null
    (Self : not null access UML_Factory)
       return AMF.UML.Literal_Nulls.UML_Literal_Null_Access is
   begin
      return
        AMF.UML.Literal_Nulls.UML_Literal_Null_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_Null))));
   end Create_Literal_Null;

   -------------------------
   -- Create_Literal_Real --
   -------------------------

   overriding function Create_Literal_Real
    (Self : not null access UML_Factory)
       return AMF.UML.Literal_Reals.UML_Literal_Real_Access is
   begin
      return
        AMF.UML.Literal_Reals.UML_Literal_Real_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_Real))));
   end Create_Literal_Real;

   ---------------------------
   -- Create_Literal_String --
   ---------------------------

   overriding function Create_Literal_String
    (Self : not null access UML_Factory)
       return AMF.UML.Literal_Strings.UML_Literal_String_Access is
   begin
      return
        AMF.UML.Literal_Strings.UML_Literal_String_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_String))));
   end Create_Literal_String;

   --------------------------------------
   -- Create_Literal_Unlimited_Natural --
   --------------------------------------

   overriding function Create_Literal_Unlimited_Natural
    (Self : not null access UML_Factory)
       return AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Access is
   begin
      return
        AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_Unlimited_Natural))));
   end Create_Literal_Unlimited_Natural;

   ----------------------
   -- Create_Loop_Node --
   ----------------------

   overriding function Create_Loop_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Loop_Nodes.UML_Loop_Node_Access is
   begin
      return
        AMF.UML.Loop_Nodes.UML_Loop_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Loop_Node))));
   end Create_Loop_Node;

   --------------------------
   -- Create_Manifestation --
   --------------------------

   overriding function Create_Manifestation
    (Self : not null access UML_Factory)
       return AMF.UML.Manifestations.UML_Manifestation_Access is
   begin
      return
        AMF.UML.Manifestations.UML_Manifestation_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Manifestation))));
   end Create_Manifestation;

   -----------------------
   -- Create_Merge_Node --
   -----------------------

   overriding function Create_Merge_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Merge_Nodes.UML_Merge_Node_Access is
   begin
      return
        AMF.UML.Merge_Nodes.UML_Merge_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Merge_Node))));
   end Create_Merge_Node;

   --------------------
   -- Create_Message --
   --------------------

   overriding function Create_Message
    (Self : not null access UML_Factory)
       return AMF.UML.Messages.UML_Message_Access is
   begin
      return
        AMF.UML.Messages.UML_Message_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Message))));
   end Create_Message;

   ---------------------------------------------
   -- Create_Message_Occurrence_Specification --
   ---------------------------------------------

   overriding function Create_Message_Occurrence_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Message_Occurrence_Specifications.UML_Message_Occurrence_Specification_Access is
   begin
      return
        AMF.UML.Message_Occurrence_Specifications.UML_Message_Occurrence_Specification_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Message_Occurrence_Specification))));
   end Create_Message_Occurrence_Specification;

   ------------------
   -- Create_Model --
   ------------------

   overriding function Create_Model
    (Self : not null access UML_Factory)
       return AMF.UML.Models.UML_Model_Access is
   begin
      return
        AMF.UML.Models.UML_Model_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Model))));
   end Create_Model;

   -----------------
   -- Create_Node --
   -----------------

   overriding function Create_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Nodes.UML_Node_Access is
   begin
      return
        AMF.UML.Nodes.UML_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Node))));
   end Create_Node;

   ------------------------
   -- Create_Object_Flow --
   ------------------------

   overriding function Create_Object_Flow
    (Self : not null access UML_Factory)
       return AMF.UML.Object_Flows.UML_Object_Flow_Access is
   begin
      return
        AMF.UML.Object_Flows.UML_Object_Flow_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Object_Flow))));
   end Create_Object_Flow;

   -------------------------------------
   -- Create_Occurrence_Specification --
   -------------------------------------

   overriding function Create_Occurrence_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification_Access is
   begin
      return
        AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Occurrence_Specification))));
   end Create_Occurrence_Specification;

   --------------------------
   -- Create_Opaque_Action --
   --------------------------

   overriding function Create_Opaque_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Opaque_Actions.UML_Opaque_Action_Access is
   begin
      return
        AMF.UML.Opaque_Actions.UML_Opaque_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Opaque_Action))));
   end Create_Opaque_Action;

   ----------------------------
   -- Create_Opaque_Behavior --
   ----------------------------

   overriding function Create_Opaque_Behavior
    (Self : not null access UML_Factory)
       return AMF.UML.Opaque_Behaviors.UML_Opaque_Behavior_Access is
   begin
      return
        AMF.UML.Opaque_Behaviors.UML_Opaque_Behavior_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Opaque_Behavior))));
   end Create_Opaque_Behavior;

   ------------------------------
   -- Create_Opaque_Expression --
   ------------------------------

   overriding function Create_Opaque_Expression
    (Self : not null access UML_Factory)
       return AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access is
   begin
      return
        AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Opaque_Expression))));
   end Create_Opaque_Expression;

   ----------------------
   -- Create_Operation --
   ----------------------

   overriding function Create_Operation
    (Self : not null access UML_Factory)
       return AMF.UML.Operations.UML_Operation_Access is
   begin
      return
        AMF.UML.Operations.UML_Operation_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Operation))));
   end Create_Operation;

   -----------------------------------------
   -- Create_Operation_Template_Parameter --
   -----------------------------------------

   overriding function Create_Operation_Template_Parameter
    (Self : not null access UML_Factory)
       return AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access is
   begin
      return
        AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Operation_Template_Parameter))));
   end Create_Operation_Template_Parameter;

   -----------------------
   -- Create_Output_Pin --
   -----------------------

   overriding function Create_Output_Pin
    (Self : not null access UML_Factory)
       return AMF.UML.Output_Pins.UML_Output_Pin_Access is
   begin
      return
        AMF.UML.Output_Pins.UML_Output_Pin_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Output_Pin))));
   end Create_Output_Pin;

   --------------------
   -- Create_Package --
   --------------------

   overriding function Create_Package
    (Self : not null access UML_Factory)
       return AMF.UML.Packages.UML_Package_Access is
   begin
      return
        AMF.UML.Packages.UML_Package_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Package))));
   end Create_Package;

   ---------------------------
   -- Create_Package_Import --
   ---------------------------

   overriding function Create_Package_Import
    (Self : not null access UML_Factory)
       return AMF.UML.Package_Imports.UML_Package_Import_Access is
   begin
      return
        AMF.UML.Package_Imports.UML_Package_Import_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Package_Import))));
   end Create_Package_Import;

   --------------------------
   -- Create_Package_Merge --
   --------------------------

   overriding function Create_Package_Merge
    (Self : not null access UML_Factory)
       return AMF.UML.Package_Merges.UML_Package_Merge_Access is
   begin
      return
        AMF.UML.Package_Merges.UML_Package_Merge_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Package_Merge))));
   end Create_Package_Merge;

   ----------------------
   -- Create_Parameter --
   ----------------------

   overriding function Create_Parameter
    (Self : not null access UML_Factory)
       return AMF.UML.Parameters.UML_Parameter_Access is
   begin
      return
        AMF.UML.Parameters.UML_Parameter_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Parameter))));
   end Create_Parameter;

   --------------------------
   -- Create_Parameter_Set --
   --------------------------

   overriding function Create_Parameter_Set
    (Self : not null access UML_Factory)
       return AMF.UML.Parameter_Sets.UML_Parameter_Set_Access is
   begin
      return
        AMF.UML.Parameter_Sets.UML_Parameter_Set_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Parameter_Set))));
   end Create_Parameter_Set;

   -------------------------------
   -- Create_Part_Decomposition --
   -------------------------------

   overriding function Create_Part_Decomposition
    (Self : not null access UML_Factory)
       return AMF.UML.Part_Decompositions.UML_Part_Decomposition_Access is
   begin
      return
        AMF.UML.Part_Decompositions.UML_Part_Decomposition_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Part_Decomposition))));
   end Create_Part_Decomposition;

   -----------------
   -- Create_Port --
   -----------------

   overriding function Create_Port
    (Self : not null access UML_Factory)
       return AMF.UML.Ports.UML_Port_Access is
   begin
      return
        AMF.UML.Ports.UML_Port_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Port))));
   end Create_Port;

   ---------------------------
   -- Create_Primitive_Type --
   ---------------------------

   overriding function Create_Primitive_Type
    (Self : not null access UML_Factory)
       return AMF.UML.Primitive_Types.UML_Primitive_Type_Access is
   begin
      return
        AMF.UML.Primitive_Types.UML_Primitive_Type_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Primitive_Type))));
   end Create_Primitive_Type;

   --------------------
   -- Create_Profile --
   --------------------

   overriding function Create_Profile
    (Self : not null access UML_Factory)
       return AMF.UML.Profiles.UML_Profile_Access is
   begin
      return
        AMF.UML.Profiles.UML_Profile_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Profile))));
   end Create_Profile;

   --------------------------------
   -- Create_Profile_Application --
   --------------------------------

   overriding function Create_Profile_Application
    (Self : not null access UML_Factory)
       return AMF.UML.Profile_Applications.UML_Profile_Application_Access is
   begin
      return
        AMF.UML.Profile_Applications.UML_Profile_Application_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Profile_Application))));
   end Create_Profile_Application;

   ---------------------
   -- Create_Property --
   ---------------------

   overriding function Create_Property
    (Self : not null access UML_Factory)
       return AMF.UML.Properties.UML_Property_Access is
   begin
      return
        AMF.UML.Properties.UML_Property_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Property))));
   end Create_Property;

   ---------------------------------
   -- Create_Protocol_Conformance --
   ---------------------------------

   overriding function Create_Protocol_Conformance
    (Self : not null access UML_Factory)
       return AMF.UML.Protocol_Conformances.UML_Protocol_Conformance_Access is
   begin
      return
        AMF.UML.Protocol_Conformances.UML_Protocol_Conformance_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Protocol_Conformance))));
   end Create_Protocol_Conformance;

   -----------------------------------
   -- Create_Protocol_State_Machine --
   -----------------------------------

   overriding function Create_Protocol_State_Machine
    (Self : not null access UML_Factory)
       return AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access is
   begin
      return
        AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Protocol_State_Machine))));
   end Create_Protocol_State_Machine;

   --------------------------------
   -- Create_Protocol_Transition --
   --------------------------------

   overriding function Create_Protocol_Transition
    (Self : not null access UML_Factory)
       return AMF.UML.Protocol_Transitions.UML_Protocol_Transition_Access is
   begin
      return
        AMF.UML.Protocol_Transitions.UML_Protocol_Transition_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Protocol_Transition))));
   end Create_Protocol_Transition;

   ------------------------
   -- Create_Pseudostate --
   ------------------------

   overriding function Create_Pseudostate
    (Self : not null access UML_Factory)
       return AMF.UML.Pseudostates.UML_Pseudostate_Access is
   begin
      return
        AMF.UML.Pseudostates.UML_Pseudostate_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Pseudostate))));
   end Create_Pseudostate;

   ----------------------------
   -- Create_Qualifier_Value --
   ----------------------------

   overriding function Create_Qualifier_Value
    (Self : not null access UML_Factory)
       return AMF.UML.Qualifier_Values.UML_Qualifier_Value_Access is
   begin
      return
        AMF.UML.Qualifier_Values.UML_Qualifier_Value_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Qualifier_Value))));
   end Create_Qualifier_Value;

   -----------------------------------
   -- Create_Raise_Exception_Action --
   -----------------------------------

   overriding function Create_Raise_Exception_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Raise_Exception_Actions.UML_Raise_Exception_Action_Access is
   begin
      return
        AMF.UML.Raise_Exception_Actions.UML_Raise_Exception_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Raise_Exception_Action))));
   end Create_Raise_Exception_Action;

   -------------------------------
   -- Create_Read_Extent_Action --
   -------------------------------

   overriding function Create_Read_Extent_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Extent_Actions.UML_Read_Extent_Action_Access is
   begin
      return
        AMF.UML.Read_Extent_Actions.UML_Read_Extent_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Extent_Action))));
   end Create_Read_Extent_Action;

   ---------------------------------------------
   -- Create_Read_Is_Classified_Object_Action --
   ---------------------------------------------

   overriding function Create_Read_Is_Classified_Object_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Is_Classified_Object_Actions.UML_Read_Is_Classified_Object_Action_Access is
   begin
      return
        AMF.UML.Read_Is_Classified_Object_Actions.UML_Read_Is_Classified_Object_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Is_Classified_Object_Action))));
   end Create_Read_Is_Classified_Object_Action;

   -----------------------------
   -- Create_Read_Link_Action --
   -----------------------------

   overriding function Create_Read_Link_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Link_Actions.UML_Read_Link_Action_Access is
   begin
      return
        AMF.UML.Read_Link_Actions.UML_Read_Link_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Link_Action))));
   end Create_Read_Link_Action;

   ----------------------------------------
   -- Create_Read_Link_Object_End_Action --
   ----------------------------------------

   overriding function Create_Read_Link_Object_End_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Link_Object_End_Actions.UML_Read_Link_Object_End_Action_Access is
   begin
      return
        AMF.UML.Read_Link_Object_End_Actions.UML_Read_Link_Object_End_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Link_Object_End_Action))));
   end Create_Read_Link_Object_End_Action;

   --------------------------------------------------
   -- Create_Read_Link_Object_End_Qualifier_Action --
   --------------------------------------------------

   overriding function Create_Read_Link_Object_End_Qualifier_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Link_Object_End_Qualifier_Actions.UML_Read_Link_Object_End_Qualifier_Action_Access is
   begin
      return
        AMF.UML.Read_Link_Object_End_Qualifier_Actions.UML_Read_Link_Object_End_Qualifier_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Link_Object_End_Qualifier_Action))));
   end Create_Read_Link_Object_End_Qualifier_Action;

   -----------------------------
   -- Create_Read_Self_Action --
   -----------------------------

   overriding function Create_Read_Self_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Self_Actions.UML_Read_Self_Action_Access is
   begin
      return
        AMF.UML.Read_Self_Actions.UML_Read_Self_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Self_Action))));
   end Create_Read_Self_Action;

   -------------------------------------------
   -- Create_Read_Structural_Feature_Action --
   -------------------------------------------

   overriding function Create_Read_Structural_Feature_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action_Access is
   begin
      return
        AMF.UML.Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Structural_Feature_Action))));
   end Create_Read_Structural_Feature_Action;

   ---------------------------------
   -- Create_Read_Variable_Action --
   ---------------------------------

   overriding function Create_Read_Variable_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Variable_Actions.UML_Read_Variable_Action_Access is
   begin
      return
        AMF.UML.Read_Variable_Actions.UML_Read_Variable_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Variable_Action))));
   end Create_Read_Variable_Action;

   ------------------------
   -- Create_Realization --
   ------------------------

   overriding function Create_Realization
    (Self : not null access UML_Factory)
       return AMF.UML.Realizations.UML_Realization_Access is
   begin
      return
        AMF.UML.Realizations.UML_Realization_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Realization))));
   end Create_Realization;

   ----------------------
   -- Create_Reception --
   ----------------------

   overriding function Create_Reception
    (Self : not null access UML_Factory)
       return AMF.UML.Receptions.UML_Reception_Access is
   begin
      return
        AMF.UML.Receptions.UML_Reception_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Reception))));
   end Create_Reception;

   -------------------------------------
   -- Create_Reclassify_Object_Action --
   -------------------------------------

   overriding function Create_Reclassify_Object_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Reclassify_Object_Actions.UML_Reclassify_Object_Action_Access is
   begin
      return
        AMF.UML.Reclassify_Object_Actions.UML_Reclassify_Object_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Reclassify_Object_Action))));
   end Create_Reclassify_Object_Action;

   -------------------------------------------
   -- Create_Redefinable_Template_Signature --
   -------------------------------------------

   overriding function Create_Redefinable_Template_Signature
    (Self : not null access UML_Factory)
       return AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access is
   begin
      return
        AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Redefinable_Template_Signature))));
   end Create_Redefinable_Template_Signature;

   --------------------------
   -- Create_Reduce_Action --
   --------------------------

   overriding function Create_Reduce_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Reduce_Actions.UML_Reduce_Action_Access is
   begin
      return
        AMF.UML.Reduce_Actions.UML_Reduce_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Reduce_Action))));
   end Create_Reduce_Action;

   -------------------
   -- Create_Region --
   -------------------

   overriding function Create_Region
    (Self : not null access UML_Factory)
       return AMF.UML.Regions.UML_Region_Access is
   begin
      return
        AMF.UML.Regions.UML_Region_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Region))));
   end Create_Region;

   ---------------------------------------------------
   -- Create_Remove_Structural_Feature_Value_Action --
   ---------------------------------------------------

   overriding function Create_Remove_Structural_Feature_Value_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Remove_Structural_Feature_Value_Actions.UML_Remove_Structural_Feature_Value_Action_Access is
   begin
      return
        AMF.UML.Remove_Structural_Feature_Value_Actions.UML_Remove_Structural_Feature_Value_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Remove_Structural_Feature_Value_Action))));
   end Create_Remove_Structural_Feature_Value_Action;

   -----------------------------------------
   -- Create_Remove_Variable_Value_Action --
   -----------------------------------------

   overriding function Create_Remove_Variable_Value_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Remove_Variable_Value_Actions.UML_Remove_Variable_Value_Action_Access is
   begin
      return
        AMF.UML.Remove_Variable_Value_Actions.UML_Remove_Variable_Value_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Remove_Variable_Value_Action))));
   end Create_Remove_Variable_Value_Action;

   -------------------------
   -- Create_Reply_Action --
   -------------------------

   overriding function Create_Reply_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Reply_Actions.UML_Reply_Action_Access is
   begin
      return
        AMF.UML.Reply_Actions.UML_Reply_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Reply_Action))));
   end Create_Reply_Action;

   -------------------------------
   -- Create_Send_Object_Action --
   -------------------------------

   overriding function Create_Send_Object_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Send_Object_Actions.UML_Send_Object_Action_Access is
   begin
      return
        AMF.UML.Send_Object_Actions.UML_Send_Object_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Send_Object_Action))));
   end Create_Send_Object_Action;

   -------------------------------
   -- Create_Send_Signal_Action --
   -------------------------------

   overriding function Create_Send_Signal_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action_Access is
   begin
      return
        AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Send_Signal_Action))));
   end Create_Send_Signal_Action;

   --------------------------
   -- Create_Sequence_Node --
   --------------------------

   overriding function Create_Sequence_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Sequence_Nodes.UML_Sequence_Node_Access is
   begin
      return
        AMF.UML.Sequence_Nodes.UML_Sequence_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Sequence_Node))));
   end Create_Sequence_Node;

   -------------------
   -- Create_Signal --
   -------------------

   overriding function Create_Signal
    (Self : not null access UML_Factory)
       return AMF.UML.Signals.UML_Signal_Access is
   begin
      return
        AMF.UML.Signals.UML_Signal_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Signal))));
   end Create_Signal;

   -------------------------
   -- Create_Signal_Event --
   -------------------------

   overriding function Create_Signal_Event
    (Self : not null access UML_Factory)
       return AMF.UML.Signal_Events.UML_Signal_Event_Access is
   begin
      return
        AMF.UML.Signal_Events.UML_Signal_Event_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Signal_Event))));
   end Create_Signal_Event;

   -----------------
   -- Create_Slot --
   -----------------

   overriding function Create_Slot
    (Self : not null access UML_Factory)
       return AMF.UML.Slots.UML_Slot_Access is
   begin
      return
        AMF.UML.Slots.UML_Slot_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Slot))));
   end Create_Slot;

   ---------------------------------------------
   -- Create_Start_Classifier_Behavior_Action --
   ---------------------------------------------

   overriding function Create_Start_Classifier_Behavior_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Start_Classifier_Behavior_Actions.UML_Start_Classifier_Behavior_Action_Access is
   begin
      return
        AMF.UML.Start_Classifier_Behavior_Actions.UML_Start_Classifier_Behavior_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Start_Classifier_Behavior_Action))));
   end Create_Start_Classifier_Behavior_Action;

   -----------------------------------------
   -- Create_Start_Object_Behavior_Action --
   -----------------------------------------

   overriding function Create_Start_Object_Behavior_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Start_Object_Behavior_Actions.UML_Start_Object_Behavior_Action_Access is
   begin
      return
        AMF.UML.Start_Object_Behavior_Actions.UML_Start_Object_Behavior_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Start_Object_Behavior_Action))));
   end Create_Start_Object_Behavior_Action;

   ------------------
   -- Create_State --
   ------------------

   overriding function Create_State
    (Self : not null access UML_Factory)
       return AMF.UML.States.UML_State_Access is
   begin
      return
        AMF.UML.States.UML_State_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_State))));
   end Create_State;

   ----------------------------
   -- Create_State_Invariant --
   ----------------------------

   overriding function Create_State_Invariant
    (Self : not null access UML_Factory)
       return AMF.UML.State_Invariants.UML_State_Invariant_Access is
   begin
      return
        AMF.UML.State_Invariants.UML_State_Invariant_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_State_Invariant))));
   end Create_State_Invariant;

   --------------------------
   -- Create_State_Machine --
   --------------------------

   overriding function Create_State_Machine
    (Self : not null access UML_Factory)
       return AMF.UML.State_Machines.UML_State_Machine_Access is
   begin
      return
        AMF.UML.State_Machines.UML_State_Machine_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_State_Machine))));
   end Create_State_Machine;

   -----------------------
   -- Create_Stereotype --
   -----------------------

   overriding function Create_Stereotype
    (Self : not null access UML_Factory)
       return AMF.UML.Stereotypes.UML_Stereotype_Access is
   begin
      return
        AMF.UML.Stereotypes.UML_Stereotype_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Stereotype))));
   end Create_Stereotype;

   ------------------------------
   -- Create_String_Expression --
   ------------------------------

   overriding function Create_String_Expression
    (Self : not null access UML_Factory)
       return AMF.UML.String_Expressions.UML_String_Expression_Access is
   begin
      return
        AMF.UML.String_Expressions.UML_String_Expression_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_String_Expression))));
   end Create_String_Expression;

   -------------------------------------
   -- Create_Structured_Activity_Node --
   -------------------------------------

   overriding function Create_Structured_Activity_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access is
   begin
      return
        AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Structured_Activity_Node))));
   end Create_Structured_Activity_Node;

   -------------------------
   -- Create_Substitution --
   -------------------------

   overriding function Create_Substitution
    (Self : not null access UML_Factory)
       return AMF.UML.Substitutions.UML_Substitution_Access is
   begin
      return
        AMF.UML.Substitutions.UML_Substitution_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Substitution))));
   end Create_Substitution;

   -----------------------------
   -- Create_Template_Binding --
   -----------------------------

   overriding function Create_Template_Binding
    (Self : not null access UML_Factory)
       return AMF.UML.Template_Bindings.UML_Template_Binding_Access is
   begin
      return
        AMF.UML.Template_Bindings.UML_Template_Binding_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Template_Binding))));
   end Create_Template_Binding;

   -------------------------------
   -- Create_Template_Parameter --
   -------------------------------

   overriding function Create_Template_Parameter
    (Self : not null access UML_Factory)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access is
   begin
      return
        AMF.UML.Template_Parameters.UML_Template_Parameter_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Template_Parameter))));
   end Create_Template_Parameter;

   --------------------------------------------
   -- Create_Template_Parameter_Substitution --
   --------------------------------------------

   overriding function Create_Template_Parameter_Substitution
    (Self : not null access UML_Factory)
       return AMF.UML.Template_Parameter_Substitutions.UML_Template_Parameter_Substitution_Access is
   begin
      return
        AMF.UML.Template_Parameter_Substitutions.UML_Template_Parameter_Substitution_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Template_Parameter_Substitution))));
   end Create_Template_Parameter_Substitution;

   -------------------------------
   -- Create_Template_Signature --
   -------------------------------

   overriding function Create_Template_Signature
    (Self : not null access UML_Factory)
       return AMF.UML.Template_Signatures.UML_Template_Signature_Access is
   begin
      return
        AMF.UML.Template_Signatures.UML_Template_Signature_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Template_Signature))));
   end Create_Template_Signature;

   ---------------------------------
   -- Create_Test_Identity_Action --
   ---------------------------------

   overriding function Create_Test_Identity_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Test_Identity_Actions.UML_Test_Identity_Action_Access is
   begin
      return
        AMF.UML.Test_Identity_Actions.UML_Test_Identity_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Test_Identity_Action))));
   end Create_Test_Identity_Action;

   ----------------------------
   -- Create_Time_Constraint --
   ----------------------------

   overriding function Create_Time_Constraint
    (Self : not null access UML_Factory)
       return AMF.UML.Time_Constraints.UML_Time_Constraint_Access is
   begin
      return
        AMF.UML.Time_Constraints.UML_Time_Constraint_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Time_Constraint))));
   end Create_Time_Constraint;

   -----------------------
   -- Create_Time_Event --
   -----------------------

   overriding function Create_Time_Event
    (Self : not null access UML_Factory)
       return AMF.UML.Time_Events.UML_Time_Event_Access is
   begin
      return
        AMF.UML.Time_Events.UML_Time_Event_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Time_Event))));
   end Create_Time_Event;

   ----------------------------
   -- Create_Time_Expression --
   ----------------------------

   overriding function Create_Time_Expression
    (Self : not null access UML_Factory)
       return AMF.UML.Time_Expressions.UML_Time_Expression_Access is
   begin
      return
        AMF.UML.Time_Expressions.UML_Time_Expression_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Time_Expression))));
   end Create_Time_Expression;

   --------------------------
   -- Create_Time_Interval --
   --------------------------

   overriding function Create_Time_Interval
    (Self : not null access UML_Factory)
       return AMF.UML.Time_Intervals.UML_Time_Interval_Access is
   begin
      return
        AMF.UML.Time_Intervals.UML_Time_Interval_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Time_Interval))));
   end Create_Time_Interval;

   -----------------------------
   -- Create_Time_Observation --
   -----------------------------

   overriding function Create_Time_Observation
    (Self : not null access UML_Factory)
       return AMF.UML.Time_Observations.UML_Time_Observation_Access is
   begin
      return
        AMF.UML.Time_Observations.UML_Time_Observation_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Time_Observation))));
   end Create_Time_Observation;

   -----------------------
   -- Create_Transition --
   -----------------------

   overriding function Create_Transition
    (Self : not null access UML_Factory)
       return AMF.UML.Transitions.UML_Transition_Access is
   begin
      return
        AMF.UML.Transitions.UML_Transition_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Transition))));
   end Create_Transition;

   --------------------
   -- Create_Trigger --
   --------------------

   overriding function Create_Trigger
    (Self : not null access UML_Factory)
       return AMF.UML.Triggers.UML_Trigger_Access is
   begin
      return
        AMF.UML.Triggers.UML_Trigger_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Trigger))));
   end Create_Trigger;

   ------------------------------
   -- Create_Unmarshall_Action --
   ------------------------------

   overriding function Create_Unmarshall_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Unmarshall_Actions.UML_Unmarshall_Action_Access is
   begin
      return
        AMF.UML.Unmarshall_Actions.UML_Unmarshall_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Unmarshall_Action))));
   end Create_Unmarshall_Action;

   ------------------
   -- Create_Usage --
   ------------------

   overriding function Create_Usage
    (Self : not null access UML_Factory)
       return AMF.UML.Usages.UML_Usage_Access is
   begin
      return
        AMF.UML.Usages.UML_Usage_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Usage))));
   end Create_Usage;

   ---------------------
   -- Create_Use_Case --
   ---------------------

   overriding function Create_Use_Case
    (Self : not null access UML_Factory)
       return AMF.UML.Use_Cases.UML_Use_Case_Access is
   begin
      return
        AMF.UML.Use_Cases.UML_Use_Case_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Use_Case))));
   end Create_Use_Case;

   ----------------------
   -- Create_Value_Pin --
   ----------------------

   overriding function Create_Value_Pin
    (Self : not null access UML_Factory)
       return AMF.UML.Value_Pins.UML_Value_Pin_Access is
   begin
      return
        AMF.UML.Value_Pins.UML_Value_Pin_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Value_Pin))));
   end Create_Value_Pin;

   ---------------------------------------
   -- Create_Value_Specification_Action --
   ---------------------------------------

   overriding function Create_Value_Specification_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Value_Specification_Actions.UML_Value_Specification_Action_Access is
   begin
      return
        AMF.UML.Value_Specification_Actions.UML_Value_Specification_Action_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Value_Specification_Action))));
   end Create_Value_Specification_Action;

   ---------------------
   -- Create_Variable --
   ---------------------

   overriding function Create_Variable
    (Self : not null access UML_Factory)
       return AMF.UML.Variables.UML_Variable_Access is
   begin
      return
        AMF.UML.Variables.UML_Variable_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UML_Metamodel.MC_UML_Variable))));
   end Create_Variable;

end AMF.Internals.Factories.UML_Factories;
