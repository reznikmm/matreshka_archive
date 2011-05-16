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
--  A call behavior action is a call action that invokes a behavior directly 
--  rather than invoking a behavioral feature that, in turn, results in the 
--  invocation of that behavior. The argument values of the action are 
--  available to the execution of the invoked behavior. For synchronous calls 
--  the execution of the call behavior action waits until the execution of the 
--  invoked behavior completes and a result is returned on its output pin. The 
--  action completes immediately without a result, if the call is 
--  asynchronous. In particular, the invoked behavior may be an activity.
------------------------------------------------------------------------------
limited with AMF.UML.Behaviors;
with AMF.UML.Call_Actions;

package AMF.UML.Call_Behavior_Actions is

   pragma Preelaborate;

   type UML_Call_Behavior_Action_Interface is limited interface
     and AMF.UML.Call_Actions.UML_Call_Action_Interface;

   type UML_Call_Behavior_Action is
     access all UML_Call_Behavior_Action_Interface'Class;

   type Set_Of_UML_Call_Behavior_Action is null record;
   type Ordered_Set_Of_UML_Call_Behavior_Action is null record;

   not overriding function Get_Behavior
    (Self : not null access constant UML_Call_Behavior_Action_Interface)
       return AMF.UML.Behaviors.UML_Behavior is abstract;
   --  The invoked behavior. It must be capable of accepting and returning 
   --  control.

   not overriding procedure Set_Behavior
    (Self : not null access UML_Call_Behavior_Action_Interface;
     To   : AMF.UML.Behaviors.UML_Behavior) is abstract;

end AMF.UML.Call_Behavior_Actions;
