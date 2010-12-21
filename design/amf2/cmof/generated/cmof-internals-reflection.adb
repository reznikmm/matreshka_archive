with CMOF.Internals.Attributes;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Tables;
with CMOF.Internals.Types;

package body CMOF.Internals.Reflection is

   use CMOF.Internals.Attributes;
   use CMOF.Internals.Metamodel;
   use CMOF.Internals.Tables;
   use CMOF.Internals.Types;

   ---------
   -- Get --
   ---------

   function Get
    (Self     : CMOF_Element;
     Property : CMOF_Property) return AMF.Values.Value
   is

      function Get_Association return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Classifier_Attribute then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Attribute (Self));

         elsif Property = MP_CMOF_Namespace_Element_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Element_Import (Self));

         elsif Property = MP_CMOF_Association_End_Type then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_End_Type (Self));

         elsif Property = MP_CMOF_Classifier_Feature then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Feature (Self));

         elsif Property = MP_CMOF_Classifier_General then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_General (Self));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Imported_Member (Self));

         elsif Property = MP_CMOF_Classifier_Inherited_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Inherited_Member (Self));

         elsif Property = MP_CMOF_Association_Is_Derived then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Derived (Self));

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Final_Specialization (Self));

         elsif Property = MP_CMOF_Namespace_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Member (Self));

         elsif Property = MP_CMOF_Association_Member_End then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Member_End (Self));

         elsif Property = MP_CMOF_Named_Element_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Namespace (Self));

         elsif Property = MP_CMOF_Association_Navigable_Owned_End then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Navigable_Owned_End (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Association_Owned_End then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_End (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Member (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Rule (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Type_Package then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Package (Self));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Package_Import (Self));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Relationship_Related_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Related_Element (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Association;

      function Get_Class return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Classifier_Attribute then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Attribute (Self));

         elsif Property = MP_CMOF_Namespace_Element_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Element_Import (Self));

         elsif Property = MP_CMOF_Classifier_Feature then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Feature (Self));

         elsif Property = MP_CMOF_Classifier_General then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_General (Self));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Imported_Member (Self));

         elsif Property = MP_CMOF_Classifier_Inherited_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Inherited_Member (Self));

         elsif Property = MP_CMOF_Class_Is_Abstract then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Abstract (Self));

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Final_Specialization (Self));

         elsif Property = MP_CMOF_Namespace_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Member (Self));

         elsif Property = MP_CMOF_Named_Element_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Namespace (Self));

         elsif Property = MP_CMOF_Class_Owned_Attribute then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Attribute (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Member (Self));

         elsif Property = MP_CMOF_Class_Owned_Operation then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Operation (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Rule (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Type_Package then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Package (Self));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Package_Import (Self));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Class_Super_Class then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Super_Class (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Class;

      function Get_Comment return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Comment_Annotated_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Annotated_Element (Self));

         elsif Property = MP_CMOF_Comment_Body then
            return
             (AMF.Values.Value_String,
              Internal_Get_Body (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         else
            raise Program_Error;
         end if;
      end Get_Comment;

      function Get_Constraint return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Constraint_Constrained_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Constrained_Element (Self));

         elsif Property = MP_CMOF_Constraint_Context then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Context (Self));

         elsif Property = MP_CMOF_Named_Element_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Namespace (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Constraint_Specification then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Specification (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Constraint;

      function Get_Data_Type return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Classifier_Attribute then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Attribute (Self));

         elsif Property = MP_CMOF_Namespace_Element_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Element_Import (Self));

         elsif Property = MP_CMOF_Classifier_Feature then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Feature (Self));

         elsif Property = MP_CMOF_Classifier_General then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_General (Self));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Imported_Member (Self));

         elsif Property = MP_CMOF_Classifier_Inherited_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Inherited_Member (Self));

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Final_Specialization (Self));

         elsif Property = MP_CMOF_Namespace_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Member (Self));

         elsif Property = MP_CMOF_Named_Element_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Namespace (Self));

         elsif Property = MP_CMOF_Data_Type_Owned_Attribute then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Attribute (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Member (Self));

         elsif Property = MP_CMOF_Data_Type_Owned_Operation then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Operation (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Rule (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Type_Package then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Package (Self));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Package_Import (Self));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Data_Type;

      function Get_Element_Import return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Element_Import_Alias then
            return
             (AMF.Values.Value_String,
              Internal_Get_Alias (Self));

         elsif Property = MP_CMOF_Element_Import_Imported_Element then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Imported_Element (Self));

         elsif Property = MP_CMOF_Element_Import_Importing_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Importing_Namespace (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Relationship_Related_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Related_Element (Self));

         elsif Property = MP_CMOF_Directed_Relationship_Source then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Source (Self));

         elsif Property = MP_CMOF_Directed_Relationship_Target then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Target (Self));

         elsif Property = MP_CMOF_Element_Import_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Element_Import;

      function Get_Enumeration return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Classifier_Attribute then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Attribute (Self));

         elsif Property = MP_CMOF_Namespace_Element_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Element_Import (Self));

         elsif Property = MP_CMOF_Classifier_Feature then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Feature (Self));

         elsif Property = MP_CMOF_Classifier_General then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_General (Self));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Imported_Member (Self));

         elsif Property = MP_CMOF_Classifier_Inherited_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Inherited_Member (Self));

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Final_Specialization (Self));

         elsif Property = MP_CMOF_Namespace_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Member (Self));

         elsif Property = MP_CMOF_Named_Element_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Namespace (Self));

         elsif Property = MP_CMOF_Data_Type_Owned_Attribute then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Attribute (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Enumeration_Owned_Literal then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Literal (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Member (Self));

         elsif Property = MP_CMOF_Data_Type_Owned_Operation then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Operation (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Rule (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Type_Package then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Package (Self));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Package_Import (Self));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Enumeration;

      function Get_Enumeration_Literal return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Enumeration_Literal_Enumeration then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Enumeration (Self));

         elsif Property = MP_CMOF_Named_Element_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Namespace (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Enumeration_Literal;

      function Get_Expression return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Named_Element_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Namespace (Self));

         elsif Property = MP_CMOF_Expression_Operand then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Operand (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Typed_Element_Type then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Type (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Expression;

      function Get_Opaque_Expression return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Opaque_Expression_Body then
            return (Kind => AMF.Values.Value_None);

         elsif Property = MP_CMOF_Opaque_Expression_Language then
            return (Kind => AMF.Values.Value_None);

         elsif Property = MP_CMOF_Named_Element_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Namespace (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Typed_Element_Type then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Type (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Opaque_Expression;

      function Get_Operation return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Operation_Body_Condition then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Body_Condition (Self));

         elsif Property = MP_CMOF_Operation_Class then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Class (Self));

         elsif Property = MP_CMOF_Operation_Datatype then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Datatype (Self));

         elsif Property = MP_CMOF_Namespace_Element_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Element_Import (Self));

         elsif Property = MP_CMOF_Feature_Featuring_Classifier then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Featuring_Classifier (Self));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Imported_Member (Self));

         elsif Property = MP_CMOF_Redefinable_Element_Is_Leaf then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Leaf (Self));

         elsif Property = MP_CMOF_Operation_Is_Ordered then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Ordered (Self));

         elsif Property = MP_CMOF_Operation_Is_Query then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Query (Self));

         elsif Property = MP_CMOF_Operation_Is_Unique then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Unique (Self));

         elsif Property = MP_CMOF_Operation_Lower then
            return
             (AMF.Values.Value_Integer,
              Internal_Get_Lower (Self));

         elsif Property = MP_CMOF_Namespace_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Member (Self));

         elsif Property = MP_CMOF_Named_Element_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Namespace (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Member (Self));

         elsif Property = MP_CMOF_Behavioral_Feature_Owned_Parameter then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Parameter (Self));

         elsif Property = MP_CMOF_Operation_Owned_Parameter then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Parameter (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Rule (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Package_Import (Self));

         elsif Property = MP_CMOF_Operation_Postcondition then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Postcondition (Self));

         elsif Property = MP_CMOF_Operation_Precondition then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Precondition (Self));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Behavioral_Feature_Raised_Exception then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Raised_Exception (Self));

         elsif Property = MP_CMOF_Operation_Raised_Exception then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Raised_Exception (Self));

         elsif Property = MP_CMOF_Redefinable_Element_Redefined_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Redefined_Element (Self));

         elsif Property = MP_CMOF_Operation_Redefined_Operation then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Redefined_Operation (Self));

         elsif Property = MP_CMOF_Redefinable_Element_Redefinition_Context then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Redefinition_Context (Self));

         elsif Property = MP_CMOF_Operation_Type then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Type (Self));

         elsif Property = MP_CMOF_Operation_Upper then
            if Internal_Get_Upper (Self) = CMOF_Unlimited_Natural'Last then
               return
                (AMF.Values.Value_Unlimited_Natural,
                 (Unlimited => True));

            else
               return
                (AMF.Values.Value_Unlimited_Natural,
                 (False, Natural (Internal_Get_Upper (Self))));
            end if;

         elsif Property = MP_CMOF_Named_Element_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Operation;

      function Get_Package return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Namespace_Element_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Element_Import (Self));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Imported_Member (Self));

         elsif Property = MP_CMOF_Namespace_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Member (Self));

         elsif Property = MP_CMOF_Named_Element_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Namespace (Self));

         elsif Property = MP_CMOF_Package_Nested_Package then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Nested_Package (Self));

         elsif Property = MP_CMOF_Package_Nesting_Package then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Nesting_Package (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Member (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Rule (Self));

         elsif Property = MP_CMOF_Package_Owned_Type then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Type (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Package_Import (Self));

         elsif Property = MP_CMOF_Package_Package_Merge then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Package_Merge (Self));

         elsif Property = MP_CMOF_Package_Packaged_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Packaged_Element (Self));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Package;

      function Get_Package_Import return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Package_Import_Imported_Package then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Imported_Package (Self));

         elsif Property = MP_CMOF_Package_Import_Importing_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Importing_Namespace (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Relationship_Related_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Related_Element (Self));

         elsif Property = MP_CMOF_Directed_Relationship_Source then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Source (Self));

         elsif Property = MP_CMOF_Directed_Relationship_Target then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Target (Self));

         elsif Property = MP_CMOF_Package_Import_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Package_Import;

      function Get_Package_Merge return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Package_Merge_Merged_Package then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Merged_Package (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Package_Merge_Receiving_Package then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Receiving_Package (Self));

         elsif Property = MP_CMOF_Relationship_Related_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Related_Element (Self));

         elsif Property = MP_CMOF_Directed_Relationship_Source then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Source (Self));

         elsif Property = MP_CMOF_Directed_Relationship_Target then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Target (Self));

         else
            raise Program_Error;
         end if;
      end Get_Package_Merge;

      function Get_Parameter return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Parameter_Default then
            return
             (AMF.Values.Value_String,
              Internal_Get_Default (Self));

         elsif Property = MP_CMOF_Parameter_Direction then
            return (Kind => AMF.Values.Value_None);

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Ordered then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Ordered (Self));

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Unique then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Unique (Self));

         elsif Property = MP_CMOF_Multiplicity_Element_Lower then
            return
             (AMF.Values.Value_Integer,
              Internal_Get_Lower (Self));

         elsif Property = MP_CMOF_Named_Element_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Namespace (Self));

         elsif Property = MP_CMOF_Parameter_Operation then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Operation (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Typed_Element_Type then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Type (Self));

         elsif Property = MP_CMOF_Multiplicity_Element_Upper then
            if Internal_Get_Upper (Self) = CMOF_Unlimited_Natural'Last then
               return
                (AMF.Values.Value_Unlimited_Natural,
                 (Unlimited => True));

            else
               return
                (AMF.Values.Value_Unlimited_Natural,
                 (False, Natural (Internal_Get_Upper (Self))));
            end if;

         elsif Property = MP_CMOF_Named_Element_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Parameter;

      function Get_Primitive_Type return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Classifier_Attribute then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Attribute (Self));

         elsif Property = MP_CMOF_Namespace_Element_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Element_Import (Self));

         elsif Property = MP_CMOF_Classifier_Feature then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Feature (Self));

         elsif Property = MP_CMOF_Classifier_General then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_General (Self));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Imported_Member (Self));

         elsif Property = MP_CMOF_Classifier_Inherited_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Inherited_Member (Self));

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Final_Specialization (Self));

         elsif Property = MP_CMOF_Namespace_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Member (Self));

         elsif Property = MP_CMOF_Named_Element_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Namespace (Self));

         elsif Property = MP_CMOF_Data_Type_Owned_Attribute then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Attribute (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Member (Self));

         elsif Property = MP_CMOF_Data_Type_Owned_Operation then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Operation (Self));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Rule (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Type_Package then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Package (Self));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Package_Import (Self));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Primitive_Type;

      function Get_Property return AMF.Values.Value is
      begin
         if Property = MP_CMOF_Property_Association then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Association (Self));

         elsif Property = MP_CMOF_Property_Class then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Class (Self));

         elsif Property = MP_CMOF_Property_Datatype then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Datatype (Self));

         elsif Property = MP_CMOF_Property_Default then
            return
             (AMF.Values.Value_String,
              Internal_Get_Default (Self));

         elsif Property = MP_CMOF_Feature_Featuring_Classifier then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Featuring_Classifier (Self));

         elsif Property = MP_CMOF_Property_Is_Composite then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Composite (Self));

         elsif Property = MP_CMOF_Property_Is_Derived then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Derived (Self));

         elsif Property = MP_CMOF_Property_Is_Derived_Union then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Derived_Union (Self));

         elsif Property = MP_CMOF_Redefinable_Element_Is_Leaf then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Leaf (Self));

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Ordered then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Ordered (Self));

         elsif Property = MP_CMOF_Property_Is_Read_Only then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Read_Only (Self));

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Unique then
            return
             (AMF.Values.Value_Boolean,
              Internal_Get_Is_Unique (Self));

         elsif Property = MP_CMOF_Multiplicity_Element_Lower then
            return
             (AMF.Values.Value_Integer,
              Internal_Get_Lower (Self));

         elsif Property = MP_CMOF_Named_Element_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Namespace (Self));

         elsif Property = MP_CMOF_Property_Opposite then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Opposite (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Comment (Self));

         elsif Property = MP_CMOF_Element_Owned_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Owned_Element (Self));

         elsif Property = MP_CMOF_Element_Owner then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owner (Self));

         elsif Property = MP_CMOF_Property_Owning_Association then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Owning_Association (Self));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            return
             (AMF.Values.Value_String,
              Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Redefinable_Element_Redefined_Element then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Redefined_Element (Self));

         elsif Property = MP_CMOF_Property_Redefined_Property then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Redefined_Property (Self));

         elsif Property = MP_CMOF_Redefinable_Element_Redefinition_Context then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Redefinition_Context (Self));

         elsif Property = MP_CMOF_Property_Subsetted_Property then
            return
             (AMF.Values.Value_Collection_Of_Element,
              Internal_Get_Subsetted_Property (Self));

         elsif Property = MP_CMOF_Typed_Element_Type then
            return
             (AMF.Values.Value_Element,
              Internal_Get_Type (Self));

         elsif Property = MP_CMOF_Multiplicity_Element_Upper then
            if Internal_Get_Upper (Self) = CMOF_Unlimited_Natural'Last then
               return
                (AMF.Values.Value_Unlimited_Natural,
                 (Unlimited => True));

            else
               return
                (AMF.Values.Value_Unlimited_Natural,
                 (False, Natural (Internal_Get_Upper (Self))));
            end if;

         elsif Property = MP_CMOF_Named_Element_Visibility then
            return (Kind => AMF.Values.Value_None);

         else
            raise Program_Error;
         end if;
      end Get_Property;

   begin
      case Elements.Table (Self).Kind is
         when E_None =>
            return (Kind => AMF.Values.Value_None);

         when E_Association =>
            return Get_Association;

         when E_Class =>
            return Get_Class;

         when E_Comment =>
            return Get_Comment;

         when E_Constraint =>
            return Get_Constraint;

         when E_Data_Type =>
            return Get_Data_Type;

         when E_Element_Import =>
            return Get_Element_Import;

         when E_Enumeration =>
            return Get_Enumeration;

         when E_Enumeration_Literal =>
            return Get_Enumeration_Literal;

         when E_Expression =>
            return Get_Expression;

         when E_Opaque_Expression =>
            return Get_Opaque_Expression;

         when E_Operation =>
            return Get_Operation;

         when E_Package =>
            return Get_Package;

         when E_Package_Import =>
            return Get_Package_Import;

         when E_Package_Merge =>
            return Get_Package_Merge;

         when E_Parameter =>
            return Get_Parameter;

         when E_Primitive_Type =>
            return Get_Primitive_Type;

         when E_Property =>
            return Get_Property;
      end case;
   end Get;

   --------------------
   -- Get_Meta_Class --
   --------------------

   function Get_Meta_Class (Self : CMOF_Element) return CMOF_Class is
   begin
      case Elements.Table (Self).Kind is
         when E_None =>
            return Null_CMOF_Element;

         when E_Association =>
            return MC_CMOF_Association;

         when E_Class =>
            return MC_CMOF_Class;

         when E_Comment =>
            return MC_CMOF_Comment;

         when E_Constraint =>
            return MC_CMOF_Constraint;

         when E_Data_Type =>
            return MC_CMOF_Data_Type;

         when E_Element_Import =>
            return MC_CMOF_Element_Import;

         when E_Enumeration =>
            return MC_CMOF_Enumeration;

         when E_Enumeration_Literal =>
            return MC_CMOF_Enumeration_Literal;

         when E_Expression =>
            return MC_CMOF_Expression;

         when E_Opaque_Expression =>
            return MC_CMOF_Opaque_Expression;

         when E_Operation =>
            return MC_CMOF_Operation;

         when E_Package =>
            return MC_CMOF_Package;

         when E_Package_Import =>
            return MC_CMOF_Package_Import;

         when E_Package_Merge =>
            return MC_CMOF_Package_Merge;

         when E_Parameter =>
            return MC_CMOF_Parameter;

         when E_Primitive_Type =>
            return MC_CMOF_Primitive_Type;

         when E_Property =>
            return MC_CMOF_Property;
      end case;
   end Get_Meta_Class;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self     : CMOF_Element;
     Property : CMOF_Property;
     Value    : AMF.Values.Value)
   is

      procedure Set_Association is
      begin
         if Property = MP_CMOF_Association_Is_Derived then
            Internal_Set_Is_Derived (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            Internal_Set_Is_Final_Specialization (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_CMOF_Type_Package then
            Internal_Set_Package (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Association;

      procedure Set_Class is
      begin
         if Property = MP_CMOF_Class_Is_Abstract then
            Internal_Set_Is_Abstract (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            Internal_Set_Is_Final_Specialization (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_CMOF_Type_Package then
            Internal_Set_Package (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Class;

      procedure Set_Comment is
      begin
         if Property = MP_CMOF_Comment_Body then
            Internal_Set_Body (Self, Value.String_Value);

         else
            raise Program_Error;
         end if;
      end Set_Comment;

      procedure Set_Constraint is
      begin
         if Property = MP_CMOF_Constraint_Context then
            Internal_Set_Context (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_CMOF_Constraint_Specification then
            Internal_Set_Specification (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Constraint;

      procedure Set_Data_Type is
      begin
         if Property = MP_CMOF_Classifier_Is_Final_Specialization then
            Internal_Set_Is_Final_Specialization (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_CMOF_Type_Package then
            Internal_Set_Package (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Data_Type;

      procedure Set_Element_Import is
      begin
         if Property = MP_CMOF_Element_Import_Alias then
            Internal_Set_Alias (Self, Value.String_Value);

         elsif Property = MP_CMOF_Element_Import_Imported_Element then
            Internal_Set_Imported_Element (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Element_Import_Importing_Namespace then
            Internal_Set_Importing_Namespace (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Element_Import_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Element_Import;

      procedure Set_Enumeration is
      begin
         if Property = MP_CMOF_Classifier_Is_Final_Specialization then
            Internal_Set_Is_Final_Specialization (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_CMOF_Type_Package then
            Internal_Set_Package (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Enumeration;

      procedure Set_Enumeration_Literal is
      begin
         if Property = MP_CMOF_Enumeration_Literal_Enumeration then
            Internal_Set_Enumeration (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Enumeration_Literal;

      procedure Set_Expression is
      begin
         if Property = MP_CMOF_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_CMOF_Typed_Element_Type then
            Internal_Set_Type (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Expression;

      procedure Set_Opaque_Expression is
      begin
         if Property = MP_CMOF_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_CMOF_Typed_Element_Type then
            Internal_Set_Type (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Opaque_Expression;

      procedure Set_Operation is
      begin
         if Property = MP_CMOF_Operation_Body_Condition then
            Internal_Set_Body_Condition (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Operation_Class then
            Internal_Set_Class (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Operation_Datatype then
            Internal_Set_Datatype (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Redefinable_Element_Is_Leaf then
            Internal_Set_Is_Leaf (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Operation_Is_Query then
            Internal_Set_Is_Query (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Operation;

      procedure Set_Package is
      begin
         if Property = MP_CMOF_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_CMOF_Package_Nesting_Package then
            Internal_Set_Nesting_Package (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Package;

      procedure Set_Package_Import is
      begin
         if Property = MP_CMOF_Package_Import_Imported_Package then
            Internal_Set_Imported_Package (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Package_Import_Importing_Namespace then
            Internal_Set_Importing_Namespace (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Package_Import_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Package_Import;

      procedure Set_Package_Merge is
      begin
         if Property = MP_CMOF_Package_Merge_Merged_Package then
            Internal_Set_Merged_Package (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Package_Merge_Receiving_Package then
            Internal_Set_Receiving_Package (Self, Value.Element_Value);

         else
            raise Program_Error;
         end if;
      end Set_Package_Merge;

      procedure Set_Parameter is
      begin
         if Property = MP_CMOF_Parameter_Default then
            Internal_Set_Default (Self, Value.String_Value);

         elsif Property = MP_CMOF_Parameter_Direction then
            null;

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Ordered then
            Internal_Set_Is_Ordered (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Unique then
            Internal_Set_Is_Unique (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Multiplicity_Element_Lower then
            Internal_Set_Lower (Self, Value.Integer_Value);

         elsif Property = MP_CMOF_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_CMOF_Parameter_Operation then
            Internal_Set_Operation (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Typed_Element_Type then
            Internal_Set_Type (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Multiplicity_Element_Upper then
            if Value.Unlimited_Natural_Value.Unlimited then
               Internal_Set_Upper (Self, CMOF_Unlimited_Natural'Last);

            else
               Internal_Set_Upper (Self, CMOF_Unlimited_Natural (Value.Unlimited_Natural_Value.Value));
            end if;

         elsif Property = MP_CMOF_Named_Element_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Parameter;

      procedure Set_Primitive_Type is
      begin
         if Property = MP_CMOF_Classifier_Is_Final_Specialization then
            Internal_Set_Is_Final_Specialization (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_CMOF_Type_Package then
            Internal_Set_Package (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Primitive_Type;

      procedure Set_Property is
      begin
         if Property = MP_CMOF_Property_Association then
            Internal_Set_Association (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Property_Class then
            Internal_Set_Class (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Property_Datatype then
            Internal_Set_Datatype (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Property_Default then
            Internal_Set_Default (Self, Value.String_Value);

         elsif Property = MP_CMOF_Property_Is_Composite then
            Internal_Set_Is_Composite (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Property_Is_Derived then
            Internal_Set_Is_Derived (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Property_Is_Derived_Union then
            Internal_Set_Is_Derived_Union (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Redefinable_Element_Is_Leaf then
            Internal_Set_Is_Leaf (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Ordered then
            Internal_Set_Is_Ordered (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Property_Is_Read_Only then
            Internal_Set_Is_Read_Only (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Unique then
            Internal_Set_Is_Unique (Self, Value.Boolean_Value);

         elsif Property = MP_CMOF_Multiplicity_Element_Lower then
            Internal_Set_Lower (Self, Value.Integer_Value);

         elsif Property = MP_CMOF_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_CMOF_Property_Owning_Association then
            Internal_Set_Owning_Association (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Typed_Element_Type then
            Internal_Set_Type (Self, Value.Element_Value);

         elsif Property = MP_CMOF_Multiplicity_Element_Upper then
            if Value.Unlimited_Natural_Value.Unlimited then
               Internal_Set_Upper (Self, CMOF_Unlimited_Natural'Last);

            else
               Internal_Set_Upper (Self, CMOF_Unlimited_Natural (Value.Unlimited_Natural_Value.Value));
            end if;

         elsif Property = MP_CMOF_Named_Element_Visibility then
            null;

         else
            raise Program_Error;
         end if;
      end Set_Property;

   begin
      case Elements.Table (Self).Kind is
         when E_None =>
            null;

         when E_Association =>
            Set_Association;

         when E_Class =>
            Set_Class;

         when E_Comment =>
            Set_Comment;

         when E_Constraint =>
            Set_Constraint;

         when E_Data_Type =>
            Set_Data_Type;

         when E_Element_Import =>
            Set_Element_Import;

         when E_Enumeration =>
            Set_Enumeration;

         when E_Enumeration_Literal =>
            Set_Enumeration_Literal;

         when E_Expression =>
            Set_Expression;

         when E_Opaque_Expression =>
            Set_Opaque_Expression;

         when E_Operation =>
            Set_Operation;

         when E_Package =>
            Set_Package;

         when E_Package_Import =>
            Set_Package_Import;

         when E_Package_Merge =>
            Set_Package_Merge;

         when E_Parameter =>
            Set_Parameter;

         when E_Primitive_Type =>
            Set_Primitive_Type;

         when E_Property =>
            Set_Property;
      end case;
   end Set;

end CMOF.Internals.Reflection;
