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
-- Copyright © 2015-2016, Vadim Godunko <vgodunko@gmail.com>                --
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
with WebAPI.DOM.Event_Targets;

package WebAPI.UI_Events.Mouse is

   pragma Preelaborate;

   type Mouse_Event is limited interface and WebAPI.UI_Events.UI_Event;

   not overriding function Get_Screen_X
    (Self : not null access constant Mouse_Event)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "screenX";
   --  The horizontal coordinate at which the event occurred relative to the
   --  origin of the screen coordinate system.

   not overriding function Get_Screen_Y
    (Self : not null access constant Mouse_Event)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "screenY";
   --  The vertical coordinate at which the event occurred relative to the
   --  origin of the screen coordinate system.

   not overriding function Get_Client_X
    (Self : not null access constant Mouse_Event)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "clientX";
   --  The horizontal coordinate at which the event occurred relative to the
   --  viewport associated with the event.

   not overriding function Get_Client_Y
    (Self : not null access constant Mouse_Event)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "clientY";
   --  The vertical coordinate at which the event occurred relative to the
   --  viewport associated with the event.

   not overriding function Get_Ctrl_Key
    (Self : not null access constant Mouse_Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "ctrlKey";
   --  True if the 'Control' (control) key modifier was active.

   not overriding function Get_Shift_Key
    (Self : not null access constant Mouse_Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "shiftKey";
   --  True if the shift ('Shift') key modifier was active.

   not overriding function Get_Alt_Key
    (Self : not null access constant Mouse_Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "altKey";
   --  True if the 'Alt' (alternative) (or 'Option') key modifier was active.

   not overriding function Get_Meta_Key
    (Self : not null access constant Mouse_Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "metaKey";
   --  True if the meta ('Meta') key modifier was active.

   not overriding function Get_Button
    (Self : not null access constant Mouse_Event)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "button";
   --  During mouse events caused by the depression or release of a mouse
   --  button, button MUST be used to indicate which pointer device button
   --  changed state.

   not overriding function Get_Related_Target
    (Self : not null access constant Mouse_Event)
       return WebAPI.DOM.Event_Targets.Event_Target_Access is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "relatedTarget";
   --  Used to identify a secondary EventTarget related to a UI event,
   --  depending on the type of event.

   not overriding function Get_Buttons
    (Self : not null access constant Mouse_Event)
       return WebAPI.DOM_Unsigned_Short is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "buttons";
   --  During any mouse events, buttons MUST be used to indicate which
   --  combination of mouse buttons are currently being pressed, expressed as a
   --  bitmask.

   not overriding function Get_Modifier_State
    (Self    : not null access constant Mouse_Event;
     Key_Arg : WebAPI.DOM_String) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "getModifierState";
   --  Queries the state of a modifier using a key value.
   --
   --  Returns true if it is a modifier key and the modifier is activated,
   --  false otherwise.

end WebAPI.UI_Events.Mouse;
