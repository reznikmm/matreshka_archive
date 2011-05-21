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
--  A broadcast signal action is an action that transmits a signal instance to 
--  all the potential target objects in the system, which may cause the firing 
--  of a state machine transitions or the execution of associated activities 
--  of a target object. The argument values are available to the execution of 
--  associated behaviors. The requestor continues execution immediately after 
--  the signals are sent out. It does not wait for receipt. Any reply messages 
--  are ignored and are not transmitted to the requestor.
------------------------------------------------------------------------------
with AMF.UML.Invocation_Actions;
limited with AMF.UML.Signals;

package AMF.UML.Broadcast_Signal_Actions is

   pragma Preelaborate;

   type UML_Broadcast_Signal_Action is limited interface
     and AMF.UML.Invocation_Actions.UML_Invocation_Action;

   type UML_Broadcast_Signal_Action_Access is
     access all UML_Broadcast_Signal_Action'Class;
   for UML_Broadcast_Signal_Action_Access'Storage_Size use 0;

   not overriding function Get_Signal
    (Self : not null access constant UML_Broadcast_Signal_Action)
       return AMF.UML.Signals.UML_Signal_Access is abstract;
   --  The specification of signal object transmitted to the target objects.

   not overriding procedure Set_Signal
    (Self : not null access UML_Broadcast_Signal_Action;
     To   : AMF.UML.Signals.UML_Signal_Access) is abstract;

end AMF.UML.Broadcast_Signal_Actions;
