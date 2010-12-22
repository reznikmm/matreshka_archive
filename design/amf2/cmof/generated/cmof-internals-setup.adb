with League.Strings;

with Cmof.Internals.Attributes;
with Cmof.Internals.Constructors;
with Cmof.Internals.Extents;
with Cmof.Internals.Links;
with Cmof.Internals.Metamodel;
with Cmof.Internals.Tables;

package body Cmof.Internals.Setup is

   use Cmof.Internals.Attributes;
   use Cmof.Internals.Constructors;
   use Cmof.Internals.Extents;
   use Cmof.Internals.Links;
   use Cmof.Internals.Metamodel;
   use Cmof.Internals.Tables;

   Last_Cmof_Metaelement : constant Cmof_Element := 221;

begin
   Elements.Set_Last (Last_Cmof_Metaelement);

   --  Initialization of CMOF metamodel extent.

   Initialize_CMOF_Metamodel_Extent;

   --  Initialization of CMOF package.

   Initialize_Package (MM_CMOF, CMOF_Metamodel_Extent);
   Internal_Set_Name (MM_CMOF, League.Strings.To_Universal_String ("CMOF"));

   --  Initialization of CMOF primitive types.

   Initialize_Primitive_Type (MC_CMOF_Boolean, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Boolean,
     League.Strings.To_Universal_String ("Boolean"));
   Initialize_Primitive_Type (MC_CMOF_Integer, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Integer,
     League.Strings.To_Universal_String ("Integer"));
   Initialize_Primitive_Type (MC_CMOF_String, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_String,
     League.Strings.To_Universal_String ("String"));
   Initialize_Primitive_Type (MC_CMOF_Unlimited_Natural, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Unlimited_Natural,
     League.Strings.To_Universal_String ("UnlimitedNatural"));

   --  Initialization of CMOF enumerations.

   Initialize_Enumeration (MC_CMOF_Parameter_Direction_Kind, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Parameter_Direction_Kind,
     League.Strings.To_Universal_String ("ParameterDirectionKind"));
   Initialize_Enumeration (MC_CMOF_Visibility_Kind, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Visibility_Kind,
     League.Strings.To_Universal_String ("VisibilityKind"));

   --  Initialization of CMOF classes.

   Initialize_Class (MC_CMOF_Association, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Association,
     League.Strings.To_Universal_String ("Association"));
   Initialize_Class (MC_CMOF_Behavioral_Feature, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Behavioral_Feature,
     League.Strings.To_Universal_String ("BehavioralFeature"));
   Initialize_Class (MC_CMOF_Class, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Class,
     League.Strings.To_Universal_String ("Class"));
   Initialize_Class (MC_CMOF_Classifier, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Classifier,
     League.Strings.To_Universal_String ("Classifier"));
   Initialize_Class (MC_CMOF_Comment, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Comment,
     League.Strings.To_Universal_String ("Comment"));
   Initialize_Class (MC_CMOF_Constraint, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Constraint,
     League.Strings.To_Universal_String ("Constraint"));
   Initialize_Class (MC_CMOF_Data_Type, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Data_Type,
     League.Strings.To_Universal_String ("DataType"));
   Initialize_Class (MC_CMOF_Directed_Relationship, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Directed_Relationship,
     League.Strings.To_Universal_String ("DirectedRelationship"));
   Initialize_Class (MC_CMOF_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Element,
     League.Strings.To_Universal_String ("Element"));
   Initialize_Class (MC_CMOF_Element_Import, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Element_Import,
     League.Strings.To_Universal_String ("ElementImport"));
   Initialize_Class (MC_CMOF_Enumeration, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Enumeration,
     League.Strings.To_Universal_String ("Enumeration"));
   Initialize_Class (MC_CMOF_Enumeration_Literal, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Enumeration_Literal,
     League.Strings.To_Universal_String ("EnumerationLiteral"));
   Initialize_Class (MC_CMOF_Expression, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Expression,
     League.Strings.To_Universal_String ("Expression"));
   Initialize_Class (MC_CMOF_Feature, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Feature,
     League.Strings.To_Universal_String ("Feature"));
   Initialize_Class (MC_CMOF_Multiplicity_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Multiplicity_Element,
     League.Strings.To_Universal_String ("MultiplicityElement"));
   Initialize_Class (MC_CMOF_Named_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Named_Element,
     League.Strings.To_Universal_String ("NamedElement"));
   Initialize_Class (MC_CMOF_Namespace, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Namespace,
     League.Strings.To_Universal_String ("Namespace"));
   Initialize_Class (MC_CMOF_Opaque_Expression, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Opaque_Expression,
     League.Strings.To_Universal_String ("OpaqueExpression"));
   Initialize_Class (MC_CMOF_Operation, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Operation,
     League.Strings.To_Universal_String ("Operation"));
   Initialize_Class (MC_CMOF_Package, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Package,
     League.Strings.To_Universal_String ("Package"));
   Initialize_Class (MC_CMOF_Package_Import, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Package_Import,
     League.Strings.To_Universal_String ("PackageImport"));
   Initialize_Class (MC_CMOF_Package_Merge, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Package_Merge,
     League.Strings.To_Universal_String ("PackageMerge"));
   Initialize_Class (MC_CMOF_Packageable_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Packageable_Element,
     League.Strings.To_Universal_String ("PackageableElement"));
   Initialize_Class (MC_CMOF_Parameter, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Parameter,
     League.Strings.To_Universal_String ("Parameter"));
   Initialize_Class (MC_CMOF_Primitive_Type, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Primitive_Type,
     League.Strings.To_Universal_String ("PrimitiveType"));
   Initialize_Class (MC_CMOF_Property, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Property,
     League.Strings.To_Universal_String ("Property"));
   Initialize_Class (MC_CMOF_Redefinable_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Redefinable_Element,
     League.Strings.To_Universal_String ("RedefinableElement"));
   Initialize_Class (MC_CMOF_Relationship, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Relationship,
     League.Strings.To_Universal_String ("Relationship"));
   Initialize_Class (MC_CMOF_Structural_Feature, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Structural_Feature,
     League.Strings.To_Universal_String ("StructuralFeature"));
   Initialize_Class (MC_CMOF_Type, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Type,
     League.Strings.To_Universal_String ("Type"));
   Initialize_Class (MC_CMOF_Typed_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Typed_Element,
     League.Strings.To_Universal_String ("TypedElement"));
   Initialize_Class (MC_CMOF_Value_Specification, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MC_CMOF_Value_Specification,
     League.Strings.To_Universal_String ("ValueSpecification"));

   --  Initialization of CMOF associations.

   Initialize_Association (MA_CMOF_Annotated_Element_Comment, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Annotated_Element_Comment,
     League.Strings.To_Universal_String ("A_annotatedElement_comment"));
   Initialize_Association (MA_CMOF_Attribute_Classifier, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Attribute_Classifier,
     League.Strings.To_Universal_String ("A_attribute_classifier"));
   Initialize_Association (MA_CMOF_Body_Condition_Body_Context, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Body_Condition_Body_Context,
     League.Strings.To_Universal_String ("A_bodyCondition_bodyContext"));
   Initialize_Association (MA_CMOF_Constrained_Element_Constraint, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Constrained_Element_Constraint,
     League.Strings.To_Universal_String ("A_constrainedElement_constraint"));
   Initialize_Association (MA_CMOF_Element_Import_Importing_Namespace, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Element_Import_Importing_Namespace,
     League.Strings.To_Universal_String ("A_elementImport_importingNamespace"));
   Initialize_Association (MA_CMOF_End_Type_Association, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_End_Type_Association,
     League.Strings.To_Universal_String ("A_endType_association"));
   Initialize_Association (MA_CMOF_Feature_Featuring_Classifier, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Feature_Featuring_Classifier,
     League.Strings.To_Universal_String ("A_feature_featuringClassifier"));
   Initialize_Association (MA_CMOF_General_Classifier, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_General_Classifier,
     League.Strings.To_Universal_String ("A_general_classifier"));
   Initialize_Association (MA_CMOF_Imported_Element_Element_Import, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Imported_Element_Element_Import,
     League.Strings.To_Universal_String ("A_importedElement_elementImport"));
   Initialize_Association (MA_CMOF_Imported_Member_Namespace, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Imported_Member_Namespace,
     League.Strings.To_Universal_String ("A_importedMember_namespace"));
   Initialize_Association (MA_CMOF_Imported_Package_Package_Import, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Imported_Package_Package_Import,
     League.Strings.To_Universal_String ("A_importedPackage_packageImport"));
   Initialize_Association (MA_CMOF_Inherited_Member_Classifier, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Inherited_Member_Classifier,
     League.Strings.To_Universal_String ("A_inheritedMember_classifier"));
   Initialize_Association (MA_CMOF_Member_End_Association, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Member_End_Association,
     League.Strings.To_Universal_String ("A_memberEnd_association"));
   Initialize_Association (MA_CMOF_Member_Namespace, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Member_Namespace,
     League.Strings.To_Universal_String ("A_member_namespace"));
   Initialize_Association (MA_CMOF_Merged_Package_Package_Merge, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Merged_Package_Package_Merge,
     League.Strings.To_Universal_String ("A_mergedPackage_packageMerge"));
   Initialize_Association (MA_CMOF_Navigable_Owned_End_Association, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Navigable_Owned_End_Association,
     League.Strings.To_Universal_String ("A_navigableOwnedEnd_association"));
   Initialize_Association (MA_CMOF_Nested_Package_Nesting_Package, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Nested_Package_Nesting_Package,
     League.Strings.To_Universal_String ("A_nestedPackage_nestingPackage"));
   Initialize_Association (MA_CMOF_Operand_Expression, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Operand_Expression,
     League.Strings.To_Universal_String ("A_operand_expression"));
   Initialize_Association (MA_CMOF_Opposite_Property, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Opposite_Property,
     League.Strings.To_Universal_String ("A_opposite_property"));
   Initialize_Association (MA_CMOF_Owned_Attribute_Class, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Owned_Attribute_Class,
     League.Strings.To_Universal_String ("A_ownedAttribute_class"));
   Initialize_Association (MA_CMOF_Owned_Attribute_Datatype, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Owned_Attribute_Datatype,
     League.Strings.To_Universal_String ("A_ownedAttribute_datatype"));
   Initialize_Association (MA_CMOF_Owned_Comment_Owning_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Owned_Comment_Owning_Element,
     League.Strings.To_Universal_String ("A_ownedComment_owningElement"));
   Initialize_Association (MA_CMOF_Owned_Element_Owner, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Owned_Element_Owner,
     League.Strings.To_Universal_String ("A_ownedElement_owner"));
   Initialize_Association (MA_CMOF_Owned_End_Owning_Association, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Owned_End_Owning_Association,
     League.Strings.To_Universal_String ("A_ownedEnd_owningAssociation"));
   Initialize_Association (MA_CMOF_Owned_Literal_Enumeration, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Owned_Literal_Enumeration,
     League.Strings.To_Universal_String ("A_ownedLiteral_enumeration"));
   Initialize_Association (MA_CMOF_Owned_Member_Namespace, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Owned_Member_Namespace,
     League.Strings.To_Universal_String ("A_ownedMember_namespace"));
   Initialize_Association (MA_CMOF_Owned_Operation_Class, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Owned_Operation_Class,
     League.Strings.To_Universal_String ("A_ownedOperation_class"));
   Initialize_Association (MA_CMOF_Owned_Operation_Datatype, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Owned_Operation_Datatype,
     League.Strings.To_Universal_String ("A_ownedOperation_datatype"));
   Initialize_Association (MA_CMOF_Owned_Parameter_Operation, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Owned_Parameter_Operation,
     League.Strings.To_Universal_String ("A_ownedParameter_operation"));
   Initialize_Association (MA_CMOF_Owned_Parameter_Owner_Formal_Param, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Owned_Parameter_Owner_Formal_Param,
     League.Strings.To_Universal_String ("A_ownedParameter_ownerFormalParam"));
   Initialize_Association (MA_CMOF_Owned_Rule_Context, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Owned_Rule_Context,
     League.Strings.To_Universal_String ("A_ownedRule_context"));
   Initialize_Association (MA_CMOF_Owned_Type_Package, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Owned_Type_Package,
     League.Strings.To_Universal_String ("A_ownedType_package"));
   Initialize_Association (MA_CMOF_Package_Import_Importing_Namespace, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Package_Import_Importing_Namespace,
     League.Strings.To_Universal_String ("A_packageImport_importingNamespace"));
   Initialize_Association (MA_CMOF_Package_Merge_Receiving_Package, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Package_Merge_Receiving_Package,
     League.Strings.To_Universal_String ("A_packageMerge_receivingPackage"));
   Initialize_Association (MA_CMOF_Packaged_Element_Owning_Package, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Packaged_Element_Owning_Package,
     League.Strings.To_Universal_String ("A_packagedElement_owningPackage"));
   Initialize_Association (MA_CMOF_Postcondition_Post_Context, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Postcondition_Post_Context,
     League.Strings.To_Universal_String ("A_postcondition_postContext"));
   Initialize_Association (MA_CMOF_Precondition_Pre_Context, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Precondition_Pre_Context,
     League.Strings.To_Universal_String ("A_precondition_preContext"));
   Initialize_Association (MA_CMOF_Raised_Exception_Behavioral_Feature, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Raised_Exception_Behavioral_Feature,
     League.Strings.To_Universal_String ("A_raisedException_behavioralFeature"));
   Initialize_Association (MA_CMOF_Raised_Exception_Operation, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Raised_Exception_Operation,
     League.Strings.To_Universal_String ("A_raisedException_operation"));
   Initialize_Association (MA_CMOF_Redefined_Element_Redefinable_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Redefined_Element_Redefinable_Element,
     League.Strings.To_Universal_String ("A_redefinedElement_redefinableElement"));
   Initialize_Association (MA_CMOF_Redefined_Operation_Operation, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Redefined_Operation_Operation,
     League.Strings.To_Universal_String ("A_redefinedOperation_operation"));
   Initialize_Association (MA_CMOF_Redefined_Property_Property, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Redefined_Property_Property,
     League.Strings.To_Universal_String ("A_redefinedProperty_property"));
   Initialize_Association (MA_CMOF_Redefinition_Context_Redefinable_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Redefinition_Context_Redefinable_Element,
     League.Strings.To_Universal_String ("A_redefinitionContext_redefinableElement"));
   Initialize_Association (MA_CMOF_Related_Element_Relationship, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Related_Element_Relationship,
     League.Strings.To_Universal_String ("A_relatedElement_relationship"));
   Initialize_Association (MA_CMOF_Source_Directed_Relationship, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Source_Directed_Relationship,
     League.Strings.To_Universal_String ("A_source_directedRelationship"));
   Initialize_Association (MA_CMOF_Specification_Owning_Constraint, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Specification_Owning_Constraint,
     League.Strings.To_Universal_String ("A_specification_owningConstraint"));
   Initialize_Association (MA_CMOF_Subsetted_Property_Property, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Subsetted_Property_Property,
     League.Strings.To_Universal_String ("A_subsettedProperty_property"));
   Initialize_Association (MA_CMOF_Super_Class_Class, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Super_Class_Class,
     League.Strings.To_Universal_String ("A_superClass_class"));
   Initialize_Association (MA_CMOF_Target_Directed_Relationship, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Target_Directed_Relationship,
     League.Strings.To_Universal_String ("A_target_directedRelationship"));
   Initialize_Association (MA_CMOF_Type_Operation, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Type_Operation,
     League.Strings.To_Universal_String ("A_type_operation"));
   Initialize_Association (MA_CMOF_Type_Typed_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MA_CMOF_Type_Typed_Element,
     League.Strings.To_Universal_String ("A_type_typedElement"));

   --  Initialization of CMOF properties.

   Initialize_Property (MP_CMOF_Association_End_Type, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Association_End_Type,
     League.Strings.To_Universal_String ("endType"));
   Internal_Set_Lower (MP_CMOF_Association_End_Type, 1);
   Internal_Set_Upper (MP_CMOF_Association_End_Type, (Unlimited => True));
   Initialize_Property (MP_CMOF_Association_Is_Derived, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Association_Is_Derived,
     League.Strings.To_Universal_String ("isDerived"));
   Internal_Set_Lower (MP_CMOF_Association_Is_Derived, 1);
   Internal_Set_Upper (MP_CMOF_Association_Is_Derived, (False,  1));
   Initialize_Property (MP_CMOF_Association_Member_End, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Association_Member_End,
     League.Strings.To_Universal_String ("memberEnd"));
   Internal_Set_Lower (MP_CMOF_Association_Member_End, 2);
   Internal_Set_Upper (MP_CMOF_Association_Member_End, (Unlimited => True));
   Initialize_Property (MP_CMOF_Association_Navigable_Owned_End, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Association_Navigable_Owned_End,
     League.Strings.To_Universal_String ("navigableOwnedEnd"));
   Internal_Set_Lower (MP_CMOF_Association_Navigable_Owned_End, 0);
   Internal_Set_Upper (MP_CMOF_Association_Navigable_Owned_End, (Unlimited => True));
   Initialize_Property (MP_CMOF_Association_Owned_End, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Association_Owned_End,
     League.Strings.To_Universal_String ("ownedEnd"));
   Internal_Set_Lower (MP_CMOF_Association_Owned_End, 0);
   Internal_Set_Upper (MP_CMOF_Association_Owned_End, (Unlimited => True));
   Initialize_Property (MP_CMOF_Behavioral_Feature_Owned_Parameter, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Behavioral_Feature_Owned_Parameter,
     League.Strings.To_Universal_String ("ownedParameter"));
   Internal_Set_Lower (MP_CMOF_Behavioral_Feature_Owned_Parameter, 0);
   Internal_Set_Upper (MP_CMOF_Behavioral_Feature_Owned_Parameter, (Unlimited => True));
   Initialize_Property (MP_CMOF_Behavioral_Feature_Raised_Exception, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Behavioral_Feature_Raised_Exception,
     League.Strings.To_Universal_String ("raisedException"));
   Internal_Set_Lower (MP_CMOF_Behavioral_Feature_Raised_Exception, 0);
   Internal_Set_Upper (MP_CMOF_Behavioral_Feature_Raised_Exception, (Unlimited => True));
   Initialize_Property (MP_CMOF_Class_Is_Abstract, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Class_Is_Abstract,
     League.Strings.To_Universal_String ("isAbstract"));
   Internal_Set_Lower (MP_CMOF_Class_Is_Abstract, 1);
   Internal_Set_Upper (MP_CMOF_Class_Is_Abstract, (False,  1));
   Initialize_Property (MP_CMOF_Class_Owned_Attribute, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Class_Owned_Attribute,
     League.Strings.To_Universal_String ("ownedAttribute"));
   Internal_Set_Lower (MP_CMOF_Class_Owned_Attribute, 0);
   Internal_Set_Upper (MP_CMOF_Class_Owned_Attribute, (Unlimited => True));
   Initialize_Property (MP_CMOF_Class_Owned_Operation, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Class_Owned_Operation,
     League.Strings.To_Universal_String ("ownedOperation"));
   Internal_Set_Lower (MP_CMOF_Class_Owned_Operation, 0);
   Internal_Set_Upper (MP_CMOF_Class_Owned_Operation, (Unlimited => True));
   Initialize_Property (MP_CMOF_Class_Super_Class, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Class_Super_Class,
     League.Strings.To_Universal_String ("superClass"));
   Internal_Set_Lower (MP_CMOF_Class_Super_Class, 0);
   Internal_Set_Upper (MP_CMOF_Class_Super_Class, (Unlimited => True));
   Initialize_Property (MP_CMOF_Classifier_Attribute, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Classifier_Attribute,
     League.Strings.To_Universal_String ("attribute"));
   Internal_Set_Lower (MP_CMOF_Classifier_Attribute, 0);
   Internal_Set_Upper (MP_CMOF_Classifier_Attribute, (Unlimited => True));
   Initialize_Property (MP_CMOF_Classifier_Feature, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Classifier_Feature,
     League.Strings.To_Universal_String ("feature"));
   Internal_Set_Lower (MP_CMOF_Classifier_Feature, 0);
   Internal_Set_Upper (MP_CMOF_Classifier_Feature, (Unlimited => True));
   Initialize_Property (MP_CMOF_Classifier_General, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Classifier_General,
     League.Strings.To_Universal_String ("general"));
   Internal_Set_Lower (MP_CMOF_Classifier_General, 0);
   Internal_Set_Upper (MP_CMOF_Classifier_General, (Unlimited => True));
   Initialize_Property (MP_CMOF_Classifier_Inherited_Member, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Classifier_Inherited_Member,
     League.Strings.To_Universal_String ("inheritedMember"));
   Internal_Set_Lower (MP_CMOF_Classifier_Inherited_Member, 0);
   Internal_Set_Upper (MP_CMOF_Classifier_Inherited_Member, (Unlimited => True));
   Initialize_Property (MP_CMOF_Classifier_Is_Final_Specialization, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Classifier_Is_Final_Specialization,
     League.Strings.To_Universal_String ("isFinalSpecialization"));
   Internal_Set_Lower (MP_CMOF_Classifier_Is_Final_Specialization, 1);
   Internal_Set_Upper (MP_CMOF_Classifier_Is_Final_Specialization, (False,  1));
   Initialize_Property (MP_CMOF_Comment_Annotated_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Comment_Annotated_Element,
     League.Strings.To_Universal_String ("annotatedElement"));
   Internal_Set_Lower (MP_CMOF_Comment_Annotated_Element, 0);
   Internal_Set_Upper (MP_CMOF_Comment_Annotated_Element, (Unlimited => True));
   Initialize_Property (MP_CMOF_Comment_Body, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Comment_Body,
     League.Strings.To_Universal_String ("body"));
   Internal_Set_Lower (MP_CMOF_Comment_Body, 0);
   Internal_Set_Upper (MP_CMOF_Comment_Body, (False,  1));
   Initialize_Property (MP_CMOF_Constraint_Constrained_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Constraint_Constrained_Element,
     League.Strings.To_Universal_String ("constrainedElement"));
   Internal_Set_Lower (MP_CMOF_Constraint_Constrained_Element, 0);
   Internal_Set_Upper (MP_CMOF_Constraint_Constrained_Element, (Unlimited => True));
   Initialize_Property (MP_CMOF_Constraint_Context, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Constraint_Context,
     League.Strings.To_Universal_String ("context"));
   Internal_Set_Lower (MP_CMOF_Constraint_Context, 0);
   Internal_Set_Upper (MP_CMOF_Constraint_Context, (False,  1));
   Initialize_Property (MP_CMOF_Constraint_Specification, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Constraint_Specification,
     League.Strings.To_Universal_String ("specification"));
   Internal_Set_Lower (MP_CMOF_Constraint_Specification, 1);
   Internal_Set_Upper (MP_CMOF_Constraint_Specification, (False,  1));
   Initialize_Property (MP_CMOF_Data_Type_Owned_Attribute, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Data_Type_Owned_Attribute,
     League.Strings.To_Universal_String ("ownedAttribute"));
   Internal_Set_Lower (MP_CMOF_Data_Type_Owned_Attribute, 0);
   Internal_Set_Upper (MP_CMOF_Data_Type_Owned_Attribute, (Unlimited => True));
   Initialize_Property (MP_CMOF_Data_Type_Owned_Operation, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Data_Type_Owned_Operation,
     League.Strings.To_Universal_String ("ownedOperation"));
   Internal_Set_Lower (MP_CMOF_Data_Type_Owned_Operation, 0);
   Internal_Set_Upper (MP_CMOF_Data_Type_Owned_Operation, (Unlimited => True));
   Initialize_Property (MP_CMOF_Directed_Relationship_Source, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Directed_Relationship_Source,
     League.Strings.To_Universal_String ("source"));
   Internal_Set_Lower (MP_CMOF_Directed_Relationship_Source, 1);
   Internal_Set_Upper (MP_CMOF_Directed_Relationship_Source, (Unlimited => True));
   Initialize_Property (MP_CMOF_Directed_Relationship_Target, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Directed_Relationship_Target,
     League.Strings.To_Universal_String ("target"));
   Internal_Set_Lower (MP_CMOF_Directed_Relationship_Target, 1);
   Internal_Set_Upper (MP_CMOF_Directed_Relationship_Target, (Unlimited => True));
   Initialize_Property (MP_CMOF_Element_Owned_Comment, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Element_Owned_Comment,
     League.Strings.To_Universal_String ("ownedComment"));
   Internal_Set_Lower (MP_CMOF_Element_Owned_Comment, 0);
   Internal_Set_Upper (MP_CMOF_Element_Owned_Comment, (Unlimited => True));
   Initialize_Property (MP_CMOF_Element_Owned_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Element_Owned_Element,
     League.Strings.To_Universal_String ("ownedElement"));
   Internal_Set_Lower (MP_CMOF_Element_Owned_Element, 0);
   Internal_Set_Upper (MP_CMOF_Element_Owned_Element, (Unlimited => True));
   Initialize_Property (MP_CMOF_Element_Owner, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Element_Owner,
     League.Strings.To_Universal_String ("owner"));
   Internal_Set_Lower (MP_CMOF_Element_Owner, 0);
   Internal_Set_Upper (MP_CMOF_Element_Owner, (False,  1));
   Initialize_Property (MP_CMOF_Element_Import_Alias, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Element_Import_Alias,
     League.Strings.To_Universal_String ("alias"));
   Internal_Set_Lower (MP_CMOF_Element_Import_Alias, 0);
   Internal_Set_Upper (MP_CMOF_Element_Import_Alias, (False,  1));
   Initialize_Property (MP_CMOF_Element_Import_Imported_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Element_Import_Imported_Element,
     League.Strings.To_Universal_String ("importedElement"));
   Internal_Set_Lower (MP_CMOF_Element_Import_Imported_Element, 1);
   Internal_Set_Upper (MP_CMOF_Element_Import_Imported_Element, (False,  1));
   Initialize_Property (MP_CMOF_Element_Import_Importing_Namespace, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Element_Import_Importing_Namespace,
     League.Strings.To_Universal_String ("importingNamespace"));
   Internal_Set_Lower (MP_CMOF_Element_Import_Importing_Namespace, 1);
   Internal_Set_Upper (MP_CMOF_Element_Import_Importing_Namespace, (False,  1));
   Initialize_Property (MP_CMOF_Element_Import_Visibility, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Element_Import_Visibility,
     League.Strings.To_Universal_String ("visibility"));
   Internal_Set_Lower (MP_CMOF_Element_Import_Visibility, 1);
   Internal_Set_Upper (MP_CMOF_Element_Import_Visibility, (False,  1));
   Initialize_Property (MP_CMOF_Enumeration_Owned_Literal, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Enumeration_Owned_Literal,
     League.Strings.To_Universal_String ("ownedLiteral"));
   Internal_Set_Lower (MP_CMOF_Enumeration_Owned_Literal, 0);
   Internal_Set_Upper (MP_CMOF_Enumeration_Owned_Literal, (Unlimited => True));
   Initialize_Property (MP_CMOF_Enumeration_Literal_Enumeration, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Enumeration_Literal_Enumeration,
     League.Strings.To_Universal_String ("enumeration"));
   Internal_Set_Lower (MP_CMOF_Enumeration_Literal_Enumeration, 0);
   Internal_Set_Upper (MP_CMOF_Enumeration_Literal_Enumeration, (False,  1));
   Initialize_Property (MP_CMOF_Expression_Operand, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Expression_Operand,
     League.Strings.To_Universal_String ("operand"));
   Internal_Set_Lower (MP_CMOF_Expression_Operand, 0);
   Internal_Set_Upper (MP_CMOF_Expression_Operand, (Unlimited => True));
   Initialize_Property (MP_CMOF_Feature_Featuring_Classifier, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Feature_Featuring_Classifier,
     League.Strings.To_Universal_String ("featuringClassifier"));
   Internal_Set_Lower (MP_CMOF_Feature_Featuring_Classifier, 0);
   Internal_Set_Upper (MP_CMOF_Feature_Featuring_Classifier, (Unlimited => True));
   Initialize_Property (MP_CMOF_Multiplicity_Element_Is_Ordered, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Multiplicity_Element_Is_Ordered,
     League.Strings.To_Universal_String ("isOrdered"));
   Internal_Set_Lower (MP_CMOF_Multiplicity_Element_Is_Ordered, 1);
   Internal_Set_Upper (MP_CMOF_Multiplicity_Element_Is_Ordered, (False,  1));
   Initialize_Property (MP_CMOF_Multiplicity_Element_Is_Unique, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Multiplicity_Element_Is_Unique,
     League.Strings.To_Universal_String ("isUnique"));
   Internal_Set_Lower (MP_CMOF_Multiplicity_Element_Is_Unique, 1);
   Internal_Set_Upper (MP_CMOF_Multiplicity_Element_Is_Unique, (False,  1));
   Initialize_Property (MP_CMOF_Multiplicity_Element_Lower, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Multiplicity_Element_Lower,
     League.Strings.To_Universal_String ("lower"));
   Internal_Set_Lower (MP_CMOF_Multiplicity_Element_Lower, 0);
   Internal_Set_Upper (MP_CMOF_Multiplicity_Element_Lower, (False,  1));
   Initialize_Property (MP_CMOF_Multiplicity_Element_Upper, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Multiplicity_Element_Upper,
     League.Strings.To_Universal_String ("upper"));
   Internal_Set_Lower (MP_CMOF_Multiplicity_Element_Upper, 0);
   Internal_Set_Upper (MP_CMOF_Multiplicity_Element_Upper, (False,  1));
   Initialize_Property (MP_CMOF_Named_Element_Name, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Named_Element_Name,
     League.Strings.To_Universal_String ("name"));
   Internal_Set_Lower (MP_CMOF_Named_Element_Name, 0);
   Internal_Set_Upper (MP_CMOF_Named_Element_Name, (False,  1));
   Initialize_Property (MP_CMOF_Named_Element_Namespace, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Named_Element_Namespace,
     League.Strings.To_Universal_String ("namespace"));
   Internal_Set_Lower (MP_CMOF_Named_Element_Namespace, 0);
   Internal_Set_Upper (MP_CMOF_Named_Element_Namespace, (False,  1));
   Initialize_Property (MP_CMOF_Named_Element_Qualified_Name, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Named_Element_Qualified_Name,
     League.Strings.To_Universal_String ("qualifiedName"));
   Internal_Set_Lower (MP_CMOF_Named_Element_Qualified_Name, 0);
   Internal_Set_Upper (MP_CMOF_Named_Element_Qualified_Name, (False,  1));
   Initialize_Property (MP_CMOF_Named_Element_Visibility, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Named_Element_Visibility,
     League.Strings.To_Universal_String ("visibility"));
   Internal_Set_Lower (MP_CMOF_Named_Element_Visibility, 0);
   Internal_Set_Upper (MP_CMOF_Named_Element_Visibility, (False,  1));
   Initialize_Property (MP_CMOF_Namespace_Element_Import, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Namespace_Element_Import,
     League.Strings.To_Universal_String ("elementImport"));
   Internal_Set_Lower (MP_CMOF_Namespace_Element_Import, 0);
   Internal_Set_Upper (MP_CMOF_Namespace_Element_Import, (Unlimited => True));
   Initialize_Property (MP_CMOF_Namespace_Imported_Member, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Namespace_Imported_Member,
     League.Strings.To_Universal_String ("importedMember"));
   Internal_Set_Lower (MP_CMOF_Namespace_Imported_Member, 0);
   Internal_Set_Upper (MP_CMOF_Namespace_Imported_Member, (Unlimited => True));
   Initialize_Property (MP_CMOF_Namespace_Member, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Namespace_Member,
     League.Strings.To_Universal_String ("member"));
   Internal_Set_Lower (MP_CMOF_Namespace_Member, 0);
   Internal_Set_Upper (MP_CMOF_Namespace_Member, (Unlimited => True));
   Initialize_Property (MP_CMOF_Namespace_Owned_Member, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Namespace_Owned_Member,
     League.Strings.To_Universal_String ("ownedMember"));
   Internal_Set_Lower (MP_CMOF_Namespace_Owned_Member, 0);
   Internal_Set_Upper (MP_CMOF_Namespace_Owned_Member, (Unlimited => True));
   Initialize_Property (MP_CMOF_Namespace_Owned_Rule, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Namespace_Owned_Rule,
     League.Strings.To_Universal_String ("ownedRule"));
   Internal_Set_Lower (MP_CMOF_Namespace_Owned_Rule, 0);
   Internal_Set_Upper (MP_CMOF_Namespace_Owned_Rule, (Unlimited => True));
   Initialize_Property (MP_CMOF_Namespace_Package_Import, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Namespace_Package_Import,
     League.Strings.To_Universal_String ("packageImport"));
   Internal_Set_Lower (MP_CMOF_Namespace_Package_Import, 0);
   Internal_Set_Upper (MP_CMOF_Namespace_Package_Import, (Unlimited => True));
   Initialize_Property (MP_CMOF_Opaque_Expression_Body, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Opaque_Expression_Body,
     League.Strings.To_Universal_String ("body"));
   Internal_Set_Lower (MP_CMOF_Opaque_Expression_Body, 0);
   Internal_Set_Upper (MP_CMOF_Opaque_Expression_Body, (Unlimited => True));
   Initialize_Property (MP_CMOF_Opaque_Expression_Language, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Opaque_Expression_Language,
     League.Strings.To_Universal_String ("language"));
   Internal_Set_Lower (MP_CMOF_Opaque_Expression_Language, 0);
   Internal_Set_Upper (MP_CMOF_Opaque_Expression_Language, (Unlimited => True));
   Initialize_Property (MP_CMOF_Operation_Body_Condition, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Body_Condition,
     League.Strings.To_Universal_String ("bodyCondition"));
   Internal_Set_Lower (MP_CMOF_Operation_Body_Condition, 0);
   Internal_Set_Upper (MP_CMOF_Operation_Body_Condition, (False,  1));
   Initialize_Property (MP_CMOF_Operation_Class, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Class,
     League.Strings.To_Universal_String ("class"));
   Internal_Set_Lower (MP_CMOF_Operation_Class, 0);
   Internal_Set_Upper (MP_CMOF_Operation_Class, (False,  1));
   Initialize_Property (MP_CMOF_Operation_Datatype, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Datatype,
     League.Strings.To_Universal_String ("datatype"));
   Internal_Set_Lower (MP_CMOF_Operation_Datatype, 0);
   Internal_Set_Upper (MP_CMOF_Operation_Datatype, (False,  1));
   Initialize_Property (MP_CMOF_Operation_Is_Ordered, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Is_Ordered,
     League.Strings.To_Universal_String ("isOrdered"));
   Internal_Set_Lower (MP_CMOF_Operation_Is_Ordered, 1);
   Internal_Set_Upper (MP_CMOF_Operation_Is_Ordered, (False,  1));
   Initialize_Property (MP_CMOF_Operation_Is_Query, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Is_Query,
     League.Strings.To_Universal_String ("isQuery"));
   Internal_Set_Lower (MP_CMOF_Operation_Is_Query, 1);
   Internal_Set_Upper (MP_CMOF_Operation_Is_Query, (False,  1));
   Initialize_Property (MP_CMOF_Operation_Is_Unique, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Is_Unique,
     League.Strings.To_Universal_String ("isUnique"));
   Internal_Set_Lower (MP_CMOF_Operation_Is_Unique, 1);
   Internal_Set_Upper (MP_CMOF_Operation_Is_Unique, (False,  1));
   Initialize_Property (MP_CMOF_Operation_Lower, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Lower,
     League.Strings.To_Universal_String ("lower"));
   Internal_Set_Lower (MP_CMOF_Operation_Lower, 0);
   Internal_Set_Upper (MP_CMOF_Operation_Lower, (False,  1));
   Initialize_Property (MP_CMOF_Operation_Owned_Parameter, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Owned_Parameter,
     League.Strings.To_Universal_String ("ownedParameter"));
   Internal_Set_Lower (MP_CMOF_Operation_Owned_Parameter, 0);
   Internal_Set_Upper (MP_CMOF_Operation_Owned_Parameter, (Unlimited => True));
   Initialize_Property (MP_CMOF_Operation_Postcondition, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Postcondition,
     League.Strings.To_Universal_String ("postcondition"));
   Internal_Set_Lower (MP_CMOF_Operation_Postcondition, 0);
   Internal_Set_Upper (MP_CMOF_Operation_Postcondition, (Unlimited => True));
   Initialize_Property (MP_CMOF_Operation_Precondition, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Precondition,
     League.Strings.To_Universal_String ("precondition"));
   Internal_Set_Lower (MP_CMOF_Operation_Precondition, 0);
   Internal_Set_Upper (MP_CMOF_Operation_Precondition, (Unlimited => True));
   Initialize_Property (MP_CMOF_Operation_Raised_Exception, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Raised_Exception,
     League.Strings.To_Universal_String ("raisedException"));
   Internal_Set_Lower (MP_CMOF_Operation_Raised_Exception, 0);
   Internal_Set_Upper (MP_CMOF_Operation_Raised_Exception, (Unlimited => True));
   Initialize_Property (MP_CMOF_Operation_Redefined_Operation, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Redefined_Operation,
     League.Strings.To_Universal_String ("redefinedOperation"));
   Internal_Set_Lower (MP_CMOF_Operation_Redefined_Operation, 0);
   Internal_Set_Upper (MP_CMOF_Operation_Redefined_Operation, (Unlimited => True));
   Initialize_Property (MP_CMOF_Operation_Type, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Type,
     League.Strings.To_Universal_String ("type"));
   Internal_Set_Lower (MP_CMOF_Operation_Type, 0);
   Internal_Set_Upper (MP_CMOF_Operation_Type, (False,  1));
   Initialize_Property (MP_CMOF_Operation_Upper, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operation_Upper,
     League.Strings.To_Universal_String ("upper"));
   Internal_Set_Lower (MP_CMOF_Operation_Upper, 0);
   Internal_Set_Upper (MP_CMOF_Operation_Upper, (False,  1));
   Initialize_Property (MP_CMOF_Package_Nested_Package, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Package_Nested_Package,
     League.Strings.To_Universal_String ("nestedPackage"));
   Internal_Set_Lower (MP_CMOF_Package_Nested_Package, 0);
   Internal_Set_Upper (MP_CMOF_Package_Nested_Package, (Unlimited => True));
   Initialize_Property (MP_CMOF_Package_Nesting_Package, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Package_Nesting_Package,
     League.Strings.To_Universal_String ("nestingPackage"));
   Internal_Set_Lower (MP_CMOF_Package_Nesting_Package, 0);
   Internal_Set_Upper (MP_CMOF_Package_Nesting_Package, (False,  1));
   Initialize_Property (MP_CMOF_Package_Owned_Type, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Package_Owned_Type,
     League.Strings.To_Universal_String ("ownedType"));
   Internal_Set_Lower (MP_CMOF_Package_Owned_Type, 0);
   Internal_Set_Upper (MP_CMOF_Package_Owned_Type, (Unlimited => True));
   Initialize_Property (MP_CMOF_Package_Package_Merge, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Package_Package_Merge,
     League.Strings.To_Universal_String ("packageMerge"));
   Internal_Set_Lower (MP_CMOF_Package_Package_Merge, 0);
   Internal_Set_Upper (MP_CMOF_Package_Package_Merge, (Unlimited => True));
   Initialize_Property (MP_CMOF_Package_Packaged_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Package_Packaged_Element,
     League.Strings.To_Universal_String ("packagedElement"));
   Internal_Set_Lower (MP_CMOF_Package_Packaged_Element, 0);
   Internal_Set_Upper (MP_CMOF_Package_Packaged_Element, (Unlimited => True));
   Initialize_Property (MP_CMOF_Package_Import_Imported_Package, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Package_Import_Imported_Package,
     League.Strings.To_Universal_String ("importedPackage"));
   Internal_Set_Lower (MP_CMOF_Package_Import_Imported_Package, 1);
   Internal_Set_Upper (MP_CMOF_Package_Import_Imported_Package, (False,  1));
   Initialize_Property (MP_CMOF_Package_Import_Importing_Namespace, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Package_Import_Importing_Namespace,
     League.Strings.To_Universal_String ("importingNamespace"));
   Internal_Set_Lower (MP_CMOF_Package_Import_Importing_Namespace, 1);
   Internal_Set_Upper (MP_CMOF_Package_Import_Importing_Namespace, (False,  1));
   Initialize_Property (MP_CMOF_Package_Import_Visibility, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Package_Import_Visibility,
     League.Strings.To_Universal_String ("visibility"));
   Internal_Set_Lower (MP_CMOF_Package_Import_Visibility, 1);
   Internal_Set_Upper (MP_CMOF_Package_Import_Visibility, (False,  1));
   Initialize_Property (MP_CMOF_Package_Merge_Merged_Package, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Package_Merge_Merged_Package,
     League.Strings.To_Universal_String ("mergedPackage"));
   Internal_Set_Lower (MP_CMOF_Package_Merge_Merged_Package, 1);
   Internal_Set_Upper (MP_CMOF_Package_Merge_Merged_Package, (False,  1));
   Initialize_Property (MP_CMOF_Package_Merge_Receiving_Package, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Package_Merge_Receiving_Package,
     League.Strings.To_Universal_String ("receivingPackage"));
   Internal_Set_Lower (MP_CMOF_Package_Merge_Receiving_Package, 1);
   Internal_Set_Upper (MP_CMOF_Package_Merge_Receiving_Package, (False,  1));
   Initialize_Property (MP_CMOF_Parameter_Default, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Parameter_Default,
     League.Strings.To_Universal_String ("default"));
   Internal_Set_Lower (MP_CMOF_Parameter_Default, 0);
   Internal_Set_Upper (MP_CMOF_Parameter_Default, (False,  1));
   Initialize_Property (MP_CMOF_Parameter_Direction, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Parameter_Direction,
     League.Strings.To_Universal_String ("direction"));
   Internal_Set_Lower (MP_CMOF_Parameter_Direction, 1);
   Internal_Set_Upper (MP_CMOF_Parameter_Direction, (False,  1));
   Initialize_Property (MP_CMOF_Parameter_Operation, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Parameter_Operation,
     League.Strings.To_Universal_String ("operation"));
   Internal_Set_Lower (MP_CMOF_Parameter_Operation, 0);
   Internal_Set_Upper (MP_CMOF_Parameter_Operation, (False,  1));
   Initialize_Property (MP_CMOF_Property_Association, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Property_Association,
     League.Strings.To_Universal_String ("association"));
   Internal_Set_Lower (MP_CMOF_Property_Association, 0);
   Internal_Set_Upper (MP_CMOF_Property_Association, (False,  1));
   Initialize_Property (MP_CMOF_Property_Class, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Property_Class,
     League.Strings.To_Universal_String ("class"));
   Internal_Set_Lower (MP_CMOF_Property_Class, 0);
   Internal_Set_Upper (MP_CMOF_Property_Class, (False,  1));
   Initialize_Property (MP_CMOF_Property_Datatype, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Property_Datatype,
     League.Strings.To_Universal_String ("datatype"));
   Internal_Set_Lower (MP_CMOF_Property_Datatype, 0);
   Internal_Set_Upper (MP_CMOF_Property_Datatype, (False,  1));
   Initialize_Property (MP_CMOF_Property_Default, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Property_Default,
     League.Strings.To_Universal_String ("default"));
   Internal_Set_Lower (MP_CMOF_Property_Default, 0);
   Internal_Set_Upper (MP_CMOF_Property_Default, (False,  1));
   Initialize_Property (MP_CMOF_Property_Is_Composite, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Property_Is_Composite,
     League.Strings.To_Universal_String ("isComposite"));
   Internal_Set_Lower (MP_CMOF_Property_Is_Composite, 1);
   Internal_Set_Upper (MP_CMOF_Property_Is_Composite, (False,  1));
   Initialize_Property (MP_CMOF_Property_Is_Derived, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Property_Is_Derived,
     League.Strings.To_Universal_String ("isDerived"));
   Internal_Set_Lower (MP_CMOF_Property_Is_Derived, 1);
   Internal_Set_Upper (MP_CMOF_Property_Is_Derived, (False,  1));
   Initialize_Property (MP_CMOF_Property_Is_Derived_Union, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Property_Is_Derived_Union,
     League.Strings.To_Universal_String ("isDerivedUnion"));
   Internal_Set_Lower (MP_CMOF_Property_Is_Derived_Union, 1);
   Internal_Set_Upper (MP_CMOF_Property_Is_Derived_Union, (False,  1));
   Initialize_Property (MP_CMOF_Property_Is_Read_Only, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Property_Is_Read_Only,
     League.Strings.To_Universal_String ("isReadOnly"));
   Internal_Set_Lower (MP_CMOF_Property_Is_Read_Only, 1);
   Internal_Set_Upper (MP_CMOF_Property_Is_Read_Only, (False,  1));
   Initialize_Property (MP_CMOF_Property_Opposite, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Property_Opposite,
     League.Strings.To_Universal_String ("opposite"));
   Internal_Set_Lower (MP_CMOF_Property_Opposite, 0);
   Internal_Set_Upper (MP_CMOF_Property_Opposite, (False,  1));
   Initialize_Property (MP_CMOF_Property_Owning_Association, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Property_Owning_Association,
     League.Strings.To_Universal_String ("owningAssociation"));
   Internal_Set_Lower (MP_CMOF_Property_Owning_Association, 0);
   Internal_Set_Upper (MP_CMOF_Property_Owning_Association, (False,  1));
   Initialize_Property (MP_CMOF_Property_Redefined_Property, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Property_Redefined_Property,
     League.Strings.To_Universal_String ("redefinedProperty"));
   Internal_Set_Lower (MP_CMOF_Property_Redefined_Property, 0);
   Internal_Set_Upper (MP_CMOF_Property_Redefined_Property, (Unlimited => True));
   Initialize_Property (MP_CMOF_Property_Subsetted_Property, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Property_Subsetted_Property,
     League.Strings.To_Universal_String ("subsettedProperty"));
   Internal_Set_Lower (MP_CMOF_Property_Subsetted_Property, 0);
   Internal_Set_Upper (MP_CMOF_Property_Subsetted_Property, (Unlimited => True));
   Initialize_Property (MP_CMOF_Redefinable_Element_Is_Leaf, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Redefinable_Element_Is_Leaf,
     League.Strings.To_Universal_String ("isLeaf"));
   Internal_Set_Lower (MP_CMOF_Redefinable_Element_Is_Leaf, 1);
   Internal_Set_Upper (MP_CMOF_Redefinable_Element_Is_Leaf, (False,  1));
   Initialize_Property (MP_CMOF_Redefinable_Element_Redefined_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Redefinable_Element_Redefined_Element,
     League.Strings.To_Universal_String ("redefinedElement"));
   Internal_Set_Lower (MP_CMOF_Redefinable_Element_Redefined_Element, 0);
   Internal_Set_Upper (MP_CMOF_Redefinable_Element_Redefined_Element, (Unlimited => True));
   Initialize_Property (MP_CMOF_Redefinable_Element_Redefinition_Context, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Redefinable_Element_Redefinition_Context,
     League.Strings.To_Universal_String ("redefinitionContext"));
   Internal_Set_Lower (MP_CMOF_Redefinable_Element_Redefinition_Context, 0);
   Internal_Set_Upper (MP_CMOF_Redefinable_Element_Redefinition_Context, (Unlimited => True));
   Initialize_Property (MP_CMOF_Relationship_Related_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Relationship_Related_Element,
     League.Strings.To_Universal_String ("relatedElement"));
   Internal_Set_Lower (MP_CMOF_Relationship_Related_Element, 1);
   Internal_Set_Upper (MP_CMOF_Relationship_Related_Element, (Unlimited => True));
   Initialize_Property (MP_CMOF_Type_Package, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Type_Package,
     League.Strings.To_Universal_String ("package"));
   Internal_Set_Lower (MP_CMOF_Type_Package, 0);
   Internal_Set_Upper (MP_CMOF_Type_Package, (False,  1));
   Initialize_Property (MP_CMOF_Typed_Element_Type, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Typed_Element_Type,
     League.Strings.To_Universal_String ("type"));
   Internal_Set_Lower (MP_CMOF_Typed_Element_Type, 0);
   Internal_Set_Upper (MP_CMOF_Typed_Element_Type, (False,  1));
   Initialize_Property (MP_CMOF_Annotated_Element_Comment, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Annotated_Element_Comment,
     League.Strings.To_Universal_String ("comment"));
   Internal_Set_Lower (MP_CMOF_Annotated_Element_Comment, 0);
   Internal_Set_Upper (MP_CMOF_Annotated_Element_Comment, (Unlimited => True));
   Initialize_Property (MP_CMOF_Attribute_Classifier, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Attribute_Classifier,
     League.Strings.To_Universal_String ("classifier"));
   Internal_Set_Lower (MP_CMOF_Attribute_Classifier, 0);
   Internal_Set_Upper (MP_CMOF_Attribute_Classifier, (False,  1));
   Initialize_Property (MP_CMOF_Body_Condition_Body_Context, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Body_Condition_Body_Context,
     League.Strings.To_Universal_String ("bodyContext"));
   Internal_Set_Lower (MP_CMOF_Body_Condition_Body_Context, 0);
   Internal_Set_Upper (MP_CMOF_Body_Condition_Body_Context, (False,  1));
   Initialize_Property (MP_CMOF_Constrained_Element_Constraint, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Constrained_Element_Constraint,
     League.Strings.To_Universal_String ("constraint"));
   Internal_Set_Lower (MP_CMOF_Constrained_Element_Constraint, 0);
   Internal_Set_Upper (MP_CMOF_Constrained_Element_Constraint, (Unlimited => True));
   Initialize_Property (MP_CMOF_End_Type_Association, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_End_Type_Association,
     League.Strings.To_Universal_String ("association"));
   Internal_Set_Lower (MP_CMOF_End_Type_Association, 0);
   Internal_Set_Upper (MP_CMOF_End_Type_Association, (Unlimited => True));
   Initialize_Property (MP_CMOF_General_Classifier, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_General_Classifier,
     League.Strings.To_Universal_String ("classifier"));
   Internal_Set_Lower (MP_CMOF_General_Classifier, 0);
   Internal_Set_Upper (MP_CMOF_General_Classifier, (Unlimited => True));
   Initialize_Property (MP_CMOF_Imported_Element_Element_Import, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Imported_Element_Element_Import,
     League.Strings.To_Universal_String ("elementImport"));
   Internal_Set_Lower (MP_CMOF_Imported_Element_Element_Import, 0);
   Internal_Set_Upper (MP_CMOF_Imported_Element_Element_Import, (Unlimited => True));
   Initialize_Property (MP_CMOF_Imported_Member_Namespace, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Imported_Member_Namespace,
     League.Strings.To_Universal_String ("namespace"));
   Internal_Set_Lower (MP_CMOF_Imported_Member_Namespace, 0);
   Internal_Set_Upper (MP_CMOF_Imported_Member_Namespace, (Unlimited => True));
   Initialize_Property (MP_CMOF_Imported_Package_Package_Import, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Imported_Package_Package_Import,
     League.Strings.To_Universal_String ("packageImport"));
   Internal_Set_Lower (MP_CMOF_Imported_Package_Package_Import, 0);
   Internal_Set_Upper (MP_CMOF_Imported_Package_Package_Import, (Unlimited => True));
   Initialize_Property (MP_CMOF_Inherited_Member_Classifier, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Inherited_Member_Classifier,
     League.Strings.To_Universal_String ("classifier"));
   Internal_Set_Lower (MP_CMOF_Inherited_Member_Classifier, 0);
   Internal_Set_Upper (MP_CMOF_Inherited_Member_Classifier, (Unlimited => True));
   Initialize_Property (MP_CMOF_Member_Namespace, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Member_Namespace,
     League.Strings.To_Universal_String ("namespace"));
   Internal_Set_Lower (MP_CMOF_Member_Namespace, 0);
   Internal_Set_Upper (MP_CMOF_Member_Namespace, (Unlimited => True));
   Initialize_Property (MP_CMOF_Merged_Package_Package_Merge, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Merged_Package_Package_Merge,
     League.Strings.To_Universal_String ("packageMerge"));
   Internal_Set_Lower (MP_CMOF_Merged_Package_Package_Merge, 0);
   Internal_Set_Upper (MP_CMOF_Merged_Package_Package_Merge, (Unlimited => True));
   Initialize_Property (MP_CMOF_Navigable_Owned_End_Association, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Navigable_Owned_End_Association,
     League.Strings.To_Universal_String ("association"));
   Internal_Set_Lower (MP_CMOF_Navigable_Owned_End_Association, 0);
   Internal_Set_Upper (MP_CMOF_Navigable_Owned_End_Association, (False,  1));
   Initialize_Property (MP_CMOF_Operand_Expression, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Operand_Expression,
     League.Strings.To_Universal_String ("expression"));
   Internal_Set_Lower (MP_CMOF_Operand_Expression, 0);
   Internal_Set_Upper (MP_CMOF_Operand_Expression, (False,  1));
   Initialize_Property (MP_CMOF_Opposite_Property, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Opposite_Property,
     League.Strings.To_Universal_String ("property"));
   Internal_Set_Lower (MP_CMOF_Opposite_Property, 0);
   Internal_Set_Upper (MP_CMOF_Opposite_Property, (False,  1));
   Initialize_Property (MP_CMOF_Owned_Comment_Owning_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Owned_Comment_Owning_Element,
     League.Strings.To_Universal_String ("owningElement"));
   Internal_Set_Lower (MP_CMOF_Owned_Comment_Owning_Element, 0);
   Internal_Set_Upper (MP_CMOF_Owned_Comment_Owning_Element, (False,  1));
   Initialize_Property (MP_CMOF_Owned_Parameter_Owner_Formal_Param, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Owned_Parameter_Owner_Formal_Param,
     League.Strings.To_Universal_String ("ownerFormalParam"));
   Internal_Set_Lower (MP_CMOF_Owned_Parameter_Owner_Formal_Param, 0);
   Internal_Set_Upper (MP_CMOF_Owned_Parameter_Owner_Formal_Param, (False,  1));
   Initialize_Property (MP_CMOF_Packaged_Element_Owning_Package, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Packaged_Element_Owning_Package,
     League.Strings.To_Universal_String ("owningPackage"));
   Internal_Set_Lower (MP_CMOF_Packaged_Element_Owning_Package, 0);
   Internal_Set_Upper (MP_CMOF_Packaged_Element_Owning_Package, (False,  1));
   Initialize_Property (MP_CMOF_Postcondition_Post_Context, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Postcondition_Post_Context,
     League.Strings.To_Universal_String ("postContext"));
   Internal_Set_Lower (MP_CMOF_Postcondition_Post_Context, 0);
   Internal_Set_Upper (MP_CMOF_Postcondition_Post_Context, (False,  1));
   Initialize_Property (MP_CMOF_Precondition_Pre_Context, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Precondition_Pre_Context,
     League.Strings.To_Universal_String ("preContext"));
   Internal_Set_Lower (MP_CMOF_Precondition_Pre_Context, 0);
   Internal_Set_Upper (MP_CMOF_Precondition_Pre_Context, (False,  1));
   Initialize_Property (MP_CMOF_Raised_Exception_Behavioral_Feature, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Raised_Exception_Behavioral_Feature,
     League.Strings.To_Universal_String ("behavioralFeature"));
   Internal_Set_Lower (MP_CMOF_Raised_Exception_Behavioral_Feature, 0);
   Internal_Set_Upper (MP_CMOF_Raised_Exception_Behavioral_Feature, (Unlimited => True));
   Initialize_Property (MP_CMOF_Raised_Exception_Operation, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Raised_Exception_Operation,
     League.Strings.To_Universal_String ("operation"));
   Internal_Set_Lower (MP_CMOF_Raised_Exception_Operation, 0);
   Internal_Set_Upper (MP_CMOF_Raised_Exception_Operation, (Unlimited => True));
   Initialize_Property (MP_CMOF_Redefined_Element_Redefinable_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Redefined_Element_Redefinable_Element,
     League.Strings.To_Universal_String ("redefinableElement"));
   Internal_Set_Lower (MP_CMOF_Redefined_Element_Redefinable_Element, 0);
   Internal_Set_Upper (MP_CMOF_Redefined_Element_Redefinable_Element, (Unlimited => True));
   Initialize_Property (MP_CMOF_Redefined_Operation_Operation, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Redefined_Operation_Operation,
     League.Strings.To_Universal_String ("operation"));
   Internal_Set_Lower (MP_CMOF_Redefined_Operation_Operation, 0);
   Internal_Set_Upper (MP_CMOF_Redefined_Operation_Operation, (Unlimited => True));
   Initialize_Property (MP_CMOF_Redefined_Property_Property, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Redefined_Property_Property,
     League.Strings.To_Universal_String ("property"));
   Internal_Set_Lower (MP_CMOF_Redefined_Property_Property, 0);
   Internal_Set_Upper (MP_CMOF_Redefined_Property_Property, (Unlimited => True));
   Initialize_Property (MP_CMOF_Redefinition_Context_Redefinable_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Redefinition_Context_Redefinable_Element,
     League.Strings.To_Universal_String ("redefinableElement"));
   Internal_Set_Lower (MP_CMOF_Redefinition_Context_Redefinable_Element, 0);
   Internal_Set_Upper (MP_CMOF_Redefinition_Context_Redefinable_Element, (Unlimited => True));
   Initialize_Property (MP_CMOF_Related_Element_Relationship, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Related_Element_Relationship,
     League.Strings.To_Universal_String ("relationship"));
   Internal_Set_Lower (MP_CMOF_Related_Element_Relationship, 0);
   Internal_Set_Upper (MP_CMOF_Related_Element_Relationship, (Unlimited => True));
   Initialize_Property (MP_CMOF_Source_Directed_Relationship, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Source_Directed_Relationship,
     League.Strings.To_Universal_String ("directedRelationship"));
   Internal_Set_Lower (MP_CMOF_Source_Directed_Relationship, 0);
   Internal_Set_Upper (MP_CMOF_Source_Directed_Relationship, (Unlimited => True));
   Initialize_Property (MP_CMOF_Specification_Owning_Constraint, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Specification_Owning_Constraint,
     League.Strings.To_Universal_String ("owningConstraint"));
   Internal_Set_Lower (MP_CMOF_Specification_Owning_Constraint, 0);
   Internal_Set_Upper (MP_CMOF_Specification_Owning_Constraint, (False,  1));
   Initialize_Property (MP_CMOF_Subsetted_Property_Property, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Subsetted_Property_Property,
     League.Strings.To_Universal_String ("property"));
   Internal_Set_Lower (MP_CMOF_Subsetted_Property_Property, 0);
   Internal_Set_Upper (MP_CMOF_Subsetted_Property_Property, (Unlimited => True));
   Initialize_Property (MP_CMOF_Super_Class_Class, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Super_Class_Class,
     League.Strings.To_Universal_String ("class"));
   Internal_Set_Lower (MP_CMOF_Super_Class_Class, 0);
   Internal_Set_Upper (MP_CMOF_Super_Class_Class, (Unlimited => True));
   Initialize_Property (MP_CMOF_Target_Directed_Relationship, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Target_Directed_Relationship,
     League.Strings.To_Universal_String ("directedRelationship"));
   Internal_Set_Lower (MP_CMOF_Target_Directed_Relationship, 0);
   Internal_Set_Upper (MP_CMOF_Target_Directed_Relationship, (Unlimited => True));
   Initialize_Property (MP_CMOF_Type_Operation, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Type_Operation,
     League.Strings.To_Universal_String ("operation"));
   Internal_Set_Lower (MP_CMOF_Type_Operation, 0);
   Internal_Set_Upper (MP_CMOF_Type_Operation, (Unlimited => True));
   Initialize_Property (MP_CMOF_Type_Typed_Element, CMOF_Metamodel_Extent);
   Internal_Set_Name
    (MP_CMOF_Type_Typed_Element,
     League.Strings.To_Universal_String ("typedElement"));
   Internal_Set_Lower (MP_CMOF_Type_Typed_Element, 0);
   Internal_Set_Upper (MP_CMOF_Type_Typed_Element, (Unlimited => True));

   --  Link establishment for class <-> property and propery <-> type

   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Association,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Association_End_Type,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Association_End_Type,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Type,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Association,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Association_Is_Derived,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Association_Is_Derived,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Boolean,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Association,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Association_Member_End,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Association_Member_End,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Property,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Association,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Association_Navigable_Owned_End,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Association_Navigable_Owned_End,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Property,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Association,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Association_Owned_End,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Association_Owned_End,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Property,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Behavioral_Feature,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Behavioral_Feature_Owned_Parameter,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Behavioral_Feature_Owned_Parameter,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Parameter,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Behavioral_Feature,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Behavioral_Feature_Raised_Exception,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Behavioral_Feature_Raised_Exception,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Type,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Class,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Class_Is_Abstract,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Class_Is_Abstract,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Boolean,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Class,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Class_Owned_Attribute,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Class_Owned_Attribute,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Property,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Class,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Class_Owned_Operation,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Class_Owned_Operation,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Operation,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Class,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Class_Super_Class,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Class_Super_Class,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Class,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Classifier,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Classifier_Attribute,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Classifier_Attribute,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Property,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Classifier,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Classifier_Feature,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Classifier_Feature,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Feature,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Classifier,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Classifier_General,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Classifier_General,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Classifier,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Classifier,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Classifier_Inherited_Member,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Classifier_Inherited_Member,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Named_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Classifier,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Classifier_Is_Final_Specialization,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Classifier_Is_Final_Specialization,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Boolean,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Comment,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Comment_Annotated_Element,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Comment_Annotated_Element,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Comment,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Comment_Body,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Comment_Body,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_String,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Constraint,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Constraint_Constrained_Element,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Constraint_Constrained_Element,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Constraint,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Constraint_Context,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Constraint_Context,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Namespace,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Constraint,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Constraint_Specification,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Constraint_Specification,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Value_Specification,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Data_Type,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Data_Type_Owned_Attribute,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Data_Type_Owned_Attribute,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Property,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Data_Type,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Data_Type_Owned_Operation,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Data_Type_Owned_Operation,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Operation,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Directed_Relationship,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Directed_Relationship_Source,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Directed_Relationship_Source,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Directed_Relationship,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Directed_Relationship_Target,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Directed_Relationship_Target,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Element_Owned_Comment,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Element_Owned_Comment,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Comment,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Element_Owned_Element,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Element_Owned_Element,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Element_Owner,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Element_Owner,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Element_Import,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Element_Import_Alias,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Element_Import_Alias,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_String,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Element_Import,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Element_Import_Imported_Element,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Element_Import_Imported_Element,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Packageable_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Element_Import,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Element_Import_Importing_Namespace,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Element_Import_Importing_Namespace,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Namespace,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Element_Import,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Element_Import_Visibility,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Element_Import_Visibility,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Visibility_Kind,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Enumeration,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Enumeration_Owned_Literal,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Enumeration_Owned_Literal,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Enumeration_Literal,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Enumeration_Literal,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Enumeration_Literal_Enumeration,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Enumeration_Literal_Enumeration,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Enumeration,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Expression,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Expression_Operand,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Expression_Operand,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Value_Specification,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Feature,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Feature_Featuring_Classifier,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Feature_Featuring_Classifier,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Classifier,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Multiplicity_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Multiplicity_Element_Is_Ordered,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Multiplicity_Element_Is_Ordered,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Boolean,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Multiplicity_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Multiplicity_Element_Is_Unique,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Multiplicity_Element_Is_Unique,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Boolean,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Multiplicity_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Multiplicity_Element_Lower,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Multiplicity_Element_Lower,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Integer,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Multiplicity_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Multiplicity_Element_Upper,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Multiplicity_Element_Upper,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Unlimited_Natural,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Named_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Named_Element_Name,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Named_Element_Name,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_String,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Named_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Named_Element_Namespace,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Named_Element_Namespace,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Namespace,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Named_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Named_Element_Qualified_Name,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Named_Element_Qualified_Name,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_String,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Named_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Named_Element_Visibility,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Named_Element_Visibility,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Visibility_Kind,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Namespace,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Namespace_Element_Import,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Namespace_Element_Import,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Element_Import,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Namespace,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Namespace_Imported_Member,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Namespace_Imported_Member,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Packageable_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Namespace,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Namespace_Member,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Namespace_Member,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Named_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Namespace,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Namespace_Owned_Member,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Namespace_Owned_Member,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Named_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Namespace,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Namespace_Owned_Rule,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Namespace_Owned_Rule,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Constraint,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Namespace,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Namespace_Package_Import,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Namespace_Package_Import,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Package_Import,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Opaque_Expression,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Opaque_Expression_Body,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Opaque_Expression_Body,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_String,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Opaque_Expression,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Opaque_Expression_Language,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Opaque_Expression_Language,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_String,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Body_Condition,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Body_Condition,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Constraint,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Class,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Class,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Class,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Datatype,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Datatype,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Data_Type,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Is_Ordered,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Is_Ordered,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Boolean,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Is_Query,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Is_Query,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Boolean,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Is_Unique,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Is_Unique,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Boolean,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Lower,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Lower,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Integer,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Owned_Parameter,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Owned_Parameter,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Parameter,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Postcondition,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Postcondition,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Constraint,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Precondition,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Precondition,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Constraint,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Raised_Exception,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Raised_Exception,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Type,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Redefined_Operation,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Redefined_Operation,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Operation,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Type,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Type,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Type,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Operation_Upper,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operation_Upper,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Unlimited_Natural,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Package,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Package_Nested_Package,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Package_Nested_Package,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Package,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Package,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Package_Nesting_Package,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Package_Nesting_Package,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Package,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Package,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Package_Owned_Type,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Package_Owned_Type,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Type,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Package,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Package_Package_Merge,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Package_Package_Merge,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Package_Merge,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Package,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Package_Packaged_Element,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Package_Packaged_Element,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Packageable_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Package_Import,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Package_Import_Imported_Package,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Package_Import_Imported_Package,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Package,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Package_Import,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Package_Import_Importing_Namespace,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Package_Import_Importing_Namespace,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Namespace,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Package_Import,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Package_Import_Visibility,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Package_Import_Visibility,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Visibility_Kind,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Package_Merge,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Package_Merge_Merged_Package,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Package_Merge_Merged_Package,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Package,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Package_Merge,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Package_Merge_Receiving_Package,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Package_Merge_Receiving_Package,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Package,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Parameter,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Parameter_Default,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Parameter_Default,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_String,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Parameter,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Parameter_Direction,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Parameter_Direction,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Parameter_Direction_Kind,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Parameter,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Parameter_Operation,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Parameter_Operation,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Operation,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Property,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Property_Association,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Property_Association,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Association,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Property,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Property_Class,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Property_Class,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Class,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Property,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Property_Datatype,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Property_Datatype,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Data_Type,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Property,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Property_Default,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Property_Default,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_String,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Property,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Property_Is_Composite,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Property_Is_Composite,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Boolean,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Property,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Property_Is_Derived,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Property_Is_Derived,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Boolean,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Property,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Property_Is_Derived_Union,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Property_Is_Derived_Union,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Boolean,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Property,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Property_Is_Read_Only,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Property_Is_Read_Only,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Boolean,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Property,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Property_Opposite,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Property_Opposite,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Property,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Property,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Property_Owning_Association,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Property_Owning_Association,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Association,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Property,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Property_Redefined_Property,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Property_Redefined_Property,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Property,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Property,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Property_Subsetted_Property,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Property_Subsetted_Property,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Property,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Redefinable_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Redefinable_Element_Is_Leaf,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Redefinable_Element_Is_Leaf,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Boolean,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Redefinable_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Redefinable_Element_Redefined_Element,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Redefinable_Element_Redefined_Element,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Redefinable_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Redefinable_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Redefinable_Element_Redefinition_Context,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Redefinable_Element_Redefinition_Context,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Classifier,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Relationship,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Relationship_Related_Element,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Relationship_Related_Element,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Type,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Type_Package,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Type_Package,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Package,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Owned_Attribute_Class,
     MC_CMOF_Typed_Element,
     MP_Cmof_Class_Owned_Attribute,
     MP_CMOF_Typed_Element_Type,
     MP_Cmof_Property_Class);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Typed_Element_Type,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Type,
     MP_Cmof_Type_Typed_Element);

   --  Link establishment for association <-> property and property <-> type

   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Annotated_Element_Comment,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Annotated_Element_Comment,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Annotated_Element_Comment,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Comment,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Annotated_Element_Comment,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Comment_Annotated_Element,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Annotated_Element_Comment,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Annotated_Element_Comment,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Attribute_Classifier,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Attribute_Classifier,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Attribute_Classifier,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Classifier,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Attribute_Classifier,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Classifier_Attribute,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Attribute_Classifier,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Attribute_Classifier,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Body_Condition_Body_Context,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Body_Condition_Body_Context,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Body_Condition_Body_Context,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Operation,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Body_Condition_Body_Context,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Operation_Body_Condition,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Body_Condition_Body_Context,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Body_Condition_Body_Context,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Constrained_Element_Constraint,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Constrained_Element_Constraint,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Constrained_Element_Constraint,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Constraint,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Constrained_Element_Constraint,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Constraint_Constrained_Element,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Constrained_Element_Constraint,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Constrained_Element_Constraint,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Element_Import_Importing_Namespace,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Namespace_Element_Import,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Element_Import_Importing_Namespace,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Element_Import_Importing_Namespace,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_End_Type_Association,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_End_Type_Association,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_End_Type_Association,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Association,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_End_Type_Association,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Association_End_Type,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_End_Type_Association,
     MP_Cmof_Association_Member_End,
     MP_CMOF_End_Type_Association,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Feature_Featuring_Classifier,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Classifier_Feature,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Feature_Featuring_Classifier,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Feature_Featuring_Classifier,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_General_Classifier,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_General_Classifier,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_General_Classifier,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Classifier,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_General_Classifier,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Classifier_General,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_General_Classifier,
     MP_Cmof_Association_Member_End,
     MP_CMOF_General_Classifier,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Imported_Element_Element_Import,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Imported_Element_Element_Import,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Imported_Element_Element_Import,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Element_Import,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Imported_Element_Element_Import,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Element_Import_Imported_Element,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Imported_Element_Element_Import,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Imported_Element_Element_Import,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Imported_Member_Namespace,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Imported_Member_Namespace,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Imported_Member_Namespace,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Namespace,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Imported_Member_Namespace,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Namespace_Imported_Member,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Imported_Member_Namespace,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Imported_Member_Namespace,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Imported_Package_Package_Import,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Imported_Package_Package_Import,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Imported_Package_Package_Import,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Package_Import,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Imported_Package_Package_Import,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Package_Import_Imported_Package,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Imported_Package_Package_Import,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Imported_Package_Package_Import,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Inherited_Member_Classifier,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Inherited_Member_Classifier,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Inherited_Member_Classifier,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Classifier,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Inherited_Member_Classifier,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Classifier_Inherited_Member,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Inherited_Member_Classifier,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Inherited_Member_Classifier,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Member_End_Association,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Association_Member_End,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Member_End_Association,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Property_Association,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Member_Namespace,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Member_Namespace,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Member_Namespace,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Namespace,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Member_Namespace,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Namespace_Member,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Member_Namespace,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Member_Namespace,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Merged_Package_Package_Merge,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Merged_Package_Package_Merge,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Merged_Package_Package_Merge,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Package_Merge,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Merged_Package_Package_Merge,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Package_Merge_Merged_Package,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Merged_Package_Package_Merge,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Merged_Package_Package_Merge,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Navigable_Owned_End_Association,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Navigable_Owned_End_Association,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Navigable_Owned_End_Association,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Association,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Navigable_Owned_End_Association,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Association_Navigable_Owned_End,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Navigable_Owned_End_Association,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Navigable_Owned_End_Association,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Nested_Package_Nesting_Package,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Package_Nested_Package,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Nested_Package_Nesting_Package,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Package_Nesting_Package,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Operand_Expression,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Operand_Expression,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Operand_Expression,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Expression,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Operand_Expression,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Expression_Operand,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Operand_Expression,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Operand_Expression,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Opposite_Property,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Opposite_Property,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Opposite_Property,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Property,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Opposite_Property,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Property_Opposite,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Opposite_Property,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Opposite_Property,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Attribute_Class,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Class_Owned_Attribute,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Attribute_Class,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Property_Class,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Attribute_Datatype,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Data_Type_Owned_Attribute,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Attribute_Datatype,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Property_Datatype,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Owned_Comment_Owning_Element,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Owned_Comment_Owning_Element,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Owned_Comment_Owning_Element,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Comment_Owning_Element,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Element_Owned_Comment,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Comment_Owning_Element,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Owned_Comment_Owning_Element,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Element_Owner,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Element_Owned_Element,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Element_Owner,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Element_Owner,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_End_Owning_Association,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Association_Owned_End,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_End_Owning_Association,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Property_Owning_Association,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Literal_Enumeration,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Enumeration_Owned_Literal,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Literal_Enumeration,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Enumeration_Literal_Enumeration,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Member_Namespace,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Namespace_Owned_Member,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Member_Namespace,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Named_Element_Namespace,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Operation_Class,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Class_Owned_Operation,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Operation_Class,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Operation_Class,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Operation_Datatype,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Data_Type_Owned_Operation,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Operation_Datatype,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Operation_Datatype,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Parameter_Operation,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Operation_Owned_Parameter,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Parameter_Operation,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Parameter_Operation,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Owned_Parameter_Owner_Formal_Param,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Owned_Parameter_Owner_Formal_Param,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Owned_Parameter_Owner_Formal_Param,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Behavioral_Feature,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Parameter_Owner_Formal_Param,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Behavioral_Feature_Owned_Parameter,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Parameter_Owner_Formal_Param,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Owned_Parameter_Owner_Formal_Param,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Rule_Context,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Namespace_Owned_Rule,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Rule_Context,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Constraint_Context,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Type_Package,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Package_Owned_Type,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Owned_Type_Package,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Type_Package,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Package_Import_Importing_Namespace,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Namespace_Package_Import,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Package_Import_Importing_Namespace,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Package_Import_Importing_Namespace,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Package_Merge_Receiving_Package,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Package_Package_Merge,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Package_Merge_Receiving_Package,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Package_Merge_Receiving_Package,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Packaged_Element_Owning_Package,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Packaged_Element_Owning_Package,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Packaged_Element_Owning_Package,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Package,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Packaged_Element_Owning_Package,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Package_Packaged_Element,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Packaged_Element_Owning_Package,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Packaged_Element_Owning_Package,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Postcondition_Post_Context,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Postcondition_Post_Context,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Postcondition_Post_Context,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Operation,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Postcondition_Post_Context,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Operation_Postcondition,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Postcondition_Post_Context,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Postcondition_Post_Context,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Precondition_Pre_Context,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Precondition_Pre_Context,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Precondition_Pre_Context,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Operation,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Precondition_Pre_Context,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Operation_Precondition,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Precondition_Pre_Context,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Precondition_Pre_Context,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Raised_Exception_Behavioral_Feature,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Raised_Exception_Behavioral_Feature,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Raised_Exception_Behavioral_Feature,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Behavioral_Feature,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Raised_Exception_Behavioral_Feature,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Behavioral_Feature_Raised_Exception,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Raised_Exception_Behavioral_Feature,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Raised_Exception_Behavioral_Feature,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Raised_Exception_Operation,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Raised_Exception_Operation,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Raised_Exception_Operation,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Operation,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Raised_Exception_Operation,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Operation_Raised_Exception,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Raised_Exception_Operation,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Raised_Exception_Operation,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Redefined_Element_Redefinable_Element,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Redefined_Element_Redefinable_Element,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Redefined_Element_Redefinable_Element,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Redefinable_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Redefined_Element_Redefinable_Element,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Redefinable_Element_Redefined_Element,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Redefined_Element_Redefinable_Element,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Redefined_Element_Redefinable_Element,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Redefined_Operation_Operation,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Redefined_Operation_Operation,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Redefined_Operation_Operation,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Operation,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Redefined_Operation_Operation,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Operation_Redefined_Operation,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Redefined_Operation_Operation,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Redefined_Operation_Operation,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Redefined_Property_Property,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Redefined_Property_Property,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Redefined_Property_Property,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Property,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Redefined_Property_Property,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Property_Redefined_Property,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Redefined_Property_Property,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Redefined_Property_Property,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Redefinition_Context_Redefinable_Element,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Redefinition_Context_Redefinable_Element,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Redefinition_Context_Redefinable_Element,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Redefinable_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Redefinition_Context_Redefinable_Element,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Redefinable_Element_Redefinition_Context,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Redefinition_Context_Redefinable_Element,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Redefinition_Context_Redefinable_Element,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Related_Element_Relationship,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Related_Element_Relationship,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Related_Element_Relationship,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Relationship,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Related_Element_Relationship,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Relationship_Related_Element,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Related_Element_Relationship,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Related_Element_Relationship,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Source_Directed_Relationship,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Source_Directed_Relationship,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Source_Directed_Relationship,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Directed_Relationship,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Source_Directed_Relationship,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Directed_Relationship_Source,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Source_Directed_Relationship,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Source_Directed_Relationship,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Specification_Owning_Constraint,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Specification_Owning_Constraint,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Specification_Owning_Constraint,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Constraint,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Specification_Owning_Constraint,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Constraint_Specification,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Specification_Owning_Constraint,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Specification_Owning_Constraint,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Subsetted_Property_Property,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Subsetted_Property_Property,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Subsetted_Property_Property,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Property,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Subsetted_Property_Property,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Property_Subsetted_Property,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Subsetted_Property_Property,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Subsetted_Property_Property,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Super_Class_Class,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Super_Class_Class,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Super_Class_Class,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Class,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Super_Class_Class,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Class_Super_Class,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Super_Class_Class,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Super_Class_Class,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Target_Directed_Relationship,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Target_Directed_Relationship,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Target_Directed_Relationship,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Directed_Relationship,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Target_Directed_Relationship,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Directed_Relationship_Target,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Target_Directed_Relationship,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Target_Directed_Relationship,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Type_Operation,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Type_Operation,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Type_Operation,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Operation,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Type_Operation,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Operation_Type,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Type_Operation,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Type_Operation,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Owned_End_Owning_Association,
     MA_CMOF_Type_Typed_Element,
     MP_Cmof_Association_Owned_End,
     MP_CMOF_Type_Typed_Element,
     MP_Cmof_Property_Owning_Association);
   Internal_Create_Link
    (MA_Cmof_Type_Typed_Element,
     MP_CMOF_Type_Typed_Element,
     MP_Cmof_Typed_Element_Type,
     MC_CMOF_Typed_Element,
     MP_Cmof_Type_Typed_Element);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Type_Typed_Element,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Typed_Element_Type,
     MP_Cmof_Property_Association);
   Internal_Create_Link
    (MA_Cmof_Member_End_Association,
     MA_CMOF_Type_Typed_Element,
     MP_Cmof_Association_Member_End,
     MP_CMOF_Type_Typed_Element,
     MP_Cmof_Property_Association);

   --  Link establishment for class <-> class

   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Association,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Classifier,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Association,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Relationship,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Behavioral_Feature,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Feature,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Behavioral_Feature,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Namespace,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Class,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Classifier,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Classifier,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Namespace,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Classifier,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Type,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Comment,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Constraint,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Packageable_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Data_Type,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Classifier,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Directed_Relationship,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Relationship,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Element_Import,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Directed_Relationship,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Enumeration,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Data_Type,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Enumeration_Literal,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Named_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Expression,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Value_Specification,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Feature,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Redefinable_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Multiplicity_Element,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Named_Element,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Namespace,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Named_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Opaque_Expression,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Value_Specification,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Operation,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Behavioral_Feature,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Package,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Namespace,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Package,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Packageable_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Package_Import,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Directed_Relationship,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Package_Merge,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Directed_Relationship,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Packageable_Element,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Named_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Parameter,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Multiplicity_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Parameter,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Typed_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Primitive_Type,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Data_Type,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Property,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Structural_Feature,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Redefinable_Element,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Named_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Relationship,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Structural_Feature,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Feature,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Structural_Feature,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Multiplicity_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Structural_Feature,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Typed_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Type,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Named_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Type,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Packageable_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Typed_Element,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Named_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Value_Specification,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Packageable_Element,
     MP_Cmof_Super_Class_Class);
   Internal_Create_Link
    (MA_Cmof_Super_Class_Class,
     MC_CMOF_Value_Specification,
     MP_Cmof_Class_Super_Class,
     MC_CMOF_Typed_Element,
     MP_Cmof_Super_Class_Class);

   --  Link establishment for package <-> class

   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Association,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Behavioral_Feature,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Class,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Classifier,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Comment,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Constraint,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Data_Type,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Directed_Relationship,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Element,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Element_Import,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Enumeration,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Enumeration_Literal,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Expression,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Feature,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Multiplicity_Element,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Named_Element,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Namespace,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Opaque_Expression,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Operation,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Package,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Package_Import,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Package_Merge,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Packageable_Element,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Parameter,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Primitive_Type,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Property,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Redefinable_Element,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Relationship,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Structural_Feature,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Type,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Typed_Element,
     MP_Cmof_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_Cmof_Packaged_Element_Owning_Package,
     MM_CMOF,
     MP_Cmof_Package_Packaged_Element,
     MC_CMOF_Value_Specification,
     MP_Cmof_Packaged_Element_Owning_Package);
end Cmof.Internals.Setup;
