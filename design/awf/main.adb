--with Ada.Wide_Wide_Text_IO;

with FastCGI.Application;
--with League.Strings;

--with AWF.HTML_Writers;
with AWF.Callbacks;
with AWF.Push_Buttons;

procedure Main is
--   W : AWF.HTML_Writers.HTML_Writer;
--   B : aliased AWF.Push_Buttons.AWF_Push_Button;

   W : AWF.Push_Buttons.AWF_Push_Button_Access;

begin
   FastCGI.Application.Initialize;

   W := AWF.Push_Buttons.Create;

   FastCGI.Application.Execute (AWF.Callbacks.Handler'Access);
   FastCGI.Application.Finalize;
--   W.Start_HTML;
--   W.Start_Head;
--   W.Start_Title;
--   W.Characters (League.Strings.To_Universal_String ("AWF Demo"));
--   W.End_Title;
--   W.End_Head;
--   W.Start_Body;
--   B.Draw (W);
----   W.Start_Div;
----   W.Characters (League.Strings.To_Universal_String ("Push"));
----   W.End_Div;
--   W.End_Body;
--   W.End_HTML;
--
--   Ada.Wide_Wide_Text_IO.Put_Line (W.Text.To_Wide_Wide_String);
end Main;
