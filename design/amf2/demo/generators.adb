with Ada.Wide_Wide_Text_IO;

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

   begin
      if not Self.In_Model then
         --  Return immediately when elements not belong to expected model.

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

   -----------------
   -- Enter_Model --
   -----------------

   overriding procedure Enter_Model
    (Self    : in out Generator;
     Element : not null AMF.UML.Models.UML_Model_Access) is
   begin
      Self.In_Model := Element.Get_Name = +"Schema";
   end Enter_Model;

   -----------------
   -- Leave_Model --
   -----------------

   overriding procedure Leave_Model
    (Self    : in out Generator;
     Element : not null AMF.UML.Models.UML_Model_Access) is
   begin
      Self.In_Model := False;
   end Leave_Model;

   -------------------
   -- Enter_Package --
   -------------------

   overriding procedure Enter_Package
     (Self    : in out Generator;
      Element : not null AMF.UML.Packages.UML_Package_Access) is
   begin
      Self.In_Model := False;
   end Enter_Package;

   -------------------
   -- Enter_Profile --
   -------------------

   overriding procedure Enter_Profile
    (Self    : in out Generator;
     Element : not null AMF.UML.Profiles.UML_Profile_Access) is
   begin
      Self.In_Model := False;
   end Enter_Profile;

end Generators;
