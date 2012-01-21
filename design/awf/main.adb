with AWF.Application;
with AWF.Layouts;
with AWF.Push_Buttons;
with AWF.Widgets;

procedure Main is
   R  : AWF.Widgets.AWF_Widget_Access;
   L  : AWF.Layouts.AWF_Layout_Access;
   W1 : AWF.Push_Buttons.AWF_Push_Button_Access;
   W2 : AWF.Push_Buttons.AWF_Push_Button_Access;

begin
   AWF.Application.Initialize;

   R := AWF.Widgets.Create;
   L := AWF.Layouts.Create;
   R.Set_Layout (L);
   W1 := AWF.Push_Buttons.Create (R);
   W2 := AWF.Push_Buttons.Create (R);

   AWF.Application.Execute;
   AWF.Application.Finalize;
end Main;
