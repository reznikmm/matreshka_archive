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
--  A connection point reference represents a usage (as part of a submachine 
--  state) of an entry/exit point defined in the statemachine reference by the 
--  submachine state.
------------------------------------------------------------------------------
limited with AMF.UML.Pseudostates.Collections;
limited with AMF.UML.States;
with AMF.UML.Vertexs;

package AMF.UML.Connection_Point_References is

   pragma Preelaborate;

   type UML_Connection_Point_Reference_Interface is limited interface
     and AMF.UML.Vertexs.UML_Vertex_Interface;

   type UML_Connection_Point_Reference is
     access all UML_Connection_Point_Reference_Interface'Class;
   for UML_Connection_Point_Reference'Storage_Size use 0;

   not overriding function Get_Entry
    (Self : not null access constant UML_Connection_Point_Reference_Interface)
       return AMF.UML.Pseudostates.Collections.Set_Of_UML_Pseudostate is abstract;
   --  The entryPoint kind pseudo states corresponding to this connection 
   --  point.

   not overriding function Get_Exit
    (Self : not null access constant UML_Connection_Point_Reference_Interface)
       return AMF.UML.Pseudostates.Collections.Set_Of_UML_Pseudostate is abstract;
   --  The exitPoints kind pseudo states corresponding to this connection 
   --  point.

   not overriding function Get_State
    (Self : not null access constant UML_Connection_Point_Reference_Interface)
       return AMF.UML.States.UML_State is abstract;
   --  The State in which the connection point refreshens are defined.

   not overriding procedure Set_State
    (Self : not null access UML_Connection_Point_Reference_Interface;
     To   : AMF.UML.States.UML_State) is abstract;

end AMF.UML.Connection_Point_References;
