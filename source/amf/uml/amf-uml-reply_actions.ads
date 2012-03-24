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
--  A reply action is an action that accepts a set of return values and a 
--  value containing return information produced by a previous accept call 
--  action. The reply action returns the values to the caller of the previous 
--  call, completing execution of the call.
------------------------------------------------------------------------------
with AMF.UML.Actions;
limited with AMF.UML.Input_Pins.Collections;
limited with AMF.UML.Triggers;

package AMF.UML.Reply_Actions is

   pragma Preelaborate;

   type UML_Reply_Action is limited interface
     and AMF.UML.Actions.UML_Action;

   type UML_Reply_Action_Access is
     access all UML_Reply_Action'Class;
   for UML_Reply_Action_Access'Storage_Size use 0;

   not overriding function Get_Reply_To_Call
    (Self : not null access constant UML_Reply_Action)
       return AMF.UML.Triggers.UML_Trigger_Access is abstract;
   --  Getter of ReplyAction::replyToCall.
   --
   --  The trigger specifying the operation whose call is being replied to.

   not overriding procedure Set_Reply_To_Call
    (Self : not null access UML_Reply_Action;
     To   : AMF.UML.Triggers.UML_Trigger_Access) is abstract;
   --  Setter of ReplyAction::replyToCall.
   --
   --  The trigger specifying the operation whose call is being replied to.

   not overriding function Get_Reply_Value
    (Self : not null access constant UML_Reply_Action)
       return AMF.UML.Input_Pins.Collections.Set_Of_UML_Input_Pin is abstract;
   --  Getter of ReplyAction::replyValue.
   --
   --  A list of pins containing the reply values of the operation. These 
   --  values are returned to the caller.

   not overriding function Get_Return_Information
    (Self : not null access constant UML_Reply_Action)
       return AMF.UML.Input_Pins.UML_Input_Pin_Access is abstract;
   --  Getter of ReplyAction::returnInformation.
   --
   --  A pin containing the return information value produced by an earlier 
   --  AcceptCallAction.

   not overriding procedure Set_Return_Information
    (Self : not null access UML_Reply_Action;
     To   : AMF.UML.Input_Pins.UML_Input_Pin_Access) is abstract;
   --  Setter of ReplyAction::returnInformation.
   --
   --  A pin containing the return information value produced by an earlier 
   --  AcceptCallAction.

end AMF.UML.Reply_Actions;
