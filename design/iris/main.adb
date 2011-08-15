with Ada.Wide_Wide_Text_IO;

with League.Strings;

with League.IRIs;

procedure Main is
   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   Ref : League.IRIs.IRI;

begin
   Ref.Set_IRI (+"hTtP://vadim:nopasswd@qtada.com/download//file%2f?x=y#f");
   Ada.Wide_Wide_Text_IO.Put_Line (Ref.To_Universal_String.To_Wide_Wide_String);
end Main;
