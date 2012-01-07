------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Characters.Wide_Wide_Latin_1;

with League.Strings;

with AWF.Registry;
pragma Elaborate (AWF.Registry);

package body AWF.Internals.AWF_Widgets is

   procedure onkeydown_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure onkeypress_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure onkeyup_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure onclick_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure ondblclick_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure ondrag_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure ondragend_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure ondragenter_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure ondragleave_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure ondragover_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure ondragstart_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure ondrop_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure onmousedown_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure onmousemove_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure onmouseout_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure onmouseover_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure onmouseup_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure onmousewheel_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   procedure onscroll_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      Last_Id : Natural := 0;

      ----------------
      -- Initialize --
      ----------------

      procedure Initialize (Self : not null access AWF_Widget_Proxy'Class) is
      begin
         Last_Id := Last_Id + 1;
         Self.Id := Last_Id;

         AWF.Registry.Register_Widget (Self);
      end Initialize;

   end Constructors;

   --------
   -- Id --
   --------

   function Id
    (Self : not null access constant AWF_Widget_Proxy) return Natural is
   begin
      return Self.Id;
   end Id;

   ---------------------
   -- onclick_Handler --
   ---------------------

   procedure onclick_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Click_Event;
   end onclick_Handler;

   ------------------------
   -- ondblclick_Handler --
   ------------------------

   procedure ondblclick_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Double_Click_Event;
   end ondblclick_Handler;

   --------------------
   -- ondrag_Handler --
   --------------------

   procedure ondrag_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Drag_Event;
   end ondrag_Handler;

   -----------------------
   -- ondragend_Handler --
   -----------------------

   procedure ondragend_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Drag_End_Event;
   end ondragend_Handler;

   -------------------------
   -- ondragenter_Handler --
   -------------------------

   procedure ondragenter_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Drag_Enter_Event;
   end ondragenter_Handler;

   -------------------------
   -- ondragleave_Handler --
   -------------------------

   procedure ondragleave_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Drag_Leave_Event;
   end ondragleave_Handler;

   ------------------------
   -- ondragover_Handler --
   ------------------------

   procedure ondragover_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Drag_Over_Event;
   end ondragover_Handler;

   -------------------------
   -- ondragstart_Handler --
   -------------------------

   procedure ondragstart_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Drag_Start_Event;
   end ondragstart_Handler;

   --------------------
   -- ondrop_Handler --
   --------------------

   procedure ondrop_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Drop_Event;
   end ondrop_Handler;

   -----------------------
   -- onkeydown_Handler --
   -----------------------

   procedure onkeydown_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Key_Down_Event;
   end onkeydown_Handler;

   ------------------------
   -- onkeypress_Handler --
   ------------------------

   procedure onkeypress_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Key_Press_Event;
   end onkeypress_Handler;

   ---------------------
   -- onkeyup_Handler --
   ---------------------

   procedure onkeyup_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Key_Up_Event;
   end onkeyup_Handler;

   -------------------------
   -- onmousedown_Handler --
   -------------------------

   procedure onmousedown_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Mouse_Down_Event;
   end onmousedown_Handler;

   -------------------------
   -- onmousemove_Handler --
   -------------------------

   procedure onmousemove_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Mouse_Move_Event;
   end onmousemove_Handler;

   ------------------------
   -- onmouseout_Handler --
   ------------------------

   procedure onmouseout_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Mouse_Out_Event;
   end onmouseout_Handler;

   -------------------------
   -- onmouseover_Handler --
   -------------------------

   procedure onmouseover_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Mouse_Over_Event;
   end onmouseover_Handler;

   -----------------------
   -- onmouseup_Handler --
   -----------------------

   procedure onmouseup_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Mouse_Up_Event;
   end onmouseup_Handler;

   --------------------------
   -- onmousewheel_Handler --
   --------------------------

   procedure onmousewheel_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Mouse_Wheel_Event;
   end onmousewheel_Handler;

   ----------------------
   -- onscroll_Handler --
   ----------------------

   procedure onscroll_Handler
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      Widget.Scroll_Event;
   end onscroll_Handler;

   -----------------
   -- Render_Head --
   -----------------

   not overriding procedure Render_Head
    (Self    : not null access AWF_Widget_Proxy;
     Context : in out AWF.HTML_Writers.HTML_Writer'Class)
   is
      use Ada.Characters.Wide_Wide_Latin_1;

   begin
      Context.Start_Script;
      Context.Characters
       (League.Strings.To_Universal_String
         (LF
            & "function AWFWidgetOnEvent(element,event)" & LF
            & "{" & LF
            & "   var request = new XMLHttpRequest();" & LF
            & "   request.onreadystatechange=function()" & LF
            & "   {" & LF
            & "     if (request.readyState == 4 && request.status == 200)" & LF
            & "     {" & LF
            & "       eval(request.responseText);" & LF
            & "     }" & LF
            & "   }" & LF
            & "   request.open('GET', window.location + '/' + element.id + '/' + event, true);" & LF
            & "   request.send();" & LF
            & "}" & LF));
      Context.End_Script;
   end Render_Head;

begin
   --  Register callbacks

   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("onkeydown"),
     onkeydown_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("onkeypress"),
     onkeypress_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("onkeyup"),
     onkeyup_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("onclick"),
     onclick_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("ondblclick"),
     ondblclick_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("ondrag"),
     ondrag_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("ondragend"),
     ondragend_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("ondragenter"),
     ondragenter_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("ondragleave"),
     ondragleave_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("ondragover"),
     ondragover_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("ondragstart"),
     ondragstart_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("ondrop"),
     ondrop_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("onmousedown"),
     onmousedown_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("onmousemove"),
     onmousemove_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("onmouseout"),
     onmouseout_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("onmouseover"),
     onmouseover_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("onmouseup"),
     onmouseup_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("onmousewheel"),
     onmousewheel_Handler'Access);
   AWF.Registry.Register_Callback
    (AWF_Widget_Proxy'Tag,
     League.Strings.To_Universal_String ("onscroll"),
     onscroll_Handler'Access);
end AWF.Internals.AWF_Widgets;
