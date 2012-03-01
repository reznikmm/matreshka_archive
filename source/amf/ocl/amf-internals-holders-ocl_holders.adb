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
with AMF.Elements;
with AMF.Holders.Elements;

package body AMF.Internals.Holders.OCL_Holders is

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Any_Types.OCL_Any_Type_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Bag_Types.OCL_Bag_Type_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Collection_Items.OCL_Collection_Item_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Collection_Types.OCL_Collection_Type_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.If_Exps.OCL_If_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Let_Exps.OCL_Let_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Message_Exps.OCL_Message_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Message_Types.OCL_Message_Type_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Set_Types.OCL_Set_Type_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.State_Exps.OCL_State_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Type_Exps.OCL_Type_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Variables.OCL_Variable_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.OCL.Void_Types.OCL_Void_Type_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

end AMF.Internals.Holders.OCL_Holders;
