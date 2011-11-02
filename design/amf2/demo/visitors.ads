with AMF.Elements;
with AMF.Extents;

with AMF.UML.Classes;
with AMF.UML.Comments;
with AMF.UML.Literal_Integers;
with AMF.UML.Models;
with AMF.UML.Packages;
with AMF.UML.Primitive_Types;
with AMF.UML.Properties;
with AMF.UML.Literal_Unlimited_Naturals;

package Visitors is

   type Visitor is abstract tagged limited private;

   procedure Visit
     (Self   : in out Visitor'Class;
      Extent : not null access AMF.Extents.Extent'Class);

   procedure Visit
     (Self    : in out Visitor'Class;
      Element : not null AMF.Elements.Element_Access);

   not overriding procedure Visit_Class
     (Self    : in out Visitor;
      Element : not null AMF.UML.Classes.UML_Class_Access);

   not overriding procedure Visit_Comment
     (Self    : in out Visitor;
      Element : not null AMF.UML.Comments.UML_Comment_Access) is null;

   not overriding procedure Visit_Literal_Integer
     (Self    : in out Visitor;
      Element : not null AMF.UML.Literal_Integers.UML_Literal_Integer_Access);

   not overriding procedure Visit_Model
     (Self    : in out Visitor;
      Element : not null AMF.UML.Models.UML_Model_Access);

   not overriding procedure Visit_Package
     (Self    : in out Visitor;
      Element : not null AMF.UML.Packages.UML_Package_Access);

   not overriding procedure Visit_Primitive_Type
     (Self    : in out Visitor;
      Element : not null AMF.UML.Primitive_Types.UML_Primitive_Type_Access);

   not overriding procedure Visit_Property
     (Self    : in out Visitor;
      Element : not null AMF.UML.Properties.UML_Property_Access);

   not overriding procedure Visit_Literal_Unlimited_Natural
     (Self    : in out Visitor;
      Element : not null
        AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Access);

private

   type Visitor is abstract tagged limited record
      null;
   end record;

end Visitors;
