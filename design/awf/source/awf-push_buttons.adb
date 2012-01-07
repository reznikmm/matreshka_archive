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
with AWF.Utilities;

package body AWF.Push_Buttons is

   procedure On_Click (Widget : not null AWF.Widgets.AWF_Widget_Access);

   ------------
   -- Create --
   ------------

   function Create return not null AWF_Push_Button_Access is
      Result : AWF_Push_Button_Access := new AWF_Push_Button;

   begin
      AWF.Widgets.Constructors.Initialize (Result);

      return Result;
   end Create;

   --------------
   -- On_Click --
   --------------

   procedure On_Click (Widget : not null AWF.Widgets.AWF_Widget_Access) is
   begin
      AWF_Push_Button'Class (Widget.all).On_Click_Event;
   end On_Click;

   -----------------
   -- Render_Body --
   -----------------

   overriding procedure Render_Body
    (Self    : not null access AWF_Push_Button;
     Context : in out AWF.HTML_Writers.HTML_Writer'Class) is
   begin
      Context.Start_Div
       (Id       => AWF.Utilities.Image (Self.Id),
        On_Click =>
          League.Strings.To_Universal_String ("AWFPushButtonOnClick(this)"));
      Context.Characters (League.Strings.To_Universal_String ("Push"));
      Context.End_Div;
   end Render_Body;

   -------------------
   -- Render_Script --
   -------------------

   overriding procedure Render_Script
    (Self    : not null access AWF_Push_Button;
     Context : in out AWF.HTML_Writers.HTML_Writer'Class)
   is
      use Ada.Characters.Wide_Wide_Latin_1;

   begin
      Context.Start_Script;
      Context.Characters
       (League.Strings.To_Universal_String
         (LF
            & "function AWFPushButtonOnClick(element)" & LF
            & "{" & LF
            & "   var request = new XMLHttpRequest();" & LF
            & "   request.onreadystatechange=function()" & LF
            & "   {" & LF
            & "     if (request.readyState == 4 && request.status == 200)" & LF
            & "     {" & LF
            & "       element.innerHTML = request.responseText;" & LF
            & "     }" & LF
            & "   }" & LF
            & "   request.open('GET', window.location + '/' + element.id + '/onClick', true);" & LF
            & "   request.send();" & LF
            & "}" & LF));
      Context.End_Script;
   end Render_Script;

   ------------------
   -- Render_Style --
   ------------------

   overriding procedure Render_Style
    (Self    : not null access AWF_Push_Button;
     Context : in out AWF.HTML_Writers.HTML_Writer'Class) is
   begin
      null;
   end Render_Style;

begin
   AWF.Registry.Register_Callback
    (AWF_Push_Button'Tag,
     League.Strings.To_Universal_String ("onClick"),
     On_Click'Access);
end AWF.Push_Buttons;
