with League.Strings;
with AMF;

package CMOF.Internals.Attributes is

   function Internal_Get_Alias
     (Self : CMOF_Element) return League.Strings.Universal_String;

   procedure Internal_Set_Alias
     (Self : CMOF_Element;
      To   : League.Strings.Universal_String);

   function Internal_Get_Annotated_Element
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Association
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Association
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Attribute
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Body
     (Self : CMOF_Element) return League.Strings.Universal_String;

   procedure Internal_Set_Body
     (Self : CMOF_Element;
      To   : League.Strings.Universal_String);

   function Internal_Get_Body_Condition
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Body_Condition
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Class
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Class
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Constrained_Element
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Context
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Context
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Datatype
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Datatype
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Default
     (Self : CMOF_Element) return League.Strings.Universal_String;

   procedure Internal_Set_Default
     (Self : CMOF_Element;
      To   : League.Strings.Universal_String);

   function Internal_Get_Direction
     (Self : CMOF_Element) return CMOF_Parameter_Direction_Kind;

   procedure Internal_Set_Direction
     (Self : CMOF_Element;
      To   : CMOF_Parameter_Direction_Kind);

   function Internal_Get_Element_Import
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_End_Type
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Enumeration
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Enumeration
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Feature
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Featuring_Classifier
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_General
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Imported_Element
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Imported_Element
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Imported_Member
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Imported_Package
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Imported_Package
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Importing_Namespace
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Importing_Namespace
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Inherited_Member
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Is_Abstract
     (Self : CMOF_Element) return Boolean;

   procedure Internal_Set_Is_Abstract
     (Self : CMOF_Element;
      To   : Boolean);

   function Internal_Get_Is_Composite
     (Self : CMOF_Element) return Boolean;

   procedure Internal_Set_Is_Composite
     (Self : CMOF_Element;
      To   : Boolean);

   function Internal_Get_Is_Derived
     (Self : CMOF_Element) return Boolean;

   procedure Internal_Set_Is_Derived
     (Self : CMOF_Element;
      To   : Boolean);

   function Internal_Get_Is_Derived_Union
     (Self : CMOF_Element) return Boolean;

   procedure Internal_Set_Is_Derived_Union
     (Self : CMOF_Element;
      To   : Boolean);

   function Internal_Get_Is_Final_Specialization
     (Self : CMOF_Element) return Boolean;

   procedure Internal_Set_Is_Final_Specialization
     (Self : CMOF_Element;
      To   : Boolean);

   function Internal_Get_Is_Leaf
     (Self : CMOF_Element) return Boolean;

   procedure Internal_Set_Is_Leaf
     (Self : CMOF_Element;
      To   : Boolean);

   function Internal_Get_Is_Ordered
     (Self : CMOF_Element) return Boolean;

   procedure Internal_Set_Is_Ordered
     (Self : CMOF_Element;
      To   : Boolean);

   function Internal_Get_Is_Query
     (Self : CMOF_Element) return Boolean;

   procedure Internal_Set_Is_Query
     (Self : CMOF_Element;
      To   : Boolean);

   function Internal_Get_Is_Read_Only
     (Self : CMOF_Element) return Boolean;

   procedure Internal_Set_Is_Read_Only
     (Self : CMOF_Element;
      To   : Boolean);

   function Internal_Get_Is_Unique
     (Self : CMOF_Element) return Boolean;

   procedure Internal_Set_Is_Unique
     (Self : CMOF_Element;
      To   : Boolean);

   function Internal_Get_Language
     (Self : CMOF_Element) return Collection_Of_CMOF_String;

   function Internal_Get_Lower
     (Self : CMOF_Element) return Integer;

   procedure Internal_Set_Lower
     (Self : CMOF_Element;
      To   : Integer);

   function Internal_Get_Member
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Member_End
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Merged_Package
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Merged_Package
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Name
     (Self : CMOF_Element) return League.Strings.Universal_String;

   procedure Internal_Set_Name
     (Self : CMOF_Element;
      To   : League.Strings.Universal_String);

   function Internal_Get_Namespace
     (Self : CMOF_Element) return CMOF_Element;

   function Internal_Get_Navigable_Owned_End
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Nested_Package
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Nesting_Package
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Nesting_Package
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Operand
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Operation
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Operation
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Opposite
     (Self : CMOF_Element) return CMOF_Element;

   function Internal_Get_Owned_Attribute
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Owned_Comment
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Owned_Element
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Owned_End
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Owned_Literal
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Owned_Member
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Owned_Operation
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Owned_Parameter
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Owned_Rule
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Owned_Type
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Owner
     (Self : CMOF_Element) return CMOF_Element;

   function Internal_Get_Owning_Association
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Owning_Association
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Package
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Package
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Package_Import
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Package_Merge
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Packaged_Element
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Postcondition
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Precondition
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Qualified_Name
     (Self : CMOF_Element) return League.Strings.Universal_String;

   function Internal_Get_Raised_Exception
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Receiving_Package
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Receiving_Package
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Redefined_Element
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Redefined_Operation
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Redefined_Property
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Redefinition_Context
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Related_Element
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Source
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Specification
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Specification
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Subsetted_Property
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Super_Class
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Target
     (Self : CMOF_Element) return Collection_Of_CMOF_Element;

   function Internal_Get_Type
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Type
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Upper
     (Self : CMOF_Element) return AMF.Unlimited_Natural;

   procedure Internal_Set_Upper
     (Self : CMOF_Element;
      To   : AMF.Unlimited_Natural);

   function Internal_Get_Visibility
     (Self : CMOF_Element) return CMOF_Element;

   procedure Internal_Set_Visibility
     (Self : CMOF_Element;
      To   : CMOF_Element);

   function Internal_Get_Uri
     (Self : CMOF_Element) return League.Strings.Universal_String;

   procedure Internal_Set_Uri
     (Self : CMOF_Element;
      To   : League.Strings.Universal_String);

end CMOF.Internals.Attributes;
