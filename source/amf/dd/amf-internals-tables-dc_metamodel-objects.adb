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
with AMF.Internals.Extents;
with AMF.Internals.Tables.CMOF_Constructors;
with AMF.Internals.Tables.CMOF_Element_Table;
with AMF.Internals.Tables.DC_String_Data_00;

package body AMF.Internals.Tables.DC_Metamodel.Objects is

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
      Extent : constant AMF.Internals.AMF_Extent
        := AMF.Internals.Extents.Allocate_Extent
            (AMF.Internals.Tables.DC_String_Data_00.MS_0040'Access);

   begin
      Base := AMF.Internals.Tables.CMOF_Element_Table.Last;
      Initialize_1 (Extent);
      Initialize_2 (Extent);
      Initialize_3 (Extent);
      Initialize_4 (Extent);
      Initialize_5 (Extent);
      Initialize_6 (Extent);
      Initialize_7 (Extent);
      Initialize_8 (Extent);
      Initialize_9 (Extent);
      Initialize_10 (Extent);
      Initialize_11 (Extent);
      Initialize_12 (Extent);
      Initialize_13 (Extent);
      Initialize_14 (Extent);
      Initialize_15 (Extent);
      Initialize_16 (Extent);
      Initialize_17 (Extent);
      Initialize_18 (Extent);
      Initialize_19 (Extent);
      Initialize_20 (Extent);
      Initialize_21 (Extent);
      Initialize_22 (Extent);
      Initialize_23 (Extent);
      Initialize_24 (Extent);
      Initialize_25 (Extent);
      Initialize_26 (Extent);
      Initialize_27 (Extent);
      Initialize_28 (Extent);
      Initialize_29 (Extent);
      Initialize_30 (Extent);
      Initialize_31 (Extent);
      Initialize_32 (Extent);
      Initialize_33 (Extent);
      Initialize_34 (Extent);
      Initialize_35 (Extent);
      Initialize_36 (Extent);
      Initialize_37 (Extent);
      Initialize_38 (Extent);
      Initialize_39 (Extent);
      Initialize_40 (Extent);
      Initialize_41 (Extent);
      Initialize_42 (Extent);
      Initialize_43 (Extent);
      Initialize_44 (Extent);
      Initialize_45 (Extent);
      Initialize_46 (Extent);
      Initialize_47 (Extent);
      Initialize_48 (Extent);
      Initialize_49 (Extent);
      Initialize_50 (Extent);
      Initialize_51 (Extent);
      Initialize_52 (Extent);
      Initialize_53 (Extent);
      Initialize_54 (Extent);
      Initialize_55 (Extent);
      Initialize_56 (Extent);
      Initialize_57 (Extent);
      Initialize_58 (Extent);
      Initialize_59 (Extent);
      Initialize_60 (Extent);
      Initialize_61 (Extent);
      Initialize_62 (Extent);
      Initialize_63 (Extent);
      Initialize_64 (Extent);
      Initialize_65 (Extent);
      Initialize_66 (Extent);
      Initialize_67 (Extent);
      Initialize_68 (Extent);
      Initialize_69 (Extent);
      Initialize_70 (Extent);
      Initialize_71 (Extent);
      Initialize_72 (Extent);
      Initialize_73 (Extent);
      Initialize_74 (Extent);
      Initialize_75 (Extent);
      Initialize_76 (Extent);
      Initialize_77 (Extent);
      Initialize_78 (Extent);
      Initialize_79 (Extent);
      Initialize_80 (Extent);
      Initialize_81 (Extent);
      Initialize_82 (Extent);
      Initialize_83 (Extent);
      Initialize_84 (Extent);
      Initialize_85 (Extent);
      Initialize_86 (Extent);
      Initialize_87 (Extent);
      Initialize_88 (Extent);
      Initialize_89 (Extent);
      Initialize_90 (Extent);
      Initialize_91 (Extent);
      Initialize_92 (Extent);
      Initialize_93 (Extent);
      Initialize_94 (Extent);
      Initialize_95 (Extent);
      Initialize_96 (Extent);
      Initialize_97 (Extent);
      Initialize_98 (Extent);
   end Initialize;

   ------------------
   -- Initialize_1 --
   ------------------

   procedure Initialize_1 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Package;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_1;

   ------------------
   -- Initialize_2 --
   ------------------

   procedure Initialize_2 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_2;

   ------------------
   -- Initialize_3 --
   ------------------

   procedure Initialize_3 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_3;

   ------------------
   -- Initialize_4 --
   ------------------

   procedure Initialize_4 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_4;

   ------------------
   -- Initialize_5 --
   ------------------

   procedure Initialize_5 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_5;

   ------------------
   -- Initialize_6 --
   ------------------

   procedure Initialize_6 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_6;

   ------------------
   -- Initialize_7 --
   ------------------

   procedure Initialize_7 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_7;

   ------------------
   -- Initialize_8 --
   ------------------

   procedure Initialize_8 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_8;

   ------------------
   -- Initialize_9 --
   ------------------

   procedure Initialize_9 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_9;

   -------------------
   -- Initialize_10 --
   -------------------

   procedure Initialize_10 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_10;

   -------------------
   -- Initialize_11 --
   -------------------

   procedure Initialize_11 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Data_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_11;

   -------------------
   -- Initialize_12 --
   -------------------

   procedure Initialize_12 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_12;

   -------------------
   -- Initialize_13 --
   -------------------

   procedure Initialize_13 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_13;

   -------------------
   -- Initialize_14 --
   -------------------

   procedure Initialize_14 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_14;

   -------------------
   -- Initialize_15 --
   -------------------

   procedure Initialize_15 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_15;

   -------------------
   -- Initialize_16 --
   -------------------

   procedure Initialize_16 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_16;

   -------------------
   -- Initialize_17 --
   -------------------

   procedure Initialize_17 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_17;

   -------------------
   -- Initialize_18 --
   -------------------

   procedure Initialize_18 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_18;

   -------------------
   -- Initialize_19 --
   -------------------

   procedure Initialize_19 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_19;

   -------------------
   -- Initialize_20 --
   -------------------

   procedure Initialize_20 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_20;

   -------------------
   -- Initialize_21 --
   -------------------

   procedure Initialize_21 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_21;

   -------------------
   -- Initialize_22 --
   -------------------

   procedure Initialize_22 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Data_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_22;

   -------------------
   -- Initialize_23 --
   -------------------

   procedure Initialize_23 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_23;

   -------------------
   -- Initialize_24 --
   -------------------

   procedure Initialize_24 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_24;

   -------------------
   -- Initialize_25 --
   -------------------

   procedure Initialize_25 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_25;

   -------------------
   -- Initialize_26 --
   -------------------

   procedure Initialize_26 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_26;

   -------------------
   -- Initialize_27 --
   -------------------

   procedure Initialize_27 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_27;

   -------------------
   -- Initialize_28 --
   -------------------

   procedure Initialize_28 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Data_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_28;

   -------------------
   -- Initialize_29 --
   -------------------

   procedure Initialize_29 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_29;

   -------------------
   -- Initialize_30 --
   -------------------

   procedure Initialize_30 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_30;

   -------------------
   -- Initialize_31 --
   -------------------

   procedure Initialize_31 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_31;

   -------------------
   -- Initialize_32 --
   -------------------

   procedure Initialize_32 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_32;

   -------------------
   -- Initialize_33 --
   -------------------

   procedure Initialize_33 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_33;

   -------------------
   -- Initialize_34 --
   -------------------

   procedure Initialize_34 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_34;

   -------------------
   -- Initialize_35 --
   -------------------

   procedure Initialize_35 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_35;

   -------------------
   -- Initialize_36 --
   -------------------

   procedure Initialize_36 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_36;

   -------------------
   -- Initialize_37 --
   -------------------

   procedure Initialize_37 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Data_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_37;

   -------------------
   -- Initialize_38 --
   -------------------

   procedure Initialize_38 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_38;

   -------------------
   -- Initialize_39 --
   -------------------

   procedure Initialize_39 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_39;

   -------------------
   -- Initialize_40 --
   -------------------

   procedure Initialize_40 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_40;

   -------------------
   -- Initialize_41 --
   -------------------

   procedure Initialize_41 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_41;

   -------------------
   -- Initialize_42 --
   -------------------

   procedure Initialize_42 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_42;

   -------------------
   -- Initialize_43 --
   -------------------

   procedure Initialize_43 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_43;

   -------------------
   -- Initialize_44 --
   -------------------

   procedure Initialize_44 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_44;

   -------------------
   -- Initialize_45 --
   -------------------

   procedure Initialize_45 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_45;

   -------------------
   -- Initialize_46 --
   -------------------

   procedure Initialize_46 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_46;

   -------------------
   -- Initialize_47 --
   -------------------

   procedure Initialize_47 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_47;

   -------------------
   -- Initialize_48 --
   -------------------

   procedure Initialize_48 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_48;

   -------------------
   -- Initialize_49 --
   -------------------

   procedure Initialize_49 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_49;

   -------------------
   -- Initialize_50 --
   -------------------

   procedure Initialize_50 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_50;

   -------------------
   -- Initialize_51 --
   -------------------

   procedure Initialize_51 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_51;

   -------------------
   -- Initialize_52 --
   -------------------

   procedure Initialize_52 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_52;

   -------------------
   -- Initialize_53 --
   -------------------

   procedure Initialize_53 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_53;

   -------------------
   -- Initialize_54 --
   -------------------

   procedure Initialize_54 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_54;

   -------------------
   -- Initialize_55 --
   -------------------

   procedure Initialize_55 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_55;

   -------------------
   -- Initialize_56 --
   -------------------

   procedure Initialize_56 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_56;

   -------------------
   -- Initialize_57 --
   -------------------

   procedure Initialize_57 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_57;

   -------------------
   -- Initialize_58 --
   -------------------

   procedure Initialize_58 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_58;

   -------------------
   -- Initialize_59 --
   -------------------

   procedure Initialize_59 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_59;

   -------------------
   -- Initialize_60 --
   -------------------

   procedure Initialize_60 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_60;

   -------------------
   -- Initialize_61 --
   -------------------

   procedure Initialize_61 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_61;

   -------------------
   -- Initialize_62 --
   -------------------

   procedure Initialize_62 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_62;

   -------------------
   -- Initialize_63 --
   -------------------

   procedure Initialize_63 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_63;

   -------------------
   -- Initialize_64 --
   -------------------

   procedure Initialize_64 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_64;

   -------------------
   -- Initialize_65 --
   -------------------

   procedure Initialize_65 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_65;

   -------------------
   -- Initialize_66 --
   -------------------

   procedure Initialize_66 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_66;

   -------------------
   -- Initialize_67 --
   -------------------

   procedure Initialize_67 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_67;

   -------------------
   -- Initialize_68 --
   -------------------

   procedure Initialize_68 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_68;

   -------------------
   -- Initialize_69 --
   -------------------

   procedure Initialize_69 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_69;

   -------------------
   -- Initialize_70 --
   -------------------

   procedure Initialize_70 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_70;

   -------------------
   -- Initialize_71 --
   -------------------

   procedure Initialize_71 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_71;

   -------------------
   -- Initialize_72 --
   -------------------

   procedure Initialize_72 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_72;

   -------------------
   -- Initialize_73 --
   -------------------

   procedure Initialize_73 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_73;

   -------------------
   -- Initialize_74 --
   -------------------

   procedure Initialize_74 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_74;

   -------------------
   -- Initialize_75 --
   -------------------

   procedure Initialize_75 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_75;

   -------------------
   -- Initialize_76 --
   -------------------

   procedure Initialize_76 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_76;

   -------------------
   -- Initialize_77 --
   -------------------

   procedure Initialize_77 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_77;

   -------------------
   -- Initialize_78 --
   -------------------

   procedure Initialize_78 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_78;

   -------------------
   -- Initialize_79 --
   -------------------

   procedure Initialize_79 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_79;

   -------------------
   -- Initialize_80 --
   -------------------

   procedure Initialize_80 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_80;

   -------------------
   -- Initialize_81 --
   -------------------

   procedure Initialize_81 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_81;

   -------------------
   -- Initialize_82 --
   -------------------

   procedure Initialize_82 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_82;

   -------------------
   -- Initialize_83 --
   -------------------

   procedure Initialize_83 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_83;

   -------------------
   -- Initialize_84 --
   -------------------

   procedure Initialize_84 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_84;

   -------------------
   -- Initialize_85 --
   -------------------

   procedure Initialize_85 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_85;

   -------------------
   -- Initialize_86 --
   -------------------

   procedure Initialize_86 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_86;

   -------------------
   -- Initialize_87 --
   -------------------

   procedure Initialize_87 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_87;

   -------------------
   -- Initialize_88 --
   -------------------

   procedure Initialize_88 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_88;

   -------------------
   -- Initialize_89 --
   -------------------

   procedure Initialize_89 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_89;

   -------------------
   -- Initialize_90 --
   -------------------

   procedure Initialize_90 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_90;

   -------------------
   -- Initialize_91 --
   -------------------

   procedure Initialize_91 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_91;

   -------------------
   -- Initialize_92 --
   -------------------

   procedure Initialize_92 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_92;

   -------------------
   -- Initialize_93 --
   -------------------

   procedure Initialize_93 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_93;

   -------------------
   -- Initialize_94 --
   -------------------

   procedure Initialize_94 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_94;

   -------------------
   -- Initialize_95 --
   -------------------

   procedure Initialize_95 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_95;

   -------------------
   -- Initialize_96 --
   -------------------

   procedure Initialize_96 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_96;

   -------------------
   -- Initialize_97 --
   -------------------

   procedure Initialize_97 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_97;

   -------------------
   -- Initialize_98 --
   -------------------

   procedure Initialize_98 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_98;

end AMF.Internals.Tables.DC_Metamodel.Objects;
