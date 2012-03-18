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

package AMF.Visitors.OCL_Iterators is

   pragma Preelaborate;

   type OCL_Iterator is limited interface and AMF.Visitors.Abstract_Iterator;

   not overriding procedure Visit_Any_Type
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Any_Types.OCL_Any_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Association_Class_Call_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Bag_Type
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Bag_Types.OCL_Bag_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Boolean_Literal_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Collection_Item
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Collection_Items.OCL_Collection_Item_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Collection_Literal_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Collection_Range
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Collection_Type
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Collection_Types.OCL_Collection_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Enum_Literal_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Expression_In_Ocl
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_If_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.If_Exps.OCL_If_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Integer_Literal_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Invalid_Literal_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Invalid_Type
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Iterate_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Iterator_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Let_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Let_Exps.OCL_Let_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Message_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Message_Exps.OCL_Message_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Message_Type
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Message_Types.OCL_Message_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Null_Literal_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Operation_Call_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Ordered_Set_Type
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Property_Call_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Real_Literal_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Sequence_Type
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Set_Type
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Set_Types.OCL_Set_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_State_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.State_Exps.OCL_State_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_String_Literal_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Template_Parameter_Type
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Tuple_Literal_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Tuple_Literal_Part
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Tuple_Type
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Type_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Type_Exps.OCL_Type_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Unlimited_Natural_Literal_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Unspecified_Value_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Variable
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Variables.OCL_Variable_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Variable_Exp
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Void_Type
    (Self    : in out OCL_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.OCL.Void_Types.OCL_Void_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

end AMF.Visitors.OCL_Iterators;
