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
-- Copyright © 2015, Vadim Godunko <vgodunko@gmail.com>                     --
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

package WebAPI.UI_Events.Keyboard is

   pragma Preelaborate;

   type Key_Locations is (Standard, Left, Right, Numpad);

   type Keyboard_Event is
     limited interface and WebAPI.UI_Events.UI_Event;

   not overriding function Get_Key
    (Self : not null access constant Keyboard_Event)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "key";
   --  Key holds the key value of the key pressed. If the value is has a
   --  printed representation, it MUST be a non-empty Unicode character string,
   --  conforming to the algorithm for determining the key value defined in
   --  this specification. If the value is a control key which has no printed
   --  representation, it MUST be one of the key values defined in the key
   --  values set, as determined by the algorithm for determining the key
   --  value. Implementations that are unable to identify a key MUST use the
   --  key value 'Unidentified'.

   not overriding function Get_Code
    (Self : not null access constant Keyboard_Event)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "code";
   --  Code holds a string that identifies the physical key being pressed. The
   --  value is not affected by the current keyboard layout or modifier state,
   --  so a particular key will always return the same value.

   not overriding function Get_Location
    (Self : not null access constant Keyboard_Event)
       return Key_Locations is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "location";
   --  The location attribute contains an indication of the logical location of
   --  the key on the device.

   not overriding function Get_Ctrl_Key
    (Self : not null access constant Keyboard_Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "ctrlKey";
   --  True if the 'Control' (control) key modifier was active.

   not overriding function Get_Shift_Key
    (Self : not null access constant Keyboard_Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "shiftKey";
   --  True if the shift ('Shift') key modifier was active.

   not overriding function Get_Alt_Key
    (Self : not null access constant Keyboard_Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "altKey";
   --  True if the 'Alt' (alternative) (or 'Option') key modifier was active.

   not overriding function Get_Meta_Key
    (Self : not null access constant Keyboard_Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "metaKey";
   --  True if the meta ('Meta') key modifier was active.

   not overriding function Get_Repeat
    (Self : not null access constant Keyboard_Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "repeat";
   --  True if the key has been pressed in a sustained manner. Holding down a
   --  key MUST result in the repeating the events keydown, beforeedit, edit in
   --  this order, at a rate determined by the system configuration. For mobile
   --  devices which have long-key-press behavior, the first key event with a
   --  repeat attribute value of 'true' MUST serve as an indication of a
   --  long-key-press. The length of time that the key MUST be pressed in order
   --  to begin repeating is configuration-dependent.

   not overriding function Get_Is_Composing
    (Self : not null access constant Keyboard_Event) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "isComposing";
   --  True if the key event occurs as part of a composition session, i.e.,
   --  after a compositionstart event and before the corresponding
   --  compositionend event.

   not overriding function Get_Modifier_State
    (Self    : not null access constant Keyboard_Event;
     Key_Arg : WebAPI.DOM_String) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Method,
            Link_Name  => "getModifierState";
   --  Queries the state of a modifier using a key value.
   --
   --  Returns true if it is a modifier key and the modifier is activated,
   --  false otherwise.

   ----------------
   -- Legacy API --
   ----------------

   not overriding function Get_Char_Code
    (Self : not null access constant Keyboard_Event)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "charCode";
   --  charCode holds a character value, for keypress events which generate
   --  character input. The value is the Unicode reference number (code point)
   --  of that character (e.g. event.charCode = event.key.charCodeAt(0) for
   --  printable characters). For keydown or keyup events, the value of
   --  charCode is 0.

   not overriding function Get_Key_Code
    (Self : not null access constant Keyboard_Event)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "keyCode";
   --  keyCode holds a system- and implementation-dependent numerical code
   --  signifying the unmodified identifier associated with the key pressed.
   --  Unlike the KeyboardEvent.key attribute, the set of possible values are
   --  not normatively defined in this specification. Typically, these value of
   --  the keyCode SHOULD represent the decimal codepoint in ASCII
   --  [RFC20][US-ASCII] or Windows 1252 [WIN1252], but MAY be drawn from a
   --  different appropriate character set. Implementations that are unable to
   --  identify a key use the key value '0'.

   not overriding function Get_Which
    (Self : not null access constant Keyboard_Event)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "which";
   --  which holds a system- and implementation-dependent numerical code
   --  signifying the unmodified identifier associated with the key pressed. In
   --  most cases, the value is identical to keyCode.

end WebAPI.UI_Events.Keyboard;
