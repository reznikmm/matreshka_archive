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
with AMF.Elements;
with AMF.OCL;
with AMF.UML;
with Matreshka.Internals.Strings;

package AMF.Internals.Tables.OCL_Types is

   pragma Preelaborate;

   type Element_Kinds is
    (E_None,
     E_OCL_Any_Type,
     E_OCL_Association_Class_Call_Exp,
     E_OCL_Bag_Type,
     E_OCL_Boolean_Literal_Exp,
     E_OCL_Collection_Item,
     E_OCL_Collection_Literal_Exp,
     E_OCL_Collection_Range,
     E_OCL_Collection_Type,
     E_OCL_Enum_Literal_Exp,
     E_OCL_Expression_In_Ocl,
     E_OCL_If_Exp,
     E_OCL_Integer_Literal_Exp,
     E_OCL_Invalid_Literal_Exp,
     E_OCL_Invalid_Type,
     E_OCL_Iterate_Exp,
     E_OCL_Iterator_Exp,
     E_OCL_Let_Exp,
     E_OCL_Message_Exp,
     E_OCL_Message_Type,
     E_OCL_Null_Literal_Exp,
     E_OCL_Operation_Call_Exp,
     E_OCL_Ordered_Set_Type,
     E_OCL_Property_Call_Exp,
     E_OCL_Real_Literal_Exp,
     E_OCL_Sequence_Type,
     E_OCL_Set_Type,
     E_OCL_State_Exp,
     E_OCL_String_Literal_Exp,
     E_OCL_Template_Parameter_Type,
     E_OCL_Tuple_Literal_Exp,
     E_OCL_Tuple_Literal_Part,
     E_OCL_Tuple_Type,
     E_OCL_Type_Exp,
     E_OCL_Unlimited_Natural_Literal_Exp,
     E_OCL_Unspecified_Value_Exp,
     E_OCL_Variable,
     E_OCL_Variable_Exp,
     E_OCL_Void_Type);

   type Member_Kinds is
    (M_None,
     M_Boolean,
     M_Collection_Kind,
     M_Collection_Of_Element,
     M_Collection_Of_String,
     M_Element,
     M_Integer,
     M_Real,
     M_String,
     M_Unlimited_Natural,
     M_Visibility_Kind,
     M_Visibility_Kind_Holder);

   type Member_Record (Kind : Member_Kinds := M_None) is record
      case Kind is
         when M_None =>
            null;

         when M_Boolean =>
            Boolean_Value : Boolean;

         when M_Collection_Kind =>
            Collection_Kind_Value : AMF.OCL.OCL_Collection_Kind;

         when M_Collection_Of_Element =>
            Collection : AMF.Internals.AMF_Collection_Of_Element;

         when M_Collection_Of_String =>
            String_Collection : AMF.Internals.AMF_Collection_Of_String;

         when M_Element =>
            Link : AMF.Internals.AMF_Link;

         when M_Integer =>
            Integer_Value : Integer;

         when M_Real =>
            Real_Value : AMF.Real;

         when M_String =>
            String_Value : Matreshka.Internals.Strings.Shared_String_Access;

         when M_Unlimited_Natural =>
            Unlimited_Natural_Value : AMF.Unlimited_Natural;

         when M_Visibility_Kind =>
            Visibility_Kind_Value : AMF.UML.UML_Visibility_Kind;

         when M_Visibility_Kind_Holder =>
            Visibility_Kind_Holder : AMF.UML.Optional_UML_Visibility_Kind;
      end case;
   end record;

   type Member_Array is array (Natural range 0 .. 18) of Member_Record;

   type Element_Record is record
      Kind   : Element_Kinds := E_None;
      Extent : AMF.Internals.AMF_Extent;
      Proxy  : AMF.Elements.Element_Access;
      Member : Member_Array;
   end record;

end AMF.Internals.Tables.OCL_Types;
