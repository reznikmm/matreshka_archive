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
with AMF.Internals.Tables.MOF_String_Data_00;
with AMF.Internals.Tables.Primitive_Types_Metamodel;
with AMF.Internals.Tables.UML_Metamodel;

package body AMF.Internals.Tables.MOF_Metamodel is

   Base : AMF.Internals.CMOF_Element := 0;

   ----------------
   -- MM_MOF_MOF --
   ----------------

   function MM_MOF_MOF return AMF.Internals.CMOF_Element is
   begin
      return Base + 8;
   end MM_MOF_MOF;

   ----------------
   -- MC_MOF_Tag --
   ----------------

   function MC_MOF_Tag return AMF.Internals.CMOF_Element is
   begin
      return Base + 1;
   end MC_MOF_Tag;

   ------------------------
   -- MP_MOF_Tag_Element --
   ------------------------

   function MP_MOF_Tag_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 2;
   end MP_MOF_Tag_Element;

   ---------------------
   -- MP_MOF_Tag_Name --
   ---------------------

   function MP_MOF_Tag_Name return AMF.Internals.CMOF_Element is
   begin
      return Base + 3;
   end MP_MOF_Tag_Name;

   --------------------------
   -- MP_MOF_Tag_Tag_Owner --
   --------------------------

   function MP_MOF_Tag_Tag_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 4;
   end MP_MOF_Tag_Tag_Owner;

   ----------------------
   -- MP_MOF_Tag_Value --
   ----------------------

   function MP_MOF_Tag_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 5;
   end MP_MOF_Tag_Value;

   --------------------------------
   -- MA_MOF_Element_Element_Tag --
   --------------------------------

   function MA_MOF_Element_Element_Tag return AMF.Internals.CMOF_Element is
   begin
      return Base + 6;
   end MA_MOF_Element_Element_Tag;

   ----------------------------------------
   -- MA_MOF_Element_Tag_Owner_Owned_Tag --
   ----------------------------------------

   function MA_MOF_Element_Tag_Owner_Owned_Tag return AMF.Internals.CMOF_Element is
   begin
      return Base + 7;
   end MA_MOF_Element_Tag_Owner_Owned_Tag;

   ------------
   -- MB_MOF --
   ------------

   function MB_MOF return AMF.Internals.AMF_Element is
   begin
      return Base;
   end MB_MOF;

   ------------
   -- MB_MOF --
   ------------

   function ML_MOF return AMF.Internals.AMF_Element is
   begin
      return Base + 11;
   end ML_MOF;

   ------------------------
   -- Initialize_Objects --
   ------------------------

   procedure Initialize_Objects is
      Extent : constant AMF.Internals.AMF_Extent
        := AMF.Internals.Extents.Allocate_Extent
            (AMF.Internals.Tables.MOF_String_Data_00.MS_0003'Access);
      Aux    : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
      Base := Aux - 1;

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

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Package;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 1,
        AMF.Internals.Tables.MOF_String_Data_00.MS_0005'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 1, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 2, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 2,
        AMF.Internals.Tables.MOF_String_Data_00.MS_0001'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 2, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 2, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 3,
        AMF.Internals.Tables.MOF_String_Data_00.MS_0008'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 3, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 4, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 4,
        AMF.Internals.Tables.MOF_String_Data_00.MS_0007'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 4, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 5,
        AMF.Internals.Tables.MOF_String_Data_00.MS_0000'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 5, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 6,
        AMF.Internals.Tables.MOF_String_Data_00.MS_0002'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 6, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 7,
        AMF.Internals.Tables.MOF_String_Data_00.MS_000A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 7, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 8,
        AMF.Internals.Tables.MOF_String_Data_00.MS_0006'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Uri
       (Base + 8,
        AMF.Internals.Tables.MOF_String_Data_00.MS_0003'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 8, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 9,
        AMF.Internals.Tables.MOF_String_Data_00.MS_0009'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 9, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 10, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 10, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 10,
        AMF.Internals.Tables.MOF_String_Data_00.MS_000B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 10, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 10, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 11,
        AMF.Internals.Tables.MOF_String_Data_00.MS_000C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 11,
        AMF.Internals.Tables.MOF_String_Data_00.MS_0004'Access);
   end Initialize_Objects;

   ----------------------
   -- Initialize_Links --
   ----------------------

   procedure Initialize_Links is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Element_Tag,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Tag);
   end Initialize_Links;

end AMF.Internals.Tables.MOF_Metamodel;
