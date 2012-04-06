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

package body AMF.UML.Holders is

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.UML.Optional_UML_Aggregation_Kind is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.UML.Holders.Aggregation_Kinds.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.UML.Holders.Aggregation_Kinds.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.UML.Optional_UML_Call_Concurrency_Kind is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.UML.Holders.Call_Concurrency_Kinds.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.UML.Holders.Call_Concurrency_Kinds.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.UML.Optional_UML_Connector_Kind is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.UML.Holders.Connector_Kinds.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.UML.Holders.Connector_Kinds.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.UML.Optional_UML_Expansion_Kind is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.UML.Holders.Expansion_Kinds.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.UML.Holders.Expansion_Kinds.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.UML.Optional_UML_Interaction_Operator_Kind is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.UML.Holders.Interaction_Operator_Kinds.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.UML.Holders.Interaction_Operator_Kinds.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.UML.Optional_UML_Message_Kind is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.UML.Holders.Message_Kinds.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.UML.Holders.Message_Kinds.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.UML.Optional_UML_Message_Sort is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.UML.Holders.Message_Sorts.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.UML.Holders.Message_Sorts.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.UML.Optional_UML_Object_Node_Ordering_Kind is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.UML.Holders.Object_Node_Ordering_Kinds.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.UML.Holders.Object_Node_Ordering_Kinds.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.UML.Optional_UML_Parameter_Direction_Kind is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.UML.Holders.Parameter_Direction_Kinds.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.UML.Holders.Parameter_Direction_Kinds.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.UML.Optional_UML_Parameter_Effect_Kind is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.UML.Holders.Parameter_Effect_Kinds.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.UML.Holders.Parameter_Effect_Kinds.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.UML.Optional_UML_Pseudostate_Kind is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.UML.Holders.Pseudostate_Kinds.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.UML.Holders.Pseudostate_Kinds.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.UML.Optional_UML_Transition_Kind is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.UML.Holders.Transition_Kinds.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.UML.Holders.Transition_Kinds.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.UML.Optional_UML_Visibility_Kind is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.UML.Holders.Visibility_Kinds.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.UML.Holders.Visibility_Kinds.Element (Holder));
      end if;
   end Element;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.UML.Optional_UML_Aggregation_Kind)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.UML.Holders.Aggregation_Kinds.Value_Tag);

         if not Element.Is_Empty then
            AMF.UML.Holders.Aggregation_Kinds.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.UML.Optional_UML_Call_Concurrency_Kind)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.UML.Holders.Call_Concurrency_Kinds.Value_Tag);

         if not Element.Is_Empty then
            AMF.UML.Holders.Call_Concurrency_Kinds.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.UML.Optional_UML_Connector_Kind)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.UML.Holders.Connector_Kinds.Value_Tag);

         if not Element.Is_Empty then
            AMF.UML.Holders.Connector_Kinds.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.UML.Optional_UML_Expansion_Kind)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.UML.Holders.Expansion_Kinds.Value_Tag);

         if not Element.Is_Empty then
            AMF.UML.Holders.Expansion_Kinds.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.UML.Optional_UML_Interaction_Operator_Kind)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.UML.Holders.Interaction_Operator_Kinds.Value_Tag);

         if not Element.Is_Empty then
            AMF.UML.Holders.Interaction_Operator_Kinds.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.UML.Optional_UML_Message_Kind)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.UML.Holders.Message_Kinds.Value_Tag);

         if not Element.Is_Empty then
            AMF.UML.Holders.Message_Kinds.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.UML.Optional_UML_Message_Sort)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.UML.Holders.Message_Sorts.Value_Tag);

         if not Element.Is_Empty then
            AMF.UML.Holders.Message_Sorts.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.UML.Optional_UML_Object_Node_Ordering_Kind)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.UML.Holders.Object_Node_Ordering_Kinds.Value_Tag);

         if not Element.Is_Empty then
            AMF.UML.Holders.Object_Node_Ordering_Kinds.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.UML.Optional_UML_Parameter_Direction_Kind)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.UML.Holders.Parameter_Direction_Kinds.Value_Tag);

         if not Element.Is_Empty then
            AMF.UML.Holders.Parameter_Direction_Kinds.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.UML.Optional_UML_Parameter_Effect_Kind)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.UML.Holders.Parameter_Effect_Kinds.Value_Tag);

         if not Element.Is_Empty then
            AMF.UML.Holders.Parameter_Effect_Kinds.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.UML.Optional_UML_Pseudostate_Kind)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.UML.Holders.Pseudostate_Kinds.Value_Tag);

         if not Element.Is_Empty then
            AMF.UML.Holders.Pseudostate_Kinds.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.UML.Optional_UML_Transition_Kind)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.UML.Holders.Transition_Kinds.Value_Tag);

         if not Element.Is_Empty then
            AMF.UML.Holders.Transition_Kinds.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.UML.Optional_UML_Visibility_Kind)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.UML.Holders.Visibility_Kinds.Value_Tag);

         if not Element.Is_Empty then
            AMF.UML.Holders.Visibility_Kinds.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

end AMF.UML.Holders;
