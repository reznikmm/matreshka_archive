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
--  A transition is a directed relationship between a source vertex and a 
--  target vertex. It may be part of a compound transition, which takes the 
--  state machine from one state configuration to another, representing the 
--  complete response of the state machine to an occurrence of an event of a 
--  particular type.
------------------------------------------------------------------------------
limited with AMF.UML.Behaviors;
limited with AMF.UML.Classifiers;
limited with AMF.UML.Constraints;
with AMF.UML.Namespaces;
with AMF.UML.Redefinable_Elements;
limited with AMF.UML.Regions;
limited with AMF.UML.Triggers.Collections;
limited with AMF.UML.Vertexs;

package AMF.UML.Transitions is

   pragma Preelaborate;

   type UML_Transition_Interface is limited interface
     and AMF.UML.Namespaces.UML_Namespace_Interface
     and AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Interface;

   type UML_Transition is
     access all UML_Transition_Interface'Class;
   for UML_Transition'Storage_Size use 0;

   not overriding function Get_Container
    (Self : not null access constant UML_Transition_Interface)
       return AMF.UML.Regions.UML_Region is abstract;
   --  Designates the region that owns this transition.

   not overriding procedure Set_Container
    (Self : not null access UML_Transition_Interface;
     To   : AMF.UML.Regions.UML_Region) is abstract;

   not overriding function Get_Effect
    (Self : not null access constant UML_Transition_Interface)
       return AMF.UML.Behaviors.UML_Behavior is abstract;
   --  Specifies an optional behavior to be performed when the transition 
   --  fires.

   not overriding procedure Set_Effect
    (Self : not null access UML_Transition_Interface;
     To   : AMF.UML.Behaviors.UML_Behavior) is abstract;

   not overriding function Get_Guard
    (Self : not null access constant UML_Transition_Interface)
       return AMF.UML.Constraints.UML_Constraint is abstract;
   --  A guard is a constraint that provides a fine-grained control over the 
   --  firing of the transition. The guard is evaluated when an event 
   --  occurrence is dispatched by the state machine. If the guard is true at 
   --  that time, the transition may be enabled, otherwise, it is disabled. 
   --  Guards should be pure expressions without side effects. Guard 
   --  expressions with side effects are ill formed.

   not overriding procedure Set_Guard
    (Self : not null access UML_Transition_Interface;
     To   : AMF.UML.Constraints.UML_Constraint) is abstract;

   not overriding function Get_Kind
    (Self : not null access constant UML_Transition_Interface)
       return UML_Transition_Kind is abstract;
   --  Indicates the precise type of the transition.

   not overriding procedure Set_Kind
    (Self : not null access UML_Transition_Interface;
     To   : UML_Transition_Kind) is abstract;

   not overriding function Get_Redefined_Transition
    (Self : not null access constant UML_Transition_Interface)
       return AMF.UML.Transitions.UML_Transition is abstract;
   --  The transition that is redefined by this transition.

   not overriding procedure Set_Redefined_Transition
    (Self : not null access UML_Transition_Interface;
     To   : AMF.UML.Transitions.UML_Transition) is abstract;

   not overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Transition_Interface)
       return AMF.UML.Classifiers.UML_Classifier is abstract;
   --  References the classifier in which context this element may be 
   --  redefined.

   not overriding function Get_Source
    (Self : not null access constant UML_Transition_Interface)
       return AMF.UML.Vertexs.UML_Vertex is abstract;
   --  Designates the originating vertex (state or pseudostate) of the 
   --  transition.

   not overriding procedure Set_Source
    (Self : not null access UML_Transition_Interface;
     To   : AMF.UML.Vertexs.UML_Vertex) is abstract;

   not overriding function Get_Target
    (Self : not null access constant UML_Transition_Interface)
       return AMF.UML.Vertexs.UML_Vertex is abstract;
   --  Designates the target vertex that is reached when the transition is 
   --  taken.

   not overriding procedure Set_Target
    (Self : not null access UML_Transition_Interface;
     To   : AMF.UML.Vertexs.UML_Vertex) is abstract;

   not overriding function Get_Trigger
    (Self : not null access constant UML_Transition_Interface)
       return AMF.UML.Triggers.Collections.Set_Of_UML_Trigger is abstract;
   --  Specifies the triggers that may fire the transition.

end AMF.UML.Transitions;
