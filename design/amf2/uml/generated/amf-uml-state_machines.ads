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
--  State machines can be used to express the behavior of part of a system. 
--  Behavior is modeled as a traversal of a graph of state nodes 
--  interconnected by one or more joined transition arcs that are triggered by 
--  the dispatching of series of (event) occurrences. During this traversal, 
--  the state machine executes a series of activities associated with various 
--  elements of the state machine.
------------------------------------------------------------------------------
with AMF.UML.Behaviors;
limited with AMF.UML.Namespaces;
limited with AMF.UML.Pseudostates.Collections;
limited with AMF.UML.Redefinable_Elements;
limited with AMF.UML.Regions.Collections;
limited with AMF.UML.State_Machines.Collections;
limited with AMF.UML.States.Collections;

package AMF.UML.State_Machines is

   pragma Preelaborate;

   type UML_State_Machine is limited interface
     and AMF.UML.Behaviors.UML_Behavior;

   type UML_State_Machine_Access is
     access all UML_State_Machine'Class;
   for UML_State_Machine_Access'Storage_Size use 0;

   not overriding function Get_Connection_Point
    (Self : not null access constant UML_State_Machine)
       return AMF.UML.Pseudostates.Collections.Set_Of_UML_Pseudostate is abstract;
   --  Getter of StateMachine::connectionPoint.
   --
   --  The connection points defined for this state machine. They represent 
   --  the interface of the state machine when used as part of submachine 
   --  state.

   not overriding function Get_Extended_State_Machine
    (Self : not null access constant UML_State_Machine)
       return AMF.UML.State_Machines.Collections.Set_Of_UML_State_Machine is abstract;
   --  Getter of StateMachine::extendedStateMachine.
   --
   --  The state machines of which this is an extension.

   not overriding function Get_Region
    (Self : not null access constant UML_State_Machine)
       return AMF.UML.Regions.Collections.Set_Of_UML_Region is abstract;
   --  Getter of StateMachine::region.
   --
   --  The regions owned directly by the state machine.

   not overriding function Get_Submachine_State
    (Self : not null access constant UML_State_Machine)
       return AMF.UML.States.Collections.Set_Of_UML_State is abstract;
   --  Getter of StateMachine::submachineState.
   --
   --  References the submachine(s) in case of a submachine state. Multiple 
   --  machines are referenced in case of a concurrent state.

   not overriding function LCA
    (Self : not null access constant UML_State_Machine;
     S1 : AMF.UML.States.UML_State_Access;
     S2 : AMF.UML.States.UML_State_Access)
       return AMF.UML.Namespaces.UML_Namespace_Access is abstract;
   --  The operation LCA(s1,s2) returns an orthogonal state or region which is 
   --  the least common ancestor of states s1 and s2, based on the 
   --  statemachine containment hierarchy.

   not overriding function Ancestor
    (Self : not null access constant UML_State_Machine;
     S1 : AMF.UML.States.UML_State_Access;
     S2 : AMF.UML.States.UML_State_Access)
       return Boolean is abstract;
   --  The query ancestor(s1, s2) checks whether s1 is an ancestor state of 
   --  state s2.

   overriding function Is_Consistent_With
    (Self : not null access constant UML_State_Machine;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is abstract;
   --  The query isConsistentWith() specifies that a redefining state machine 
   --  is consistent with a redefined state machine provided that the 
   --  redefining state machine is an extension of the redefined state 
   --  machine: Regions are inherited and regions can be added, inherited 
   --  regions can be redefined. In case of multiple redefining state 
   --  machines, extension implies that the redefining state machine gets 
   --  orthogonal regions for each of the redefined state machines.

   not overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_State_Machine;
     Redefined : AMF.UML.State_Machines.UML_State_Machine_Access)
       return Boolean is abstract;
   --  The query isRedefinitionContextValid() specifies whether the 
   --  redefinition contexts of a statemachine are properly related to the 
   --  redefinition contexts of the specified statemachine to allow this 
   --  element to redefine the other. The containing classifier of a 
   --  redefining statemachine must redefine the containing classifier of the 
   --  redefined statemachine.

end AMF.UML.State_Machines;
