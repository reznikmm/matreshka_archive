with League.Strings;
with AMF;

package CMOF.Internals.Attributes is

   function Internal_Get_Alias
     (Self : CMOF_Element) return AMF.AMF_String;

   procedure Internal_Set_Alias
     (Self : CMOF_Element;
      To   : AMF.AMF_String);

   function Internal_Get_Annotated_Element
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Association
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Association
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Attribute
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Body
     (Self : CMOF_Element) return AMF.AMF_String;

   procedure Internal_Set_Body
     (Self : CMOF_Element;
      To   : AMF.AMF_String);

   function Internal_Get_Body_Condition
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Body_Condition
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Class
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Class
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Constrained_Element
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Context
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Context
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Datatype
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Datatype
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Default
     (Self : CMOF_Element) return AMF.AMF_String;

   procedure Internal_Set_Default
     (Self : CMOF_Element;
      To   : AMF.AMF_String);

   function Internal_Get_Direction
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Direction
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Element_Import
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_End_Type
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Enumeration
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Enumeration
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Feature
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Featuring_Classifier
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_General
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Imported_Element
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Imported_Element
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Imported_Member
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Imported_Package
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Imported_Package
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Importing_Namespace
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Importing_Namespace
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Inherited_Member
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Is_Abstract
     (Self : Cmof_Element) return AMF.AMF_Boolean;

   procedure Internal_Set_Is_Abstract
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean);

   function Internal_Get_Is_Composite
     (Self : Cmof_Element) return AMF.AMF_Boolean;

   procedure Internal_Set_Is_Composite
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean);

   function Internal_Get_Is_Derived
     (Self : Cmof_Element) return AMF.AMF_Boolean;

   procedure Internal_Set_Is_Derived
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean);

   function Internal_Get_Is_Derived_Union
     (Self : Cmof_Element) return AMF.AMF_Boolean;

   procedure Internal_Set_Is_Derived_Union
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean);

   function Internal_Get_Is_Final_Specialization
     (Self : Cmof_Element) return AMF.AMF_Boolean;

   procedure Internal_Set_Is_Final_Specialization
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean);

   function Internal_Get_Is_Leaf
     (Self : Cmof_Element) return AMF.AMF_Boolean;

   procedure Internal_Set_Is_Leaf
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean);

   function Internal_Get_Is_Ordered
     (Self : Cmof_Element) return AMF.AMF_Boolean;

   procedure Internal_Set_Is_Ordered
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean);

   function Internal_Get_Is_Query
     (Self : Cmof_Element) return AMF.AMF_Boolean;

   procedure Internal_Set_Is_Query
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean);

   function Internal_Get_Is_Read_Only
     (Self : Cmof_Element) return AMF.AMF_Boolean;

   procedure Internal_Set_Is_Read_Only
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean);

   function Internal_Get_Is_Unique
     (Self : Cmof_Element) return AMF.AMF_Boolean;

   procedure Internal_Set_Is_Unique
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean);

   function Internal_Get_Language
     (Self : CMOF_Element) return Collection_Of_CMOF_String;

   function Internal_Get_Lower
     (Self : Cmof_Element) return AMF.AMF_Integer;

   procedure Internal_Set_Lower
     (Self : CMOF_Element;
      To   : AMF.AMF_Integer);

   function Internal_Get_Member
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Member_End
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Merged_Package
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Merged_Package
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Name
     (Self : CMOF_Element) return AMF.AMF_String;

   procedure Internal_Set_Name
     (Self : CMOF_Element;
      To   : AMF.AMF_String);

   function Internal_Get_Namespace
     (Self : Cmof_Element) return Cmof_Element;

   function Internal_Get_Navigable_Owned_End
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Nested_Package
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Nesting_Package
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Nesting_Package
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Operand
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Operation
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Operation
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Opposite
     (Self : Cmof_Element) return Cmof_Element;

   function Internal_Get_Owned_Attribute
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Owned_Comment
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Owned_Element
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Owned_End
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Owned_Literal
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Owned_Member
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Owned_Operation
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Owned_Parameter
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Owned_Rule
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Owned_Type
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Owner
     (Self : Cmof_Element) return Cmof_Element;

   function Internal_Get_Owning_Association
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Owning_Association
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Package
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Package
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Package_Import
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Package_Merge
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Packaged_Element
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Postcondition
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Precondition
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Qualified_Name
     (Self : CMOF_Element) return AMF.AMF_String;

   function Internal_Get_Raised_Exception
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Receiving_Package
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Receiving_Package
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Redefined_Element
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Redefined_Operation
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Redefined_Property
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Redefinition_Context
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Related_Element
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Source
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Specification
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Specification
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Subsetted_Property
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Super_Class
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Target
     (Self : Cmof_Element) return Collection_Of_Cmof_Element;

   function Internal_Get_Type
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Type
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Upper
     (Self : Cmof_Element) return AMF.AMF_Unlimited_Natural;

   procedure Internal_Set_Upper
     (Self : CMOF_Element;
      To   : AMF.AMF_Unlimited_Natural);

   function Internal_Get_Visibility
     (Self : Cmof_Element) return Cmof_Element;

   procedure Internal_Set_Visibility
     (Self : CMOF_Element;
      To   : CMOF_Element);

end CMOF.Internals.Attributes;
