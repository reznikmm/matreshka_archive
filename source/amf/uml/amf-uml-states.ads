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
--  A state models a situation during which some (usually implicit) invariant 
--  condition holds.
--  
--  The states of protocol state machines are exposed to the users of their 
--  context classifiers. A protocol state represents an exposed stable 
--  situation of its context classifier: when an instance of the classifier is 
--  not processing any operation, users of this instance can always know its 
--  state configuration.
------------------------------------------------------------------------------
limited with AMF.UML.Behaviors;
limited with AMF.UML.Classifiers;
limited with AMF.UML.Connection_Point_References.Collections;
limited with AMF.UML.Constraints;
with AMF.UML.Namespaces;
limited with AMF.UML.Pseudostates.Collections;
with AMF.UML.Redefinable_Elements;
limited with AMF.UML.Regions.Collections;
limited with AMF.UML.State_Machines;
limited with AMF.UML.Triggers.Collections;
with AMF.UML.Vertexs;

package AMF.UML.States is

   pragma Preelaborate;

   type UML_State is limited interface
     and AMF.UML.Redefinable_Elements.UML_Redefinable_Element
     and AMF.UML.Namespaces.UML_Namespace
     and AMF.UML.Vertexs.UML_Vertex;

   type UML_State_Access is
     access all UML_State'Class;
   for UML_State_Access'Storage_Size use 0;

   not overriding function Get_Connection
    (Self : not null access constant UML_State)
       return AMF.UML.Connection_Point_References.Collections.Set_Of_UML_Connection_Point_Reference is abstract;
   --  Getter of State::connection.
   --
   --  The entry and exit connection points used in conjunction with this 
   --  (submachine) state, i.e. as targets and sources, respectively, in the 
   --  region with the submachine state. A connection point reference 
   --  references the corresponding definition of a connection point 
   --  pseudostate in the statemachine referenced by the submachinestate.

   not overriding function Get_Connection_Point
    (Self : not null access constant UML_State)
       return AMF.UML.Pseudostates.Collections.Set_Of_UML_Pseudostate is abstract;
   --  Getter of State::connectionPoint.
   --
   --  The entry and exit pseudostates of a composite state. These can only be 
   --  entry or exit Pseudostates, and they must have different names. They 
   --  can only be defined for composite states.

   not overriding function Get_Deferrable_Trigger
    (Self : not null access constant UML_State)
       return AMF.UML.Triggers.Collections.Set_Of_UML_Trigger is abstract;
   --  Getter of State::deferrableTrigger.
   --
   --  A list of triggers that are candidates to be retained by the state 
   --  machine if they trigger no transitions out of the state (not consumed). 
   --  A deferred trigger is retained until the state machine reaches a state 
   --  configuration where it is no longer deferred.

   not overriding function Get_Do_Activity
    (Self : not null access constant UML_State)
       return AMF.UML.Behaviors.UML_Behavior_Access is abstract;
   --  Getter of State::doActivity.
   --
   --  An optional behavior that is executed while being in the state. The 
   --  execution starts when this state is entered, and stops either by 
   --  itself, or when the state is exited, whichever comes first.

   not overriding procedure Set_Do_Activity
    (Self : not null access UML_State;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is abstract;
   --  Setter of State::doActivity.
   --
   --  An optional behavior that is executed while being in the state. The 
   --  execution starts when this state is entered, and stops either by 
   --  itself, or when the state is exited, whichever comes first.

   not overriding function Get_Entry
    (Self : not null access constant UML_State)
       return AMF.UML.Behaviors.UML_Behavior_Access is abstract;
   --  Getter of State::entry.
   --
   --  An optional behavior that is executed whenever this state is entered 
   --  regardless of the transition taken to reach the state. If defined, 
   --  entry actions are always executed to completion prior to any internal 
   --  behavior or transitions performed within the state.

   not overriding procedure Set_Entry
    (Self : not null access UML_State;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is abstract;
   --  Setter of State::entry.
   --
   --  An optional behavior that is executed whenever this state is entered 
   --  regardless of the transition taken to reach the state. If defined, 
   --  entry actions are always executed to completion prior to any internal 
   --  behavior or transitions performed within the state.

   not overriding function Get_Exit
    (Self : not null access constant UML_State)
       return AMF.UML.Behaviors.UML_Behavior_Access is abstract;
   --  Getter of State::exit.
   --
   --  An optional behavior that is executed whenever this state is exited 
   --  regardless of which transition was taken out of the state. If defined, 
   --  exit actions are always executed to completion only after all internal 
   --  activities and transition actions have completed execution.

   not overriding procedure Set_Exit
    (Self : not null access UML_State;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is abstract;
   --  Setter of State::exit.
   --
   --  An optional behavior that is executed whenever this state is exited 
   --  regardless of which transition was taken out of the state. If defined, 
   --  exit actions are always executed to completion only after all internal 
   --  activities and transition actions have completed execution.

   not overriding function Get_Is_Composite
    (Self : not null access constant UML_State)
       return Boolean is abstract;
   --  Getter of State::isComposite.
   --
   --  A state with isComposite=true is said to be a composite state. A 
   --  composite state is a state that contains at least one region.

   not overriding function Get_Is_Orthogonal
    (Self : not null access constant UML_State)
       return Boolean is abstract;
   --  Getter of State::isOrthogonal.
   --
   --  A state with isOrthogonal=true is said to be an orthogonal composite 
   --  state. An orthogonal composite state contains two or more regions.

   not overriding function Get_Is_Simple
    (Self : not null access constant UML_State)
       return Boolean is abstract;
   --  Getter of State::isSimple.
   --
   --  A state with isSimple=true is said to be a simple state. A simple state 
   --  does not have any regions and it does not refer to any submachine state 
   --  machine.

   not overriding function Get_Is_Submachine_State
    (Self : not null access constant UML_State)
       return Boolean is abstract;
   --  Getter of State::isSubmachineState.
   --
   --  A state with isSubmachineState=true is said to be a submachine state. 
   --  Such a state refers to a state machine (submachine).

   not overriding function Get_Redefined_State
    (Self : not null access constant UML_State)
       return AMF.UML.States.UML_State_Access is abstract;
   --  Getter of State::redefinedState.
   --
   --  The state of which this state is a redefinition.

   not overriding procedure Set_Redefined_State
    (Self : not null access UML_State;
     To   : AMF.UML.States.UML_State_Access) is abstract;
   --  Setter of State::redefinedState.
   --
   --  The state of which this state is a redefinition.

   not overriding function Get_Redefinition_Context
    (Self : not null access constant UML_State)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  Getter of State::redefinitionContext.
   --
   --  References the classifier in which context this element may be 
   --  redefined.

   not overriding function Get_Region
    (Self : not null access constant UML_State)
       return AMF.UML.Regions.Collections.Set_Of_UML_Region is abstract;
   --  Getter of State::region.
   --
   --  The regions owned directly by the state.

   not overriding function Get_State_Invariant
    (Self : not null access constant UML_State)
       return AMF.UML.Constraints.UML_Constraint_Access is abstract;
   --  Getter of State::stateInvariant.
   --
   --  Specifies conditions that are always true when this state is the 
   --  current state. In protocol state machines, state invariants are 
   --  additional conditions to the preconditions of the outgoing transitions, 
   --  and to the postcondition of the incoming transitions.

   not overriding procedure Set_State_Invariant
    (Self : not null access UML_State;
     To   : AMF.UML.Constraints.UML_Constraint_Access) is abstract;
   --  Setter of State::stateInvariant.
   --
   --  Specifies conditions that are always true when this state is the 
   --  current state. In protocol state machines, state invariants are 
   --  additional conditions to the preconditions of the outgoing transitions, 
   --  and to the postcondition of the incoming transitions.

   not overriding function Get_Submachine
    (Self : not null access constant UML_State)
       return AMF.UML.State_Machines.UML_State_Machine_Access is abstract;
   --  Getter of State::submachine.
   --
   --  The state machine that is to be inserted in place of the (submachine) 
   --  state.

   not overriding procedure Set_Submachine
    (Self : not null access UML_State;
     To   : AMF.UML.State_Machines.UML_State_Machine_Access) is abstract;
   --  Setter of State::submachine.
   --
   --  The state machine that is to be inserted in place of the (submachine) 
   --  state.

   overriding function Containing_State_Machine
    (Self : not null access constant UML_State)
       return AMF.UML.State_Machines.UML_State_Machine_Access is abstract;
   --  Operation State::containingStateMachine.
   --
   --  The query containingStateMachine() returns the state machine that 
   --  contains the state either directly or transitively.

   not overriding function Is_Composite
    (Self : not null access constant UML_State)
       return Boolean is abstract;
   --  Operation State::isComposite.
   --
   --  A composite state is a state with at least one region.

   overriding function Is_Consistent_With
    (Self : not null access constant UML_State;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is abstract;
   --  Operation State::isConsistentWith.
   --
   --  The query isConsistentWith() specifies that a redefining state is 
   --  consistent with a redefined state provided that the redefining state is 
   --  an extension of the redefined state: A simple state can be redefined 
   --  (extended) to become a composite state (by adding a region) and a 
   --  composite state can be redefined (extended) by adding regions and by 
   --  adding vertices, states, and transitions to inherited regions. All 
   --  states may add or replace entry, exit, and 'doActivity' actions.

   not overriding function Is_Orthogonal
    (Self : not null access constant UML_State)
       return Boolean is abstract;
   --  Operation State::isOrthogonal.
   --
   --  An orthogonal state is a composite state with at least 2 regions

   not overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_State;
     Redefined : AMF.UML.States.UML_State_Access)
       return Boolean is abstract;
   --  Operation State::isRedefinitionContextValid.
   --
   --  The query isRedefinitionContextValid() specifies whether the 
   --  redefinition contexts of a state are properly related to the 
   --  redefinition contexts of the specified state to allow this element to 
   --  redefine the other. The containing region of a redefining state must 
   --  redefine the containing region of the redefined state.

   not overriding function Is_Simple
    (Self : not null access constant UML_State)
       return Boolean is abstract;
   --  Operation State::isSimple.
   --
   --  A simple state is a state without any regions.

   not overriding function Is_Submachine_State
    (Self : not null access constant UML_State)
       return Boolean is abstract;
   --  Operation State::isSubmachineState.
   --
   --  Only submachine states can have a reference statemachine.

   not overriding function Redefinition_Context
    (Self : not null access constant UML_State)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  Operation State::redefinitionContext.
   --
   --  The redefinition context of a state is the nearest containing 
   --  statemachine.

end AMF.UML.States;
