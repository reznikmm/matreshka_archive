with Ada.Tags;

with AMF.Elements.Collections;

package body Visitors is

   -----------
   -- Visit --
   -----------

   procedure Visit
     (Self   : in out Visitor'Class;
      Extent : not null access AMF.Extents.Extent'Class)
   is
      use type AMF.Elements.Element_Access;

      Elements : AMF.Elements.Collections.Reflective_Collection
        := Extent.Elements;
      Element  : AMF.Elements.Element_Access;

   begin
      for J in 1 .. Elements.Length loop
         Element := Elements.Element (J);

         if Element.Container = null then
            Self.Visit (Element);
         end if;
      end loop;
   end Visit;

   -----------
   -- Visit --
   -----------

   procedure Visit
     (Self    : in out Visitor'Class;
      Element : not null AMF.Elements.Element_Access) is
   begin
      if Element.all in AMF.UML.Classes.UML_Class'Class then
         Self.Visit_Class (AMF.UML.Classes.UML_Class_Access (Element));

      elsif Element.all in AMF.UML.Comments.UML_Comment'Class then
         Self.Visit_Comment (AMF.UML.Comments.UML_Comment_Access (Element));

      elsif Element.all
              in AMF.UML.Literal_Integers.UML_Literal_Integer'Class
      then
         Self.Visit_Literal_Integer
          (AMF.UML.Literal_Integers.UML_Literal_Integer_Access (Element));

      elsif Element.all in AMF.UML.Models.UML_Model'Class then
         Self.Visit_Model (AMF.UML.Models.UML_Model_Access (Element));

      elsif Element.all in AMF.UML.Packages.UML_Package'Class then
         Self.Visit_Package (AMF.UML.Packages.UML_Package_Access (Element));

      elsif Element.all
              in AMF.UML.Primitive_Types.UML_Primitive_Type'Class
      then
         Self.Visit_Primitive_Type
          (AMF.UML.Primitive_Types.UML_Primitive_Type_Access (Element));

      elsif Element.all in AMF.UML.Properties.UML_Property'Class then
         Self.Visit_Property
          (AMF.UML.Properties.UML_Property_Access (Element));

      elsif Element.all
              in AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural'Class
      then
         Self.Visit_Literal_Unlimited_Natural
          (AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Access
            (Element));

      else
         raise Program_Error with Ada.Tags.External_Tag (Element'Tag);
      end if;
   end Visit;

   -----------------
   -- Visit_Class --
   -----------------

   not overriding procedure Visit_Class
     (Self    : in out Visitor;
      Element : not null AMF.UML.Classes.UML_Class_Access) is
   begin
      null;
   end Visit_Class;

   ---------------------------
   -- Visit_Literal_Integer --
   ---------------------------

   not overriding procedure Visit_Literal_Integer
     (Self    : in out Visitor;
      Element : not null AMF.UML.Literal_Integers.UML_Literal_Integer_Access)
   is
   begin
      null;
   end Visit_Literal_Integer;

   -----------------
   -- Visit_Model --
   -----------------

   not overriding procedure Visit_Model
     (Self    : in out Visitor;
      Element : not null AMF.UML.Models.UML_Model_Access) is
   begin
      null;
   end Visit_Model;

   -------------------
   -- Visit_Package --
   -------------------

   not overriding procedure Visit_Package
     (Self    : in out Visitor;
      Element : not null AMF.UML.Packages.UML_Package_Access) is
   begin
      null;
   end Visit_Package;

   --------------------------
   -- Visit_Primitive_Type --
   --------------------------

   not overriding procedure Visit_Primitive_Type
     (Self    : in out Visitor;
      Element : not null AMF.UML.Primitive_Types.UML_Primitive_Type_Access) is
   begin
      null;
   end Visit_Primitive_Type;

   --------------------
   -- Visit_Property --
   --------------------

   not overriding procedure Visit_Property
     (Self    : in out Visitor;
      Element : not null AMF.UML.Properties.UML_Property_Access) is
   begin
      null;
   end Visit_Property;

   -------------------------------------
   -- Visit_Literal_Unlimited_Natural --
   -------------------------------------

   not overriding procedure Visit_Literal_Unlimited_Natural
     (Self    : in out Visitor;
      Element : not null
        AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Access)
   is
   begin
      null;
   end Visit_Literal_Unlimited_Natural;

end Visitors;
