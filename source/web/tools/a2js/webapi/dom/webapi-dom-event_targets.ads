------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                            Web API Definition                            --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2014-2015, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This package provides binding to interface EventTarget.
------------------------------------------------------------------------------
with WebAPI.DOM.Event_Listeners;
with WebAPI.DOM.Events;

package WebAPI.DOM.Event_Targets is

   pragma Preelaborate;

   type Event_Target is limited interface;
   type Event_Target_Access is access all Event_Target'Class
     with Storage_Size => 0;

   procedure Add_Event_Listener
    (Self        : not null access Event_Target'Class;
     Event_Type  : WebAPI.DOM_String;
     Listener    : not null access
       WebAPI.DOM.Event_Listeners.Event_Listener'Class;
     Use_Capture : Boolean)
        with Import     => True,
             Convention => JavaScript_Function,
             Link_Name  => "_ec._addEventListener";

   --  This method allows the registration of event listeners on the event
   --  target. If an EventListener is added to an EventTarget while it is
   --  processing an event, it will not be triggered by the current actions but
   --  may be triggered during a later stage of event flow, such as the
   --  bubbling phase.
   --  If multiple identical EventListeners are registered on the same
   --  EventTarget with the same parameters the duplicate instances are
   --  discarded. They do not cause the EventListener to be called twice and
   --  since they are discarded they do not need to be removed with the
   --  removeEventListener method.

   procedure Remove_Event_Listener
    (Self        : not null access Event_Target'Class;
     Event_Type  : WebAPI.DOM_String;
     Listener    : not null access
       WebAPI.DOM.Event_Listeners.Event_Listener'Class;
     Use_Capture : Boolean)
        with Import     => True,
             Convention => JavaScript_Function,
             Link_Name  => "_ec._removeEventListener";

   --  This method allows the removal of event listeners from the event target.
   --  If an EventListener is removed from an EventTarget while it is
   --  processing an event, it will not be triggered by the current actions.
   --  EventListeners can never be invoked after being removed.
   --  Calling removeEventListener with arguments which do not identify any
   --  currently registered EventListener on the EventTarget has no effect.

   not overriding function Dispatch_Event
    (Self  : not null access Event_Target;
     Event : not null access WebAPI.DOM.Events.Event'Class)
     return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "dispatchEvent";
   --  Dispatches a synthetic event event to target and returns true if either
   --  event’s cancelable attribute value is false or its preventDefault()
   --  method was not invoked, and false otherwise.

   not overriding procedure Dispatch_Event
    (Self  : not null access Event_Target;
     Event : not null access WebAPI.DOM.Events.Event'Class) is null
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "dispatchEvent";

end WebAPI.DOM.Event_Targets;
