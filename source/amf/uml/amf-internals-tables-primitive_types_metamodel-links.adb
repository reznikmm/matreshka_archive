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
with AMF.Internals.Links;
with AMF.Internals.Tables.CMOF_Metamodel;

package body AMF.Internals.Tables.Primitive_Types_Metamodel.Links is

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      Initialize_1;
      Initialize_2;
      Initialize_3;
      Initialize_4;
      Initialize_5;
      Initialize_6;
      Initialize_7;
      Initialize_8;
      Initialize_9;
      Initialize_10;
      Initialize_11;
      Initialize_12;
      Initialize_13;
      Initialize_14;
      Initialize_15;
   end Initialize;

   ------------------
   -- Initialize_1 --
   ------------------

   procedure Initialize_1 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
   end Initialize_1;

   ------------------
   -- Initialize_2 --
   ------------------

   procedure Initialize_2 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
   end Initialize_2;

   ------------------
   -- Initialize_3 --
   ------------------

   procedure Initialize_3 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
   end Initialize_3;

   ------------------
   -- Initialize_4 --
   ------------------

   procedure Initialize_4 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
   end Initialize_4;

   ------------------
   -- Initialize_5 --
   ------------------

   procedure Initialize_5 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
   end Initialize_5;

   ------------------
   -- Initialize_6 --
   ------------------

   procedure Initialize_6 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
   end Initialize_6;

   ------------------
   -- Initialize_7 --
   ------------------

   procedure Initialize_7 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
   end Initialize_7;

   ------------------
   -- Initialize_8 --
   ------------------

   procedure Initialize_8 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
   end Initialize_8;

   ------------------
   -- Initialize_9 --
   ------------------

   procedure Initialize_9 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
   end Initialize_9;

   -------------------
   -- Initialize_10 --
   -------------------

   procedure Initialize_10 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
   end Initialize_10;

   -------------------
   -- Initialize_11 --
   -------------------

   procedure Initialize_11 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
   end Initialize_11;

   -------------------
   -- Initialize_12 --
   -------------------

   procedure Initialize_12 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Tag_Element_Tag,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Tag);
   end Initialize_12;

   -------------------
   -- Initialize_13 --
   -------------------

   procedure Initialize_13 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Tag_Element_Tag,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Tag);
   end Initialize_13;

   -------------------
   -- Initialize_14 --
   -------------------

   procedure Initialize_14 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Tag_Element_Tag,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Tag);
   end Initialize_14;

   -------------------
   -- Initialize_15 --
   -------------------

   procedure Initialize_15 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Tag_Element_Tag,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Tag);
   end Initialize_15;

end AMF.Internals.Tables.Primitive_Types_Metamodel.Links;
