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
--  A state invariant is a runtime constraint on the participants of the 
--  interaction. It may be used to specify a variety of different kinds of 
--  constraints, such as values of attributes or variables, internal or 
--  external states, and so on. A state invariant is an interaction fragment 
--  and it is placed on a lifeline.
------------------------------------------------------------------------------
limited with AMF.UML.Constraints;
with AMF.UML.Interaction_Fragments;
limited with AMF.UML.Lifelines;

package AMF.UML.State_Invariants is

   pragma Preelaborate;

   type UML_State_Invariant is limited interface
     and AMF.UML.Interaction_Fragments.UML_Interaction_Fragment;

   type UML_State_Invariant_Access is
     access all UML_State_Invariant'Class;
   for UML_State_Invariant_Access'Storage_Size use 0;

   not overriding function Get_Covered
    (Self : not null access constant UML_State_Invariant)
       return AMF.UML.Lifelines.UML_Lifeline_Access is abstract;
   --  Getter of StateInvariant::covered.
   --
   --  References the Lifeline on which the StateInvariant appears.

   not overriding procedure Set_Covered
    (Self : not null access UML_State_Invariant;
     To   : AMF.UML.Lifelines.UML_Lifeline_Access) is abstract;
   --  Setter of StateInvariant::covered.
   --
   --  References the Lifeline on which the StateInvariant appears.

   not overriding function Get_Invariant
    (Self : not null access constant UML_State_Invariant)
       return AMF.UML.Constraints.UML_Constraint_Access is abstract;
   --  Getter of StateInvariant::invariant.
   --
   --  A Constraint that should hold at runtime for this StateInvariant

   not overriding procedure Set_Invariant
    (Self : not null access UML_State_Invariant;
     To   : AMF.UML.Constraints.UML_Constraint_Access) is abstract;
   --  Setter of StateInvariant::invariant.
   --
   --  A Constraint that should hold at runtime for this StateInvariant

end AMF.UML.State_Invariants;
