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
--  A state models a situation during which some (usually implicit) invariant 
--  condition holds.
--  The states of protocol state machines are exposed to the users of their 
--  context classifiers. A protocol state represents an exposed stable 
--  situation of its context classifier: when an instance of the classifier is 
--  not processing any operation, users of this instance can always know its 
--  state configuration.
------------------------------------------------------------------------------
limited with AMF.UML.Behaviors;
limited with AMF.UML.Classifiers;
limited with AMF.UML.Connection_Point_References;
limited with AMF.UML.Constraints;
with AMF.UML.Namespaces;
limited with AMF.UML.Pseudostates;
with AMF.UML.Redefinable_Elements;
limited with AMF.UML.Regions;
limited with AMF.UML.State_Machines;
limited with AMF.UML.Triggers;
with AMF.UML.Vertexs;

package AMF.UML.States is

   pragma Preelaborate;

   type UML_State_Interface is limited interface
     and AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Interface
     and AMF.UML.Namespaces.UML_Namespace_Interface
     and AMF.UML.Vertexs.UML_Vertex_Interface;

   type UML_State is
     access all UML_State_Interface'Class;

   type Set_Of_UML_State is null record;
   type Ordered_Set_Of_UML_State is null record;

   not overriding function Get_Connection
    (Self : not null access constant UML_State_Interface)
       return AMF.UML.Connection_Point_References.Set_Of_UML_Connection_Point_Reference is abstract;
   --  The entry and exit connection points used in conjunction with this 
   --  (submachine) state, i.e. as targets and sources, respectively, in the 
   --  region with the submachine state. A connection point reference 
   --  references the corresponding definition of a connection point 
   --  pseudostate in the statemachine referenced by the submachinestate.

   not overriding function Get_Connection_Point
    (Self : not null access constant UML_State_Interface)
       return AMF.UML.Pseudostates.Set_Of_UML_Pseudostate is abstract;
   --  The entry and exit pseudostates of a composite state. These can only be 
   --  entry or exit Pseudostates, and they must have different names. They 
   --  can only be defined for composite states.

   not overriding function Get_Deferrable_Trigger
    (Self : not null access constant UML_State_Interface)
       return AMF.UML.Triggers.Set_Of_UML_Trigger is abstract;
   --  A list of triggers that are candidates to be retained by the state 
   --  machine if they trigger no transitions out of the state (not consumed). 
   --  A deferred trigger is retained until the state machine reaches a state 
   --  configuration where it is no longer deferred.

   not overriding function Get_Do_Activity
    (Self : not null access constant UML_State_Interface)
       return AMF.UML.Behaviors.UML_Behavior is abstract;
   --  An optional behavior that is executed while being in the state. The 
   --  execution starts when this state is entered, and stops either by 
   --  itself, or when the state is exited, whichever comes first.

   not overriding procedure Set_Do_Activity
    (Self : not null access UML_State_Interface;
     To   : AMF.UML.Behaviors.UML_Behavior) is abstract;

   not overriding function Get_Entry
    (Self : not null access constant UML_State_Interface)
       return AMF.UML.Behaviors.UML_Behavior is abstract;
   --  An optional behavior that is executed whenever this state is entered 
   --  regardless of the transition taken to reach the state. If defined, 
   --  entry actions are always executed to completion prior to any internal 
   --  behavior or transitions performed within the state.

   not overriding procedure Set_Entry
    (Self : not null access UML_State_Interface;
     To   : AMF.UML.Behaviors.UML_Behavior) is abstract;

   not overriding function Get_Exit
    (Self : not null access constant UML_State_Interface)
       return AMF.UML.Behaviors.UML_Behavior is abstract;
   --  An optional behavior that is executed whenever this state is exited 
   --  regardless of which transition was taken out of the state. If defined, 
   --  exit actions are always executed to completion only after all internal 
   --  activities and transition actions have completed execution.

   not overriding procedure Set_Exit
    (Self : not null access UML_State_Interface;
     To   : AMF.UML.Behaviors.UML_Behavior) is abstract;

   not overriding function Get_Is_Composite
    (Self : not null access constant UML_State_Interface)
       return Boolean is abstract;
   --  A state with isComposite=true is said to be a composite state. A 
   --  composite state is a state that contains at least one region.

   not overriding function Get_Is_Orthogonal
    (Self : not null access constant UML_State_Interface)
       return Boolean is abstract;
   --  A state with isOrthogonal=true is said to be an orthogonal composite 
   --  state. An orthogonal composite state contains two or more regions.

   not overriding function Get_Is_Simple
    (Self : not null access constant UML_State_Interface)
       return Boolean is abstract;
   --  A state with isSimple=true is said to be a simple state. A simple state 
   --  does not have any regions and it does not refer to any submachine state 
   --  machine.

   not overriding function Get_Is_Submachine_State
    (Self : not null access constant UML_State_Interface)
       return Boolean is abstract;
   --  A state with isSubmachineState=true is said to be a submachine state. 
   --  Such a state refers to a state machine (submachine).

   not overriding function Get_Redefined_State
    (Self : not null access constant UML_State_Interface)
       return AMF.UML.States.UML_State is abstract;
   --  The state of which this state is a redefinition.

   not overriding procedure Set_Redefined_State
    (Self : not null access UML_State_Interface;
     To   : AMF.UML.States.UML_State) is abstract;

   not overriding function Get_Redefinition_Context
    (Self : not null access constant UML_State_Interface)
       return AMF.UML.Classifiers.UML_Classifier is abstract;
   --  References the classifier in which context this element may be 
   --  redefined.

   not overriding function Get_Region
    (Self : not null access constant UML_State_Interface)
       return AMF.UML.Regions.Set_Of_UML_Region is abstract;
   --  The regions owned directly by the state.

   not overriding function Get_State_Invariant
    (Self : not null access constant UML_State_Interface)
       return AMF.UML.Constraints.UML_Constraint is abstract;
   --  Specifies conditions that are always true when this state is the 
   --  current state. In protocol state machines, state invariants are 
   --  additional conditions to the preconditions of the outgoing transitions, 
   --  and to the postcondition of the incoming transitions.

   not overriding procedure Set_State_Invariant
    (Self : not null access UML_State_Interface;
     To   : AMF.UML.Constraints.UML_Constraint) is abstract;

   not overriding function Get_Submachine
    (Self : not null access constant UML_State_Interface)
       return AMF.UML.State_Machines.UML_State_Machine is abstract;
   --  The state machine that is to be inserted in place of the (submachine) 
   --  state.

   not overriding procedure Set_Submachine
    (Self : not null access UML_State_Interface;
     To   : AMF.UML.State_Machines.UML_State_Machine) is abstract;

end AMF.UML.States;
