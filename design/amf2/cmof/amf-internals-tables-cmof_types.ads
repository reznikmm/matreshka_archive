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
--  Datatypes to use in internal representation of the models.
------------------------------------------------------------------------------
with Interfaces;

with Matreshka.Internals.Strings;

with AMF.CMOF;
with AMF.Elements;

package AMF.Internals.Tables.CMOF_Types is

   pragma Preelaborate;

   --  Node kinds enumeration is constructed on the base of Class_Kinds by
   --  excluding all abstract classes and adding N_None.

   type Element_Kinds is
     (E_None,
      E_Association,
      E_Class,
      E_Comment,
      E_Constraint,
      E_Data_Type,
      E_Element_Import,
      E_Enumeration,
      E_Enumeration_Literal,
      E_Expression,
      E_Opaque_Expression,
      E_Operation,
      E_Package,
      E_Package_Import,
      E_Package_Merge,
      E_Parameter,
      E_Primitive_Type,
      E_Property,
      E_Tag);

   subtype Class_Element_Kinds is Element_Kinds
     range E_Association .. E_Tag;

   type Collection_Index is new Interfaces.Integer_8;
   type Member_Index is new Interfaces.Integer_8;

   type Member_Kinds is
    (M_None,
     M_Element,
     M_Collection_Of_Element,
     M_Boolean,
     M_Integer,
     M_Integer_Holder,
     M_Unlimited_Natural,
     M_Unlimited_Natural_Holder,
     M_String,
     M_Collection_Of_String,
     M_Parameter_Direction_Kind,
     M_Visibility_Kind,
     M_Visibility_Holder_Kind);

   type Member_Record (Kind : Member_Kinds := M_None) is record
      case Kind is
         when M_None =>
            null;

         when M_Element =>
            Element : CMOF_Element;

         when M_Collection_Of_Element =>
            Collection : AMF.Internals.AMF_Collection_Of_Element;

         when M_Boolean =>
            Boolean_Value : Boolean;

         when M_Integer_Holder =>
            Integer_Holder_Value : AMF.Optional_Integer;

         when M_Integer =>
            Integer_Value : Integer;

         when M_Unlimited_Natural =>
            Natural_Value : AMF.Unlimited_Natural;

         when M_Unlimited_Natural_Holder =>
            Natural_Holder_Value : AMF.Optional_Unlimited_Natural;

         when M_String =>
            String_Value : Matreshka.Internals.Strings.Shared_String_Access;

         when M_Collection_Of_String =>
            String_Collection_Value : AMF.CMOF.Collection_Of_String;

         when M_Parameter_Direction_Kind =>
            Parameter_Direction_Value : AMF.CMOF.CMOF_Parameter_Direction_Kind;

         when M_Visibility_Kind =>
            Visibility_Value : AMF.CMOF.CMOF_Visibility_Kind;

         when M_Visibility_Holder_Kind =>
            Visibility_Holder_Value : AMF.CMOF.Optional_CMOF_Visibility_Kind;
      end case;
   end record;

   type Member_Array is array (Natural range 0 .. 21) of Member_Record;
   --  XXX Size of this array must be generated.

   type Element_Record (Kind : Element_Kinds := E_None) is record
      case Kind is
         when E_None =>
            null;

         when others =>
            Extent   : AMF_Extent;
            Proxy    : AMF.Elements.Element_Access;
            Member   : Member_Array;
            --  First element (with index 0) contains index of first collection
            --  of class instance. To save space all class's collections have
            --  sequential numbers, thus we need to store only first one. This
            --  first collection is used to establish links with other classes
            --  when correspondig association end is not owned by the class.
      end case;
   end record;

end AMF.Internals.Tables.CMOF_Types;
