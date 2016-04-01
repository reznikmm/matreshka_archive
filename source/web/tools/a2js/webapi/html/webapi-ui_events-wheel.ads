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
with WebAPI.UI_Events.Mouse;

package WebAPI.UI_Events.Wheel is

   pragma Preelaborate;

   type Wheel_Event is
     limited interface and WebAPI.UI_Events.Mouse.Mouse_Event;

   type Delta_Modes is (Pixel, Line, Page);

   not overriding function Get_Delta_X
    (Self : not null access constant Wheel_Event)
       return WebAPI.DOM_Double is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "deltaX";
   --  In user agents where the default action of the wheel event is to scroll,
   --  the value MUST be the measurement along the x-axis (in pixels, lines, or
   --  pages) to be scrolled in the case where the event is not cancelled.
   --  Otherwise, this is an implementation-specific measurement (in pixels,
   --  lines, or pages) of the movement of a wheel device around the x-axis.

   not overriding function Get_Delta_Y
    (Self : not null access constant Wheel_Event)
       return WebAPI.DOM_Double is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "deltaY";
   --  In user agents where the default action of the wheel event is to scroll,
   --  the value MUST be the measurement along the y-axis (in pixels, lines, or
   --  pages) to be scrolled in the case where the event is not cancelled.
   --  Otherwise, this is an implementation-specific measurement (in pixels,
   --  lines, or pages) of the movement of a wheel device around the y-axis.

   not overriding function Get_Delta_Z
    (Self : not null access constant Wheel_Event)
       return WebAPI.DOM_Double is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "deltaZ";
   --  In user agents where the default action of the wheel event is to scroll,
   --  the value MUST be the measurement along the z-axis (in pixels, lines, or
   --  pages) to be scrolled in the case where the event is not cancelled.
   --  Otherwise, this is an implementation-specific measurement (in pixels,
   --  lines, or pages) of the movement of a wheel device around the z-axis.

   not overriding function Get_Delta_Mode
    (Self : not null access constant Wheel_Event)
       return Delta_Modes is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "deltaMode";
   --  The deltaMode attribute contains an indication of the units of
   --  measurement for the delta values.

end WebAPI.UI_Events.Wheel;
