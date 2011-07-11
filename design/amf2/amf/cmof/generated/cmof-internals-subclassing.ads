with AMF.Internals.Tables.CMOF_Metamodel;

package CMOF.Internals.Subclassing is

   function Is_Subclass
     (Self       : AMF.Internals.Tables.CMOF_Metamodel.CMOF_Meta_Class;
      Superclass : AMF.Internals.Tables.CMOF_Metamodel.CMOF_Meta_Class) return Boolean;

   function Is_Subclass_Reflective
     (Self       : CMOF_Element;
      Superclass : AMF.Internals.Tables.CMOF_Metamodel.CMOF_Meta_Class) return Boolean;

   function Is_Association (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Association);

   function Is_Behavioral_Feature (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Behavioral_Feature);

   function Is_Class (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Class);

   function Is_Classifier (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Classifier);

   function Is_Comment (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Comment);

   function Is_Constraint (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Constraint);

   function Is_Data_Type (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Data_Type);

   function Is_Directed_Relationship (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Directed_Relationship);

   function Is_Element (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Element);

   function Is_Element_Import (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Element_Import);

   function Is_Enumeration (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Enumeration);

   function Is_Enumeration_Literal (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Enumeration_Literal);

   function Is_Expression (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Expression);

   function Is_Feature (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Feature);

   function Is_Multiplicity_Element (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Multiplicity_Element);

   function Is_Named_Element (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Named_Element);

   function Is_Namespace (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Namespace);

   function Is_Opaque_Expression (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Opaque_Expression);

   function Is_Operation (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Operation);

   function Is_Package (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Package);

   function Is_Package_Import (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Package_Import);

   function Is_Package_Merge (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Package_Merge);

   function Is_Packageable_Element (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Packageable_Element);

   function Is_Parameter (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Parameter);

   function Is_Primitive_Type (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Primitive_Type);

   function Is_Property (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Property);

   function Is_Redefinable_Element (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Redefinable_Element);

   function Is_Relationship (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Relationship);

   function Is_Structural_Feature (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Structural_Feature);

   function Is_Type (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Type);

   function Is_Typed_Element (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Typed_Element);

   function Is_Value_Specification (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Value_Specification);

end CMOF.Internals.Subclassing;
