with Ada.Wide_Wide_Text_IO;

with AMF.UML.Properties.Collections;
with AMF.UML.Types;

package body Generators is

   use Ada.Wide_Wide_Text_IO;

   -----------------
   -- Visit_Class --
   -----------------

   overriding procedure Visit_Class
     (Self    : in out Generator;
      Element : not null AMF.UML.Classes.UML_Class_Access)
   is
      use type AMF.Optional_Integer;

      Owned_Attribute : constant
        AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property
          := Element.Get_Owned_Attribute;
      Attribute       : AMF.UML.Properties.UML_Property_Access;
      First           : Boolean := True;
      Attribute_Type  : AMF.UML.Types.UML_Type_Access;

   begin
      Put ("CREATE TABLE " & Element.Get_Name.Value.To_Wide_Wide_String);

      for J in 1 .. Owned_Attribute.Length loop
         Attribute      := Owned_Attribute.Element (J);
         Attribute_Type := Attribute.Get_Type;

         if not Attribute.Is_Multivalued then
            if First then
               New_Line;
               Put ("  (");
               First := False;
         
            else
               Put_Line (";");
               Put ("   ");
            end if;

            Put (Attribute.Get_Name.Value.To_Wide_Wide_String);
            Put (' ');
            Put
             (Attribute_Type.Get_Name.Value.To_Uppercase.To_Wide_Wide_String);

            if Attribute.Lower_Bound = 1 then
               Put (" NOT NULL");
            end if;
         end if;
      end loop;

      Put_Line (");");
   end Visit_Class;

end Generators;
