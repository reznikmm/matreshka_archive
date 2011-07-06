------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
--  This file is generated, don't edit it.
------------------------------------------------------------------------------

package CMOF.Internals.Metamodel is

   pragma Preelaborate;

   MM_CMOF : constant CMOF_Package := 189;

   MC_CMOF_Boolean                  : constant CMOF_Data_Type := 192;
   MC_CMOF_Integer                  : constant CMOF_Data_Type := 190;
   MC_CMOF_Parameter_Direction_Kind : constant CMOF_Data_Type := 737;
   MC_CMOF_String                   : constant CMOF_Data_Type := 194;
   MC_CMOF_Unlimited_Natural        : constant CMOF_Data_Type := 196;
   MC_CMOF_Visibility_Kind          : constant CMOF_Data_Type := 747;

   MC_CMOF_Association           : constant CMOF_Class := 1;
   MC_CMOF_Behavioral_Feature    : constant CMOF_Class := 2;
   MC_CMOF_Class                 : constant CMOF_Class := 3;
   MC_CMOF_Classifier            : constant CMOF_Class := 4;
   MC_CMOF_Comment               : constant CMOF_Class := 5;
   MC_CMOF_Constraint            : constant CMOF_Class := 6;
   MC_CMOF_Data_Type             : constant CMOF_Class := 7;
   MC_CMOF_Directed_Relationship : constant CMOF_Class := 8;
   MC_CMOF_Element               : constant CMOF_Class := 9;
   MC_CMOF_Element_Import        : constant CMOF_Class := 10;
   MC_CMOF_Enumeration           : constant CMOF_Class := 11;
   MC_CMOF_Enumeration_Literal   : constant CMOF_Class := 12;
   MC_CMOF_Expression            : constant CMOF_Class := 13;
   MC_CMOF_Feature               : constant CMOF_Class := 14;
   MC_CMOF_Multiplicity_Element  : constant CMOF_Class := 15;
   MC_CMOF_Named_Element         : constant CMOF_Class := 16;
   MC_CMOF_Namespace             : constant CMOF_Class := 17;
   MC_CMOF_Opaque_Expression     : constant CMOF_Class := 18;
   MC_CMOF_Operation             : constant CMOF_Class := 19;
   MC_CMOF_Package               : constant CMOF_Class := 20;
   MC_CMOF_Package_Import        : constant CMOF_Class := 21;
   MC_CMOF_Package_Merge         : constant CMOF_Class := 22;
   MC_CMOF_Packageable_Element   : constant CMOF_Class := 23;
   MC_CMOF_Parameter             : constant CMOF_Class := 24;
   MC_CMOF_Primitive_Type        : constant CMOF_Class := 25;
   MC_CMOF_Property              : constant CMOF_Class := 26;
   MC_CMOF_Redefinable_Element   : constant CMOF_Class := 27;
   MC_CMOF_Relationship          : constant CMOF_Class := 28;
   MC_CMOF_Structural_Feature    : constant CMOF_Class := 29;
   MC_CMOF_Tag                   : constant CMOF_Class := 30;
   MC_CMOF_Type                  : constant CMOF_Class := 31;
   MC_CMOF_Typed_Element         : constant CMOF_Class := 32;
   MC_CMOF_Value_Specification   : constant CMOF_Class := 33;

   MP_CMOF_Association_End_Type                : constant CMOF_Property := 34;
   MP_CMOF_Association_Member_End              : constant CMOF_Property := 35;
   MP_CMOF_Association_Navigable_Owned_End     : constant CMOF_Property := 36;
   MP_CMOF_Association_Owned_End               : constant CMOF_Property := 37;
   MP_CMOF_Behavioral_Feature_Owned_Parameter  : constant CMOF_Property := 38;
   MP_CMOF_Behavioral_Feature_Raised_Exception : constant CMOF_Property := 39;
   MP_CMOF_Class_Owned_Attribute               : constant CMOF_Property := 40;
   MP_CMOF_Class_Owned_Operation               : constant CMOF_Property := 41;
   MP_CMOF_Class_Super_Class                   : constant CMOF_Property := 42;
   MP_CMOF_Classifier_Attribute                : constant CMOF_Property := 43;
   MP_CMOF_Classifier_Feature                  : constant CMOF_Property := 44;
   MP_CMOF_Classifier_General                  : constant CMOF_Property := 45;
   MP_CMOF_Classifier_Inherited_Member         : constant CMOF_Property := 46;
   MP_CMOF_Comment_Annotated_Element           : constant CMOF_Property := 47;
   MP_CMOF_Constraint_Constrained_Element      : constant CMOF_Property := 48;
   MP_CMOF_Data_Type_Owned_Attribute           : constant CMOF_Property := 49;
   MP_CMOF_Data_Type_Owned_Operation           : constant CMOF_Property := 50;
   MP_CMOF_Directed_Relationship_Source        : constant CMOF_Property := 51;
   MP_CMOF_Directed_Relationship_Target        : constant CMOF_Property := 52;
   MP_CMOF_Element_Owned_Comment               : constant CMOF_Property := 53;
   MP_CMOF_Element_Owned_Element               : constant CMOF_Property := 54;
   MP_CMOF_Enumeration_Owned_Literal           : constant CMOF_Property := 55;
   MP_CMOF_Expression_Operand                  : constant CMOF_Property := 56;
   MP_CMOF_Feature_Featuring_Classifier        : constant CMOF_Property := 57;
   MP_CMOF_Namespace_Element_Import            : constant CMOF_Property := 58;
   MP_CMOF_Namespace_Imported_Member           : constant CMOF_Property := 59;
   MP_CMOF_Namespace_Member                    : constant CMOF_Property := 60;
   MP_CMOF_Namespace_Owned_Member              : constant CMOF_Property := 61;
   MP_CMOF_Namespace_Owned_Rule                : constant CMOF_Property := 62;
   MP_CMOF_Namespace_Package_Import            : constant CMOF_Property := 63;
   MP_CMOF_Operation_Owned_Parameter           : constant CMOF_Property := 64;
   MP_CMOF_Operation_Postcondition             : constant CMOF_Property := 65;
   MP_CMOF_Operation_Precondition              : constant CMOF_Property := 66;
   MP_CMOF_Operation_Raised_Exception          : constant CMOF_Property := 67;
   MP_CMOF_Operation_Redefined_Operation       : constant CMOF_Property := 68;
   MP_CMOF_Package_Nested_Package              : constant CMOF_Property := 69;
   MP_CMOF_Package_Owned_Type                  : constant CMOF_Property := 70;
   MP_CMOF_Package_Package_Merge               : constant CMOF_Property := 71;
   MP_CMOF_Package_Packaged_Element            : constant CMOF_Property := 72;
   MP_CMOF_Property_Redefined_Property         : constant CMOF_Property := 73;
   MP_CMOF_Property_Subsetted_Property         : constant CMOF_Property := 74;
   MP_CMOF_Redefinable_Element_Redefined_Element
                                               : constant CMOF_Property := 75;
   MP_CMOF_Redefinable_Element_Redefinition_Context
                                               : constant CMOF_Property := 76;
   MP_CMOF_Relationship_Related_Element        : constant CMOF_Property := 77;
   MP_CMOF_Tag_Element                         : constant CMOF_Property := 78;
   MP_CMOF_Association_Is_Derived              : constant CMOF_Property := 79;
   MP_CMOF_Class_Is_Abstract                   : constant CMOF_Property := 80;
   MP_CMOF_Classifier_Is_Final_Specialization  : constant CMOF_Property := 81;
   MP_CMOF_Comment_Body                        : constant CMOF_Property := 82;
   MP_CMOF_Constraint_Context                  : constant CMOF_Property := 83;
   MP_CMOF_Constraint_Specification            : constant CMOF_Property := 84;
   MP_CMOF_Element_Owner                       : constant CMOF_Property := 85;
   MP_CMOF_Element_Import_Alias                : constant CMOF_Property := 86;
   MP_CMOF_Element_Import_Imported_Element     : constant CMOF_Property := 87;
   MP_CMOF_Element_Import_Importing_Namespace  : constant CMOF_Property := 88;
   MP_CMOF_Element_Import_Visibility           : constant CMOF_Property := 89;
   MP_CMOF_Enumeration_Literal_Enumeration     : constant CMOF_Property := 90;
   MP_CMOF_Multiplicity_Element_Is_Ordered     : constant CMOF_Property := 91;
   MP_CMOF_Multiplicity_Element_Is_Unique      : constant CMOF_Property := 92;
   MP_CMOF_Multiplicity_Element_Lower          : constant CMOF_Property := 93;
   MP_CMOF_Multiplicity_Element_Upper          : constant CMOF_Property := 94;
   MP_CMOF_Named_Element_Name                  : constant CMOF_Property := 95;
   MP_CMOF_Named_Element_Namespace             : constant CMOF_Property := 96;
   MP_CMOF_Named_Element_Qualified_Name        : constant CMOF_Property := 97;
   MP_CMOF_Named_Element_Visibility            : constant CMOF_Property := 98;
   MP_CMOF_Opaque_Expression_Body              : constant CMOF_Property := 99;
   MP_CMOF_Opaque_Expression_Language          : constant CMOF_Property := 100;
   MP_CMOF_Operation_Body_Condition            : constant CMOF_Property := 101;
   MP_CMOF_Operation_Class                     : constant CMOF_Property := 102;
   MP_CMOF_Operation_Datatype                  : constant CMOF_Property := 103;
   MP_CMOF_Operation_Is_Ordered                : constant CMOF_Property := 104;
   MP_CMOF_Operation_Is_Query                  : constant CMOF_Property := 105;
   MP_CMOF_Operation_Is_Unique                 : constant CMOF_Property := 106;
   MP_CMOF_Operation_Lower                     : constant CMOF_Property := 107;
   MP_CMOF_Operation_Type                      : constant CMOF_Property := 108;
   MP_CMOF_Operation_Upper                     : constant CMOF_Property := 109;
   MP_CMOF_Package_Nesting_Package             : constant CMOF_Property := 110;
   MP_CMOF_Package_Uri                         : constant CMOF_Property := 111;
   MP_CMOF_Package_Import_Imported_Package     : constant CMOF_Property := 112;
   MP_CMOF_Package_Import_Importing_Namespace  : constant CMOF_Property := 113;
   MP_CMOF_Package_Import_Visibility           : constant CMOF_Property := 114;
   MP_CMOF_Package_Merge_Merged_Package        : constant CMOF_Property := 115;
   MP_CMOF_Package_Merge_Receiving_Package     : constant CMOF_Property := 116;
   MP_CMOF_Parameter_Default                   : constant CMOF_Property := 117;
   MP_CMOF_Parameter_Direction                 : constant CMOF_Property := 118;
   MP_CMOF_Parameter_Operation                 : constant CMOF_Property := 119;
   MP_CMOF_Property_Association                : constant CMOF_Property := 120;
   MP_CMOF_Property_Class                      : constant CMOF_Property := 121;
   MP_CMOF_Property_Datatype                   : constant CMOF_Property := 122;
   MP_CMOF_Property_Default                    : constant CMOF_Property := 123;
   MP_CMOF_Property_Is_Composite               : constant CMOF_Property := 124;
   MP_CMOF_Property_Is_Derived                 : constant CMOF_Property := 125;
   MP_CMOF_Property_Is_Derived_Union           : constant CMOF_Property := 126;
   MP_CMOF_Property_Is_Read_Only               : constant CMOF_Property := 127;
   MP_CMOF_Property_Opposite                   : constant CMOF_Property := 128;
   MP_CMOF_Property_Owning_Association         : constant CMOF_Property := 129;
   MP_CMOF_Redefinable_Element_Is_Leaf         : constant CMOF_Property := 130;
   MP_CMOF_Tag_Name                            : constant CMOF_Property := 131;
   MP_CMOF_Tag_Tag_Owner                       : constant CMOF_Property := 132;
   MP_CMOF_Tag_Value                           : constant CMOF_Property := 133;
   MP_CMOF_Type_Package                        : constant CMOF_Property := 134;
   MP_CMOF_Typed_Element_Type                  : constant CMOF_Property := 135;
   MP_CMOF_Imported_Element_Element_Import     : constant CMOF_Property := 776;
   MP_CMOF_Packaged_Element_Owning_Package     : constant CMOF_Property := 777;
   MP_CMOF_Element_Tag                         : constant CMOF_Property := 797;
   MP_CMOF_Tag_Owner_Owned_Tag                 : constant CMOF_Property := 798;
   MP_CMOF_Type_Operation                      : constant CMOF_Property := 778;
   MP_CMOF_Merged_Package_Package_Merge        : constant CMOF_Property := 779;
   MP_CMOF_Annotated_Element_Comment           : constant CMOF_Property := 780;
   MP_CMOF_Related_Element_Relationship        : constant CMOF_Property := 781;
   MP_CMOF_Source_Directed_Relationship        : constant CMOF_Property := 782;
   MP_CMOF_Target_Directed_Relationship        : constant CMOF_Property := 783;
   MP_CMOF_Type_Typed_Element                  : constant CMOF_Property := 763;
   MP_CMOF_Redefinition_Context_Redefinable_Element
                                               : constant CMOF_Property := 784;
   MP_CMOF_Redefined_Element_Redefinable_Element
                                               : constant CMOF_Property := 785;
   MP_CMOF_Attribute_Classifier                : constant CMOF_Property := 764;
   MP_CMOF_Constrained_Element_Constraint      : constant CMOF_Property := 786;
   MP_CMOF_Redefined_Property_Property         : constant CMOF_Property := 765;
   MP_CMOF_Specification_Owning_Constraint     : constant CMOF_Property := 787;
   MP_CMOF_Subsetted_Property_Property         : constant CMOF_Property := 766;
   MP_CMOF_General_Classifier                  : constant CMOF_Property := 788;
   MP_CMOF_Opposite_Property                   : constant CMOF_Property := 767;
   MP_CMOF_Super_Class_Class                   : constant CMOF_Property := 768;
   MP_CMOF_Member_Namespace                    : constant CMOF_Property := 789;
   MP_CMOF_End_Type_Association                : constant CMOF_Property := 769;
   MP_CMOF_Operand_Expression                  : constant CMOF_Property := 790;
   MP_CMOF_Navigable_Owned_End_Association     : constant CMOF_Property := 791;
   MP_CMOF_Raised_Exception_Operation          : constant CMOF_Property := 770;
   MP_CMOF_Owned_Comment_Owning_Element        : constant CMOF_Property := 792;
   MP_CMOF_Redefined_Operation_Operation       : constant CMOF_Property := 771;
   MP_CMOF_Inherited_Member_Classifier         : constant CMOF_Property := 793;
   MP_CMOF_Owned_Parameter_Owner_Formal_Param  : constant CMOF_Property := 772;
   MP_CMOF_Precondition_Pre_Context            : constant CMOF_Property := 794;
   MP_CMOF_Raised_Exception_Behavioral_Feature : constant CMOF_Property := 773;
   MP_CMOF_Postcondition_Post_Context          : constant CMOF_Property := 795;
   MP_CMOF_Imported_Member_Namespace           : constant CMOF_Property := 774;
   MP_CMOF_Body_Condition_Body_Context         : constant CMOF_Property := 796;
   MP_CMOF_Imported_Package_Package_Import     : constant CMOF_Property := 775;

   MA_CMOF_Imported_Element_Element_Import  : constant CMOF_Association := 136;
   MA_CMOF_Element_Import_Importing_Namespace
                                            : constant CMOF_Association := 137;
   MA_CMOF_Package_Import_Importing_Namespace
                                            : constant CMOF_Association := 138;
   MA_CMOF_Packaged_Element_Owning_Package  : constant CMOF_Association := 139;
   MA_CMOF_Element_Tag                      : constant CMOF_Association := 140;
   MA_CMOF_Owned_Type_Package               : constant CMOF_Association := 141;
   MA_CMOF_Tag_Owner_Owned_Tag              : constant CMOF_Association := 142;
   MA_CMOF_Member_End_Association           : constant CMOF_Association := 143;
   MA_CMOF_Nested_Package_Nesting_Package   : constant CMOF_Association := 144;
   MA_CMOF_Type_Operation                   : constant CMOF_Association := 145;
   MA_CMOF_Package_Merge_Receiving_Package  : constant CMOF_Association := 146;
   MA_CMOF_Merged_Package_Package_Merge     : constant CMOF_Association := 147;
   MA_CMOF_Owned_Element_Owner              : constant CMOF_Association := 148;
   MA_CMOF_Annotated_Element_Comment        : constant CMOF_Association := 149;
   MA_CMOF_Related_Element_Relationship     : constant CMOF_Association := 150;
   MA_CMOF_Source_Directed_Relationship     : constant CMOF_Association := 151;
   MA_CMOF_Target_Directed_Relationship     : constant CMOF_Association := 152;
   MA_CMOF_Type_Typed_Element               : constant CMOF_Association := 153;
   MA_CMOF_Redefinition_Context_Redefinable_Element
                                            : constant CMOF_Association := 154;
   MA_CMOF_Owned_Attribute_Class            : constant CMOF_Association := 155;
   MA_CMOF_Owned_Operation_Class            : constant CMOF_Association := 156;
   MA_CMOF_Redefined_Element_Redefinable_Element
                                            : constant CMOF_Association := 157;
   MA_CMOF_Owned_End_Owning_Association     : constant CMOF_Association := 158;
   MA_CMOF_Attribute_Classifier             : constant CMOF_Association := 159;
   MA_CMOF_Feature_Featuring_Classifier     : constant CMOF_Association := 160;
   MA_CMOF_Constrained_Element_Constraint   : constant CMOF_Association := 161;
   MA_CMOF_Redefined_Property_Property      : constant CMOF_Association := 162;
   MA_CMOF_Specification_Owning_Constraint  : constant CMOF_Association := 163;
   MA_CMOF_Subsetted_Property_Property      : constant CMOF_Association := 164;
   MA_CMOF_General_Classifier               : constant CMOF_Association := 165;
   MA_CMOF_Opposite_Property                : constant CMOF_Association := 166;
   MA_CMOF_Owned_Member_Namespace           : constant CMOF_Association := 167;
   MA_CMOF_Super_Class_Class                : constant CMOF_Association := 168;
   MA_CMOF_Member_Namespace                 : constant CMOF_Association := 169;
   MA_CMOF_End_Type_Association             : constant CMOF_Association := 170;
   MA_CMOF_Operand_Expression               : constant CMOF_Association := 171;
   MA_CMOF_Owned_Literal_Enumeration        : constant CMOF_Association := 172;
   MA_CMOF_Navigable_Owned_End_Association  : constant CMOF_Association := 173;
   MA_CMOF_Owned_Attribute_Datatype         : constant CMOF_Association := 174;
   MA_CMOF_Owned_Operation_Datatype         : constant CMOF_Association := 175;
   MA_CMOF_Owned_Parameter_Operation        : constant CMOF_Association := 176;
   MA_CMOF_Raised_Exception_Operation       : constant CMOF_Association := 177;
   MA_CMOF_Owned_Comment_Owning_Element     : constant CMOF_Association := 178;
   MA_CMOF_Redefined_Operation_Operation    : constant CMOF_Association := 179;
   MA_CMOF_Inherited_Member_Classifier      : constant CMOF_Association := 180;
   MA_CMOF_Owned_Parameter_Owner_Formal_Param
                                            : constant CMOF_Association := 181;
   MA_CMOF_Precondition_Pre_Context         : constant CMOF_Association := 182;
   MA_CMOF_Raised_Exception_Behavioral_Feature
                                            : constant CMOF_Association := 183;
   MA_CMOF_Postcondition_Post_Context       : constant CMOF_Association := 184;
   MA_CMOF_Imported_Member_Namespace        : constant CMOF_Association := 185;
   MA_CMOF_Body_Condition_Body_Context      : constant CMOF_Association := 186;
   MA_CMOF_Imported_Package_Package_Import  : constant CMOF_Association := 187;
   MA_CMOF_Owned_Rule_Context               : constant CMOF_Association := 188;

   subtype CMOF_Meta_Class is
     CMOF_Class range 1 .. 33;

   subtype CMOF_Collection_Of_Element_Property is
     CMOF_Property range 34 .. 78;
   subtype CMOF_Non_Collection_Of_Element_Property is
     CMOF_Property range 79 .. 136;

end CMOF.Internals.Metamodel;
