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
--  A protocol state machine is always defined in the context of a classifier. 
--  It specifies which operations of the classifier can be called in which 
--  state and under which condition, thus specifying the allowed call 
--  sequences on the classifier's operations. A protocol state machine 
--  presents the possible and permitted transitions on the instances of its 
--  context classifier, together with the operations which carry the 
--  transitions. In this manner, an instance lifecycle can be created for a 
--  classifier, by specifying the order in which the operations can be 
--  activated and the states through which an instance progresses during its 
--  existence.
------------------------------------------------------------------------------
limited with AMF.UML.Protocol_Conformances.Collections;
with AMF.UML.State_Machines;

package AMF.UML.Protocol_State_Machines is

   pragma Preelaborate;

   type UML_Protocol_State_Machine is limited interface
     and AMF.UML.State_Machines.UML_State_Machine;

   type UML_Protocol_State_Machine_Access is
     access all UML_Protocol_State_Machine'Class;
   for UML_Protocol_State_Machine_Access'Storage_Size use 0;

   not overriding function Get_Conformance
    (Self : not null access constant UML_Protocol_State_Machine)
       return AMF.UML.Protocol_Conformances.Collections.Set_Of_UML_Protocol_Conformance is abstract;
   --  Conformance between protocol state machines.

end AMF.UML.Protocol_State_Machines;
