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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Internals.Extents;
with AMF.Internals.Links;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.CMOF_Constructors;
with AMF.Internals.Tables.CMOF_Metamodel;
with AMF.Internals.Tables.Primitive_Types_String_Data_00;

package body AMF.Internals.Tables.Primitive_Types_Metamodel is

   Base : AMF.Internals.CMOF_Element := 0;

   ----------------------------------------
   -- MM_Primitive_Types_Primitive_Types --
   ----------------------------------------

   function MM_Primitive_Types_Primitive_Types return AMF.Internals.CMOF_Element is
   begin
      return Base + 1;
   end MM_Primitive_Types_Primitive_Types;

   --------------------------------
   -- MC_Primitive_Types_Boolean --
   --------------------------------

   function MC_Primitive_Types_Boolean return AMF.Internals.CMOF_Element is
   begin
      return Base + 2;
   end MC_Primitive_Types_Boolean;

   --------------------------------
   -- MC_Primitive_Types_Integer --
   --------------------------------

   function MC_Primitive_Types_Integer return AMF.Internals.CMOF_Element is
   begin
      return Base + 4;
   end MC_Primitive_Types_Integer;

   -----------------------------
   -- MC_Primitive_Types_Real --
   -----------------------------

   function MC_Primitive_Types_Real return AMF.Internals.CMOF_Element is
   begin
      return Base + 6;
   end MC_Primitive_Types_Real;

   -------------------------------
   -- MC_Primitive_Types_String --
   -------------------------------

   function MC_Primitive_Types_String return AMF.Internals.CMOF_Element is
   begin
      return Base + 8;
   end MC_Primitive_Types_String;

   ------------------------------------------
   -- MC_Primitive_Types_Unlimited_Natural --
   ------------------------------------------

   function MC_Primitive_Types_Unlimited_Natural return AMF.Internals.CMOF_Element is
   begin
      return Base + 10;
   end MC_Primitive_Types_Unlimited_Natural;

   ------------------------
   -- MB_Primitive_Types --
   ------------------------

   function MB_Primitive_Types return AMF.Internals.AMF_Element is
   begin
      return Base;
   end MB_Primitive_Types;

   ------------------------
   -- MB_Primitive_Types --
   ------------------------

   function ML_Primitive_Types return AMF.Internals.AMF_Element is
   begin
      return Base + 15;
   end ML_Primitive_Types;

   ------------------------
   -- Initialize_Objects --
   ------------------------

   procedure Initialize_Objects is
      Extent : constant AMF.Internals.AMF_Extent
        := AMF.Internals.Extents.Allocate_Extent
            (AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0001'Access);
      Aux    : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Package;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
      Base := Aux - 1;

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 1,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_000E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Uri
       (Base + 1,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0001'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 1, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 2,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0009'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 2, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 3,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0006'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 4,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0003'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 4, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 5,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_000B'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 6,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_000D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 6, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 7,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0008'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 8,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 8, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 9,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0010'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 10,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0002'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 10, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 11,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_000A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 12,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_000F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 12,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0000'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 13,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0004'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 13,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0005'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 14,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0004'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 14,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_000C'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 15,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0004'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 15,
        AMF.Internals.Tables.Primitive_Types_String_Data_00.MS_0007'Access);
   end Initialize_Objects;

   ----------------------
   -- Initialize_Links --
   ----------------------

   procedure Initialize_Links is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Element_Tag,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Tag);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Element_Tag,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Tag);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Element_Tag,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Tag);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Element_Tag,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Tag);
   end Initialize_Links;

end AMF.Internals.Tables.Primitive_Types_Metamodel;
