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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
--  A region is an orthogonal part of either a composite state or a state 
--  machine. It contains states and transitions.
------------------------------------------------------------------------------
limited with AMF.UML.Classifiers;
with AMF.UML.Namespaces;
with AMF.UML.Redefinable_Elements;
limited with AMF.UML.State_Machines;
limited with AMF.UML.States;
limited with AMF.UML.Transitions.Collections;
limited with AMF.UML.Vertexs.Collections;

package AMF.UML.Regions is

   pragma Preelaborate;

   type UML_Region is limited interface
     and AMF.UML.Namespaces.UML_Namespace
     and AMF.UML.Redefinable_Elements.UML_Redefinable_Element;

   type UML_Region_Access is
     access all UML_Region'Class;
   for UML_Region_Access'Storage_Size use 0;

   not overriding function Get_Extended_Region
    (Self : not null access constant UML_Region)
       return AMF.UML.Regions.UML_Region_Access is abstract;
   --  The region of which this region is an extension.

   not overriding procedure Set_Extended_Region
    (Self : not null access UML_Region;
     To   : AMF.UML.Regions.UML_Region_Access) is abstract;

   not overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Region)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  References the classifier in which context this element may be 
   --  redefined.

   not overriding function Get_State
    (Self : not null access constant UML_Region)
       return AMF.UML.States.UML_State_Access is abstract;
   --  The State that owns the Region. If a Region is owned by a State, then 
   --  it cannot also be owned by a StateMachine.

   not overriding procedure Set_State
    (Self : not null access UML_Region;
     To   : AMF.UML.States.UML_State_Access) is abstract;

   not overriding function Get_State_Machine
    (Self : not null access constant UML_Region)
       return AMF.UML.State_Machines.UML_State_Machine_Access is abstract;
   --  The StateMachine that owns the Region. If a Region is owned by a 
   --  StateMachine, then it cannot also be owned by a State.

   not overriding procedure Set_State_Machine
    (Self : not null access UML_Region;
     To   : AMF.UML.State_Machines.UML_State_Machine_Access) is abstract;

   not overriding function Get_Subvertex
    (Self : not null access constant UML_Region)
       return AMF.UML.Vertexs.Collections.Set_Of_UML_Vertex is abstract;
   --  The set of vertices that are owned by this region.

   not overriding function Get_Transition
    (Self : not null access constant UML_Region)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition is abstract;
   --  The set of transitions owned by the region.

   not overriding function Belongs_To_P_S_M
    (Self : not null access constant UML_Region)
       return Boolean is abstract;
   --  The operation belongsToPSM () checks if the region belongs to a 
   --  protocol state machine

   not overriding function Containing_State_Machine
    (Self : not null access constant UML_Region)
       return AMF.UML.State_Machines.UML_State_Machine_Access is abstract;
   --  The operation containingStateMachine() returns the sate machine in 
   --  which this Region is defined

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Region;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is abstract;
   --  The query isConsistentWith() specifies that a redefining region is 
   --  consistent with a redefined region provided that the redefining region 
   --  is an extension of the redefined region, i.e. it adds vertices and 
   --  transitions and it redefines states and transitions of the redefined 
   --  region.

   not overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Region;
     Redefined : AMF.UML.Regions.UML_Region_Access)
       return Boolean is abstract;
   --  The query isRedefinitionContextValid() specifies whether the 
   --  redefinition contexts of a region are properly related to the 
   --  redefinition contexts of the specified region to allow this element to 
   --  redefine the other. The containing statemachine/state of a redefining 
   --  region must redefine the containing statemachine/state of the redefined 
   --  region.

   not overriding function Redefinition_Context
    (Self : not null access constant UML_Region)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  The redefinition context of a region is the nearest containing 
   --  statemachine

end AMF.UML.Regions;
