with Ada.Wide_Wide_Text_IO;

package body Generators is

   use Ada.Wide_Wide_Text_IO;

   -----------------
   -- Visit_Class --
   -----------------

   overriding procedure Visit_Class
     (Self    : in out Generator;
      Element : not null AMF.UML.Classes.UML_Class_Access) is
   begin
      Put_Line
        ("CREATE TABLE " & Element.Get_Name.Value.To_Wide_Wide_String & ";");
   end Visit_Class;

end Generators;
