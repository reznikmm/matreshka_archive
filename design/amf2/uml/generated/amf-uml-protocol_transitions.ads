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
--  A protocol transition specifies a legal transition for an operation. 
--  Transitions of protocol state machines have the following information: a 
--  pre condition (guard), on trigger, and a post condition. Every protocol 
--  transition is associated to zero or one operation (referred 
--  BehavioralFeature) that belongs to the context classifier of the protocol 
--  state machine.
------------------------------------------------------------------------------
limited with AMF.UML.Constraints;
limited with AMF.UML.Operations.Collections;
with AMF.UML.Transitions;

package AMF.UML.Protocol_Transitions is

   pragma Preelaborate;

   type UML_Protocol_Transition is limited interface
     and AMF.UML.Transitions.UML_Transition;

   type UML_Protocol_Transition_Access is
     access all UML_Protocol_Transition'Class;
   for UML_Protocol_Transition_Access'Storage_Size use 0;

   not overriding function Get_Post_Condition
    (Self : not null access constant UML_Protocol_Transition)
       return AMF.UML.Constraints.UML_Constraint_Access is abstract;
   --  Specifies the post condition of the transition which is the condition 
   --  that should be obtained once the transition is triggered. This post 
   --  condition is part of the post condition of the operation connected to 
   --  the transition.

   not overriding procedure Set_Post_Condition
    (Self : not null access UML_Protocol_Transition;
     To   : AMF.UML.Constraints.UML_Constraint_Access) is abstract;

   not overriding function Get_Pre_Condition
    (Self : not null access constant UML_Protocol_Transition)
       return AMF.UML.Constraints.UML_Constraint_Access is abstract;
   --  Specifies the precondition of the transition. It specifies the 
   --  condition that should be verified before triggering the transition. 
   --  This guard condition added to the source state will be evaluated as 
   --  part of the precondition of the operation referred by the transition if 
   --  any.

   not overriding procedure Set_Pre_Condition
    (Self : not null access UML_Protocol_Transition;
     To   : AMF.UML.Constraints.UML_Constraint_Access) is abstract;

   not overriding function Get_Referred
    (Self : not null access constant UML_Protocol_Transition)
       return AMF.UML.Operations.Collections.Set_Of_UML_Operation is abstract;
   --  This association refers to the associated operation. It is derived from 
   --  the operation of the call trigger when applicable.

end AMF.UML.Protocol_Transitions;
