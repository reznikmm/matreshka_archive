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
--  A accept event action is an action that waits for the occurrence of an 
--  event meeting specified conditions.
------------------------------------------------------------------------------
with AMF.UML.Actions;
limited with AMF.UML.Output_Pins.Collections;
limited with AMF.UML.Triggers.Collections;

package AMF.UML.Accept_Event_Actions is

   pragma Preelaborate;

   type UML_Accept_Event_Action is limited interface
     and AMF.UML.Actions.UML_Action;

   type UML_Accept_Event_Action_Access is
     access all UML_Accept_Event_Action'Class;
   for UML_Accept_Event_Action_Access'Storage_Size use 0;

   not overriding function Get_Is_Unmarshall
    (Self : not null access constant UML_Accept_Event_Action)
       return Boolean is abstract;
   --  Getter of AcceptEventAction::isUnmarshall.
   --
   --  Indicates whether there is a single output pin for the event, or 
   --  multiple output pins for attributes of the event.

   not overriding procedure Set_Is_Unmarshall
    (Self : not null access UML_Accept_Event_Action;
     To   : Boolean) is abstract;
   --  Setter of AcceptEventAction::isUnmarshall.
   --
   --  Indicates whether there is a single output pin for the event, or 
   --  multiple output pins for attributes of the event.

   not overriding function Get_Result
    (Self : not null access constant UML_Accept_Event_Action)
       return AMF.UML.Output_Pins.Collections.Set_Of_UML_Output_Pin is abstract;
   --  Getter of AcceptEventAction::result.
   --
   --  Pins holding the received event objects or their attributes. Event 
   --  objects may be copied in transmission, so identity might not be 
   --  preserved.

   not overriding function Get_Trigger
    (Self : not null access constant UML_Accept_Event_Action)
       return AMF.UML.Triggers.Collections.Set_Of_UML_Trigger is abstract;
   --  Getter of AcceptEventAction::trigger.
   --
   --  The type of events accepted by the action, as specified by triggers. 
   --  For triggers with signal events, a signal of the specified type or any 
   --  subtype of the specified signal type is accepted.

end AMF.UML.Accept_Event_Actions;
