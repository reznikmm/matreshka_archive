with Ada.Wide_Wide_Text_IO;

procedure Put_Line (Item : League.Strings.Universal_String) is
begin
   Ada.Wide_Wide_Text_IO.Put_Line (Item.To_Wide_Wide_String);
end Put_Line;
