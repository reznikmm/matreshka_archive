
package Cmof.Internals.Constructors is

   function Create_Association return Cmof_Association;

   function Create_Class return Cmof_Class;

   function Create_Comment return Cmof_Comment;

   function Create_Constraint return Cmof_Constraint;

   function Create_Data_Type return Cmof_Data_Type;

   function Create_Element_Import return Cmof_Element_Import;

   function Create_Enumeration return Cmof_Enumeration;

   function Create_Enumeration_Literal return Cmof_Enumeration_Literal;

   function Create_Expression return Cmof_Expression;

   function Create_Opaque_Expression return Cmof_Opaque_Expression;

   function Create_Operation return Cmof_Operation;

   function Create_Package return Cmof_Package;

   function Create_Package_Import return Cmof_Package_Import;

   function Create_Package_Merge return Cmof_Package_Merge;

   function Create_Parameter return Cmof_Parameter;

   function Create_Primitive_Type return Cmof_Primitive_Type;

   function Create_Property return Cmof_Property;

   procedure Initialize_Association (Self : Cmof_Association);

   procedure Initialize_Class (Self : Cmof_Class);

   procedure Initialize_Comment (Self : Cmof_Comment);

   procedure Initialize_Constraint (Self : Cmof_Constraint);

   procedure Initialize_Data_Type (Self : Cmof_Data_Type);

   procedure Initialize_Element_Import (Self : Cmof_Element_Import);

   procedure Initialize_Enumeration (Self : Cmof_Enumeration);

   procedure Initialize_Enumeration_Literal (Self : Cmof_Enumeration_Literal);

   procedure Initialize_Expression (Self : Cmof_Expression);

   procedure Initialize_Opaque_Expression (Self : Cmof_Opaque_Expression);

   procedure Initialize_Operation (Self : Cmof_Operation);

   procedure Initialize_Package (Self : Cmof_Package);

   procedure Initialize_Package_Import (Self : Cmof_Package_Import);

   procedure Initialize_Package_Merge (Self : Cmof_Package_Merge);

   procedure Initialize_Parameter (Self : Cmof_Parameter);

   procedure Initialize_Primitive_Type (Self : Cmof_Primitive_Type);

   procedure Initialize_Property (Self : Cmof_Property);

end Cmof.Internals.Constructors;
