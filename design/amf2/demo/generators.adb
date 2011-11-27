with Ada.Wide_Wide_Text_IO;

with AMF.Elements;
with AMF.UML.Elements;
with AMF.UML.Models;
with AMF.UML.Properties.Collections;
with AMF.UML.Types;
with League.Strings;

package body Generators is

   use Ada.Wide_Wide_Text_IO;
   use type AMF.Optional_String;

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   -----------------
   -- Enter_Class --
   -----------------

   overriding procedure Enter_Class
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
      Owner           : AMF.UML.Elements.UML_Element_Access;

   begin
      Owner :=
        AMF.UML.Elements.UML_Element_Access
         (AMF.Elements.Element_Access (Element).Container);

      if Owner.all not in AMF.UML.Models.UML_Model'Class
        or else AMF.UML.Models.UML_Model_Access (Owner).Get_Name /= +"Schema"
      then
         --  Return immediately when owner of current UML::Class is not
         --  UML::Model called "Schema".

         return;
      end if;

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
   end Enter_Class;

end Generators;
