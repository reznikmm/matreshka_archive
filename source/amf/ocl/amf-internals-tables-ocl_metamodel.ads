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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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

package AMF.Internals.Tables.OCL_Metamodel is

   pragma Preelaborate;

   function MM_OCL_OCL return AMF.Internals.CMOF_Element;

   function MC_OCL_Collection_Kind return AMF.Internals.CMOF_Element;


   function MC_OCL_Any_Type return AMF.Internals.CMOF_Element;
   function MC_OCL_Association_Class_Call_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Bag_Type return AMF.Internals.CMOF_Element;
   function MC_OCL_Boolean_Literal_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Call_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Collection_Item return AMF.Internals.CMOF_Element;
   function MC_OCL_Collection_Literal_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Collection_Literal_Part return AMF.Internals.CMOF_Element;
   function MC_OCL_Collection_Range return AMF.Internals.CMOF_Element;
   function MC_OCL_Collection_Type return AMF.Internals.CMOF_Element;
   function MC_OCL_Enum_Literal_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Expression_In_Ocl return AMF.Internals.CMOF_Element;
   function MC_OCL_Feature_Call_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_If_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Integer_Literal_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Invalid_Literal_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Invalid_Type return AMF.Internals.CMOF_Element;
   function MC_OCL_Iterate_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Iterator_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Let_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Literal_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Loop_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Message_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Message_Type return AMF.Internals.CMOF_Element;
   function MC_OCL_Navigation_Call_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Null_Literal_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Numeric_Literal_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Ocl_Expression return AMF.Internals.CMOF_Element;
   function MC_OCL_Operation_Call_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Ordered_Set_Type return AMF.Internals.CMOF_Element;
   function MC_OCL_Primitive_Literal_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Property_Call_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Real_Literal_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Sequence_Type return AMF.Internals.CMOF_Element;
   function MC_OCL_Set_Type return AMF.Internals.CMOF_Element;
   function MC_OCL_State_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_String_Literal_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Template_Parameter_Type return AMF.Internals.CMOF_Element;
   function MC_OCL_Tuple_Literal_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Tuple_Literal_Part return AMF.Internals.CMOF_Element;
   function MC_OCL_Tuple_Type return AMF.Internals.CMOF_Element;
   function MC_OCL_Type_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Unlimited_Natural_Literal_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Unspecified_Value_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Variable return AMF.Internals.CMOF_Element;
   function MC_OCL_Variable_Exp return AMF.Internals.CMOF_Element;
   function MC_OCL_Void_Type return AMF.Internals.CMOF_Element;

   function MP_OCL_Association_Class_Call_Exp_Referred_Association_Class return AMF.Internals.CMOF_Element;
   function MP_OCL_Boolean_Literal_Exp_Boolean_Symbol return AMF.Internals.CMOF_Element;
   function MP_OCL_Call_Exp_Source return AMF.Internals.CMOF_Element;
   function MP_OCL_Collection_Item_Item return AMF.Internals.CMOF_Element;
   function MP_OCL_Collection_Literal_Exp_Kind return AMF.Internals.CMOF_Element;
   function MP_OCL_Collection_Literal_Exp_Part return AMF.Internals.CMOF_Element;
   function MP_OCL_Collection_Range_First return AMF.Internals.CMOF_Element;
   function MP_OCL_Collection_Range_Last return AMF.Internals.CMOF_Element;
   function MP_OCL_Collection_Type_Element_Type return AMF.Internals.CMOF_Element;
   function MP_OCL_Enum_Literal_Exp_Referred_Enum_Literal return AMF.Internals.CMOF_Element;
   function MP_OCL_Expression_In_Ocl_Body_Expression return AMF.Internals.CMOF_Element;
   function MP_OCL_Expression_In_Ocl_Context_Variable return AMF.Internals.CMOF_Element;
   function MP_OCL_Expression_In_Ocl_Generated_Type return AMF.Internals.CMOF_Element;
   function MP_OCL_Expression_In_Ocl_Parameter_Variable return AMF.Internals.CMOF_Element;
   function MP_OCL_Expression_In_Ocl_Result_Variable return AMF.Internals.CMOF_Element;
   function MP_OCL_If_Exp_Condition return AMF.Internals.CMOF_Element;
   function MP_OCL_If_Exp_Else_Expression return AMF.Internals.CMOF_Element;
   function MP_OCL_If_Exp_Then_Expression return AMF.Internals.CMOF_Element;
   function MP_OCL_Integer_Literal_Exp_Integer_Symbol return AMF.Internals.CMOF_Element;
   function MP_OCL_Iterate_Exp_Result return AMF.Internals.CMOF_Element;
   function MP_OCL_Let_Exp_In return AMF.Internals.CMOF_Element;
   function MP_OCL_Let_Exp_Variable return AMF.Internals.CMOF_Element;
   function MP_OCL_Loop_Exp_Body return AMF.Internals.CMOF_Element;
   function MP_OCL_Loop_Exp_Iterator return AMF.Internals.CMOF_Element;
   function MP_OCL_Message_Exp_Argument return AMF.Internals.CMOF_Element;
   function MP_OCL_Message_Exp_Called_Operation return AMF.Internals.CMOF_Element;
   function MP_OCL_Message_Exp_Sent_Signal return AMF.Internals.CMOF_Element;
   function MP_OCL_Message_Exp_Target return AMF.Internals.CMOF_Element;
   function MP_OCL_Message_Type_Referred_Operation return AMF.Internals.CMOF_Element;
   function MP_OCL_Message_Type_Referred_Signal return AMF.Internals.CMOF_Element;
   function MP_OCL_Navigation_Call_Exp_Navigation_Source return AMF.Internals.CMOF_Element;
   function MP_OCL_Navigation_Call_Exp_Qualifier return AMF.Internals.CMOF_Element;
   function MP_OCL_Operation_Call_Exp_Argument return AMF.Internals.CMOF_Element;
   function MP_OCL_Operation_Call_Exp_Referred_Operation return AMF.Internals.CMOF_Element;
   function MP_OCL_Property_Call_Exp_Referred_Property return AMF.Internals.CMOF_Element;
   function MP_OCL_Real_Literal_Exp_Real_Symbol return AMF.Internals.CMOF_Element;
   function MP_OCL_State_Exp_Referred_State return AMF.Internals.CMOF_Element;
   function MP_OCL_String_Literal_Exp_String_Symbol return AMF.Internals.CMOF_Element;
   function MP_OCL_Template_Parameter_Type_Specification return AMF.Internals.CMOF_Element;
   function MP_OCL_Tuple_Literal_Exp_Part return AMF.Internals.CMOF_Element;
   function MP_OCL_Tuple_Literal_Part_Attribute return AMF.Internals.CMOF_Element;
   function MP_OCL_Type_Exp_Referred_Type return AMF.Internals.CMOF_Element;
   function MP_OCL_Unlimited_Natural_Literal_Exp_Unlimited_Natural_Symbol return AMF.Internals.CMOF_Element;
   function MP_OCL_Variable_Init_Expression return AMF.Internals.CMOF_Element;
   function MP_OCL_Variable_Represented_Parameter return AMF.Internals.CMOF_Element;
   function MP_OCL_Variable_Exp_Referred_Variable return AMF.Internals.CMOF_Element;

   function MA_OCL_Ocl_Expression_First_First_Owner return AMF.Internals.CMOF_Element;
   function MA_OCL_State_Referred_State_State_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_Last_Last_Owner return AMF.Internals.CMOF_Element;
   function MA_OCL_Property_Referred_Property_Refering_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Classifier_Element_Type_Collection_Type return AMF.Internals.CMOF_Element;
   function MA_OCL_Tuple_Literal_Part_Part_Tuple_Literal_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Variable_Referred_Variable_Refering_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Classifier_Referred_Type_Type_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_Source_Applied_Element return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_Body_Expression_Top_Expression return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_Body_Loop_Body_Owner return AMF.Internals.CMOF_Element;
   function MA_OCL_Variable_Context_Variable_Self_Owner return AMF.Internals.CMOF_Element;
   function MA_OCL_Variable_Iterator_Loop_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Signal_Referred_Signal_Message_Type return AMF.Internals.CMOF_Element;
   function MA_OCL_Variable_Result_Variable_Result_Owner return AMF.Internals.CMOF_Element;
   function MA_OCL_Operation_Referred_Operation_Message_Type return AMF.Internals.CMOF_Element;
   function MA_OCL_Variable_Parameter_Variable_Var_Owner return AMF.Internals.CMOF_Element;
   function MA_OCL_Classifier_Generated_Type_Owning_Classifier return AMF.Internals.CMOF_Element;
   function MA_OCL_Enumeration_Literal_Referred_Enum_Literal_Literal_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Property_Attribute_Tuple_Literal_Part return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_Qualifier_Parent_Nav return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_Argument_Parent_Call return AMF.Internals.CMOF_Element;
   function MA_OCL_Property_Navigation_Source_Navigation_Call_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Operation_Referred_Operation_Refering_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_Condition_If_Owner return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_Then_Expression_Then_Owner return AMF.Internals.CMOF_Element;
   function MA_OCL_Association_Class_Referred_Association_Class_Referring_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_Else_Expression_Else_Owner return AMF.Internals.CMOF_Element;
   function MA_OCL_Variable_Result_Base_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_In_Let_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_Target_Message_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Collection_Literal_Part_Part_Collection_Literal_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_Argument_Message_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Variable_Variable_Let_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Call_Operation_Action_Called_Operation_Message_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_Item_Collection_Item return AMF.Internals.CMOF_Element;
   function MA_OCL_Ocl_Expression_Init_Expression_Initialized_Element return AMF.Internals.CMOF_Element;
   function MA_OCL_Send_Signal_Action_Sent_Signal_Message_Exp return AMF.Internals.CMOF_Element;
   function MA_OCL_Parameter_Represented_Parameter_Variable return AMF.Internals.CMOF_Element;

   function MB_OCL return AMF.Internals.AMF_Element;

   function ML_OCL return AMF.Internals.AMF_Element;

private

   Base : AMF.Internals.CMOF_Element := 0;

end AMF.Internals.Tables.OCL_Metamodel;
