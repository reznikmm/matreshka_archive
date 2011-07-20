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
--  A send signal action is an action that creates a signal instance from its 
--  inputs, and transmits it to the target object, where it may cause the 
--  firing of a state machine transition or the execution of an activity. The 
--  argument values are available to the execution of associated behaviors. 
--  The requestor continues execution immediately. Any reply message is 
--  ignored and is not transmitted to the requestor. If the input is already a 
--  signal instance, use a send object action.
------------------------------------------------------------------------------
limited with AMF.UML.Input_Pins;
with AMF.UML.Invocation_Actions;
limited with AMF.UML.Signals;

package AMF.UML.Send_Signal_Actions is

   pragma Preelaborate;

   type UML_Send_Signal_Action is limited interface
     and AMF.UML.Invocation_Actions.UML_Invocation_Action;

   type UML_Send_Signal_Action_Access is
     access all UML_Send_Signal_Action'Class;
   for UML_Send_Signal_Action_Access'Storage_Size use 0;

   not overriding function Get_Signal
    (Self : not null access constant UML_Send_Signal_Action)
       return AMF.UML.Signals.UML_Signal_Access is abstract;
   --  Getter of SendSignalAction::signal.
   --
   --  The type of signal transmitted to the target object.

   not overriding procedure Set_Signal
    (Self : not null access UML_Send_Signal_Action;
     To   : AMF.UML.Signals.UML_Signal_Access) is abstract;
   --  Setter of SendSignalAction::signal.
   --
   --  The type of signal transmitted to the target object.

   not overriding function Get_Target
    (Self : not null access constant UML_Send_Signal_Action)
       return AMF.UML.Input_Pins.UML_Input_Pin_Access is abstract;
   --  Getter of SendSignalAction::target.
   --
   --  The target object to which the signal is sent.

   not overriding procedure Set_Target
    (Self : not null access UML_Send_Signal_Action;
     To   : AMF.UML.Input_Pins.UML_Input_Pin_Access) is abstract;
   --  Setter of SendSignalAction::target.
   --
   --  The target object to which the signal is sent.

end AMF.UML.Send_Signal_Actions;
