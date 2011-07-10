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
with Interfaces;

with AMF.Internals.Tables.CMOF_Types;
with CMOF.Internals.Metamodel;

package AMF.Internals.Attributes.CMOF_Attribute_Mappings is

   pragma Preelaborate;

   use AMF.Internals.Tables.CMOF_Types;
   use Standard.CMOF.Internals;
   use Standard.CMOF.Internals.Metamodel;

   Collection_Offset : constant
     array (AMF.Internals.Tables.CMOF_Types.Class_Element_Kinds,
            CMOF.Internals.Metamodel.CMOF_Collection_Of_Element_Property)
       of Interfaces.Integer_8 :=
        (E_Association =>
          (MP_CMOF_Classifier_Attribute => 9,
           MP_CMOF_Namespace_Element_Import => 4,
           MP_CMOF_Association_End_Type => 15,
           MP_CMOF_Classifier_Feature => 10,
           MP_CMOF_Classifier_General => 11,
           MP_CMOF_Namespace_Imported_Member => 3,
           MP_CMOF_Classifier_Inherited_Member => 12,
           MP_CMOF_Namespace_Member => 7,
           MP_CMOF_Association_Member_End => 16,
           MP_CMOF_Association_Navigable_Owned_End => 17,
           MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           MP_CMOF_Association_Owned_End => 14,
           MP_CMOF_Namespace_Owned_Member => 6,
           MP_CMOF_Namespace_Owned_Rule => 8,
           MP_CMOF_Namespace_Package_Import => 5,
           MP_CMOF_Relationship_Related_Element => 13,
           others => 0),
         E_Class =>
          (MP_CMOF_Classifier_Attribute => 9,
           MP_CMOF_Namespace_Element_Import => 4,
           MP_CMOF_Classifier_Feature => 10,
           MP_CMOF_Classifier_General => 11,
           MP_CMOF_Namespace_Imported_Member => 3,
           MP_CMOF_Classifier_Inherited_Member => 12,
           MP_CMOF_Namespace_Member => 7,
           MP_CMOF_Class_Owned_Attribute => 13,
           MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           MP_CMOF_Namespace_Owned_Member => 6,
           MP_CMOF_Class_Owned_Operation => 14,
           MP_CMOF_Namespace_Owned_Rule => 8,
           MP_CMOF_Namespace_Package_Import => 5,
           MP_CMOF_Class_Super_Class => 11,
           others => 0),
         E_Comment =>
          (MP_CMOF_Comment_Annotated_Element => 3,
           MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           others => 0),
         E_Constraint =>
          (MP_CMOF_Constraint_Constrained_Element => 3,
           MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           others => 0),
         E_Data_Type =>
          (MP_CMOF_Classifier_Attribute => 9,
           MP_CMOF_Namespace_Element_Import => 4,
           MP_CMOF_Classifier_Feature => 10,
           MP_CMOF_Classifier_General => 11,
           MP_CMOF_Namespace_Imported_Member => 3,
           MP_CMOF_Classifier_Inherited_Member => 12,
           MP_CMOF_Namespace_Member => 7,
           MP_CMOF_Data_Type_Owned_Attribute => 13,
           MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           MP_CMOF_Namespace_Owned_Member => 6,
           MP_CMOF_Data_Type_Owned_Operation => 14,
           MP_CMOF_Namespace_Owned_Rule => 8,
           MP_CMOF_Namespace_Package_Import => 5,
           others => 0),
         E_Element_Import =>
          (MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           MP_CMOF_Relationship_Related_Element => 3,
           MP_CMOF_Directed_Relationship_Source => 4,
           MP_CMOF_Directed_Relationship_Target => 5,
           others => 0),
         E_Enumeration =>
          (MP_CMOF_Classifier_Attribute => 9,
           MP_CMOF_Namespace_Element_Import => 4,
           MP_CMOF_Classifier_Feature => 10,
           MP_CMOF_Classifier_General => 11,
           MP_CMOF_Namespace_Imported_Member => 3,
           MP_CMOF_Classifier_Inherited_Member => 12,
           MP_CMOF_Namespace_Member => 7,
           MP_CMOF_Data_Type_Owned_Attribute => 13,
           MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           MP_CMOF_Enumeration_Owned_Literal => 15,
           MP_CMOF_Namespace_Owned_Member => 6,
           MP_CMOF_Data_Type_Owned_Operation => 14,
           MP_CMOF_Namespace_Owned_Rule => 8,
           MP_CMOF_Namespace_Package_Import => 5,
           others => 0),
         E_Enumeration_Literal =>
          (MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           others => 0),
         E_Expression =>
          (MP_CMOF_Expression_Operand => 3,
           MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           others => 0),
         E_Opaque_Expression =>
          (MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           others => 0),
         E_Operation =>
          (MP_CMOF_Namespace_Element_Import => 7,
           MP_CMOF_Feature_Featuring_Classifier => 5,
           MP_CMOF_Namespace_Imported_Member => 6,
           MP_CMOF_Namespace_Member => 10,
           MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           MP_CMOF_Namespace_Owned_Member => 9,
           MP_CMOF_Operation_Owned_Parameter => 12,
           MP_CMOF_Behavioral_Feature_Owned_Parameter => 12,
           MP_CMOF_Namespace_Owned_Rule => 11,
           MP_CMOF_Namespace_Package_Import => 8,
           MP_CMOF_Operation_Postcondition => 16,
           MP_CMOF_Operation_Precondition => 15,
           MP_CMOF_Operation_Raised_Exception => 13,
           MP_CMOF_Behavioral_Feature_Raised_Exception => 13,
           MP_CMOF_Redefinable_Element_Redefined_Element => 4,
           MP_CMOF_Operation_Redefined_Operation => 14,
           MP_CMOF_Redefinable_Element_Redefinition_Context => 3,
           others => 0),
         E_Package =>
          (MP_CMOF_Namespace_Element_Import => 4,
           MP_CMOF_Namespace_Imported_Member => 3,
           MP_CMOF_Namespace_Member => 7,
           MP_CMOF_Package_Nested_Package => 11,
           MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           MP_CMOF_Namespace_Owned_Member => 6,
           MP_CMOF_Namespace_Owned_Rule => 8,
           MP_CMOF_Package_Owned_Type => 10,
           MP_CMOF_Namespace_Package_Import => 5,
           MP_CMOF_Package_Package_Merge => 12,
           MP_CMOF_Package_Packaged_Element => 9,
           others => 0),
         E_Package_Import =>
          (MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           MP_CMOF_Relationship_Related_Element => 3,
           MP_CMOF_Directed_Relationship_Source => 4,
           MP_CMOF_Directed_Relationship_Target => 5,
           others => 0),
         E_Package_Merge =>
          (MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           MP_CMOF_Relationship_Related_Element => 3,
           MP_CMOF_Directed_Relationship_Source => 4,
           MP_CMOF_Directed_Relationship_Target => 5,
           others => 0),
         E_Parameter =>
          (MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           others => 0),
         E_Primitive_Type =>
          (MP_CMOF_Classifier_Attribute => 9,
           MP_CMOF_Namespace_Element_Import => 4,
           MP_CMOF_Classifier_Feature => 10,
           MP_CMOF_Classifier_General => 11,
           MP_CMOF_Namespace_Imported_Member => 3,
           MP_CMOF_Classifier_Inherited_Member => 12,
           MP_CMOF_Namespace_Member => 7,
           MP_CMOF_Data_Type_Owned_Attribute => 13,
           MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           MP_CMOF_Namespace_Owned_Member => 6,
           MP_CMOF_Data_Type_Owned_Operation => 14,
           MP_CMOF_Namespace_Owned_Rule => 8,
           MP_CMOF_Namespace_Package_Import => 5,
           others => 0),
         E_Property =>
          (MP_CMOF_Feature_Featuring_Classifier => 5,
           MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           MP_CMOF_Redefinable_Element_Redefined_Element => 4,
           MP_CMOF_Property_Redefined_Property => 6,
           MP_CMOF_Redefinable_Element_Redefinition_Context => 3,
           MP_CMOF_Property_Subsetted_Property => 7,
           others => 0),
         E_Tag =>
          (MP_CMOF_Tag_Element => 3,
           MP_CMOF_Element_Owned_Comment => 2,
           MP_CMOF_Element_Owned_Element => 1,
           others => 0));

   Member_Offset : constant
     array (AMF.Internals.Tables.CMOF_Types.Class_Element_Kinds,
            Metamodel.CMOF_Non_Collection_Of_Element_Property) of Natural :=
       (
E_Association =>
          (MP_CMOF_Association_Is_Derived => 8,
           MP_CMOF_Classifier_Is_Final_Specialization => 7,
           MP_CMOF_Named_Element_Name => 2,
           MP_CMOF_Named_Element_Namespace => 4,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Type_Package => 6,
           MP_CMOF_Named_Element_Qualified_Name => 5,
           MP_CMOF_Named_Element_Visibility => 3,
           others => 0),
         E_Class =>
          (MP_CMOF_Class_Is_Abstract => 8,
           MP_CMOF_Classifier_Is_Final_Specialization => 7,
           MP_CMOF_Named_Element_Name => 2,
           MP_CMOF_Named_Element_Namespace => 4,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Type_Package => 6,
           MP_CMOF_Named_Element_Qualified_Name => 5,
           MP_CMOF_Named_Element_Visibility => 3,
           others => 0),
         E_Comment =>
          (MP_CMOF_Comment_Body => 2,
           MP_CMOF_Element_Owner => 1,
           others => 0),
         E_Constraint =>
          (MP_CMOF_Constraint_Context => 7,
           MP_CMOF_Named_Element_Name => 2,
           MP_CMOF_Named_Element_Namespace => 4,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Named_Element_Qualified_Name => 5,
           MP_CMOF_Constraint_Specification => 6,
           MP_CMOF_Named_Element_Visibility => 3,
           others => 0),
         E_Data_Type =>
          (MP_CMOF_Classifier_Is_Final_Specialization => 7,
           MP_CMOF_Named_Element_Name => 2,
           MP_CMOF_Named_Element_Namespace => 4,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Type_Package => 6,
           MP_CMOF_Named_Element_Qualified_Name => 5,
           MP_CMOF_Named_Element_Visibility => 3,
           others => 0),
         E_Element_Import =>
          (MP_CMOF_Element_Import_Alias => 3,
           MP_CMOF_Element_Import_Imported_Element => 4,
           MP_CMOF_Element_Import_Importing_Namespace => 5,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Element_Import_Visibility => 2,
           others => 0),
         E_Enumeration =>
          (MP_CMOF_Classifier_Is_Final_Specialization => 7,
           MP_CMOF_Named_Element_Name => 2,
           MP_CMOF_Named_Element_Namespace => 4,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Type_Package => 6,
           MP_CMOF_Named_Element_Qualified_Name => 5,
           MP_CMOF_Named_Element_Visibility => 3,
           others => 0),
         E_Enumeration_Literal =>
          (MP_CMOF_Enumeration_Literal_Enumeration => 6,
           MP_CMOF_Named_Element_Name => 2,
           MP_CMOF_Named_Element_Namespace => 4,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Named_Element_Qualified_Name => 5,
           MP_CMOF_Named_Element_Visibility => 3,
           others => 0),
         E_Expression =>
          (MP_CMOF_Named_Element_Name => 2,
           MP_CMOF_Named_Element_Namespace => 4,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Named_Element_Qualified_Name => 5,
           MP_CMOF_Typed_Element_Type => 6,
           MP_CMOF_Named_Element_Visibility => 3,
           others => 0),
         E_Opaque_Expression =>
          (MP_CMOF_Opaque_Expression_Body => 7,
           MP_CMOF_Opaque_Expression_Language => 8,
           MP_CMOF_Named_Element_Name => 2,
           MP_CMOF_Named_Element_Namespace => 4,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Named_Element_Qualified_Name => 5,
           MP_CMOF_Typed_Element_Type => 6,
           MP_CMOF_Named_Element_Visibility => 3,
           others => 0),
         E_Operation =>
          (MP_CMOF_Operation_Body_Condition => 15,
           MP_CMOF_Operation_Class => 12,
           MP_CMOF_Operation_Datatype => 13,
           MP_CMOF_Redefinable_Element_Is_Leaf => 6,
           MP_CMOF_Operation_Is_Ordered => 8,
           MP_CMOF_Operation_Is_Query => 7,
           MP_CMOF_Operation_Is_Unique => 9,
           MP_CMOF_Operation_Lower => 10,
           MP_CMOF_Named_Element_Name => 2,
           MP_CMOF_Named_Element_Namespace => 4,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Named_Element_Qualified_Name => 5,
           MP_CMOF_Operation_Type => 14,
           MP_CMOF_Operation_Upper => 11,
           MP_CMOF_Named_Element_Visibility => 3,
           others => 0),
         E_Package =>
          (MP_CMOF_Named_Element_Name => 2,
           MP_CMOF_Named_Element_Namespace => 4,
           MP_CMOF_Package_Nesting_Package => 6,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Named_Element_Qualified_Name => 5,
           MP_CMOF_Package_Uri => 7,
           MP_CMOF_Named_Element_Visibility => 3,
           others => 0),
         E_Package_Import =>
          (MP_CMOF_Package_Import_Imported_Package => 3,
           MP_CMOF_Package_Import_Importing_Namespace => 4,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Package_Import_Visibility => 2,
           others => 0),
         E_Package_Merge =>
          (MP_CMOF_Package_Merge_Merged_Package => 3,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Package_Merge_Receiving_Package => 2,
           others => 0),
         E_Parameter =>
          (MP_CMOF_Parameter_Default => 11,
           MP_CMOF_Parameter_Direction => 12,
           MP_CMOF_Multiplicity_Element_Is_Ordered => 7,
           MP_CMOF_Multiplicity_Element_Is_Unique => 8,
           MP_CMOF_Multiplicity_Element_Lower => 9,
           MP_CMOF_Named_Element_Name => 2,
           MP_CMOF_Named_Element_Namespace => 4,
           MP_CMOF_Parameter_Operation => 13,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Named_Element_Qualified_Name => 5,
           MP_CMOF_Typed_Element_Type => 6,
           MP_CMOF_Multiplicity_Element_Upper => 10,
           MP_CMOF_Named_Element_Visibility => 3,
           others => 0),
         E_Primitive_Type =>
          (MP_CMOF_Classifier_Is_Final_Specialization => 7,
           MP_CMOF_Named_Element_Name => 2,
           MP_CMOF_Named_Element_Namespace => 4,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Type_Package => 6,
           MP_CMOF_Named_Element_Qualified_Name => 5,
           MP_CMOF_Named_Element_Visibility => 3,
           others => 0),
         E_Property =>
          (MP_CMOF_Property_Association => 21,
           MP_CMOF_Property_Class => 17,
           MP_CMOF_Property_Datatype => 20,
           MP_CMOF_Property_Default => 13,
           MP_CMOF_Property_Is_Composite => 14,
           MP_CMOF_Property_Is_Derived => 15,
           MP_CMOF_Property_Is_Derived_Union => 16,
           MP_CMOF_Redefinable_Element_Is_Leaf => 6,
           MP_CMOF_Multiplicity_Element_Is_Ordered => 7,
           MP_CMOF_Property_Is_Read_Only => 12,
           MP_CMOF_Multiplicity_Element_Is_Unique => 8,
           MP_CMOF_Multiplicity_Element_Lower => 9,
           MP_CMOF_Named_Element_Name => 2,
           MP_CMOF_Named_Element_Namespace => 4,
           MP_CMOF_Property_Opposite => 19,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Property_Owning_Association => 18,
           MP_CMOF_Named_Element_Qualified_Name => 5,
           MP_CMOF_Typed_Element_Type => 11,
           MP_CMOF_Multiplicity_Element_Upper => 10,
           MP_CMOF_Named_Element_Visibility => 3,
           others => 0),
         E_Tag =>
          (MP_CMOF_Tag_Name => 2,
           MP_CMOF_Element_Owner => 1,
           MP_CMOF_Tag_Tag_Owner => 4,
           MP_CMOF_Tag_Value => 3,
           others => 0));

end AMF.Internals.Attributes.CMOF_Attribute_Mappings;
