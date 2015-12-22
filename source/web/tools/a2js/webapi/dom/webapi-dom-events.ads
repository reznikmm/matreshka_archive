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
--  This package provides binding to interface Event as defined by DOM Level 4
--  specification.
------------------------------------------------------------------------------
limited with WebAPI.DOM.Event_Targets;

package WebAPI.DOM.Events is

   pragma Preelaborate;

   type Event is limited interface;

   not overriding function Get_Event_Type
    (Self : not null access constant Event)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "type";
   --  The name of the event (case-insensitive). The name must be an XML name.

   not overriding function Get_Target
    (Self : not null access constant Event)
       return WebAPI.DOM.Event_Targets.Event_Target_Access is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "target";
   --  Used to indicate the EventTarget to which the event was originally
   --  dispatched.

   not overriding function Get_Current_Target
    (Self : not null access constant Event)
       return WebAPI.DOM.Event_Targets.Event_Target_Access is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "currentTarget";
   --  Used to indicate the EventTarget whose EventListeners are currently
   --  being processed. This is particularly useful during capturing and
   --  bubbling.

   not overriding function Get_Event_Phase
    (Self : not null access constant Event)
       return WebAPI.DOM.Event_Phases is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "eventPhase";
   --  Returns the event's phase, which is one of NONE, CAPTURING_PHASE,
   --  AT_TARGET, and BUBBLING_PHASE.

   not overriding procedure Stop_Propagation
    (Self : not null access Event) is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "stopPropagation";
   --  The stopPropagation method is used prevent further propagation of an
   --  event during event flow. If this method is called by any EventListener
   --  the event will cease propagating through the tree. The event will
   --  complete dispatch to all listeners on the current EventTarget before
   --  event flow stops. This method may be used during any stage of event
   --  flow.

   not overriding procedure Stop_Immediate_Propagation
    (Self : not null access Event) is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "stopImmediatePropagation()";
   --  Invoking this method prevents event from reaching any registered event
   --  listeners after the current one finishes running and, when dispatched in
   --  a tree, also prevents event from reaching any other objects. 

   not overriding function Bubbles
    (Self : not null access constant Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "bubbles";
   --  Used to indicate whether or not an event is a bubbling event. If the
   --  event can bubble the value is true, else the value is false.

   not overriding function Cancelable
    (Self : not null access constant Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "cancelable";
   --  Used to indicate whether or not an event can have its default action
   --  prevented. If the default action can be prevented the value is true,
   --  else the value is false.

   not overriding procedure Prevent_Default
    (Self : not null access Event) is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "preventDefault";
   --  If an event is cancelable, the preventDefault method is used to signify
   --  that the event is to be canceled, meaning any default action normally
   --  taken by the implementation as a result of the event will not occur.
   --  If, during any stage of event flow, the preventDefault method is called
   --  the event is canceled. Any default action associated with the event
   --  will not occur. Calling this method for a non - cancelable event has no
   --  effect. Once preventDefault has been called it will remain in effect
   --  throughout the remainder of the event's propagation. This method may be
   --  used during any stage of event flow.

   not overriding function Get_Default_Prevented
    (Self : not null access constant Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "defaultPrevented";
   --  Returns true if preventDefault() was invoked while the cancelable
   --  attribute value is true, and false otherwise.

   not overriding function Get_Is_Trusted
    (Self : not null access constant Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "isTrusted";
   --  Returns true if event was dispatched by the user agent, and false
   --  otherwise.

   not overriding function Get_Time_Stamp
    (Self : not null access constant Event)
       return WebAPI.DOM_Time_Stamp is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "timeStamp";
   --  Returns the creation time of event as the number of milliseconds that
   --  passed since 00:00:00 UTC on 1 January 1970.

end WebAPI.DOM.Events;
