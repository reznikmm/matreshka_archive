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
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.OCL.Any_Types;
with AMF.OCL.Association_Class_Call_Exps;
with AMF.OCL.Bag_Types;
with AMF.OCL.Boolean_Literal_Exps;
with AMF.OCL.Collection_Items;
with AMF.OCL.Collection_Literal_Exps;
with AMF.OCL.Collection_Ranges;
with AMF.OCL.Collection_Types;
with AMF.OCL.Enum_Literal_Exps;
with AMF.OCL.Expression_In_Ocls;
with AMF.OCL.If_Exps;
with AMF.OCL.Integer_Literal_Exps;
with AMF.OCL.Invalid_Literal_Exps;
with AMF.OCL.Invalid_Types;
with AMF.OCL.Iterate_Exps;
with AMF.OCL.Iterator_Exps;
with AMF.OCL.Let_Exps;
with AMF.OCL.Message_Exps;
with AMF.OCL.Message_Types;
with AMF.OCL.Null_Literal_Exps;
with AMF.OCL.Operation_Call_Exps;
with AMF.OCL.Ordered_Set_Types;
with AMF.OCL.Property_Call_Exps;
with AMF.OCL.Real_Literal_Exps;
with AMF.OCL.Sequence_Types;
with AMF.OCL.Set_Types;
with AMF.OCL.State_Exps;
with AMF.OCL.String_Literal_Exps;
with AMF.OCL.Template_Parameter_Types;
with AMF.OCL.Tuple_Literal_Exps;
with AMF.OCL.Tuple_Literal_Parts;
with AMF.OCL.Tuple_Types;
with AMF.OCL.Type_Exps;
with AMF.OCL.Unlimited_Natural_Literal_Exps;
with AMF.OCL.Unspecified_Value_Exps;
with AMF.OCL.Variable_Exps;
with AMF.OCL.Variables;
with AMF.OCL.Void_Types;

package AMF.Factories.OCL_Factories is

   pragma Preelaborate;

   type OCL_Factory is limited interface
     and AMF.Factories.Factory;

   type OCL_Factory_Access is access all OCL_Factory'Class;
   for OCL_Factory_Access'Storage_Size use 0;

   not overriding function Create_Any_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Any_Types.OCL_Any_Type_Access is abstract;

   not overriding function Create_Association_Class_Call_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access is abstract;

   not overriding function Create_Bag_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Bag_Types.OCL_Bag_Type_Access is abstract;

   not overriding function Create_Boolean_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access is abstract;

   not overriding function Create_Collection_Item
    (Self : not null access OCL_Factory)
       return AMF.OCL.Collection_Items.OCL_Collection_Item_Access is abstract;

   not overriding function Create_Collection_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access is abstract;

   not overriding function Create_Collection_Range
    (Self : not null access OCL_Factory)
       return AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access is abstract;

   not overriding function Create_Collection_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Collection_Types.OCL_Collection_Type_Access is abstract;

   not overriding function Create_Enum_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access is abstract;

   not overriding function Create_Expression_In_Ocl
    (Self : not null access OCL_Factory)
       return AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access is abstract;

   not overriding function Create_If_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.If_Exps.OCL_If_Exp_Access is abstract;

   not overriding function Create_Integer_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access is abstract;

   not overriding function Create_Invalid_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access is abstract;

   not overriding function Create_Invalid_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access is abstract;

   not overriding function Create_Iterate_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access is abstract;

   not overriding function Create_Iterator_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access is abstract;

   not overriding function Create_Let_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Let_Exps.OCL_Let_Exp_Access is abstract;

   not overriding function Create_Message_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Message_Exps.OCL_Message_Exp_Access is abstract;

   not overriding function Create_Message_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Message_Types.OCL_Message_Type_Access is abstract;

   not overriding function Create_Null_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access is abstract;

   not overriding function Create_Operation_Call_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access is abstract;

   not overriding function Create_Ordered_Set_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access is abstract;

   not overriding function Create_Property_Call_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access is abstract;

   not overriding function Create_Real_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access is abstract;

   not overriding function Create_Sequence_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access is abstract;

   not overriding function Create_Set_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Set_Types.OCL_Set_Type_Access is abstract;

   not overriding function Create_State_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.State_Exps.OCL_State_Exp_Access is abstract;

   not overriding function Create_String_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access is abstract;

   not overriding function Create_Template_Parameter_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access is abstract;

   not overriding function Create_Tuple_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access is abstract;

   not overriding function Create_Tuple_Literal_Part
    (Self : not null access OCL_Factory)
       return AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access is abstract;

   not overriding function Create_Tuple_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access is abstract;

   not overriding function Create_Type_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Type_Exps.OCL_Type_Exp_Access is abstract;

   not overriding function Create_Unlimited_Natural_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access is abstract;

   not overriding function Create_Unspecified_Value_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access is abstract;

   not overriding function Create_Variable
    (Self : not null access OCL_Factory)
       return AMF.OCL.Variables.OCL_Variable_Access is abstract;

   not overriding function Create_Variable_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access is abstract;

   not overriding function Create_Void_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Void_Types.OCL_Void_Type_Access is abstract;

end AMF.Factories.OCL_Factories;
