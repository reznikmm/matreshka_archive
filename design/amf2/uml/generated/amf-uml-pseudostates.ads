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
--  A pseudostate is an abstraction that encompasses different types of 
--  transient vertices in the state machine graph.
------------------------------------------------------------------------------
limited with AMF.UML.State_Machines;
limited with AMF.UML.States;
with AMF.UML.Vertexs;

package AMF.UML.Pseudostates is

   pragma Preelaborate;

   type UML_Pseudostate_Interface is limited interface
     and AMF.UML.Vertexs.UML_Vertex_Interface;

   type UML_Pseudostate is
     access all UML_Pseudostate_Interface'Class;
   for UML_Pseudostate'Storage_Size use 0;

   not overriding function Get_Kind
    (Self : not null access constant UML_Pseudostate_Interface)
       return UML_Pseudostate_Kind is abstract;
   --  Determines the precise type of the Pseudostate and can be one of: 
   --  entryPoint, exitPoint, initial, deepHistory, shallowHistory, join, 
   --  fork, junction, terminate or choice.

   not overriding procedure Set_Kind
    (Self : not null access UML_Pseudostate_Interface;
     To   : UML_Pseudostate_Kind) is abstract;

   not overriding function Get_State
    (Self : not null access constant UML_Pseudostate_Interface)
       return AMF.UML.States.UML_State is abstract;
   --  The State that owns this pseudostate and in which it appears.

   not overriding procedure Set_State
    (Self : not null access UML_Pseudostate_Interface;
     To   : AMF.UML.States.UML_State) is abstract;

   not overriding function Get_State_Machine
    (Self : not null access constant UML_Pseudostate_Interface)
       return AMF.UML.State_Machines.UML_State_Machine is abstract;
   --  The StateMachine in which this Pseudostate is defined. This only 
   --  applies to Pseudostates of the kind entryPoint or exitPoint.

   not overriding procedure Set_State_Machine
    (Self : not null access UML_Pseudostate_Interface;
     To   : AMF.UML.State_Machines.UML_State_Machine) is abstract;

end AMF.UML.Pseudostates;
