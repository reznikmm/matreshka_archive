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
with League.Strings;

with AWF.Utilities;

package body AWF.Push_Buttons is

   -----------------
   -- Click_Event --
   -----------------

   overriding procedure Click_Event (Self : not null access AWF_Push_Button) is
   begin
      Self.Clicked.Emit;
   end Click_Event;

   -------------
   -- Clicked --
   -------------

   not overriding function Clicked
    (Self : not null access AWF_Push_Button)
       return AWF.Signals.Signal_Connector is
   begin
      return Self.Clicked.Connector;
   end Clicked;

   ------------
   -- Create --
   ------------

   function Create
    (Parent : access AWF.Widgets.AWF_Widget'Class := null)
       return not null AWF_Push_Button_Access
   is
      Result : AWF_Push_Button_Access := new AWF_Push_Button;

   begin
      AWF.Internals.AWF_Widgets.Constructors.Initialize (Result, Parent);

      return Result;
   end Create;

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
          League.Strings.To_Universal_String
           ("AWFWidgetOnEvent(this,""onclick"")"));
      Context.Characters (Self.Text);
      Context.End_Div;
   end Render_Body;

   --------------
   -- Set_Text --
   --------------

   not overriding procedure Set_Text
    (Self : not null access AWF_Push_Button;
     Text : League.Strings.Universal_String)
   is
      use type League.Strings.Universal_String;

   begin
      Self.Text := Text;
      Self.Append_Payload
       ("document.getElementById('"
          & AWF.Utilities.Image (Self.Id)
          & "').innerHTML = '"
          & Self.Text
          & "';");
   end Set_Text;

end AWF.Push_Buttons;
