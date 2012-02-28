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
--  A trigger relates an event to a behavior that may affect an instance of 
--  the classifier.
--  
--  A trigger specification may be qualified by the port on which the event 
--  occurred.
------------------------------------------------------------------------------
limited with AMF.UML.Events;
with AMF.UML.Named_Elements;
limited with AMF.UML.Ports.Collections;

package AMF.UML.Triggers is

   pragma Preelaborate;

   type UML_Trigger is limited interface
     and AMF.UML.Named_Elements.UML_Named_Element;

   type UML_Trigger_Access is
     access all UML_Trigger'Class;
   for UML_Trigger_Access'Storage_Size use 0;

   not overriding function Get_Event
    (Self : not null access constant UML_Trigger)
       return AMF.UML.Events.UML_Event_Access is abstract;
   --  Getter of Trigger::event.
   --
   --  The event that causes the trigger.

   not overriding procedure Set_Event
    (Self : not null access UML_Trigger;
     To   : AMF.UML.Events.UML_Event_Access) is abstract;
   --  Setter of Trigger::event.
   --
   --  The event that causes the trigger.

   not overriding function Get_Port
    (Self : not null access constant UML_Trigger)
       return AMF.UML.Ports.Collections.Set_Of_UML_Port is abstract;
   --  Getter of Trigger::port.
   --
   --  A optional port of the receiver object on which the behavioral feature 
   --  is invoked.

end AMF.UML.Triggers;
