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
--  A call operation action is an action that transmits an operation call 
--  request to the target object, where it may cause the invocation of 
--  associated behavior. The argument values of the action are available to 
--  the execution of the invoked behavior. If the action is marked 
--  synchronous, the execution of the call operation action waits until the 
--  execution of the invoked behavior completes and a reply transmission is 
--  returned to the caller; otherwise execution of the action is complete when 
--  the invocation of the operation is established and the execution of the 
--  invoked operation proceeds concurrently with the execution of the calling 
--  behavior. Any values returned as part of the reply transmission are put on 
--  the result output pins of the call operation action. Upon receipt of the 
--  reply transmission, execution of the call operation action is complete.
------------------------------------------------------------------------------
with AMF.UML.Call_Actions;
limited with AMF.UML.Input_Pins;
limited with AMF.UML.Operations;

package AMF.UML.Call_Operation_Actions is

   pragma Preelaborate;

   type UML_Call_Operation_Action_Interface is limited interface
     and AMF.UML.Call_Actions.UML_Call_Action_Interface;

   type UML_Call_Operation_Action is
     access all UML_Call_Operation_Action_Interface'Class;
   for UML_Call_Operation_Action'Storage_Size use 0;

   not overriding function Get_Operation
    (Self : not null access constant UML_Call_Operation_Action_Interface)
       return AMF.UML.Operations.UML_Operation is abstract;
   --  The operation to be invoked by the action execution.

   not overriding procedure Set_Operation
    (Self : not null access UML_Call_Operation_Action_Interface;
     To   : AMF.UML.Operations.UML_Operation) is abstract;

   not overriding function Get_Target
    (Self : not null access constant UML_Call_Operation_Action_Interface)
       return AMF.UML.Input_Pins.UML_Input_Pin is abstract;
   --  The target object to which the request is sent. The classifier of the 
   --  target object is used to dynamically determine a behavior to invoke. 
   --  This object constitutes the context of the execution of the operation.

   not overriding procedure Set_Target
    (Self : not null access UML_Call_Operation_Action_Interface;
     To   : AMF.UML.Input_Pins.UML_Input_Pin) is abstract;

end AMF.UML.Call_Operation_Actions;
