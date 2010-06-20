--  with Ada.Text_IO;
with Ada.Wide_Wide_Text_IO;
--  with League.Strings.Debug;

procedure Put_Line (Item : League.Strings.Universal_String) is
begin
--   Ada.Text_IO.Put_Line (League.Strings.Debug.Debug_Image (Item));
   Ada.Wide_Wide_Text_IO.Put_Line (Item.To_Wide_Wide_String);
end Put_Line;
