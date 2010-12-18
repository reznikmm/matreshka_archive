
package CMOF.Internals.Metamodel is

   pragma Pure;

   --------------
   -- Packages --
   --------------

   MM_CMOF : constant CMOF_Package := 1;

   -------------
   -- Classes --
   -------------

   MC_Cmof_Association           : constant Cmof_Class := 2;
   MC_Cmof_Behavioral_Feature    : constant Cmof_Class := 3;
   MC_Cmof_Class                 : constant Cmof_Class := 4;
   MC_Cmof_Classifier            : constant Cmof_Class := 5;
   MC_Cmof_Comment               : constant Cmof_Class := 6;
   MC_Cmof_Constraint            : constant Cmof_Class := 7;
   MC_Cmof_Data_Type             : constant Cmof_Class := 8;
   MC_Cmof_Directed_Relationship : constant Cmof_Class := 9;
   MC_Cmof_Element               : constant Cmof_Class := 10;
   MC_Cmof_Element_Import        : constant Cmof_Class := 11;
   MC_Cmof_Enumeration           : constant Cmof_Class := 12;
   MC_Cmof_Enumeration_Literal   : constant Cmof_Class := 13;
   MC_Cmof_Expression            : constant Cmof_Class := 14;
   MC_Cmof_Feature               : constant Cmof_Class := 15;
   MC_Cmof_Multiplicity_Element  : constant Cmof_Class := 16;
   MC_Cmof_Named_Element         : constant Cmof_Class := 17;
   MC_Cmof_Namespace             : constant Cmof_Class := 18;
   MC_Cmof_Opaque_Expression     : constant Cmof_Class := 19;
   MC_Cmof_Operation             : constant Cmof_Class := 20;
   MC_Cmof_Package               : constant Cmof_Class := 21;
   MC_Cmof_Package_Import        : constant Cmof_Class := 22;
   MC_Cmof_Package_Merge         : constant Cmof_Class := 23;
   MC_Cmof_Packageable_Element   : constant Cmof_Class := 24;
   MC_Cmof_Parameter             : constant Cmof_Class := 25;
   MC_Cmof_Primitive_Type        : constant Cmof_Class := 26;
   MC_Cmof_Property              : constant Cmof_Class := 27;
   MC_Cmof_Redefinable_Element   : constant Cmof_Class := 28;
   MC_Cmof_Relationship          : constant Cmof_Class := 29;
   MC_Cmof_Structural_Feature    : constant Cmof_Class := 30;
   MC_Cmof_Type                  : constant Cmof_Class := 31;
   MC_Cmof_Typed_Element         : constant Cmof_Class := 32;
   MC_Cmof_Value_Specification   : constant Cmof_Class := 33;

   ------------------
   -- Associations --
   ------------------

   MA_Cmof_Annotated_Element_Comment        : constant Cmof_Association := 34;
   MA_Cmof_Attribute_Classifier             : constant Cmof_Association := 35;
   MA_Cmof_Body_Condition_Body_Context      : constant Cmof_Association := 36;
   MA_Cmof_Constrained_Element_Constraint   : constant Cmof_Association := 37;
   MA_Cmof_Element_Import_Importing_Namespace
                                            : constant Cmof_Association := 38;
   MA_Cmof_End_Type_Association             : constant Cmof_Association := 39;
   MA_Cmof_Feature_Featuring_Classifier     : constant Cmof_Association := 40;
   MA_Cmof_General_Classifier               : constant Cmof_Association := 41;
   MA_Cmof_Imported_Element_Element_Import  : constant Cmof_Association := 42;
   MA_Cmof_Imported_Member_Namespace        : constant Cmof_Association := 43;
   MA_Cmof_Imported_Package_Package_Import  : constant Cmof_Association := 44;
   MA_Cmof_Inherited_Member_Classifier      : constant Cmof_Association := 45;
   MA_Cmof_Member_End_Association           : constant Cmof_Association := 46;
   MA_Cmof_Member_Namespace                 : constant Cmof_Association := 47;
   MA_Cmof_Merged_Package_Package_Merge     : constant Cmof_Association := 48;
   MA_Cmof_Navigable_Owned_End_Association  : constant Cmof_Association := 49;
   MA_Cmof_Nested_Package_Nesting_Package   : constant Cmof_Association := 50;
   MA_Cmof_Operand_Expression               : constant Cmof_Association := 51;
   MA_Cmof_Opposite_Property                : constant Cmof_Association := 52;
   MA_Cmof_Owned_Attribute_Class            : constant Cmof_Association := 53;
   MA_Cmof_Owned_Attribute_Datatype         : constant Cmof_Association := 54;
   MA_Cmof_Owned_Comment_Owning_Element     : constant Cmof_Association := 55;
   MA_Cmof_Owned_Element_Owner              : constant Cmof_Association := 56;
   MA_Cmof_Owned_End_Owning_Association     : constant Cmof_Association := 57;
   MA_Cmof_Owned_Literal_Enumeration        : constant Cmof_Association := 58;
   MA_Cmof_Owned_Member_Namespace           : constant Cmof_Association := 59;
   MA_Cmof_Owned_Operation_Class            : constant Cmof_Association := 60;
   MA_Cmof_Owned_Operation_Datatype         : constant Cmof_Association := 61;
   MA_Cmof_Owned_Parameter_Operation        : constant Cmof_Association := 62;
   MA_Cmof_Owned_Parameter_Owner_Formal_Param
                                            : constant Cmof_Association := 63;
   MA_Cmof_Owned_Rule_Context               : constant Cmof_Association := 64;
   MA_Cmof_Owned_Type_Package               : constant Cmof_Association := 65;
   MA_Cmof_Package_Import_Importing_Namespace
                                            : constant Cmof_Association := 66;
   MA_Cmof_Package_Merge_Receiving_Package  : constant Cmof_Association := 67;
   MA_Cmof_Packaged_Element_Owning_Package  : constant Cmof_Association := 68;
   MA_Cmof_Postcondition_Post_Context       : constant Cmof_Association := 69;
   MA_Cmof_Precondition_Pre_Context         : constant Cmof_Association := 70;
   MA_Cmof_Raised_Exception_Behavioral_Feature
                                            : constant Cmof_Association := 71;
   MA_Cmof_Raised_Exception_Operation       : constant Cmof_Association := 72;
   MA_Cmof_Redefined_Element_Redefinable_Element
                                            : constant Cmof_Association := 73;
   MA_Cmof_Redefined_Operation_Operation    : constant Cmof_Association := 74;
   MA_Cmof_Redefined_Property_Property      : constant Cmof_Association := 75;
   MA_Cmof_Redefinition_Context_Redefinable_Element
                                            : constant Cmof_Association := 76;
   MA_Cmof_Related_Element_Relationship     : constant Cmof_Association := 77;
   MA_Cmof_Source_Directed_Relationship     : constant Cmof_Association := 78;
   MA_Cmof_Specification_Owning_Constraint  : constant Cmof_Association := 79;
   MA_Cmof_Subsetted_Property_Property      : constant Cmof_Association := 80;
   MA_Cmof_Super_Class_Class                : constant Cmof_Association := 81;
   MA_Cmof_Target_Directed_Relationship     : constant Cmof_Association := 82;
   MA_Cmof_Type_Operation                   : constant Cmof_Association := 83;
   MA_Cmof_Type_Typed_Element               : constant Cmof_Association := 84;

   ----------------
   -- Properties --
   ----------------

   --  Collections of CMOF::Element

   MP_Cmof_Association_End_Type                : constant CMOF_Property := 85;
   MP_Cmof_Association_Member_End              : constant CMOF_Property := 86;
   MP_Cmof_Association_Navigable_Owned_End     : constant CMOF_Property := 87;
   MP_Cmof_Association_Owned_End               : constant CMOF_Property := 88;
   MP_Cmof_Behavioral_Feature_Owned_Parameter  : constant CMOF_Property := 89;
   MP_Cmof_Behavioral_Feature_Raised_Exception : constant CMOF_Property := 90;
   MP_Cmof_Class_Owned_Attribute               : constant CMOF_Property := 91;
   MP_Cmof_Class_Owned_Operation               : constant CMOF_Property := 92;
   MP_Cmof_Class_Super_Class                   : constant CMOF_Property := 93;
   MP_Cmof_Classifier_Attribute                : constant CMOF_Property := 94;
   MP_Cmof_Classifier_Feature                  : constant CMOF_Property := 95;
   MP_Cmof_Classifier_General                  : constant CMOF_Property := 96;
   MP_Cmof_Classifier_Inherited_Member         : constant CMOF_Property := 97;
   MP_Cmof_Comment_Annotated_Element           : constant CMOF_Property := 98;
   MP_Cmof_Constraint_Constrained_Element      : constant CMOF_Property := 99;
   MP_Cmof_Data_Type_Owned_Attribute           : constant CMOF_Property := 100;
   MP_Cmof_Data_Type_Owned_Operation           : constant CMOF_Property := 101;
   MP_Cmof_Directed_Relationship_Source        : constant CMOF_Property := 102;
   MP_Cmof_Directed_Relationship_Target        : constant CMOF_Property := 103;
   MP_Cmof_Element_Owned_Comment               : constant CMOF_Property := 104;
   MP_Cmof_Element_Owned_Element               : constant CMOF_Property := 105;
   MP_Cmof_Enumeration_Owned_Literal           : constant CMOF_Property := 106;
   MP_Cmof_Expression_Operand                  : constant CMOF_Property := 107;
   MP_Cmof_Feature_Featuring_Classifier        : constant CMOF_Property := 108;
   MP_Cmof_Namespace_Element_Import            : constant CMOF_Property := 109;
   MP_Cmof_Namespace_Imported_Member           : constant CMOF_Property := 110;
   MP_Cmof_Namespace_Member                    : constant CMOF_Property := 111;
   MP_Cmof_Namespace_Owned_Member              : constant CMOF_Property := 112;
   MP_Cmof_Namespace_Owned_Rule                : constant CMOF_Property := 113;
   MP_Cmof_Namespace_Package_Import            : constant CMOF_Property := 114;
   MP_Cmof_Operation_Owned_Parameter           : constant CMOF_Property := 115;
   MP_Cmof_Operation_Postcondition             : constant CMOF_Property := 116;
   MP_Cmof_Operation_Precondition              : constant CMOF_Property := 117;
   MP_Cmof_Operation_Raised_Exception          : constant CMOF_Property := 118;
   MP_Cmof_Operation_Redefined_Operation       : constant CMOF_Property := 119;
   MP_Cmof_Package_Nested_Package              : constant CMOF_Property := 120;
   MP_Cmof_Package_Owned_Type                  : constant CMOF_Property := 121;
   MP_Cmof_Package_Package_Merge               : constant CMOF_Property := 122;
   MP_Cmof_Package_Packaged_Element            : constant CMOF_Property := 123;
   MP_Cmof_Property_Redefined_Property         : constant CMOF_Property := 124;
   MP_Cmof_Property_Subsetted_Property         : constant CMOF_Property := 125;
   MP_Cmof_Redefinable_Element_Redefined_Element
                                               : constant CMOF_Property := 126;
   MP_Cmof_Redefinable_Element_Redefinition_Context
                                               : constant CMOF_Property := 127;
   MP_Cmof_Relationship_Related_Element        : constant CMOF_Property := 128;

   --  Single CMOF::Element

   MP_Cmof_Constraint_Context                  : constant CMOF_Property := 129;
   MP_Cmof_Constraint_Specification            : constant CMOF_Property := 130;
   MP_Cmof_Element_Import_Imported_Element     : constant CMOF_Property := 131;
   MP_Cmof_Element_Import_Importing_Namespace  : constant CMOF_Property := 132;
   MP_Cmof_Element_Owner                       : constant CMOF_Property := 133;
   MP_Cmof_Enumeration_Literal_Enumeration     : constant CMOF_Property := 134;
   MP_Cmof_Named_Element_Namespace             : constant CMOF_Property := 135;
   MP_Cmof_Operation_Body_Condition            : constant CMOF_Property := 136;
   MP_Cmof_Operation_Class                     : constant CMOF_Property := 137;
   MP_Cmof_Operation_Datatype                  : constant CMOF_Property := 138;
   MP_Cmof_Operation_Type                      : constant CMOF_Property := 139;
   MP_Cmof_Package_Import_Imported_Package     : constant CMOF_Property := 140;
   MP_Cmof_Package_Import_Importing_Namespace  : constant CMOF_Property := 141;
   MP_Cmof_Package_Merge_Merged_Package        : constant CMOF_Property := 142;
   MP_Cmof_Package_Merge_Receiving_Package     : constant CMOF_Property := 143;
   MP_Cmof_Package_Nesting_Package             : constant CMOF_Property := 144;
   MP_Cmof_Parameter_Operation                 : constant CMOF_Property := 145;
   MP_Cmof_Property_Association                : constant CMOF_Property := 146;
   MP_Cmof_Property_Class                      : constant CMOF_Property := 147;
   MP_Cmof_Property_Datatype                   : constant CMOF_Property := 148;
   MP_Cmof_Property_Opposite                   : constant CMOF_Property := 149;
   MP_Cmof_Property_Owning_Association         : constant CMOF_Property := 150;
   MP_Cmof_Type_Package                        : constant CMOF_Property := 151;
   MP_Cmof_Typed_Element_Type                  : constant CMOF_Property := 152;

   --  Collections of primitive type

   MP_Cmof_Opaque_Expression_Body              : constant CMOF_Property := 153;
   MP_Cmof_Opaque_Expression_Language          : constant CMOF_Property := 154;

   --  Primitive type

   MP_Cmof_Association_Is_Derived              : constant CMOF_Property := 155;
   MP_Cmof_Class_Is_Abstract                   : constant CMOF_Property := 156;
   MP_Cmof_Classifier_Is_Final_Specialization  : constant CMOF_Property := 157;
   MP_Cmof_Comment_Body                        : constant CMOF_Property := 158;
   MP_Cmof_Element_Import_Alias                : constant CMOF_Property := 159;
   MP_Cmof_Element_Import_Visibility           : constant CMOF_Property := 160;
   MP_Cmof_Multiplicity_Element_Is_Ordered     : constant CMOF_Property := 161;
   MP_Cmof_Multiplicity_Element_Is_Unique      : constant CMOF_Property := 162;
   MP_Cmof_Multiplicity_Element_Lower          : constant CMOF_Property := 163;
   MP_Cmof_Multiplicity_Element_Upper          : constant CMOF_Property := 164;
   MP_Cmof_Named_Element_Name                  : constant CMOF_Property := 165;
   MP_Cmof_Named_Element_Qualified_Name        : constant CMOF_Property := 166;
   MP_Cmof_Named_Element_Visibility            : constant CMOF_Property := 167;
   MP_Cmof_Operation_Is_Ordered                : constant CMOF_Property := 168;
   MP_Cmof_Operation_Is_Query                  : constant CMOF_Property := 169;
   MP_Cmof_Operation_Is_Unique                 : constant CMOF_Property := 170;
   MP_Cmof_Operation_Lower                     : constant CMOF_Property := 171;
   MP_Cmof_Operation_Upper                     : constant CMOF_Property := 172;
   MP_Cmof_Package_Import_Visibility           : constant CMOF_Property := 173;
   MP_Cmof_Parameter_Default                   : constant CMOF_Property := 174;
   MP_Cmof_Parameter_Direction                 : constant CMOF_Property := 175;
   MP_Cmof_Property_Default                    : constant CMOF_Property := 176;
   MP_Cmof_Property_Is_Composite               : constant CMOF_Property := 177;
   MP_Cmof_Property_Is_Derived                 : constant CMOF_Property := 178;
   MP_Cmof_Property_Is_Derived_Union           : constant CMOF_Property := 179;
   MP_Cmof_Property_Is_Read_Only               : constant CMOF_Property := 180;
   MP_Cmof_Redefinable_Element_Is_Leaf         : constant CMOF_Property := 181;

   --  Owned by associations

   MP_Cmof_Annotated_Element_Comment           : constant CMOF_Property := 182;
   MP_Cmof_Attribute_Classifier                : constant CMOF_Property := 183;
   MP_Cmof_Body_Condition_Body_Context         : constant CMOF_Property := 184;
   MP_Cmof_Constrained_Element_Constraint      : constant CMOF_Property := 185;
   MP_Cmof_End_Type_Association                : constant CMOF_Property := 186;
   MP_Cmof_General_Classifier                  : constant CMOF_Property := 187;
   MP_Cmof_Imported_Element_Element_Import     : constant CMOF_Property := 188;
   MP_Cmof_Imported_Member_Namespace           : constant CMOF_Property := 189;
   MP_Cmof_Imported_Package_Package_Import     : constant CMOF_Property := 190;
   MP_Cmof_Inherited_Member_Classifier         : constant CMOF_Property := 191;
   MP_Cmof_Member_Namespace                    : constant CMOF_Property := 192;
   MP_Cmof_Merged_Package_Package_Merge        : constant CMOF_Property := 193;
   MP_Cmof_Navigable_Owned_End_Association     : constant CMOF_Property := 194;
   MP_Cmof_Operand_Expression                  : constant CMOF_Property := 195;
   MP_Cmof_Opposite_Property                   : constant CMOF_Property := 196;
   MP_Cmof_Owned_Comment_Owning_Element        : constant CMOF_Property := 197;
   MP_Cmof_Owned_Parameter_Owner_Formal_Param  : constant CMOF_Property := 198;
   MP_Cmof_Packaged_Element_Owning_Package     : constant CMOF_Property := 199;
   MP_Cmof_Postcondition_Post_Context          : constant CMOF_Property := 200;
   MP_Cmof_Precondition_Pre_Context            : constant CMOF_Property := 201;
   MP_Cmof_Raised_Exception_Behavioral_Feature : constant CMOF_Property := 202;
   MP_Cmof_Raised_Exception_Operation          : constant CMOF_Property := 203;
   MP_Cmof_Redefined_Element_Redefinable_Element
                                               : constant CMOF_Property := 204;
   MP_Cmof_Redefined_Operation_Operation       : constant CMOF_Property := 205;
   MP_Cmof_Redefined_Property_Property         : constant CMOF_Property := 206;
   MP_Cmof_Redefinition_Context_Redefinable_Element
                                               : constant CMOF_Property := 207;
   MP_Cmof_Related_Element_Relationship        : constant CMOF_Property := 208;
   MP_Cmof_Source_Directed_Relationship        : constant CMOF_Property := 209;
   MP_Cmof_Specification_Owning_Constraint     : constant CMOF_Property := 210;
   MP_Cmof_Subsetted_Property_Property         : constant CMOF_Property := 211;
   MP_Cmof_Super_Class_Class                   : constant CMOF_Property := 212;
   MP_Cmof_Target_Directed_Relationship        : constant CMOF_Property := 213;
   MP_Cmof_Type_Operation                      : constant CMOF_Property := 214;
   MP_Cmof_Type_Typed_Element                  : constant CMOF_Property := 215;

   subtype Cmof_Collection_Of_Element_Property is
     CMOF_Property range 85 .. 128;

   subtype Cmof_Non_Collection_Of_Element_Property is
     CMOF_Property range 129 .. 181;

end CMOF.Internals.Metamodel;
