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
--  A vertex is an abstraction of a node in a state machine graph. In general, 
--  it can be the source or destination of any number of transitions.
------------------------------------------------------------------------------
with AMF.UML.Named_Elements;
limited with AMF.UML.Regions;
limited with AMF.UML.State_Machines;
limited with AMF.UML.Transitions.Collections;

package AMF.UML.Vertexs is

   pragma Preelaborate;

   type UML_Vertex is limited interface
     and AMF.UML.Named_Elements.UML_Named_Element;

   type UML_Vertex_Access is
     access all UML_Vertex'Class;
   for UML_Vertex_Access'Storage_Size use 0;

   not overriding function Get_Container
    (Self : not null access constant UML_Vertex)
       return AMF.UML.Regions.UML_Region_Access is abstract;
   --  Getter of Vertex::container.
   --
   --  The region that contains this vertex.

   not overriding procedure Set_Container
    (Self : not null access UML_Vertex;
     To   : AMF.UML.Regions.UML_Region_Access) is abstract;
   --  Setter of Vertex::container.
   --
   --  The region that contains this vertex.

   not overriding function Get_Incoming
    (Self : not null access constant UML_Vertex)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition is abstract;
   --  Getter of Vertex::incoming.
   --
   --  Specifies the transitions entering this vertex.

   not overriding function Get_Outgoing
    (Self : not null access constant UML_Vertex)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition is abstract;
   --  Getter of Vertex::outgoing.
   --
   --  Specifies the transitions departing from this vertex.

   not overriding function Containing_State_Machine
    (Self : not null access constant UML_Vertex)
       return AMF.UML.State_Machines.UML_State_Machine_Access is abstract;
   --  Operation Vertex::containingStateMachine.
   --
   --  The operation containingStateMachine() returns the state machine in 
   --  which this Vertex is defined

   not overriding function Incoming
    (Self : not null access constant UML_Vertex)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition is abstract;
   --  Operation Vertex::incoming.
   --
   --  Missing derivation for Vertex::/incoming : Transition

   not overriding function Outgoing
    (Self : not null access constant UML_Vertex)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition is abstract;
   --  Operation Vertex::outgoing.
   --
   --  Missing derivation for Vertex::/outgoing : Transition

end AMF.UML.Vertexs;
