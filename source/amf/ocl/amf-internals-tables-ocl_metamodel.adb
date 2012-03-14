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
with AMF.CMOF;
with AMF.Internals.Extents;
with AMF.Internals.Links;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.CMOF_Constructors;
with AMF.Internals.Tables.CMOF_Metamodel;
with AMF.Internals.Tables.OCL_String_Data_00;
with AMF.Internals.Tables.Primitive_Types_Metamodel;
with AMF.Internals.Tables.UML_Metamodel;

package body AMF.Internals.Tables.OCL_Metamodel is

   Base : AMF.Internals.CMOF_Element := 0;

   ----------------
   -- MM_OCL_OCL --
   ----------------

   function MM_OCL_OCL return AMF.Internals.CMOF_Element is
   begin
      return Base + 133;
   end MM_OCL_OCL;

   ----------------------------
   -- MC_OCL_Collection_Kind --
   ----------------------------

   function MC_OCL_Collection_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 135;
   end MC_OCL_Collection_Kind;

   ---------------------
   -- MC_OCL_Any_Type --
   ---------------------

   function MC_OCL_Any_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 1;
   end MC_OCL_Any_Type;

   ---------------------------------------
   -- MC_OCL_Association_Class_Call_Exp --
   ---------------------------------------

   function MC_OCL_Association_Class_Call_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 2;
   end MC_OCL_Association_Class_Call_Exp;

   ---------------------
   -- MC_OCL_Bag_Type --
   ---------------------

   function MC_OCL_Bag_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 3;
   end MC_OCL_Bag_Type;

   --------------------------------
   -- MC_OCL_Boolean_Literal_Exp --
   --------------------------------

   function MC_OCL_Boolean_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 4;
   end MC_OCL_Boolean_Literal_Exp;

   ---------------------
   -- MC_OCL_Call_Exp --
   ---------------------

   function MC_OCL_Call_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 5;
   end MC_OCL_Call_Exp;

   ----------------------------
   -- MC_OCL_Collection_Item --
   ----------------------------

   function MC_OCL_Collection_Item return AMF.Internals.CMOF_Element is
   begin
      return Base + 6;
   end MC_OCL_Collection_Item;

   -----------------------------------
   -- MC_OCL_Collection_Literal_Exp --
   -----------------------------------

   function MC_OCL_Collection_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 7;
   end MC_OCL_Collection_Literal_Exp;

   ------------------------------------
   -- MC_OCL_Collection_Literal_Part --
   ------------------------------------

   function MC_OCL_Collection_Literal_Part return AMF.Internals.CMOF_Element is
   begin
      return Base + 8;
   end MC_OCL_Collection_Literal_Part;

   -----------------------------
   -- MC_OCL_Collection_Range --
   -----------------------------

   function MC_OCL_Collection_Range return AMF.Internals.CMOF_Element is
   begin
      return Base + 9;
   end MC_OCL_Collection_Range;

   ----------------------------
   -- MC_OCL_Collection_Type --
   ----------------------------

   function MC_OCL_Collection_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 10;
   end MC_OCL_Collection_Type;

   -----------------------------
   -- MC_OCL_Enum_Literal_Exp --
   -----------------------------

   function MC_OCL_Enum_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 11;
   end MC_OCL_Enum_Literal_Exp;

   ------------------------------
   -- MC_OCL_Expression_In_Ocl --
   ------------------------------

   function MC_OCL_Expression_In_Ocl return AMF.Internals.CMOF_Element is
   begin
      return Base + 12;
   end MC_OCL_Expression_In_Ocl;

   -----------------------------
   -- MC_OCL_Feature_Call_Exp --
   -----------------------------

   function MC_OCL_Feature_Call_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 13;
   end MC_OCL_Feature_Call_Exp;

   -------------------
   -- MC_OCL_If_Exp --
   -------------------

   function MC_OCL_If_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 14;
   end MC_OCL_If_Exp;

   --------------------------------
   -- MC_OCL_Integer_Literal_Exp --
   --------------------------------

   function MC_OCL_Integer_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 15;
   end MC_OCL_Integer_Literal_Exp;

   --------------------------------
   -- MC_OCL_Invalid_Literal_Exp --
   --------------------------------

   function MC_OCL_Invalid_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 16;
   end MC_OCL_Invalid_Literal_Exp;

   -------------------------
   -- MC_OCL_Invalid_Type --
   -------------------------

   function MC_OCL_Invalid_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 17;
   end MC_OCL_Invalid_Type;

   ------------------------
   -- MC_OCL_Iterate_Exp --
   ------------------------

   function MC_OCL_Iterate_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 18;
   end MC_OCL_Iterate_Exp;

   -------------------------
   -- MC_OCL_Iterator_Exp --
   -------------------------

   function MC_OCL_Iterator_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 19;
   end MC_OCL_Iterator_Exp;

   --------------------
   -- MC_OCL_Let_Exp --
   --------------------

   function MC_OCL_Let_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 20;
   end MC_OCL_Let_Exp;

   ------------------------
   -- MC_OCL_Literal_Exp --
   ------------------------

   function MC_OCL_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 21;
   end MC_OCL_Literal_Exp;

   ---------------------
   -- MC_OCL_Loop_Exp --
   ---------------------

   function MC_OCL_Loop_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 22;
   end MC_OCL_Loop_Exp;

   ------------------------
   -- MC_OCL_Message_Exp --
   ------------------------

   function MC_OCL_Message_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 23;
   end MC_OCL_Message_Exp;

   -------------------------
   -- MC_OCL_Message_Type --
   -------------------------

   function MC_OCL_Message_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 24;
   end MC_OCL_Message_Type;

   --------------------------------
   -- MC_OCL_Navigation_Call_Exp --
   --------------------------------

   function MC_OCL_Navigation_Call_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 25;
   end MC_OCL_Navigation_Call_Exp;

   -----------------------------
   -- MC_OCL_Null_Literal_Exp --
   -----------------------------

   function MC_OCL_Null_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 26;
   end MC_OCL_Null_Literal_Exp;

   --------------------------------
   -- MC_OCL_Numeric_Literal_Exp --
   --------------------------------

   function MC_OCL_Numeric_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 27;
   end MC_OCL_Numeric_Literal_Exp;

   ---------------------------
   -- MC_OCL_Ocl_Expression --
   ---------------------------

   function MC_OCL_Ocl_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 28;
   end MC_OCL_Ocl_Expression;

   -------------------------------
   -- MC_OCL_Operation_Call_Exp --
   -------------------------------

   function MC_OCL_Operation_Call_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 29;
   end MC_OCL_Operation_Call_Exp;

   -----------------------------
   -- MC_OCL_Ordered_Set_Type --
   -----------------------------

   function MC_OCL_Ordered_Set_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 30;
   end MC_OCL_Ordered_Set_Type;

   ----------------------------------
   -- MC_OCL_Primitive_Literal_Exp --
   ----------------------------------

   function MC_OCL_Primitive_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 31;
   end MC_OCL_Primitive_Literal_Exp;

   ------------------------------
   -- MC_OCL_Property_Call_Exp --
   ------------------------------

   function MC_OCL_Property_Call_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 32;
   end MC_OCL_Property_Call_Exp;

   -----------------------------
   -- MC_OCL_Real_Literal_Exp --
   -----------------------------

   function MC_OCL_Real_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 33;
   end MC_OCL_Real_Literal_Exp;

   --------------------------
   -- MC_OCL_Sequence_Type --
   --------------------------

   function MC_OCL_Sequence_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 34;
   end MC_OCL_Sequence_Type;

   ---------------------
   -- MC_OCL_Set_Type --
   ---------------------

   function MC_OCL_Set_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 35;
   end MC_OCL_Set_Type;

   ----------------------
   -- MC_OCL_State_Exp --
   ----------------------

   function MC_OCL_State_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 36;
   end MC_OCL_State_Exp;

   -------------------------------
   -- MC_OCL_String_Literal_Exp --
   -------------------------------

   function MC_OCL_String_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 37;
   end MC_OCL_String_Literal_Exp;

   ------------------------------------
   -- MC_OCL_Template_Parameter_Type --
   ------------------------------------

   function MC_OCL_Template_Parameter_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 38;
   end MC_OCL_Template_Parameter_Type;

   ------------------------------
   -- MC_OCL_Tuple_Literal_Exp --
   ------------------------------

   function MC_OCL_Tuple_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 39;
   end MC_OCL_Tuple_Literal_Exp;

   -------------------------------
   -- MC_OCL_Tuple_Literal_Part --
   -------------------------------

   function MC_OCL_Tuple_Literal_Part return AMF.Internals.CMOF_Element is
   begin
      return Base + 40;
   end MC_OCL_Tuple_Literal_Part;

   -----------------------
   -- MC_OCL_Tuple_Type --
   -----------------------

   function MC_OCL_Tuple_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 41;
   end MC_OCL_Tuple_Type;

   ---------------------
   -- MC_OCL_Type_Exp --
   ---------------------

   function MC_OCL_Type_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 42;
   end MC_OCL_Type_Exp;

   ------------------------------------------
   -- MC_OCL_Unlimited_Natural_Literal_Exp --
   ------------------------------------------

   function MC_OCL_Unlimited_Natural_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 43;
   end MC_OCL_Unlimited_Natural_Literal_Exp;

   ----------------------------------
   -- MC_OCL_Unspecified_Value_Exp --
   ----------------------------------

   function MC_OCL_Unspecified_Value_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 44;
   end MC_OCL_Unspecified_Value_Exp;

   ---------------------
   -- MC_OCL_Variable --
   ---------------------

   function MC_OCL_Variable return AMF.Internals.CMOF_Element is
   begin
      return Base + 45;
   end MC_OCL_Variable;

   -------------------------
   -- MC_OCL_Variable_Exp --
   -------------------------

   function MC_OCL_Variable_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 46;
   end MC_OCL_Variable_Exp;

   ----------------------
   -- MC_OCL_Void_Type --
   ----------------------

   function MC_OCL_Void_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 47;
   end MC_OCL_Void_Type;

   ------------------------------------------------------------------
   -- MP_OCL_Association_Class_Call_Exp_Referred_Association_Class --
   ------------------------------------------------------------------

   function MP_OCL_Association_Class_Call_Exp_Referred_Association_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 55;
   end MP_OCL_Association_Class_Call_Exp_Referred_Association_Class;

   -----------------------------------------------
   -- MP_OCL_Boolean_Literal_Exp_Boolean_Symbol --
   -----------------------------------------------

   function MP_OCL_Boolean_Literal_Exp_Boolean_Symbol return AMF.Internals.CMOF_Element is
   begin
      return Base + 56;
   end MP_OCL_Boolean_Literal_Exp_Boolean_Symbol;

   ----------------------------
   -- MP_OCL_Call_Exp_Source --
   ----------------------------

   function MP_OCL_Call_Exp_Source return AMF.Internals.CMOF_Element is
   begin
      return Base + 57;
   end MP_OCL_Call_Exp_Source;

   ---------------------------------
   -- MP_OCL_Collection_Item_Item --
   ---------------------------------

   function MP_OCL_Collection_Item_Item return AMF.Internals.CMOF_Element is
   begin
      return Base + 58;
   end MP_OCL_Collection_Item_Item;

   ----------------------------------------
   -- MP_OCL_Collection_Literal_Exp_Kind --
   ----------------------------------------

   function MP_OCL_Collection_Literal_Exp_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 59;
   end MP_OCL_Collection_Literal_Exp_Kind;

   ----------------------------------------
   -- MP_OCL_Collection_Literal_Exp_Part --
   ----------------------------------------

   function MP_OCL_Collection_Literal_Exp_Part return AMF.Internals.CMOF_Element is
   begin
      return Base + 48;
   end MP_OCL_Collection_Literal_Exp_Part;

   -----------------------------------
   -- MP_OCL_Collection_Range_First --
   -----------------------------------

   function MP_OCL_Collection_Range_First return AMF.Internals.CMOF_Element is
   begin
      return Base + 60;
   end MP_OCL_Collection_Range_First;

   ----------------------------------
   -- MP_OCL_Collection_Range_Last --
   ----------------------------------

   function MP_OCL_Collection_Range_Last return AMF.Internals.CMOF_Element is
   begin
      return Base + 61;
   end MP_OCL_Collection_Range_Last;

   -----------------------------------------
   -- MP_OCL_Collection_Type_Element_Type --
   -----------------------------------------

   function MP_OCL_Collection_Type_Element_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 62;
   end MP_OCL_Collection_Type_Element_Type;

   ---------------------------------------------------
   -- MP_OCL_Enum_Literal_Exp_Referred_Enum_Literal --
   ---------------------------------------------------

   function MP_OCL_Enum_Literal_Exp_Referred_Enum_Literal return AMF.Internals.CMOF_Element is
   begin
      return Base + 63;
   end MP_OCL_Enum_Literal_Exp_Referred_Enum_Literal;

   ----------------------------------------------
   -- MP_OCL_Expression_In_Ocl_Body_Expression --
   ----------------------------------------------

   function MP_OCL_Expression_In_Ocl_Body_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 64;
   end MP_OCL_Expression_In_Ocl_Body_Expression;

   -----------------------------------------------
   -- MP_OCL_Expression_In_Ocl_Context_Variable --
   -----------------------------------------------

   function MP_OCL_Expression_In_Ocl_Context_Variable return AMF.Internals.CMOF_Element is
   begin
      return Base + 65;
   end MP_OCL_Expression_In_Ocl_Context_Variable;

   ---------------------------------------------
   -- MP_OCL_Expression_In_Ocl_Generated_Type --
   ---------------------------------------------

   function MP_OCL_Expression_In_Ocl_Generated_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 66;
   end MP_OCL_Expression_In_Ocl_Generated_Type;

   -------------------------------------------------
   -- MP_OCL_Expression_In_Ocl_Parameter_Variable --
   -------------------------------------------------

   function MP_OCL_Expression_In_Ocl_Parameter_Variable return AMF.Internals.CMOF_Element is
   begin
      return Base + 49;
   end MP_OCL_Expression_In_Ocl_Parameter_Variable;

   ----------------------------------------------
   -- MP_OCL_Expression_In_Ocl_Result_Variable --
   ----------------------------------------------

   function MP_OCL_Expression_In_Ocl_Result_Variable return AMF.Internals.CMOF_Element is
   begin
      return Base + 67;
   end MP_OCL_Expression_In_Ocl_Result_Variable;

   -----------------------------
   -- MP_OCL_If_Exp_Condition --
   -----------------------------

   function MP_OCL_If_Exp_Condition return AMF.Internals.CMOF_Element is
   begin
      return Base + 68;
   end MP_OCL_If_Exp_Condition;

   -----------------------------------
   -- MP_OCL_If_Exp_Else_Expression --
   -----------------------------------

   function MP_OCL_If_Exp_Else_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 69;
   end MP_OCL_If_Exp_Else_Expression;

   -----------------------------------
   -- MP_OCL_If_Exp_Then_Expression --
   -----------------------------------

   function MP_OCL_If_Exp_Then_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 70;
   end MP_OCL_If_Exp_Then_Expression;

   -----------------------------------------------
   -- MP_OCL_Integer_Literal_Exp_Integer_Symbol --
   -----------------------------------------------

   function MP_OCL_Integer_Literal_Exp_Integer_Symbol return AMF.Internals.CMOF_Element is
   begin
      return Base + 71;
   end MP_OCL_Integer_Literal_Exp_Integer_Symbol;

   -------------------------------
   -- MP_OCL_Iterate_Exp_Result --
   -------------------------------

   function MP_OCL_Iterate_Exp_Result return AMF.Internals.CMOF_Element is
   begin
      return Base + 72;
   end MP_OCL_Iterate_Exp_Result;

   -----------------------
   -- MP_OCL_Let_Exp_In --
   -----------------------

   function MP_OCL_Let_Exp_In return AMF.Internals.CMOF_Element is
   begin
      return Base + 73;
   end MP_OCL_Let_Exp_In;

   -----------------------------
   -- MP_OCL_Let_Exp_Variable --
   -----------------------------

   function MP_OCL_Let_Exp_Variable return AMF.Internals.CMOF_Element is
   begin
      return Base + 74;
   end MP_OCL_Let_Exp_Variable;

   --------------------------
   -- MP_OCL_Loop_Exp_Body --
   --------------------------

   function MP_OCL_Loop_Exp_Body return AMF.Internals.CMOF_Element is
   begin
      return Base + 75;
   end MP_OCL_Loop_Exp_Body;

   ------------------------------
   -- MP_OCL_Loop_Exp_Iterator --
   ------------------------------

   function MP_OCL_Loop_Exp_Iterator return AMF.Internals.CMOF_Element is
   begin
      return Base + 50;
   end MP_OCL_Loop_Exp_Iterator;

   ---------------------------------
   -- MP_OCL_Message_Exp_Argument --
   ---------------------------------

   function MP_OCL_Message_Exp_Argument return AMF.Internals.CMOF_Element is
   begin
      return Base + 51;
   end MP_OCL_Message_Exp_Argument;

   -----------------------------------------
   -- MP_OCL_Message_Exp_Called_Operation --
   -----------------------------------------

   function MP_OCL_Message_Exp_Called_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 76;
   end MP_OCL_Message_Exp_Called_Operation;

   ------------------------------------
   -- MP_OCL_Message_Exp_Sent_Signal --
   ------------------------------------

   function MP_OCL_Message_Exp_Sent_Signal return AMF.Internals.CMOF_Element is
   begin
      return Base + 77;
   end MP_OCL_Message_Exp_Sent_Signal;

   -------------------------------
   -- MP_OCL_Message_Exp_Target --
   -------------------------------

   function MP_OCL_Message_Exp_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 78;
   end MP_OCL_Message_Exp_Target;

   --------------------------------------------
   -- MP_OCL_Message_Type_Referred_Operation --
   --------------------------------------------

   function MP_OCL_Message_Type_Referred_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 79;
   end MP_OCL_Message_Type_Referred_Operation;

   -----------------------------------------
   -- MP_OCL_Message_Type_Referred_Signal --
   -----------------------------------------

   function MP_OCL_Message_Type_Referred_Signal return AMF.Internals.CMOF_Element is
   begin
      return Base + 80;
   end MP_OCL_Message_Type_Referred_Signal;

   --------------------------------------------------
   -- MP_OCL_Navigation_Call_Exp_Navigation_Source --
   --------------------------------------------------

   function MP_OCL_Navigation_Call_Exp_Navigation_Source return AMF.Internals.CMOF_Element is
   begin
      return Base + 81;
   end MP_OCL_Navigation_Call_Exp_Navigation_Source;

   ------------------------------------------
   -- MP_OCL_Navigation_Call_Exp_Qualifier --
   ------------------------------------------

   function MP_OCL_Navigation_Call_Exp_Qualifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 52;
   end MP_OCL_Navigation_Call_Exp_Qualifier;

   ----------------------------------------
   -- MP_OCL_Operation_Call_Exp_Argument --
   ----------------------------------------

   function MP_OCL_Operation_Call_Exp_Argument return AMF.Internals.CMOF_Element is
   begin
      return Base + 53;
   end MP_OCL_Operation_Call_Exp_Argument;

   --------------------------------------------------
   -- MP_OCL_Operation_Call_Exp_Referred_Operation --
   --------------------------------------------------

   function MP_OCL_Operation_Call_Exp_Referred_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 82;
   end MP_OCL_Operation_Call_Exp_Referred_Operation;

   ------------------------------------------------
   -- MP_OCL_Property_Call_Exp_Referred_Property --
   ------------------------------------------------

   function MP_OCL_Property_Call_Exp_Referred_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 83;
   end MP_OCL_Property_Call_Exp_Referred_Property;

   -----------------------------------------
   -- MP_OCL_Real_Literal_Exp_Real_Symbol --
   -----------------------------------------

   function MP_OCL_Real_Literal_Exp_Real_Symbol return AMF.Internals.CMOF_Element is
   begin
      return Base + 84;
   end MP_OCL_Real_Literal_Exp_Real_Symbol;

   -------------------------------------
   -- MP_OCL_State_Exp_Referred_State --
   -------------------------------------

   function MP_OCL_State_Exp_Referred_State return AMF.Internals.CMOF_Element is
   begin
      return Base + 85;
   end MP_OCL_State_Exp_Referred_State;

   ---------------------------------------------
   -- MP_OCL_String_Literal_Exp_String_Symbol --
   ---------------------------------------------

   function MP_OCL_String_Literal_Exp_String_Symbol return AMF.Internals.CMOF_Element is
   begin
      return Base + 86;
   end MP_OCL_String_Literal_Exp_String_Symbol;

   --------------------------------------------------
   -- MP_OCL_Template_Parameter_Type_Specification --
   --------------------------------------------------

   function MP_OCL_Template_Parameter_Type_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 87;
   end MP_OCL_Template_Parameter_Type_Specification;

   -----------------------------------
   -- MP_OCL_Tuple_Literal_Exp_Part --
   -----------------------------------

   function MP_OCL_Tuple_Literal_Exp_Part return AMF.Internals.CMOF_Element is
   begin
      return Base + 54;
   end MP_OCL_Tuple_Literal_Exp_Part;

   -----------------------------------------
   -- MP_OCL_Tuple_Literal_Part_Attribute --
   -----------------------------------------

   function MP_OCL_Tuple_Literal_Part_Attribute return AMF.Internals.CMOF_Element is
   begin
      return Base + 88;
   end MP_OCL_Tuple_Literal_Part_Attribute;

   -----------------------------------
   -- MP_OCL_Type_Exp_Referred_Type --
   -----------------------------------

   function MP_OCL_Type_Exp_Referred_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 89;
   end MP_OCL_Type_Exp_Referred_Type;

   -------------------------------------------------------------------
   -- MP_OCL_Unlimited_Natural_Literal_Exp_Unlimited_Natural_Symbol --
   -------------------------------------------------------------------

   function MP_OCL_Unlimited_Natural_Literal_Exp_Unlimited_Natural_Symbol return AMF.Internals.CMOF_Element is
   begin
      return Base + 90;
   end MP_OCL_Unlimited_Natural_Literal_Exp_Unlimited_Natural_Symbol;

   -------------------------------------
   -- MP_OCL_Variable_Init_Expression --
   -------------------------------------

   function MP_OCL_Variable_Init_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 91;
   end MP_OCL_Variable_Init_Expression;

   -------------------------------------------
   -- MP_OCL_Variable_Represented_Parameter --
   -------------------------------------------

   function MP_OCL_Variable_Represented_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 92;
   end MP_OCL_Variable_Represented_Parameter;

   -------------------------------------------
   -- MP_OCL_Variable_Exp_Referred_Variable --
   -------------------------------------------

   function MP_OCL_Variable_Exp_Referred_Variable return AMF.Internals.CMOF_Element is
   begin
      return Base + 93;
   end MP_OCL_Variable_Exp_Referred_Variable;

   ---------------------------------------------
   -- MA_OCL_Ocl_Expression_First_First_Owner --
   ---------------------------------------------

   function MA_OCL_Ocl_Expression_First_First_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 94;
   end MA_OCL_Ocl_Expression_First_First_Owner;

   -------------------------------------------
   -- MA_OCL_State_Referred_State_State_Exp --
   -------------------------------------------

   function MA_OCL_State_Referred_State_State_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 95;
   end MA_OCL_State_Referred_State_State_Exp;

   -------------------------------------------
   -- MA_OCL_Ocl_Expression_Last_Last_Owner --
   -------------------------------------------

   function MA_OCL_Ocl_Expression_Last_Last_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 96;
   end MA_OCL_Ocl_Expression_Last_Last_Owner;

   ----------------------------------------------------
   -- MA_OCL_Property_Referred_Property_Refering_Exp --
   ----------------------------------------------------

   function MA_OCL_Property_Referred_Property_Refering_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 97;
   end MA_OCL_Property_Referred_Property_Refering_Exp;

   ----------------------------------------------------
   -- MA_OCL_Classifier_Element_Type_Collection_Type --
   ----------------------------------------------------

   function MA_OCL_Classifier_Element_Type_Collection_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 98;
   end MA_OCL_Classifier_Element_Type_Collection_Type;

   ------------------------------------------------------
   -- MA_OCL_Tuple_Literal_Part_Part_Tuple_Literal_Exp --
   ------------------------------------------------------

   function MA_OCL_Tuple_Literal_Part_Part_Tuple_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 99;
   end MA_OCL_Tuple_Literal_Part_Part_Tuple_Literal_Exp;

   ----------------------------------------------------
   -- MA_OCL_Variable_Referred_Variable_Refering_Exp --
   ----------------------------------------------------

   function MA_OCL_Variable_Referred_Variable_Refering_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 100;
   end MA_OCL_Variable_Referred_Variable_Refering_Exp;

   ----------------------------------------------
   -- MA_OCL_Classifier_Referred_Type_Type_Exp --
   ----------------------------------------------

   function MA_OCL_Classifier_Referred_Type_Type_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 101;
   end MA_OCL_Classifier_Referred_Type_Type_Exp;

   --------------------------------------------------
   -- MA_OCL_Ocl_Expression_Source_Applied_Element --
   --------------------------------------------------

   function MA_OCL_Ocl_Expression_Source_Applied_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 102;
   end MA_OCL_Ocl_Expression_Source_Applied_Element;

   ----------------------------------------------------------
   -- MA_OCL_Ocl_Expression_Body_Expression_Top_Expression --
   ----------------------------------------------------------

   function MA_OCL_Ocl_Expression_Body_Expression_Top_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 103;
   end MA_OCL_Ocl_Expression_Body_Expression_Top_Expression;

   ------------------------------------------------
   -- MA_OCL_Ocl_Expression_Body_Loop_Body_Owner --
   ------------------------------------------------

   function MA_OCL_Ocl_Expression_Body_Loop_Body_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 104;
   end MA_OCL_Ocl_Expression_Body_Loop_Body_Owner;

   -------------------------------------------------
   -- MA_OCL_Variable_Context_Variable_Self_Owner --
   -------------------------------------------------

   function MA_OCL_Variable_Context_Variable_Self_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 105;
   end MA_OCL_Variable_Context_Variable_Self_Owner;

   ---------------------------------------
   -- MA_OCL_Variable_Iterator_Loop_Exp --
   ---------------------------------------

   function MA_OCL_Variable_Iterator_Loop_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 106;
   end MA_OCL_Variable_Iterator_Loop_Exp;

   ------------------------------------------------
   -- MA_OCL_Signal_Referred_Signal_Message_Type --
   ------------------------------------------------

   function MA_OCL_Signal_Referred_Signal_Message_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 107;
   end MA_OCL_Signal_Referred_Signal_Message_Type;

   --------------------------------------------------
   -- MA_OCL_Variable_Result_Variable_Result_Owner --
   --------------------------------------------------

   function MA_OCL_Variable_Result_Variable_Result_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 108;
   end MA_OCL_Variable_Result_Variable_Result_Owner;

   ------------------------------------------------------
   -- MA_OCL_Operation_Referred_Operation_Message_Type --
   ------------------------------------------------------

   function MA_OCL_Operation_Referred_Operation_Message_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 109;
   end MA_OCL_Operation_Referred_Operation_Message_Type;

   --------------------------------------------------
   -- MA_OCL_Variable_Parameter_Variable_Var_Owner --
   --------------------------------------------------

   function MA_OCL_Variable_Parameter_Variable_Var_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 110;
   end MA_OCL_Variable_Parameter_Variable_Var_Owner;

   --------------------------------------------------------
   -- MA_OCL_Classifier_Generated_Type_Owning_Classifier --
   --------------------------------------------------------

   function MA_OCL_Classifier_Generated_Type_Owning_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 111;
   end MA_OCL_Classifier_Generated_Type_Owning_Classifier;

   ------------------------------------------------------------------
   -- MA_OCL_Enumeration_Literal_Referred_Enum_Literal_Literal_Exp --
   ------------------------------------------------------------------

   function MA_OCL_Enumeration_Literal_Referred_Enum_Literal_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 112;
   end MA_OCL_Enumeration_Literal_Referred_Enum_Literal_Literal_Exp;

   --------------------------------------------------
   -- MA_OCL_Property_Attribute_Tuple_Literal_Part --
   --------------------------------------------------

   function MA_OCL_Property_Attribute_Tuple_Literal_Part return AMF.Internals.CMOF_Element is
   begin
      return Base + 113;
   end MA_OCL_Property_Attribute_Tuple_Literal_Part;

   ------------------------------------------------
   -- MA_OCL_Ocl_Expression_Qualifier_Parent_Nav --
   ------------------------------------------------

   function MA_OCL_Ocl_Expression_Qualifier_Parent_Nav return AMF.Internals.CMOF_Element is
   begin
      return Base + 114;
   end MA_OCL_Ocl_Expression_Qualifier_Parent_Nav;

   ------------------------------------------------
   -- MA_OCL_Ocl_Expression_Argument_Parent_Call --
   ------------------------------------------------

   function MA_OCL_Ocl_Expression_Argument_Parent_Call return AMF.Internals.CMOF_Element is
   begin
      return Base + 115;
   end MA_OCL_Ocl_Expression_Argument_Parent_Call;

   -----------------------------------------------------------
   -- MA_OCL_Property_Navigation_Source_Navigation_Call_Exp --
   -----------------------------------------------------------

   function MA_OCL_Property_Navigation_Source_Navigation_Call_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 116;
   end MA_OCL_Property_Navigation_Source_Navigation_Call_Exp;

   ------------------------------------------------------
   -- MA_OCL_Operation_Referred_Operation_Refering_Exp --
   ------------------------------------------------------

   function MA_OCL_Operation_Referred_Operation_Refering_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 117;
   end MA_OCL_Operation_Referred_Operation_Refering_Exp;

   ----------------------------------------------
   -- MA_OCL_Ocl_Expression_Condition_If_Owner --
   ----------------------------------------------

   function MA_OCL_Ocl_Expression_Condition_If_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 118;
   end MA_OCL_Ocl_Expression_Condition_If_Owner;

   ------------------------------------------------------
   -- MA_OCL_Ocl_Expression_Then_Expression_Then_Owner --
   ------------------------------------------------------

   function MA_OCL_Ocl_Expression_Then_Expression_Then_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 119;
   end MA_OCL_Ocl_Expression_Then_Expression_Then_Owner;

   -----------------------------------------------------------------------
   -- MA_OCL_Association_Class_Referred_Association_Class_Referring_Exp --
   -----------------------------------------------------------------------

   function MA_OCL_Association_Class_Referred_Association_Class_Referring_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 120;
   end MA_OCL_Association_Class_Referred_Association_Class_Referring_Exp;

   ------------------------------------------------------
   -- MA_OCL_Ocl_Expression_Else_Expression_Else_Owner --
   ------------------------------------------------------

   function MA_OCL_Ocl_Expression_Else_Expression_Else_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 121;
   end MA_OCL_Ocl_Expression_Else_Expression_Else_Owner;

   -------------------------------------
   -- MA_OCL_Variable_Result_Base_Exp --
   -------------------------------------

   function MA_OCL_Variable_Result_Base_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 122;
   end MA_OCL_Variable_Result_Base_Exp;

   --------------------------------------
   -- MA_OCL_Ocl_Expression_In_Let_Exp --
   --------------------------------------

   function MA_OCL_Ocl_Expression_In_Let_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 123;
   end MA_OCL_Ocl_Expression_In_Let_Exp;

   ----------------------------------------------
   -- MA_OCL_Ocl_Expression_Target_Message_Exp --
   ----------------------------------------------

   function MA_OCL_Ocl_Expression_Target_Message_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 124;
   end MA_OCL_Ocl_Expression_Target_Message_Exp;

   ----------------------------------------------------------------
   -- MA_OCL_Collection_Literal_Part_Part_Collection_Literal_Exp --
   ----------------------------------------------------------------

   function MA_OCL_Collection_Literal_Part_Part_Collection_Literal_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 125;
   end MA_OCL_Collection_Literal_Part_Part_Collection_Literal_Exp;

   ------------------------------------------------
   -- MA_OCL_Ocl_Expression_Argument_Message_Exp --
   ------------------------------------------------

   function MA_OCL_Ocl_Expression_Argument_Message_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 126;
   end MA_OCL_Ocl_Expression_Argument_Message_Exp;

   --------------------------------------
   -- MA_OCL_Variable_Variable_Let_Exp --
   --------------------------------------

   function MA_OCL_Variable_Variable_Let_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 127;
   end MA_OCL_Variable_Variable_Let_Exp;

   ---------------------------------------------------------------
   -- MA_OCL_Call_Operation_Action_Called_Operation_Message_Exp --
   ---------------------------------------------------------------

   function MA_OCL_Call_Operation_Action_Called_Operation_Message_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 128;
   end MA_OCL_Call_Operation_Action_Called_Operation_Message_Exp;

   ------------------------------------------------
   -- MA_OCL_Ocl_Expression_Item_Collection_Item --
   ------------------------------------------------

   function MA_OCL_Ocl_Expression_Item_Collection_Item return AMF.Internals.CMOF_Element is
   begin
      return Base + 129;
   end MA_OCL_Ocl_Expression_Item_Collection_Item;

   ---------------------------------------------------------------
   -- MA_OCL_Ocl_Expression_Init_Expression_Initialized_Element --
   ---------------------------------------------------------------

   function MA_OCL_Ocl_Expression_Init_Expression_Initialized_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 130;
   end MA_OCL_Ocl_Expression_Init_Expression_Initialized_Element;

   -------------------------------------------------------
   -- MA_OCL_Send_Signal_Action_Sent_Signal_Message_Exp --
   -------------------------------------------------------

   function MA_OCL_Send_Signal_Action_Sent_Signal_Message_Exp return AMF.Internals.CMOF_Element is
   begin
      return Base + 131;
   end MA_OCL_Send_Signal_Action_Sent_Signal_Message_Exp;

   -----------------------------------------------------
   -- MA_OCL_Parameter_Represented_Parameter_Variable --
   -----------------------------------------------------

   function MA_OCL_Parameter_Represented_Parameter_Variable return AMF.Internals.CMOF_Element is
   begin
      return Base + 132;
   end MA_OCL_Parameter_Represented_Parameter_Variable;

   ------------
   -- MB_OCL --
   ------------

   function MB_OCL return AMF.Internals.AMF_Element is
   begin
      return Base;
   end MB_OCL;

   ------------
   -- MB_OCL --
   ------------

   function ML_OCL return AMF.Internals.AMF_Element is
   begin
      return Base + 178;
   end ML_OCL;

   ------------------------
   -- Initialize_Objects --
   ------------------------

   procedure Initialize_Objects is
      Extent : constant AMF.Internals.AMF_Extent
        := AMF.Internals.Extents.Allocate_Extent
            (AMF.Internals.Tables.OCL_String_Data_00.MS_003E'Access);
      Aux    : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
      Base := Aux - 1;

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Package;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Enumeration;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 1,
        AMF.Internals.Tables.OCL_String_Data_00.MS_001C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 1, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 2,
        AMF.Internals.Tables.OCL_String_Data_00.MS_003F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 2, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 3,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0035'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 3, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 4,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0001'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 4, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 5, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 5,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0072'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 5, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 6,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0044'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 6, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 7,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0039'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 7, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 8, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 8,
        AMF.Internals.Tables.OCL_String_Data_00.MS_002D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 8, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 9,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0017'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 9, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 10,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0045'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 10, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 11,
        AMF.Internals.Tables.OCL_String_Data_00.MS_001A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 11, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 12,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0020'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 12, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 13, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 13,
        AMF.Internals.Tables.OCL_String_Data_00.MS_003A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 13, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 14,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0040'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 14, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 15,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0036'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 15, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 16,
        AMF.Internals.Tables.OCL_String_Data_00.MS_001D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 16, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 17,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0009'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 17, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 18,
        AMF.Internals.Tables.OCL_String_Data_00.MS_002F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 18, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 19,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0069'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 19, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 20,
        AMF.Internals.Tables.OCL_String_Data_00.MS_005A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 20, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 21, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 21,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0006'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 21, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 22, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 22,
        AMF.Internals.Tables.OCL_String_Data_00.MS_006C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 22, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 23,
        AMF.Internals.Tables.OCL_String_Data_00.MS_006F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 23, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 24,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0029'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 24, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 25, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 25,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0043'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 25, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 26,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0026'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 26, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 27, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 27,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0065'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 27, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 28, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 28,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0041'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 28, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 29,
        AMF.Internals.Tables.OCL_String_Data_00.MS_004C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 29, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 30,
        AMF.Internals.Tables.OCL_String_Data_00.MS_003B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 30, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 31, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 31,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0055'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 31, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 32,
        AMF.Internals.Tables.OCL_String_Data_00.MS_000C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 32, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 33,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0050'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 33, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 34,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0068'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 34, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 35,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0073'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 35, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 36,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0049'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 36, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 37,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0058'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 37, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 38,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0059'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 38, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 39,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0054'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 39, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 40,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0016'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 40, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 41,
        AMF.Internals.Tables.OCL_String_Data_00.MS_004A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 41, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 42,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0007'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 42, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 43,
        AMF.Internals.Tables.OCL_String_Data_00.MS_006A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 43, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 44,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0056'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 44, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 45,
        AMF.Internals.Tables.OCL_String_Data_00.MS_000F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 45, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 46,
        AMF.Internals.Tables.OCL_String_Data_00.MS_000A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 46, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 47,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0034'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 47, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 48, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 48, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 48, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 48,
        AMF.Internals.Tables.OCL_String_Data_00.MS_005C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 48, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 48, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 49, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 49, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 49, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 49,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0032'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 49, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 49, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 50, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 50, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 50, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 50,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0057'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 50, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 50, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 51, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 51, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 51, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 51,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 51, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 51, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 52, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 52, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 52, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 52,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0061'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 52, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 52, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 53, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 53, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 53, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 53,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 53, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 53, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 54, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 54, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 54, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 54,
        AMF.Internals.Tables.OCL_String_Data_00.MS_005C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 54, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 54, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 55, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 55,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0000'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 55, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 56,
        AMF.Internals.Tables.OCL_String_Data_00.MS_002C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 56, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 57, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 57, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 57,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0070'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 57, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 58, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 58,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0014'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 58, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 59,
        AMF.Internals.Tables.OCL_String_Data_00.MS_004F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 59, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 60, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 60,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0064'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 60, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 61, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 61,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0063'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 61, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 62,
        AMF.Internals.Tables.OCL_String_Data_00.MS_005B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 62, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 63, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 63,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0074'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 63, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 64, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 64,
        AMF.Internals.Tables.OCL_String_Data_00.MS_001F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 64, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 65, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 65, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 65,
        AMF.Internals.Tables.OCL_String_Data_00.MS_003C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 65, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 66, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 66, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 66,
        AMF.Internals.Tables.OCL_String_Data_00.MS_002A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 66, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 67, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 67, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 67,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0022'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 67, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 68, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 68,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0030'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 68, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 69, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 69,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0037'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 69, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 70, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 70,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0025'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 70, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 71,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0018'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 71, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 72, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 72, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 72,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0023'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 72, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 73, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 73,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0047'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 73, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 74, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 74,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0053'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 74, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 75, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 75,
        AMF.Internals.Tables.OCL_String_Data_00.MS_004E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 75, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 76, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 76, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 76,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0003'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 76, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 77, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 77, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 77,
        AMF.Internals.Tables.OCL_String_Data_00.MS_004B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 77, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 78, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 78,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0038'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 78, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 79, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 79,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0019'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 79, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 80, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 80,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0010'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 80, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 81, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 81,
        AMF.Internals.Tables.OCL_String_Data_00.MS_002E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 81, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 82, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 82,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0019'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 82, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 83, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 83,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0015'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 83, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 84,
        AMF.Internals.Tables.OCL_String_Data_00.MS_000E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 84, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 85, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 85,
        AMF.Internals.Tables.OCL_String_Data_00.MS_005E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 85, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 86,
        AMF.Internals.Tables.OCL_String_Data_00.MS_001B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 86, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 87, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 87,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0033'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 87, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 88, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 88,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0027'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 88, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 89, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 89,
        AMF.Internals.Tables.OCL_String_Data_00.MS_004D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 89, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 90,
        AMF.Internals.Tables.OCL_String_Data_00.MS_003D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 90, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 91, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 91, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 91,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0024'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 91, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 92, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 92,
        AMF.Internals.Tables.OCL_String_Data_00.MS_000D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 92, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 93, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 93,
        AMF.Internals.Tables.OCL_String_Data_00.MS_006D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 93, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 94, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 95, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 96, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 97, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 98, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 99, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 100, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 101, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 102, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 103, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 104, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 105, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 106, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 107, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 108, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 109, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 110, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 111, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 112, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 113, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 114, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 115, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 116, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 117, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 118, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 119, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 120, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 121, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 122, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 123, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 124, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 125, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 126, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 127, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 128, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 129, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 130, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 131, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 132, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 133,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0002'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Uri
       (Base + 133,
        AMF.Internals.Tables.OCL_String_Data_00.MS_003E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 133, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 134, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 134,
        AMF.Internals.Tables.OCL_String_Data_00.MS_002B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 134, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 135,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0021'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 135, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 136,
        AMF.Internals.Tables.OCL_String_Data_00.MS_005D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 136, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 137,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0075'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 137, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 138,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0046'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 138, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 139,
        AMF.Internals.Tables.OCL_String_Data_00.MS_001E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 139, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 140,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0052'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 140, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 141, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 141,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0008'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 141, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 141, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 142, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 142,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0062'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 142, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 143, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 143,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0012'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 143, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 144, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 144,
        AMF.Internals.Tables.OCL_String_Data_00.MS_005F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 144, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 145, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 145, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 146, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 146, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 147, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 147,
        AMF.Internals.Tables.OCL_String_Data_00.MS_006E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 147, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 148, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 148,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0053'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 148, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 148, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 149, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 149,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0071'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 149, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 149, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 150, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 150,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0071'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 150, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 150, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 151, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 151, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 151, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 152, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 152,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0051'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 152, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 153, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 153,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0042'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 153, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 154, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 154,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0005'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 154, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 155, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 155,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0071'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 155, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 155, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 156, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 156,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0066'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 156, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 157, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 158, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 158, (False, AMF.CMOF.Private_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 159, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 159,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0031'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 159, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 160, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 160,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 160, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 161, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 161, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 162, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 162,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0048'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 162, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 163, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 163,
        AMF.Internals.Tables.OCL_String_Data_00.MS_006B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 163, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 164, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 164,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0004'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 164, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 165, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 165,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0028'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 165, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 166, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 166,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0013'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 166, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 167, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 167, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 168, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 168,
        AMF.Internals.Tables.OCL_String_Data_00.MS_0060'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 168, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 169, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 169, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 169, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 170, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 170,
        AMF.Internals.Tables.OCL_String_Data_00.MS_000B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 170, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 170, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 171, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 171, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 172, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 172, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 173, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 173, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 173, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 174, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 174, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 174, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 175, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 175, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 175, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 176, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 176, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 176, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 177, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 177, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 177, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 178, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 178, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 178, (False, AMF.CMOF.Public_Visibility));
   end Initialize_Objects;

   ----------------------
   -- Initialize_Links --
   ----------------------

   procedure Initialize_Links is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Typed_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Typed_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Typed_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Data_Type,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Data_Type,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Data_Type,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Opaque_Expression,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Opaque_Expression,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Opaque_Expression,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Typed_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Typed_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Typed_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Typed_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Typed_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Typed_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Data_Type,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Data_Type,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Data_Type,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Typed_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Typed_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Typed_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Association_Class,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Boolean,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Enumeration_Literal,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Integer,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Call_Operation_Action,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Send_Signal_Action,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Operation,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Signal,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Property,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Operation,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Property,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Real,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_State,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Property,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Unlimited_Natural,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Parameter,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 174,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 174,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 174,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
   end Initialize_Links;

end AMF.Internals.Tables.OCL_Metamodel;
