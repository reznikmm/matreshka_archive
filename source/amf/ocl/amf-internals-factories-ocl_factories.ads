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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.CMOF.Associations;
with AMF.CMOF.Classes;
with AMF.CMOF.Data_Types;
with AMF.Factories.OCL_Factories;
with AMF.Links;
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
with League.Holders;

package AMF.Internals.Factories.OCL_Factories is

   type OCL_Factory is
     limited new AMF.Internals.Factories.Metamodel_Factory_Base
       and AMF.Factories.OCL_Factories.OCL_Factory with null record;

   overriding function Convert_To_String
    (Self      : not null access OCL_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String;

   overriding function Create
    (Self       : not null access OCL_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access;

   overriding function Create_From_String
    (Self      : not null access OCL_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder;

   overriding function Create_Link
    (Self           : not null access OCL_Factory;
     Association    :
       not null access AMF.CMOF.Associations.CMOF_Association'Class;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access)
       return not null AMF.Links.Link_Access;

   overriding function Get_Package
    (Self : not null access constant OCL_Factory)
       return AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package;

   function Constructor
    (Extent : AMF.Internals.AMF_Extent)
       return not null AMF.Factories.Factory_Access;

   function Get_Package return not null AMF.CMOF.Packages.CMOF_Package_Access;

   function Create_Any_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Any_Types.OCL_Any_Type_Access;

   function Create_Association_Class_Call_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access;

   function Create_Bag_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Bag_Types.OCL_Bag_Type_Access;

   function Create_Boolean_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access;

   function Create_Collection_Item
    (Self : not null access OCL_Factory)
       return AMF.OCL.Collection_Items.OCL_Collection_Item_Access;

   function Create_Collection_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access;

   function Create_Collection_Range
    (Self : not null access OCL_Factory)
       return AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access;

   function Create_Collection_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Collection_Types.OCL_Collection_Type_Access;

   function Create_Enum_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access;

   function Create_Expression_In_Ocl
    (Self : not null access OCL_Factory)
       return AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access;

   function Create_If_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.If_Exps.OCL_If_Exp_Access;

   function Create_Integer_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access;

   function Create_Invalid_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access;

   function Create_Invalid_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access;

   function Create_Iterate_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access;

   function Create_Iterator_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access;

   function Create_Let_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Let_Exps.OCL_Let_Exp_Access;

   function Create_Message_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Message_Exps.OCL_Message_Exp_Access;

   function Create_Message_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Message_Types.OCL_Message_Type_Access;

   function Create_Null_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access;

   function Create_Operation_Call_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access;

   function Create_Ordered_Set_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access;

   function Create_Property_Call_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access;

   function Create_Real_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access;

   function Create_Sequence_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access;

   function Create_Set_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Set_Types.OCL_Set_Type_Access;

   function Create_State_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.State_Exps.OCL_State_Exp_Access;

   function Create_String_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access;

   function Create_Template_Parameter_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access;

   function Create_Tuple_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access;

   function Create_Tuple_Literal_Part
    (Self : not null access OCL_Factory)
       return AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access;

   function Create_Tuple_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access;

   function Create_Type_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Type_Exps.OCL_Type_Exp_Access;

   function Create_Unlimited_Natural_Literal_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access;

   function Create_Unspecified_Value_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access;

   function Create_Variable
    (Self : not null access OCL_Factory)
       return AMF.OCL.Variables.OCL_Variable_Access;

   function Create_Variable_Exp
    (Self : not null access OCL_Factory)
       return AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access;

   function Create_Void_Type
    (Self : not null access OCL_Factory)
       return AMF.OCL.Void_Types.OCL_Void_Type_Access;

end AMF.Internals.Factories.OCL_Factories;
