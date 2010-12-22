
package Cmof.Internals.Constructors is

   function Create_Association
    (Extent : CMOF_Extent) return Cmof_Association;

   function Create_Class
    (Extent : CMOF_Extent) return Cmof_Class;

   function Create_Comment
    (Extent : CMOF_Extent) return Cmof_Comment;

   function Create_Constraint
    (Extent : CMOF_Extent) return Cmof_Constraint;

   function Create_Data_Type
    (Extent : CMOF_Extent) return Cmof_Data_Type;

   function Create_Element_Import
    (Extent : CMOF_Extent) return Cmof_Element_Import;

   function Create_Enumeration
    (Extent : CMOF_Extent) return Cmof_Enumeration;

   function Create_Enumeration_Literal
    (Extent : CMOF_Extent) return Cmof_Enumeration_Literal;

   function Create_Expression
    (Extent : CMOF_Extent) return Cmof_Expression;

   function Create_Opaque_Expression
    (Extent : CMOF_Extent) return Cmof_Opaque_Expression;

   function Create_Operation
    (Extent : CMOF_Extent) return Cmof_Operation;

   function Create_Package
    (Extent : CMOF_Extent) return Cmof_Package;

   function Create_Package_Import
    (Extent : CMOF_Extent) return Cmof_Package_Import;

   function Create_Package_Merge
    (Extent : CMOF_Extent) return Cmof_Package_Merge;

   function Create_Parameter
    (Extent : CMOF_Extent) return Cmof_Parameter;

   function Create_Primitive_Type
    (Extent : CMOF_Extent) return Cmof_Primitive_Type;

   function Create_Property
    (Extent : CMOF_Extent) return Cmof_Property;

   procedure Initialize_Association
    (Self   : Cmof_Association;
     Extent : CMOF_Extent);

   procedure Initialize_Class
    (Self   : Cmof_Class;
     Extent : CMOF_Extent);

   procedure Initialize_Comment
    (Self   : Cmof_Comment;
     Extent : CMOF_Extent);

   procedure Initialize_Constraint
    (Self   : Cmof_Constraint;
     Extent : CMOF_Extent);

   procedure Initialize_Data_Type
    (Self   : Cmof_Data_Type;
     Extent : CMOF_Extent);

   procedure Initialize_Element_Import
    (Self   : Cmof_Element_Import;
     Extent : CMOF_Extent);

   procedure Initialize_Enumeration
    (Self   : Cmof_Enumeration;
     Extent : CMOF_Extent);

   procedure Initialize_Enumeration_Literal
    (Self   : Cmof_Enumeration_Literal;
     Extent : CMOF_Extent);

   procedure Initialize_Expression
    (Self   : Cmof_Expression;
     Extent : CMOF_Extent);

   procedure Initialize_Opaque_Expression
    (Self   : Cmof_Opaque_Expression;
     Extent : CMOF_Extent);

   procedure Initialize_Operation
    (Self   : Cmof_Operation;
     Extent : CMOF_Extent);

   procedure Initialize_Package
    (Self   : Cmof_Package;
     Extent : CMOF_Extent);

   procedure Initialize_Package_Import
    (Self   : Cmof_Package_Import;
     Extent : CMOF_Extent);

   procedure Initialize_Package_Merge
    (Self   : Cmof_Package_Merge;
     Extent : CMOF_Extent);

   procedure Initialize_Parameter
    (Self   : Cmof_Parameter;
     Extent : CMOF_Extent);

   procedure Initialize_Primitive_Type
    (Self   : Cmof_Primitive_Type;
     Extent : CMOF_Extent);

   procedure Initialize_Property
    (Self   : Cmof_Property;
     Extent : CMOF_Extent);

end Cmof.Internals.Constructors;
