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

package AMF.Internals.Tables.CMOF_Metamodel is

   pragma Preelaborate;

   MM_CMOF : constant AMF.Internals.CMOF_Element := 189;

   MC_CMOF_Boolean                  : constant AMF.Internals.CMOF_Element := 192;
   MC_CMOF_Integer                  : constant AMF.Internals.CMOF_Element := 190;
   MC_CMOF_Parameter_Direction_Kind : constant AMF.Internals.CMOF_Element := 737;
   MC_CMOF_String                   : constant AMF.Internals.CMOF_Element := 194;
   MC_CMOF_Unlimited_Natural        : constant AMF.Internals.CMOF_Element := 196;
   MC_CMOF_Visibility_Kind          : constant AMF.Internals.CMOF_Element := 747;

   MC_CMOF_Association           : constant AMF.Internals.CMOF_Element := 1;
   MC_CMOF_Behavioral_Feature    : constant AMF.Internals.CMOF_Element := 2;
   MC_CMOF_Class                 : constant AMF.Internals.CMOF_Element := 3;
   MC_CMOF_Classifier            : constant AMF.Internals.CMOF_Element := 4;
   MC_CMOF_Comment               : constant AMF.Internals.CMOF_Element := 5;
   MC_CMOF_Constraint            : constant AMF.Internals.CMOF_Element := 6;
   MC_CMOF_Data_Type             : constant AMF.Internals.CMOF_Element := 7;
   MC_CMOF_Directed_Relationship : constant AMF.Internals.CMOF_Element := 8;
   MC_CMOF_Element               : constant AMF.Internals.CMOF_Element := 9;
   MC_CMOF_Element_Import        : constant AMF.Internals.CMOF_Element := 10;
   MC_CMOF_Enumeration           : constant AMF.Internals.CMOF_Element := 11;
   MC_CMOF_Enumeration_Literal   : constant AMF.Internals.CMOF_Element := 12;
   MC_CMOF_Expression            : constant AMF.Internals.CMOF_Element := 13;
   MC_CMOF_Feature               : constant AMF.Internals.CMOF_Element := 14;
   MC_CMOF_Multiplicity_Element  : constant AMF.Internals.CMOF_Element := 15;
   MC_CMOF_Named_Element         : constant AMF.Internals.CMOF_Element := 16;
   MC_CMOF_Namespace             : constant AMF.Internals.CMOF_Element := 17;
   MC_CMOF_Opaque_Expression     : constant AMF.Internals.CMOF_Element := 18;
   MC_CMOF_Operation             : constant AMF.Internals.CMOF_Element := 19;
   MC_CMOF_Package               : constant AMF.Internals.CMOF_Element := 20;
   MC_CMOF_Package_Import        : constant AMF.Internals.CMOF_Element := 21;
   MC_CMOF_Package_Merge         : constant AMF.Internals.CMOF_Element := 22;
   MC_CMOF_Packageable_Element   : constant AMF.Internals.CMOF_Element := 23;
   MC_CMOF_Parameter             : constant AMF.Internals.CMOF_Element := 24;
   MC_CMOF_Primitive_Type        : constant AMF.Internals.CMOF_Element := 25;
   MC_CMOF_Property              : constant AMF.Internals.CMOF_Element := 26;
   MC_CMOF_Redefinable_Element   : constant AMF.Internals.CMOF_Element := 27;
   MC_CMOF_Relationship          : constant AMF.Internals.CMOF_Element := 28;
   MC_CMOF_Structural_Feature    : constant AMF.Internals.CMOF_Element := 29;
   MC_CMOF_Tag                   : constant AMF.Internals.CMOF_Element := 30;
   MC_CMOF_Type                  : constant AMF.Internals.CMOF_Element := 31;
   MC_CMOF_Typed_Element         : constant AMF.Internals.CMOF_Element := 32;
   MC_CMOF_Value_Specification   : constant AMF.Internals.CMOF_Element := 33;

   MP_CMOF_Association_End_Type                : constant AMF.Internals.CMOF_Element := 34;
   MP_CMOF_Association_Member_End              : constant AMF.Internals.CMOF_Element := 35;
   MP_CMOF_Association_Navigable_Owned_End     : constant AMF.Internals.CMOF_Element := 36;
   MP_CMOF_Association_Owned_End               : constant AMF.Internals.CMOF_Element := 37;
   MP_CMOF_Behavioral_Feature_Owned_Parameter  : constant AMF.Internals.CMOF_Element := 38;
   MP_CMOF_Behavioral_Feature_Raised_Exception : constant AMF.Internals.CMOF_Element := 39;
   MP_CMOF_Class_Owned_Attribute               : constant AMF.Internals.CMOF_Element := 40;
   MP_CMOF_Class_Owned_Operation               : constant AMF.Internals.CMOF_Element := 41;
   MP_CMOF_Class_Super_Class                   : constant AMF.Internals.CMOF_Element := 42;
   MP_CMOF_Classifier_Attribute                : constant AMF.Internals.CMOF_Element := 43;
   MP_CMOF_Classifier_Feature                  : constant AMF.Internals.CMOF_Element := 44;
   MP_CMOF_Classifier_General                  : constant AMF.Internals.CMOF_Element := 45;
   MP_CMOF_Classifier_Inherited_Member         : constant AMF.Internals.CMOF_Element := 46;
   MP_CMOF_Comment_Annotated_Element           : constant AMF.Internals.CMOF_Element := 47;
   MP_CMOF_Constraint_Constrained_Element      : constant AMF.Internals.CMOF_Element := 48;
   MP_CMOF_Data_Type_Owned_Attribute           : constant AMF.Internals.CMOF_Element := 49;
   MP_CMOF_Data_Type_Owned_Operation           : constant AMF.Internals.CMOF_Element := 50;
   MP_CMOF_Directed_Relationship_Source        : constant AMF.Internals.CMOF_Element := 51;
   MP_CMOF_Directed_Relationship_Target        : constant AMF.Internals.CMOF_Element := 52;
   MP_CMOF_Element_Owned_Comment               : constant AMF.Internals.CMOF_Element := 53;
   MP_CMOF_Element_Owned_Element               : constant AMF.Internals.CMOF_Element := 54;
   MP_CMOF_Enumeration_Owned_Literal           : constant AMF.Internals.CMOF_Element := 55;
   MP_CMOF_Expression_Operand                  : constant AMF.Internals.CMOF_Element := 56;
   MP_CMOF_Feature_Featuring_Classifier        : constant AMF.Internals.CMOF_Element := 57;
   MP_CMOF_Namespace_Element_Import            : constant AMF.Internals.CMOF_Element := 58;
   MP_CMOF_Namespace_Imported_Member           : constant AMF.Internals.CMOF_Element := 59;
   MP_CMOF_Namespace_Member                    : constant AMF.Internals.CMOF_Element := 60;
   MP_CMOF_Namespace_Owned_Member              : constant AMF.Internals.CMOF_Element := 61;
   MP_CMOF_Namespace_Owned_Rule                : constant AMF.Internals.CMOF_Element := 62;
   MP_CMOF_Namespace_Package_Import            : constant AMF.Internals.CMOF_Element := 63;
   MP_CMOF_Operation_Owned_Parameter           : constant AMF.Internals.CMOF_Element := 64;
   MP_CMOF_Operation_Postcondition             : constant AMF.Internals.CMOF_Element := 65;
   MP_CMOF_Operation_Precondition              : constant AMF.Internals.CMOF_Element := 66;
   MP_CMOF_Operation_Raised_Exception          : constant AMF.Internals.CMOF_Element := 67;
   MP_CMOF_Operation_Redefined_Operation       : constant AMF.Internals.CMOF_Element := 68;
   MP_CMOF_Package_Nested_Package              : constant AMF.Internals.CMOF_Element := 69;
   MP_CMOF_Package_Owned_Type                  : constant AMF.Internals.CMOF_Element := 70;
   MP_CMOF_Package_Package_Merge               : constant AMF.Internals.CMOF_Element := 71;
   MP_CMOF_Package_Packaged_Element            : constant AMF.Internals.CMOF_Element := 72;
   MP_CMOF_Property_Redefined_Property         : constant AMF.Internals.CMOF_Element := 73;
   MP_CMOF_Property_Subsetted_Property         : constant AMF.Internals.CMOF_Element := 74;
   MP_CMOF_Redefinable_Element_Redefined_Element
                                               : constant AMF.Internals.CMOF_Element := 75;
   MP_CMOF_Redefinable_Element_Redefinition_Context
                                               : constant AMF.Internals.CMOF_Element := 76;
   MP_CMOF_Relationship_Related_Element        : constant AMF.Internals.CMOF_Element := 77;
   MP_CMOF_Tag_Element                         : constant AMF.Internals.CMOF_Element := 78;
   MP_CMOF_Association_Is_Derived              : constant AMF.Internals.CMOF_Element := 79;
   MP_CMOF_Class_Is_Abstract                   : constant AMF.Internals.CMOF_Element := 80;
   MP_CMOF_Classifier_Is_Final_Specialization  : constant AMF.Internals.CMOF_Element := 81;
   MP_CMOF_Comment_Body                        : constant AMF.Internals.CMOF_Element := 82;
   MP_CMOF_Constraint_Context                  : constant AMF.Internals.CMOF_Element := 83;
   MP_CMOF_Constraint_Specification            : constant AMF.Internals.CMOF_Element := 84;
   MP_CMOF_Element_Owner                       : constant AMF.Internals.CMOF_Element := 85;
   MP_CMOF_Element_Import_Alias                : constant AMF.Internals.CMOF_Element := 86;
   MP_CMOF_Element_Import_Imported_Element     : constant AMF.Internals.CMOF_Element := 87;
   MP_CMOF_Element_Import_Importing_Namespace  : constant AMF.Internals.CMOF_Element := 88;
   MP_CMOF_Element_Import_Visibility           : constant AMF.Internals.CMOF_Element := 89;
   MP_CMOF_Enumeration_Literal_Enumeration     : constant AMF.Internals.CMOF_Element := 90;
   MP_CMOF_Multiplicity_Element_Is_Ordered     : constant AMF.Internals.CMOF_Element := 91;
   MP_CMOF_Multiplicity_Element_Is_Unique      : constant AMF.Internals.CMOF_Element := 92;
   MP_CMOF_Multiplicity_Element_Lower          : constant AMF.Internals.CMOF_Element := 93;
   MP_CMOF_Multiplicity_Element_Upper          : constant AMF.Internals.CMOF_Element := 94;
   MP_CMOF_Named_Element_Name                  : constant AMF.Internals.CMOF_Element := 95;
   MP_CMOF_Named_Element_Namespace             : constant AMF.Internals.CMOF_Element := 96;
   MP_CMOF_Named_Element_Qualified_Name        : constant AMF.Internals.CMOF_Element := 97;
   MP_CMOF_Named_Element_Visibility            : constant AMF.Internals.CMOF_Element := 98;
   MP_CMOF_Opaque_Expression_Body              : constant AMF.Internals.CMOF_Element := 99;
   MP_CMOF_Opaque_Expression_Language          : constant AMF.Internals.CMOF_Element := 100;
   MP_CMOF_Operation_Body_Condition            : constant AMF.Internals.CMOF_Element := 101;
   MP_CMOF_Operation_Class                     : constant AMF.Internals.CMOF_Element := 102;
   MP_CMOF_Operation_Datatype                  : constant AMF.Internals.CMOF_Element := 103;
   MP_CMOF_Operation_Is_Ordered                : constant AMF.Internals.CMOF_Element := 104;
   MP_CMOF_Operation_Is_Query                  : constant AMF.Internals.CMOF_Element := 105;
   MP_CMOF_Operation_Is_Unique                 : constant AMF.Internals.CMOF_Element := 106;
   MP_CMOF_Operation_Lower                     : constant AMF.Internals.CMOF_Element := 107;
   MP_CMOF_Operation_Type                      : constant AMF.Internals.CMOF_Element := 108;
   MP_CMOF_Operation_Upper                     : constant AMF.Internals.CMOF_Element := 109;
   MP_CMOF_Package_Nesting_Package             : constant AMF.Internals.CMOF_Element := 110;
   MP_CMOF_Package_Uri                         : constant AMF.Internals.CMOF_Element := 111;
   MP_CMOF_Package_Import_Imported_Package     : constant AMF.Internals.CMOF_Element := 112;
   MP_CMOF_Package_Import_Importing_Namespace  : constant AMF.Internals.CMOF_Element := 113;
   MP_CMOF_Package_Import_Visibility           : constant AMF.Internals.CMOF_Element := 114;
   MP_CMOF_Package_Merge_Merged_Package        : constant AMF.Internals.CMOF_Element := 115;
   MP_CMOF_Package_Merge_Receiving_Package     : constant AMF.Internals.CMOF_Element := 116;
   MP_CMOF_Parameter_Default                   : constant AMF.Internals.CMOF_Element := 117;
   MP_CMOF_Parameter_Direction                 : constant AMF.Internals.CMOF_Element := 118;
   MP_CMOF_Parameter_Operation                 : constant AMF.Internals.CMOF_Element := 119;
   MP_CMOF_Property_Association                : constant AMF.Internals.CMOF_Element := 120;
   MP_CMOF_Property_Class                      : constant AMF.Internals.CMOF_Element := 121;
   MP_CMOF_Property_Datatype                   : constant AMF.Internals.CMOF_Element := 122;
   MP_CMOF_Property_Default                    : constant AMF.Internals.CMOF_Element := 123;
   MP_CMOF_Property_Is_Composite               : constant AMF.Internals.CMOF_Element := 124;
   MP_CMOF_Property_Is_Derived                 : constant AMF.Internals.CMOF_Element := 125;
   MP_CMOF_Property_Is_Derived_Union           : constant AMF.Internals.CMOF_Element := 126;
   MP_CMOF_Property_Is_Read_Only               : constant AMF.Internals.CMOF_Element := 127;
   MP_CMOF_Property_Opposite                   : constant AMF.Internals.CMOF_Element := 128;
   MP_CMOF_Property_Owning_Association         : constant AMF.Internals.CMOF_Element := 129;
   MP_CMOF_Redefinable_Element_Is_Leaf         : constant AMF.Internals.CMOF_Element := 130;
   MP_CMOF_Tag_Name                            : constant AMF.Internals.CMOF_Element := 131;
   MP_CMOF_Tag_Tag_Owner                       : constant AMF.Internals.CMOF_Element := 132;
   MP_CMOF_Tag_Value                           : constant AMF.Internals.CMOF_Element := 133;
   MP_CMOF_Type_Package                        : constant AMF.Internals.CMOF_Element := 134;
   MP_CMOF_Typed_Element_Type                  : constant AMF.Internals.CMOF_Element := 135;
   MP_CMOF_Imported_Element_Element_Import     : constant AMF.Internals.CMOF_Element := 776;
   MP_CMOF_Packaged_Element_Owning_Package     : constant AMF.Internals.CMOF_Element := 777;
   MP_CMOF_Element_Tag                         : constant AMF.Internals.CMOF_Element := 797;
   MP_CMOF_Tag_Owner_Owned_Tag                 : constant AMF.Internals.CMOF_Element := 798;
   MP_CMOF_Type_Operation                      : constant AMF.Internals.CMOF_Element := 778;
   MP_CMOF_Merged_Package_Package_Merge        : constant AMF.Internals.CMOF_Element := 779;
   MP_CMOF_Annotated_Element_Comment           : constant AMF.Internals.CMOF_Element := 780;
   MP_CMOF_Related_Element_Relationship        : constant AMF.Internals.CMOF_Element := 781;
   MP_CMOF_Source_Directed_Relationship        : constant AMF.Internals.CMOF_Element := 782;
   MP_CMOF_Target_Directed_Relationship        : constant AMF.Internals.CMOF_Element := 783;
   MP_CMOF_Type_Typed_Element                  : constant AMF.Internals.CMOF_Element := 763;
   MP_CMOF_Redefinition_Context_Redefinable_Element
                                               : constant AMF.Internals.CMOF_Element := 784;
   MP_CMOF_Redefined_Element_Redefinable_Element
                                               : constant AMF.Internals.CMOF_Element := 785;
   MP_CMOF_Attribute_Classifier                : constant AMF.Internals.CMOF_Element := 764;
   MP_CMOF_Constrained_Element_Constraint      : constant AMF.Internals.CMOF_Element := 786;
   MP_CMOF_Redefined_Property_Property         : constant AMF.Internals.CMOF_Element := 765;
   MP_CMOF_Specification_Owning_Constraint     : constant AMF.Internals.CMOF_Element := 787;
   MP_CMOF_Subsetted_Property_Property         : constant AMF.Internals.CMOF_Element := 766;
   MP_CMOF_General_Classifier                  : constant AMF.Internals.CMOF_Element := 788;
   MP_CMOF_Opposite_Property                   : constant AMF.Internals.CMOF_Element := 767;
   MP_CMOF_Super_Class_Class                   : constant AMF.Internals.CMOF_Element := 768;
   MP_CMOF_Member_Namespace                    : constant AMF.Internals.CMOF_Element := 789;
   MP_CMOF_End_Type_Association                : constant AMF.Internals.CMOF_Element := 769;
   MP_CMOF_Operand_Expression                  : constant AMF.Internals.CMOF_Element := 790;
   MP_CMOF_Navigable_Owned_End_Association     : constant AMF.Internals.CMOF_Element := 791;
   MP_CMOF_Raised_Exception_Operation          : constant AMF.Internals.CMOF_Element := 770;
   MP_CMOF_Owned_Comment_Owning_Element        : constant AMF.Internals.CMOF_Element := 792;
   MP_CMOF_Redefined_Operation_Operation       : constant AMF.Internals.CMOF_Element := 771;
   MP_CMOF_Inherited_Member_Classifier         : constant AMF.Internals.CMOF_Element := 793;
   MP_CMOF_Owned_Parameter_Owner_Formal_Param  : constant AMF.Internals.CMOF_Element := 772;
   MP_CMOF_Precondition_Pre_Context            : constant AMF.Internals.CMOF_Element := 794;
   MP_CMOF_Raised_Exception_Behavioral_Feature : constant AMF.Internals.CMOF_Element := 773;
   MP_CMOF_Postcondition_Post_Context          : constant AMF.Internals.CMOF_Element := 795;
   MP_CMOF_Imported_Member_Namespace           : constant AMF.Internals.CMOF_Element := 774;
   MP_CMOF_Body_Condition_Body_Context         : constant AMF.Internals.CMOF_Element := 796;
   MP_CMOF_Imported_Package_Package_Import     : constant AMF.Internals.CMOF_Element := 775;

   MA_CMOF_Imported_Element_Element_Import  : constant AMF.Internals.CMOF_Element := 136;
   MA_CMOF_Element_Import_Importing_Namespace
                                            : constant AMF.Internals.CMOF_Element := 137;
   MA_CMOF_Package_Import_Importing_Namespace
                                            : constant AMF.Internals.CMOF_Element := 138;
   MA_CMOF_Packaged_Element_Owning_Package  : constant AMF.Internals.CMOF_Element := 139;
   MA_CMOF_Element_Tag                      : constant AMF.Internals.CMOF_Element := 140;
   MA_CMOF_Owned_Type_Package               : constant AMF.Internals.CMOF_Element := 141;
   MA_CMOF_Tag_Owner_Owned_Tag              : constant AMF.Internals.CMOF_Element := 142;
   MA_CMOF_Member_End_Association           : constant AMF.Internals.CMOF_Element := 143;
   MA_CMOF_Nested_Package_Nesting_Package   : constant AMF.Internals.CMOF_Element := 144;
   MA_CMOF_Type_Operation                   : constant AMF.Internals.CMOF_Element := 145;
   MA_CMOF_Package_Merge_Receiving_Package  : constant AMF.Internals.CMOF_Element := 146;
   MA_CMOF_Merged_Package_Package_Merge     : constant AMF.Internals.CMOF_Element := 147;
   MA_CMOF_Owned_Element_Owner              : constant AMF.Internals.CMOF_Element := 148;
   MA_CMOF_Annotated_Element_Comment        : constant AMF.Internals.CMOF_Element := 149;
   MA_CMOF_Related_Element_Relationship     : constant AMF.Internals.CMOF_Element := 150;
   MA_CMOF_Source_Directed_Relationship     : constant AMF.Internals.CMOF_Element := 151;
   MA_CMOF_Target_Directed_Relationship     : constant AMF.Internals.CMOF_Element := 152;
   MA_CMOF_Type_Typed_Element               : constant AMF.Internals.CMOF_Element := 153;
   MA_CMOF_Redefinition_Context_Redefinable_Element
                                            : constant AMF.Internals.CMOF_Element := 154;
   MA_CMOF_Owned_Attribute_Class            : constant AMF.Internals.CMOF_Element := 155;
   MA_CMOF_Owned_Operation_Class            : constant AMF.Internals.CMOF_Element := 156;
   MA_CMOF_Redefined_Element_Redefinable_Element
                                            : constant AMF.Internals.CMOF_Element := 157;
   MA_CMOF_Owned_End_Owning_Association     : constant AMF.Internals.CMOF_Element := 158;
   MA_CMOF_Attribute_Classifier             : constant AMF.Internals.CMOF_Element := 159;
   MA_CMOF_Feature_Featuring_Classifier     : constant AMF.Internals.CMOF_Element := 160;
   MA_CMOF_Constrained_Element_Constraint   : constant AMF.Internals.CMOF_Element := 161;
   MA_CMOF_Redefined_Property_Property      : constant AMF.Internals.CMOF_Element := 162;
   MA_CMOF_Specification_Owning_Constraint  : constant AMF.Internals.CMOF_Element := 163;
   MA_CMOF_Subsetted_Property_Property      : constant AMF.Internals.CMOF_Element := 164;
   MA_CMOF_General_Classifier               : constant AMF.Internals.CMOF_Element := 165;
   MA_CMOF_Opposite_Property                : constant AMF.Internals.CMOF_Element := 166;
   MA_CMOF_Owned_Member_Namespace           : constant AMF.Internals.CMOF_Element := 167;
   MA_CMOF_Super_Class_Class                : constant AMF.Internals.CMOF_Element := 168;
   MA_CMOF_Member_Namespace                 : constant AMF.Internals.CMOF_Element := 169;
   MA_CMOF_End_Type_Association             : constant AMF.Internals.CMOF_Element := 170;
   MA_CMOF_Operand_Expression               : constant AMF.Internals.CMOF_Element := 171;
   MA_CMOF_Owned_Literal_Enumeration        : constant AMF.Internals.CMOF_Element := 172;
   MA_CMOF_Navigable_Owned_End_Association  : constant AMF.Internals.CMOF_Element := 173;
   MA_CMOF_Owned_Attribute_Datatype         : constant AMF.Internals.CMOF_Element := 174;
   MA_CMOF_Owned_Operation_Datatype         : constant AMF.Internals.CMOF_Element := 175;
   MA_CMOF_Owned_Parameter_Operation        : constant AMF.Internals.CMOF_Element := 176;
   MA_CMOF_Raised_Exception_Operation       : constant AMF.Internals.CMOF_Element := 177;
   MA_CMOF_Owned_Comment_Owning_Element     : constant AMF.Internals.CMOF_Element := 178;
   MA_CMOF_Redefined_Operation_Operation    : constant AMF.Internals.CMOF_Element := 179;
   MA_CMOF_Inherited_Member_Classifier      : constant AMF.Internals.CMOF_Element := 180;
   MA_CMOF_Owned_Parameter_Owner_Formal_Param
                                            : constant AMF.Internals.CMOF_Element := 181;
   MA_CMOF_Precondition_Pre_Context         : constant AMF.Internals.CMOF_Element := 182;
   MA_CMOF_Raised_Exception_Behavioral_Feature
                                            : constant AMF.Internals.CMOF_Element := 183;
   MA_CMOF_Postcondition_Post_Context       : constant AMF.Internals.CMOF_Element := 184;
   MA_CMOF_Imported_Member_Namespace        : constant AMF.Internals.CMOF_Element := 185;
   MA_CMOF_Body_Condition_Body_Context      : constant AMF.Internals.CMOF_Element := 186;
   MA_CMOF_Imported_Package_Package_Import  : constant AMF.Internals.CMOF_Element := 187;
   MA_CMOF_Owned_Rule_Context               : constant AMF.Internals.CMOF_Element := 188;

   subtype CMOF_Meta_Class is
     AMF.Internals.CMOF_Element range 1 .. 33;

   subtype CMOF_Collection_Of_Element_Property is
     AMF.Internals.CMOF_Element range 34 .. 78;
   subtype CMOF_Non_Collection_Of_Element_Property is
     AMF.Internals.CMOF_Element range 79 .. 136;

end AMF.Internals.Tables.CMOF_Metamodel;
