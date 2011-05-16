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
limited with AMF.UML.Pseudostates;
limited with AMF.UML.Regions;
limited with AMF.UML.States;

package AMF.UML.State_Machines is

   pragma Preelaborate;

   type UML_State_Machine_Interface is limited interface
     and AMF.UML.Behaviors.UML_Behavior_Interface;

   type UML_State_Machine is
     access all UML_State_Machine_Interface'Class;

   type Set_Of_UML_State_Machine is null record;
   type Ordered_Set_Of_UML_State_Machine is null record;

   not overriding function Get_Connection_Point
    (Self : not null access constant UML_State_Machine_Interface)
       return AMF.UML.Pseudostates.Set_Of_UML_Pseudostate is abstract;
   --  The connection points defined for this state machine. They represent 
   --  the interface of the state machine when used as part of submachine 
   --  state.

   not overriding function Get_Extended_State_Machine
    (Self : not null access constant UML_State_Machine_Interface)
       return AMF.UML.State_Machines.Set_Of_UML_State_Machine is abstract;
   --  The state machines of which this is an extension.

   not overriding function Get_Region
    (Self : not null access constant UML_State_Machine_Interface)
       return AMF.UML.Regions.Set_Of_UML_Region is abstract;
   --  The regions owned directly by the state machine.

   not overriding function Get_Submachine_State
    (Self : not null access constant UML_State_Machine_Interface)
       return AMF.UML.States.Set_Of_UML_State is abstract;
   --  References the submachine(s) in case of a submachine state. Multiple 
   --  machines are referenced in case of a concurrent state.

end AMF.UML.State_Machines;
