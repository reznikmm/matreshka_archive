with Interfaces;

package CMOF is

   pragma Pure;

   type Cmof_Unlimited_Natural is
     new Interfaces.Integer_32 range 0 .. Interfaces.Integer_32'Last;

   type CMOF_Parameter_Direction_Kind is
    (In_Direction,
     In_Out_Direction,
     Out_Direction,
     Return_Direction);

   type CMOF_Visibility_Kind is
    (Public_Visibility,
     Private_Visibility,
     Protected_Visibility,
     Package_Visibility);

   type Collection_Of_CMOF_Element is private;

   subtype Set_Of_CMOF_Class is Collection_Of_CMOF_Element;
   subtype Set_Of_CMOF_Classifier is Collection_Of_CMOF_Element;
   subtype Set_Of_CMOF_Comment is Collection_Of_CMOF_Element;
   subtype Set_Of_CMOF_Element is Collection_Of_CMOF_Element;
   subtype Set_Of_CMOF_Feature is Collection_Of_CMOF_Element;
   subtype Set_Of_CMOF_Named_Element is Collection_Of_CMOF_Element;
   subtype Set_Of_CMOF_Packageable_Element is Collection_Of_CMOF_Element;
   subtype Set_Of_CMOF_Property is Collection_Of_CMOF_Element;
   subtype Ordered_Set_Of_CMOF_Element is Collection_Of_CMOF_Element;
   subtype Ordered_Set_Of_CMOF_Property is Collection_Of_CMOF_Element;
   subtype Sequence_Of_CMOF_Element is Collection_Of_CMOF_Element;
   subtype Bag_Of_CMOF_Element is Collection_Of_CMOF_Element;

   type Collection_Of_CMOF_String is private;
--   subtype Set_Of_String is Collection_Of_String;
--   subtype Ordered_Set_Of_String is Collection_Of_String;
--   subtype Sequence_Of_String is Collection_Of_String;
--   subtype Bag_Of_String is Collection_Of_String;

   type Cmof_Element is private;
   Null_Cmof_Element : constant Cmof_Element;

   subtype Cmof_Association is Cmof_Element;
   subtype Cmof_Behavioral_Feature is Cmof_Element;
   subtype Cmof_Class is Cmof_Element;
   subtype CMOF_Classifier is Cmof_Element;
   subtype CMOF_Comment is Cmof_Element;
   subtype CMOF_Constraint is Cmof_Element;
   subtype CMOF_Data_Type is Cmof_Element;
   subtype CMOF_Directed_Relationship is Cmof_Element;
   subtype CMOF_Element_Import is Cmof_Element;
   subtype CMOF_Enumeration is Cmof_Element;
   subtype CMOF_Enumeration_Literal is Cmof_Element;
   subtype CMOF_Expression is Cmof_Element;
   subtype CMOF_Feature is Cmof_Element;
   subtype CMOF_Multiplicity_Element is Cmof_Element;
   subtype CMOF_Named_Element is Cmof_Element;
   subtype CMOF_Namespace is Cmof_Element;
   subtype CMOF_Opaque_Expression is Cmof_Element;
   subtype CMOF_Operation is Cmof_Element;
   subtype CMOF_Package is Cmof_Element;
   subtype CMOF_Packageable_Element is Cmof_Element;
   subtype CMOF_Package_Import is Cmof_Element;
   subtype CMOF_Package_Merge is Cmof_Element;
   subtype CMOF_Parameter is Cmof_Element;
   subtype CMOF_Primitive_Type is Cmof_Element;
   subtype CMOF_Property is Cmof_Element;
   subtype CMOF_Redefinable_Element is Cmof_Element;
   subtype CMOF_Relationship is Cmof_Element;
   subtype CMOF_Structural_Feature is Cmof_Element;
   subtype CMOF_Type is Cmof_Element;
   subtype CMOF_Typed_Element is Cmof_Element;
   subtype CMOF_Value_Specification is Cmof_Element;

--   type CMOF_Extent is private;

private

--   type CMOF_Extent is new Natural;

   type Cmof_Element is
     new Interfaces.Integer_32 range 0 .. Interfaces.Integer_32'Last;
   for CMOF_Element'Size use Interfaces.Integer_32'Size;
   Null_Cmof_Element : constant Cmof_Element := 0;

   type Collection_Of_CMOF_Element is
--     new Interfaces.Unsigned_32;
     new Interfaces.Integer_32 range 0 .. Interfaces.Integer_32'Last;
   for Collection_Of_CMOF_Element'Size use Interfaces.Integer_32'Size;

   type Collection_Of_CMOF_String is
     new Interfaces.Integer_32 range 0 .. Interfaces.Integer_32'Last;

end Cmof;
