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

   function MM_CMOF_CMOF return AMF.Internals.CMOF_Element;

   function MC_CMOF_Boolean return AMF.Internals.CMOF_Element;
   function MC_CMOF_Integer return AMF.Internals.CMOF_Element;
   function MC_CMOF_Parameter_Direction_Kind return AMF.Internals.CMOF_Element;
   function MC_CMOF_String return AMF.Internals.CMOF_Element;
   function MC_CMOF_Unlimited_Natural return AMF.Internals.CMOF_Element;
   function MC_CMOF_Visibility_Kind return AMF.Internals.CMOF_Element;

   function MC_CMOF_Association return AMF.Internals.CMOF_Element;
   function MC_CMOF_Behavioral_Feature return AMF.Internals.CMOF_Element;
   function MC_CMOF_Class return AMF.Internals.CMOF_Element;
   function MC_CMOF_Classifier return AMF.Internals.CMOF_Element;
   function MC_CMOF_Comment return AMF.Internals.CMOF_Element;
   function MC_CMOF_Constraint return AMF.Internals.CMOF_Element;
   function MC_CMOF_Data_Type return AMF.Internals.CMOF_Element;
   function MC_CMOF_Directed_Relationship return AMF.Internals.CMOF_Element;
   function MC_CMOF_Element return AMF.Internals.CMOF_Element;
   function MC_CMOF_Element_Import return AMF.Internals.CMOF_Element;
   function MC_CMOF_Enumeration return AMF.Internals.CMOF_Element;
   function MC_CMOF_Enumeration_Literal return AMF.Internals.CMOF_Element;
   function MC_CMOF_Expression return AMF.Internals.CMOF_Element;
   function MC_CMOF_Feature return AMF.Internals.CMOF_Element;
   function MC_CMOF_Multiplicity_Element return AMF.Internals.CMOF_Element;
   function MC_CMOF_Named_Element return AMF.Internals.CMOF_Element;
   function MC_CMOF_Namespace return AMF.Internals.CMOF_Element;
   function MC_CMOF_Opaque_Expression return AMF.Internals.CMOF_Element;
   function MC_CMOF_Operation return AMF.Internals.CMOF_Element;
   function MC_CMOF_Package return AMF.Internals.CMOF_Element;
   function MC_CMOF_Package_Import return AMF.Internals.CMOF_Element;
   function MC_CMOF_Package_Merge return AMF.Internals.CMOF_Element;
   function MC_CMOF_Packageable_Element return AMF.Internals.CMOF_Element;
   function MC_CMOF_Parameter return AMF.Internals.CMOF_Element;
   function MC_CMOF_Primitive_Type return AMF.Internals.CMOF_Element;
   function MC_CMOF_Property return AMF.Internals.CMOF_Element;
   function MC_CMOF_Redefinable_Element return AMF.Internals.CMOF_Element;
   function MC_CMOF_Relationship return AMF.Internals.CMOF_Element;
   function MC_CMOF_Structural_Feature return AMF.Internals.CMOF_Element;
   function MC_CMOF_Tag return AMF.Internals.CMOF_Element;
   function MC_CMOF_Type return AMF.Internals.CMOF_Element;
   function MC_CMOF_Typed_Element return AMF.Internals.CMOF_Element;
   function MC_CMOF_Value_Specification return AMF.Internals.CMOF_Element;

   function MP_CMOF_Association_End_Type return AMF.Internals.CMOF_Element;
   function MP_CMOF_Association_Is_Derived return AMF.Internals.CMOF_Element;
   function MP_CMOF_Association_Member_End return AMF.Internals.CMOF_Element;
   function MP_CMOF_Association_Navigable_Owned_End return AMF.Internals.CMOF_Element;
   function MP_CMOF_Association_Owned_End return AMF.Internals.CMOF_Element;
   function MP_CMOF_Behavioral_Feature_Owned_Parameter return AMF.Internals.CMOF_Element;
   function MP_CMOF_Behavioral_Feature_Raised_Exception return AMF.Internals.CMOF_Element;
   function MP_CMOF_Class_Is_Abstract return AMF.Internals.CMOF_Element;
   function MP_CMOF_Class_Owned_Attribute return AMF.Internals.CMOF_Element;
   function MP_CMOF_Class_Owned_Operation return AMF.Internals.CMOF_Element;
   function MP_CMOF_Class_Super_Class return AMF.Internals.CMOF_Element;
   function MP_CMOF_Classifier_Attribute return AMF.Internals.CMOF_Element;
   function MP_CMOF_Classifier_Feature return AMF.Internals.CMOF_Element;
   function MP_CMOF_Classifier_General return AMF.Internals.CMOF_Element;
   function MP_CMOF_Classifier_Inherited_Member return AMF.Internals.CMOF_Element;
   function MP_CMOF_Classifier_Is_Final_Specialization return AMF.Internals.CMOF_Element;
   function MP_CMOF_Comment_Annotated_Element return AMF.Internals.CMOF_Element;
   function MP_CMOF_Comment_Body return AMF.Internals.CMOF_Element;
   function MP_CMOF_Constraint_Constrained_Element return AMF.Internals.CMOF_Element;
   function MP_CMOF_Constraint_Context return AMF.Internals.CMOF_Element;
   function MP_CMOF_Constraint_Specification return AMF.Internals.CMOF_Element;
   function MP_CMOF_Data_Type_Owned_Attribute return AMF.Internals.CMOF_Element;
   function MP_CMOF_Data_Type_Owned_Operation return AMF.Internals.CMOF_Element;
   function MP_CMOF_Directed_Relationship_Source return AMF.Internals.CMOF_Element;
   function MP_CMOF_Directed_Relationship_Target return AMF.Internals.CMOF_Element;
   function MP_CMOF_Element_Owned_Comment return AMF.Internals.CMOF_Element;
   function MP_CMOF_Element_Owned_Element return AMF.Internals.CMOF_Element;
   function MP_CMOF_Element_Owner return AMF.Internals.CMOF_Element;
   function MP_CMOF_Element_Import_Alias return AMF.Internals.CMOF_Element;
   function MP_CMOF_Element_Import_Imported_Element return AMF.Internals.CMOF_Element;
   function MP_CMOF_Element_Import_Importing_Namespace return AMF.Internals.CMOF_Element;
   function MP_CMOF_Element_Import_Visibility return AMF.Internals.CMOF_Element;
   function MP_CMOF_Enumeration_Owned_Literal return AMF.Internals.CMOF_Element;
   function MP_CMOF_Enumeration_Literal_Enumeration return AMF.Internals.CMOF_Element;
   function MP_CMOF_Expression_Operand return AMF.Internals.CMOF_Element;
   function MP_CMOF_Feature_Featuring_Classifier return AMF.Internals.CMOF_Element;
   function MP_CMOF_Multiplicity_Element_Is_Ordered return AMF.Internals.CMOF_Element;
   function MP_CMOF_Multiplicity_Element_Is_Unique return AMF.Internals.CMOF_Element;
   function MP_CMOF_Multiplicity_Element_Lower return AMF.Internals.CMOF_Element;
   function MP_CMOF_Multiplicity_Element_Upper return AMF.Internals.CMOF_Element;
   function MP_CMOF_Named_Element_Name return AMF.Internals.CMOF_Element;
   function MP_CMOF_Named_Element_Namespace return AMF.Internals.CMOF_Element;
   function MP_CMOF_Named_Element_Qualified_Name return AMF.Internals.CMOF_Element;
   function MP_CMOF_Named_Element_Visibility return AMF.Internals.CMOF_Element;
   function MP_CMOF_Namespace_Element_Import return AMF.Internals.CMOF_Element;
   function MP_CMOF_Namespace_Imported_Member return AMF.Internals.CMOF_Element;
   function MP_CMOF_Namespace_Member return AMF.Internals.CMOF_Element;
   function MP_CMOF_Namespace_Owned_Member return AMF.Internals.CMOF_Element;
   function MP_CMOF_Namespace_Owned_Rule return AMF.Internals.CMOF_Element;
   function MP_CMOF_Namespace_Package_Import return AMF.Internals.CMOF_Element;
   function MP_CMOF_Opaque_Expression_Body return AMF.Internals.CMOF_Element;
   function MP_CMOF_Opaque_Expression_Language return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Body_Condition return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Class return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Datatype return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Is_Ordered return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Is_Query return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Is_Unique return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Lower return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Owned_Parameter return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Postcondition return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Precondition return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Raised_Exception return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Redefined_Operation return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Type return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operation_Upper return AMF.Internals.CMOF_Element;
   function MP_CMOF_Package_Nested_Package return AMF.Internals.CMOF_Element;
   function MP_CMOF_Package_Nesting_Package return AMF.Internals.CMOF_Element;
   function MP_CMOF_Package_Owned_Type return AMF.Internals.CMOF_Element;
   function MP_CMOF_Package_Package_Merge return AMF.Internals.CMOF_Element;
   function MP_CMOF_Package_Packaged_Element return AMF.Internals.CMOF_Element;
   function MP_CMOF_Package_Uri return AMF.Internals.CMOF_Element;
   function MP_CMOF_Package_Import_Imported_Package return AMF.Internals.CMOF_Element;
   function MP_CMOF_Package_Import_Importing_Namespace return AMF.Internals.CMOF_Element;
   function MP_CMOF_Package_Import_Visibility return AMF.Internals.CMOF_Element;
   function MP_CMOF_Package_Merge_Merged_Package return AMF.Internals.CMOF_Element;
   function MP_CMOF_Package_Merge_Receiving_Package return AMF.Internals.CMOF_Element;
   function MP_CMOF_Parameter_Default return AMF.Internals.CMOF_Element;
   function MP_CMOF_Parameter_Direction return AMF.Internals.CMOF_Element;
   function MP_CMOF_Parameter_Operation return AMF.Internals.CMOF_Element;
   function MP_CMOF_Property_Association return AMF.Internals.CMOF_Element;
   function MP_CMOF_Property_Class return AMF.Internals.CMOF_Element;
   function MP_CMOF_Property_Datatype return AMF.Internals.CMOF_Element;
   function MP_CMOF_Property_Default return AMF.Internals.CMOF_Element;
   function MP_CMOF_Property_Is_Composite return AMF.Internals.CMOF_Element;
   function MP_CMOF_Property_Is_Derived return AMF.Internals.CMOF_Element;
   function MP_CMOF_Property_Is_Derived_Union return AMF.Internals.CMOF_Element;
   function MP_CMOF_Property_Is_Read_Only return AMF.Internals.CMOF_Element;
   function MP_CMOF_Property_Opposite return AMF.Internals.CMOF_Element;
   function MP_CMOF_Property_Owning_Association return AMF.Internals.CMOF_Element;
   function MP_CMOF_Property_Redefined_Property return AMF.Internals.CMOF_Element;
   function MP_CMOF_Property_Subsetted_Property return AMF.Internals.CMOF_Element;
   function MP_CMOF_Redefinable_Element_Is_Leaf return AMF.Internals.CMOF_Element;
   function MP_CMOF_Redefinable_Element_Redefined_Element return AMF.Internals.CMOF_Element;
   function MP_CMOF_Redefinable_Element_Redefinition_Context return AMF.Internals.CMOF_Element;
   function MP_CMOF_Relationship_Related_Element return AMF.Internals.CMOF_Element;
   function MP_CMOF_Tag_Element return AMF.Internals.CMOF_Element;
   function MP_CMOF_Tag_Name return AMF.Internals.CMOF_Element;
   function MP_CMOF_Tag_Tag_Owner return AMF.Internals.CMOF_Element;
   function MP_CMOF_Tag_Value return AMF.Internals.CMOF_Element;
   function MP_CMOF_Type_Package return AMF.Internals.CMOF_Element;
   function MP_CMOF_Typed_Element_Type return AMF.Internals.CMOF_Element;
   function MP_CMOF_Imported_Element_Element_Import return AMF.Internals.CMOF_Element;
   function MP_CMOF_Packaged_Element_Owning_Package return AMF.Internals.CMOF_Element;
   function MP_CMOF_Element_Tag return AMF.Internals.CMOF_Element;
   function MP_CMOF_Tag_Owner_Owned_Tag return AMF.Internals.CMOF_Element;
   function MP_CMOF_Type_Operation return AMF.Internals.CMOF_Element;
   function MP_CMOF_Merged_Package_Package_Merge return AMF.Internals.CMOF_Element;
   function MP_CMOF_Annotated_Element_Comment return AMF.Internals.CMOF_Element;
   function MP_CMOF_Related_Element_Relationship return AMF.Internals.CMOF_Element;
   function MP_CMOF_Source_Directed_Relationship return AMF.Internals.CMOF_Element;
   function MP_CMOF_Target_Directed_Relationship return AMF.Internals.CMOF_Element;
   function MP_CMOF_Type_Typed_Element return AMF.Internals.CMOF_Element;
   function MP_CMOF_Redefinition_Context_Redefinable_Element return AMF.Internals.CMOF_Element;
   function MP_CMOF_Redefined_Element_Redefinable_Element return AMF.Internals.CMOF_Element;
   function MP_CMOF_Attribute_Classifier return AMF.Internals.CMOF_Element;
   function MP_CMOF_Constrained_Element_Constraint return AMF.Internals.CMOF_Element;
   function MP_CMOF_Redefined_Property_Property return AMF.Internals.CMOF_Element;
   function MP_CMOF_Specification_Owning_Constraint return AMF.Internals.CMOF_Element;
   function MP_CMOF_Subsetted_Property_Property return AMF.Internals.CMOF_Element;
   function MP_CMOF_General_Classifier return AMF.Internals.CMOF_Element;
   function MP_CMOF_Opposite_Property return AMF.Internals.CMOF_Element;
   function MP_CMOF_Super_Class_Class return AMF.Internals.CMOF_Element;
   function MP_CMOF_Member_Namespace return AMF.Internals.CMOF_Element;
   function MP_CMOF_End_Type_Association return AMF.Internals.CMOF_Element;
   function MP_CMOF_Operand_Expression return AMF.Internals.CMOF_Element;
   function MP_CMOF_Navigable_Owned_End_Association return AMF.Internals.CMOF_Element;
   function MP_CMOF_Raised_Exception_Operation return AMF.Internals.CMOF_Element;
   function MP_CMOF_Owned_Comment_Owning_Element return AMF.Internals.CMOF_Element;
   function MP_CMOF_Redefined_Operation_Operation return AMF.Internals.CMOF_Element;
   function MP_CMOF_Inherited_Member_Classifier return AMF.Internals.CMOF_Element;
   function MP_CMOF_Owned_Parameter_Owner_Formal_Param return AMF.Internals.CMOF_Element;
   function MP_CMOF_Precondition_Pre_Context return AMF.Internals.CMOF_Element;
   function MP_CMOF_Raised_Exception_Behavioral_Feature return AMF.Internals.CMOF_Element;
   function MP_CMOF_Postcondition_Post_Context return AMF.Internals.CMOF_Element;
   function MP_CMOF_Imported_Member_Namespace return AMF.Internals.CMOF_Element;
   function MP_CMOF_Body_Condition_Body_Context return AMF.Internals.CMOF_Element;
   function MP_CMOF_Imported_Package_Package_Import return AMF.Internals.CMOF_Element;

   function MA_CMOF_Packageable_Element_Imported_Element_Element_Import return AMF.Internals.CMOF_Element;
   function MA_CMOF_Element_Import_Element_Import_Importing_Namespace return AMF.Internals.CMOF_Element;
   function MA_CMOF_Package_Import_Package_Import_Importing_Namespace return AMF.Internals.CMOF_Element;
   function MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package return AMF.Internals.CMOF_Element;
   function MA_CMOF_Element_Element_Tag return AMF.Internals.CMOF_Element;
   function MA_CMOF_Type_Owned_Type_Package return AMF.Internals.CMOF_Element;
   function MA_CMOF_Element_Tag_Owner_Owned_Tag return AMF.Internals.CMOF_Element;
   function MA_CMOF_Property_Member_End_Association return AMF.Internals.CMOF_Element;
   function MA_CMOF_Package_Nested_Package_Nesting_Package return AMF.Internals.CMOF_Element;
   function MA_CMOF_Type_Type_Operation return AMF.Internals.CMOF_Element;
   function MA_CMOF_Package_Merge_Package_Merge_Receiving_Package return AMF.Internals.CMOF_Element;
   function MA_CMOF_Package_Merged_Package_Package_Merge return AMF.Internals.CMOF_Element;
   function MA_CMOF_Element_Owned_Element_Owner return AMF.Internals.CMOF_Element;
   function MA_CMOF_Element_Annotated_Element_Comment return AMF.Internals.CMOF_Element;
   function MA_CMOF_Element_Related_Element_Relationship return AMF.Internals.CMOF_Element;
   function MA_CMOF_Element_Source_Directed_Relationship return AMF.Internals.CMOF_Element;
   function MA_CMOF_Element_Target_Directed_Relationship return AMF.Internals.CMOF_Element;
   function MA_CMOF_Type_Type_Typed_Element return AMF.Internals.CMOF_Element;
   function MA_CMOF_Classifier_Redefinition_Context_Redefinable_Element return AMF.Internals.CMOF_Element;
   function MA_CMOF_Property_Owned_Attribute_Class return AMF.Internals.CMOF_Element;
   function MA_CMOF_Operation_Owned_Operation_Class return AMF.Internals.CMOF_Element;
   function MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element return AMF.Internals.CMOF_Element;
   function MA_CMOF_Property_Owned_End_Owning_Association return AMF.Internals.CMOF_Element;
   function MA_CMOF_Property_Attribute_Classifier return AMF.Internals.CMOF_Element;
   function MA_CMOF_Feature_Feature_Featuring_Classifier return AMF.Internals.CMOF_Element;
   function MA_CMOF_Element_Constrained_Element_Constraint return AMF.Internals.CMOF_Element;
   function MA_CMOF_Property_Redefined_Property_Property return AMF.Internals.CMOF_Element;
   function MA_CMOF_Value_Specification_Specification_Owning_Constraint return AMF.Internals.CMOF_Element;
   function MA_CMOF_Property_Subsetted_Property_Property return AMF.Internals.CMOF_Element;
   function MA_CMOF_Classifier_General_Classifier return AMF.Internals.CMOF_Element;
   function MA_CMOF_Property_Opposite_Property return AMF.Internals.CMOF_Element;
   function MA_CMOF_Named_Element_Owned_Member_Namespace return AMF.Internals.CMOF_Element;
   function MA_CMOF_Class_Super_Class_Class return AMF.Internals.CMOF_Element;
   function MA_CMOF_Named_Element_Member_Namespace return AMF.Internals.CMOF_Element;
   function MA_CMOF_Type_End_Type_Association return AMF.Internals.CMOF_Element;
   function MA_CMOF_Value_Specification_Operand_Expression return AMF.Internals.CMOF_Element;
   function MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration return AMF.Internals.CMOF_Element;
   function MA_CMOF_Property_Navigable_Owned_End_Association return AMF.Internals.CMOF_Element;
   function MA_CMOF_Property_Owned_Attribute_Datatype return AMF.Internals.CMOF_Element;
   function MA_CMOF_Operation_Owned_Operation_Datatype return AMF.Internals.CMOF_Element;
   function MA_CMOF_Parameter_Owned_Parameter_Operation return AMF.Internals.CMOF_Element;
   function MA_CMOF_Type_Raised_Exception_Operation return AMF.Internals.CMOF_Element;
   function MA_CMOF_Comment_Owned_Comment_Owning_Element return AMF.Internals.CMOF_Element;
   function MA_CMOF_Operation_Redefined_Operation_Operation return AMF.Internals.CMOF_Element;
   function MA_CMOF_Named_Element_Inherited_Member_Classifier return AMF.Internals.CMOF_Element;
   function MA_CMOF_Parameter_Owned_Parameter_Owner_Formal_Param return AMF.Internals.CMOF_Element;
   function MA_CMOF_Constraint_Precondition_Pre_Context return AMF.Internals.CMOF_Element;
   function MA_CMOF_Type_Raised_Exception_Behavioral_Feature return AMF.Internals.CMOF_Element;
   function MA_CMOF_Constraint_Postcondition_Post_Context return AMF.Internals.CMOF_Element;
   function MA_CMOF_Packageable_Element_Imported_Member_Namespace return AMF.Internals.CMOF_Element;
   function MA_CMOF_Constraint_Body_Condition_Body_Context return AMF.Internals.CMOF_Element;
   function MA_CMOF_Package_Imported_Package_Package_Import return AMF.Internals.CMOF_Element;
   function MA_CMOF_Constraint_Owned_Rule_Context return AMF.Internals.CMOF_Element;

   subtype CMOF_Meta_Class is
     AMF.Internals.CMOF_Element range 1 .. 33;


   function MB_CMOF return AMF.Internals.AMF_Element;

   procedure Initialize;

end AMF.Internals.Tables.CMOF_Metamodel;
