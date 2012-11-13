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
with AMF.Internals.Tables.UML_Metamodel;

package body AMF.Internals.Tables.Standard_Profile_L2_Metamodel.Links is

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
      Initialize_16;
      Initialize_17;
      Initialize_18;
      Initialize_19;
      Initialize_20;
      Initialize_21;
      Initialize_22;
      Initialize_23;
      Initialize_24;
      Initialize_25;
      Initialize_26;
      Initialize_27;
      Initialize_28;
      Initialize_29;
      Initialize_30;
      Initialize_31;
      Initialize_32;
      Initialize_33;
      Initialize_34;
      Initialize_35;
      Initialize_36;
      Initialize_37;
      Initialize_38;
      Initialize_39;
      Initialize_40;
      Initialize_41;
      Initialize_42;
      Initialize_43;
      Initialize_44;
      Initialize_45;
      Initialize_46;
      Initialize_47;
      Initialize_48;
      Initialize_49;
      Initialize_50;
      Initialize_51;
      Initialize_52;
      Initialize_53;
      Initialize_54;
      Initialize_55;
      Initialize_56;
      Initialize_57;
      Initialize_58;
      Initialize_59;
      Initialize_60;
      Initialize_61;
      Initialize_62;
      Initialize_63;
      Initialize_64;
      Initialize_65;
      Initialize_66;
      Initialize_67;
      Initialize_68;
      Initialize_69;
      Initialize_70;
      Initialize_71;
      Initialize_72;
      Initialize_73;
      Initialize_74;
      Initialize_75;
      Initialize_76;
      Initialize_77;
      Initialize_78;
      Initialize_79;
      Initialize_80;
      Initialize_81;
      Initialize_82;
      Initialize_83;
      Initialize_84;
      Initialize_85;
      Initialize_86;
      Initialize_87;
      Initialize_88;
      Initialize_89;
      Initialize_90;
      Initialize_91;
      Initialize_92;
      Initialize_93;
      Initialize_94;
      Initialize_95;
      Initialize_96;
      Initialize_97;
      Initialize_98;
      Initialize_99;
      Initialize_100;
      Initialize_101;
      Initialize_102;
      Initialize_103;
      Initialize_104;
      Initialize_105;
      Initialize_106;
      Initialize_107;
      Initialize_108;
      Initialize_109;
      Initialize_110;
      Initialize_111;
      Initialize_112;
      Initialize_113;
      Initialize_114;
      Initialize_115;
      Initialize_116;
      Initialize_117;
      Initialize_118;
      Initialize_119;
      Initialize_120;
      Initialize_121;
      Initialize_122;
      Initialize_123;
      Initialize_124;
      Initialize_125;
      Initialize_126;
      Initialize_127;
      Initialize_128;
      Initialize_129;
      Initialize_130;
      Initialize_131;
      Initialize_132;
      Initialize_133;
      Initialize_134;
      Initialize_135;
      Initialize_136;
      Initialize_137;
      Initialize_138;
      Initialize_139;
      Initialize_140;
      Initialize_141;
      Initialize_142;
      Initialize_143;
      Initialize_144;
      Initialize_145;
      Initialize_146;
      Initialize_147;
      Initialize_148;
      Initialize_149;
      Initialize_150;
      Initialize_151;
      Initialize_152;
      Initialize_153;
      Initialize_154;
      Initialize_155;
      Initialize_156;
      Initialize_157;
      Initialize_158;
      Initialize_159;
      Initialize_160;
      Initialize_161;
      Initialize_162;
      Initialize_163;
      Initialize_164;
      Initialize_165;
      Initialize_166;
      Initialize_167;
      Initialize_168;
      Initialize_169;
      Initialize_170;
      Initialize_171;
      Initialize_172;
      Initialize_173;
      Initialize_174;
      Initialize_175;
      Initialize_176;
      Initialize_177;
      Initialize_178;
      Initialize_179;
      Initialize_180;
   end Initialize;

   ------------------
   -- Initialize_1 --
   ------------------

   procedure Initialize_1 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_1;

   ------------------
   -- Initialize_2 --
   ------------------

   procedure Initialize_2 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
   end Initialize_2;

   ------------------
   -- Initialize_3 --
   ------------------

   procedure Initialize_3 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
   end Initialize_3;

   ------------------
   -- Initialize_4 --
   ------------------

   procedure Initialize_4 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_4;

   ------------------
   -- Initialize_5 --
   ------------------

   procedure Initialize_5 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_5;

   ------------------
   -- Initialize_6 --
   ------------------

   procedure Initialize_6 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_6;

   ------------------
   -- Initialize_7 --
   ------------------

   procedure Initialize_7 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_7;

   ------------------
   -- Initialize_8 --
   ------------------

   procedure Initialize_8 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_8;

   ------------------
   -- Initialize_9 --
   ------------------

   procedure Initialize_9 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_9;

   -------------------
   -- Initialize_10 --
   -------------------

   procedure Initialize_10 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_10;

   -------------------
   -- Initialize_11 --
   -------------------

   procedure Initialize_11 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_11;

   -------------------
   -- Initialize_12 --
   -------------------

   procedure Initialize_12 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
   end Initialize_12;

   -------------------
   -- Initialize_13 --
   -------------------

   procedure Initialize_13 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
   end Initialize_13;

   -------------------
   -- Initialize_14 --
   -------------------

   procedure Initialize_14 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
   end Initialize_14;

   -------------------
   -- Initialize_15 --
   -------------------

   procedure Initialize_15 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_15;

   -------------------
   -- Initialize_16 --
   -------------------

   procedure Initialize_16 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_16;

   -------------------
   -- Initialize_17 --
   -------------------

   procedure Initialize_17 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_17;

   -------------------
   -- Initialize_18 --
   -------------------

   procedure Initialize_18 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_18;

   -------------------
   -- Initialize_19 --
   -------------------

   procedure Initialize_19 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
   end Initialize_19;

   -------------------
   -- Initialize_20 --
   -------------------

   procedure Initialize_20 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_20;

   -------------------
   -- Initialize_21 --
   -------------------

   procedure Initialize_21 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_21;

   -------------------
   -- Initialize_22 --
   -------------------

   procedure Initialize_22 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_22;

   -------------------
   -- Initialize_23 --
   -------------------

   procedure Initialize_23 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
   end Initialize_23;

   -------------------
   -- Initialize_24 --
   -------------------

   procedure Initialize_24 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_24;

   -------------------
   -- Initialize_25 --
   -------------------

   procedure Initialize_25 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_25;

   -------------------
   -- Initialize_26 --
   -------------------

   procedure Initialize_26 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
   end Initialize_26;

   -------------------
   -- Initialize_27 --
   -------------------

   procedure Initialize_27 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_27;

   -------------------
   -- Initialize_28 --
   -------------------

   procedure Initialize_28 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_28;

   -------------------
   -- Initialize_29 --
   -------------------

   procedure Initialize_29 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 174,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 174,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
   end Initialize_29;

   -------------------
   -- Initialize_30 --
   -------------------

   procedure Initialize_30 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
   end Initialize_30;

   -------------------
   -- Initialize_31 --
   -------------------

   procedure Initialize_31 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Class,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_31;

   -------------------
   -- Initialize_32 --
   -------------------

   procedure Initialize_32 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Usage,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_32;

   -------------------
   -- Initialize_33 --
   -------------------

   procedure Initialize_33 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Behavioral_Feature,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_33;

   -------------------
   -- Initialize_34 --
   -------------------

   procedure Initialize_34 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Usage,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_34;

   -------------------
   -- Initialize_35 --
   -------------------

   procedure Initialize_35 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Abstraction,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_35;

   -------------------
   -- Initialize_36 --
   -------------------

   procedure Initialize_36 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Value_Specification,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_36;

   -------------------
   -- Initialize_37 --
   -------------------

   procedure Initialize_37 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Behavioral_Feature,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_37;

   -------------------
   -- Initialize_38 --
   -------------------

   procedure Initialize_38 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_38;

   -------------------
   -- Initialize_39 --
   -------------------

   procedure Initialize_39 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Component,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_39;

   -------------------
   -- Initialize_40 --
   -------------------

   procedure Initialize_40 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_40;

   -------------------
   -- Initialize_41 --
   -------------------

   procedure Initialize_41 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_41;

   -------------------
   -- Initialize_42 --
   -------------------

   procedure Initialize_42 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Class,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_42;

   -------------------
   -- Initialize_43 --
   -------------------

   procedure Initialize_43 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Package,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_43;

   -------------------
   -- Initialize_44 --
   -------------------

   procedure Initialize_44 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Component,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_44;

   -------------------
   -- Initialize_45 --
   -------------------

   procedure Initialize_45 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Class,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_45;

   -------------------
   -- Initialize_46 --
   -------------------

   procedure Initialize_46 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Usage,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_46;

   -------------------
   -- Initialize_47 --
   -------------------

   procedure Initialize_47 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_47;

   -------------------
   -- Initialize_48 --
   -------------------

   procedure Initialize_48 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Class,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_48;

   -------------------
   -- Initialize_49 --
   -------------------

   procedure Initialize_49 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Package,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_49;

   -------------------
   -- Initialize_50 --
   -------------------

   procedure Initialize_50 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Component,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_50;

   -------------------
   -- Initialize_51 --
   -------------------

   procedure Initialize_51 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_51;

   -------------------
   -- Initialize_52 --
   -------------------

   procedure Initialize_52 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Abstraction,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_52;

   -------------------
   -- Initialize_53 --
   -------------------

   procedure Initialize_53 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Usage,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_53;

   -------------------
   -- Initialize_54 --
   -------------------

   procedure Initialize_54 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_54;

   -------------------
   -- Initialize_55 --
   -------------------

   procedure Initialize_55 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Usage,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_55;

   -------------------
   -- Initialize_56 --
   -------------------

   procedure Initialize_56 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Component,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_56;

   -------------------
   -- Initialize_57 --
   -------------------

   procedure Initialize_57 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_57;

   -------------------
   -- Initialize_58 --
   -------------------

   procedure Initialize_58 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_58;

   -------------------
   -- Initialize_59 --
   -------------------

   procedure Initialize_59 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Component,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_59;

   -------------------
   -- Initialize_60 --
   -------------------

   procedure Initialize_60 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Abstraction,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_60;

   -------------------
   -- Initialize_61 --
   -------------------

   procedure Initialize_61 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Class,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_61;

   -------------------
   -- Initialize_62 --
   -------------------

   procedure Initialize_62 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Class,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_62;

   -------------------
   -- Initialize_63 --
   -------------------

   procedure Initialize_63 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_63;

   -------------------
   -- Initialize_64 --
   -------------------

   procedure Initialize_64 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_64;

   -------------------
   -- Initialize_65 --
   -------------------

   procedure Initialize_65 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_65;

   -------------------
   -- Initialize_66 --
   -------------------

   procedure Initialize_66 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_66;

   -------------------
   -- Initialize_67 --
   -------------------

   procedure Initialize_67 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_67;

   -------------------
   -- Initialize_68 --
   -------------------

   procedure Initialize_68 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_68;

   -------------------
   -- Initialize_69 --
   -------------------

   procedure Initialize_69 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_69;

   -------------------
   -- Initialize_70 --
   -------------------

   procedure Initialize_70 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_70;

   -------------------
   -- Initialize_71 --
   -------------------

   procedure Initialize_71 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_71;

   -------------------
   -- Initialize_72 --
   -------------------

   procedure Initialize_72 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_72;

   -------------------
   -- Initialize_73 --
   -------------------

   procedure Initialize_73 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_73;

   -------------------
   -- Initialize_74 --
   -------------------

   procedure Initialize_74 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_74;

   -------------------
   -- Initialize_75 --
   -------------------

   procedure Initialize_75 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_75;

   -------------------
   -- Initialize_76 --
   -------------------

   procedure Initialize_76 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_76;

   -------------------
   -- Initialize_77 --
   -------------------

   procedure Initialize_77 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_77;

   -------------------
   -- Initialize_78 --
   -------------------

   procedure Initialize_78 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_78;

   -------------------
   -- Initialize_79 --
   -------------------

   procedure Initialize_79 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_79;

   -------------------
   -- Initialize_80 --
   -------------------

   procedure Initialize_80 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_80;

   -------------------
   -- Initialize_81 --
   -------------------

   procedure Initialize_81 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_81;

   -------------------
   -- Initialize_82 --
   -------------------

   procedure Initialize_82 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_82;

   -------------------
   -- Initialize_83 --
   -------------------

   procedure Initialize_83 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_83;

   -------------------
   -- Initialize_84 --
   -------------------

   procedure Initialize_84 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_84;

   -------------------
   -- Initialize_85 --
   -------------------

   procedure Initialize_85 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_85;

   -------------------
   -- Initialize_86 --
   -------------------

   procedure Initialize_86 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_86;

   -------------------
   -- Initialize_87 --
   -------------------

   procedure Initialize_87 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_87;

   -------------------
   -- Initialize_88 --
   -------------------

   procedure Initialize_88 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_88;

   -------------------
   -- Initialize_89 --
   -------------------

   procedure Initialize_89 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_89;

   -------------------
   -- Initialize_90 --
   -------------------

   procedure Initialize_90 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_90;

   -------------------
   -- Initialize_91 --
   -------------------

   procedure Initialize_91 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_91;

   -------------------
   -- Initialize_92 --
   -------------------

   procedure Initialize_92 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_92;

   -------------------
   -- Initialize_93 --
   -------------------

   procedure Initialize_93 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_93;

   -------------------
   -- Initialize_94 --
   -------------------

   procedure Initialize_94 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_94;

   -------------------
   -- Initialize_95 --
   -------------------

   procedure Initialize_95 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Package_Import_Importing_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import_Package_Import_Importing_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Import_Importing_Namespace_Namespace_Package_Import);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
   end Initialize_95;

   -------------------
   -- Initialize_96 --
   -------------------

   procedure Initialize_96 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Import_Imported_Package_Package_Import,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Import_Imported_Package_A_Package_Import,
        AMF.Internals.Tables.UML_Metamodel.MM_UML_UML,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Package_Import_Package_Import_Imported_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Relationship_Related_Element_Relationship,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Relationship_Related_Element_A_Relationship,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Relationship_Relationship_Related_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Relationship_Related_Element_Relationship,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Relationship_Related_Element_A_Relationship,
        AMF.Internals.Tables.UML_Metamodel.MM_UML_UML,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Relationship_Relationship_Related_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Directed_Relationship_Source_Directed_Relationship,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Source_A_Directed_Relationship,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Directed_Relationship_Directed_Relationship_Source);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Directed_Relationship_Target_Directed_Relationship,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Target_A_Directed_Relationship,
        AMF.Internals.Tables.UML_Metamodel.MM_UML_UML,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Directed_Relationship_Directed_Relationship_Target);
   end Initialize_96;

   -------------------
   -- Initialize_97 --
   -------------------

   procedure Initialize_97 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_97;

   -------------------
   -- Initialize_98 --
   -------------------

   procedure Initialize_98 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_98;

   -------------------
   -- Initialize_99 --
   -------------------

   procedure Initialize_99 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_99;

   --------------------
   -- Initialize_100 --
   --------------------

   procedure Initialize_100 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_100;

   --------------------
   -- Initialize_101 --
   --------------------

   procedure Initialize_101 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_101;

   --------------------
   -- Initialize_102 --
   --------------------

   procedure Initialize_102 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_102;

   --------------------
   -- Initialize_103 --
   --------------------

   procedure Initialize_103 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_103;

   --------------------
   -- Initialize_104 --
   --------------------

   procedure Initialize_104 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_104;

   --------------------
   -- Initialize_105 --
   --------------------

   procedure Initialize_105 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_105;

   --------------------
   -- Initialize_106 --
   --------------------

   procedure Initialize_106 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_106;

   --------------------
   -- Initialize_107 --
   --------------------

   procedure Initialize_107 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_107;

   --------------------
   -- Initialize_108 --
   --------------------

   procedure Initialize_108 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_108;

   --------------------
   -- Initialize_109 --
   --------------------

   procedure Initialize_109 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_109;

   --------------------
   -- Initialize_110 --
   --------------------

   procedure Initialize_110 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_110;

   --------------------
   -- Initialize_111 --
   --------------------

   procedure Initialize_111 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_111;

   --------------------
   -- Initialize_112 --
   --------------------

   procedure Initialize_112 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_112;

   --------------------
   -- Initialize_113 --
   --------------------

   procedure Initialize_113 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_113;

   --------------------
   -- Initialize_114 --
   --------------------

   procedure Initialize_114 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_114;

   --------------------
   -- Initialize_115 --
   --------------------

   procedure Initialize_115 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_115;

   --------------------
   -- Initialize_116 --
   --------------------

   procedure Initialize_116 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_116;

   --------------------
   -- Initialize_117 --
   --------------------

   procedure Initialize_117 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_117;

   --------------------
   -- Initialize_118 --
   --------------------

   procedure Initialize_118 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_118;

   --------------------
   -- Initialize_119 --
   --------------------

   procedure Initialize_119 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_119;

   --------------------
   -- Initialize_120 --
   --------------------

   procedure Initialize_120 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_120;

   --------------------
   -- Initialize_121 --
   --------------------

   procedure Initialize_121 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_121;

   --------------------
   -- Initialize_122 --
   --------------------

   procedure Initialize_122 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_122;

   --------------------
   -- Initialize_123 --
   --------------------

   procedure Initialize_123 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_123;

   --------------------
   -- Initialize_124 --
   --------------------

   procedure Initialize_124 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_124;

   --------------------
   -- Initialize_125 --
   --------------------

   procedure Initialize_125 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_125;

   --------------------
   -- Initialize_126 --
   --------------------

   procedure Initialize_126 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_126;

   --------------------
   -- Initialize_127 --
   --------------------

   procedure Initialize_127 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_127;

   --------------------
   -- Initialize_128 --
   --------------------

   procedure Initialize_128 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_128;

   --------------------
   -- Initialize_129 --
   --------------------

   procedure Initialize_129 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_129;

   --------------------
   -- Initialize_130 --
   --------------------

   procedure Initialize_130 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_130;

   --------------------
   -- Initialize_131 --
   --------------------

   procedure Initialize_131 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_131;

   --------------------
   -- Initialize_132 --
   --------------------

   procedure Initialize_132 is
   begin
      null;
   end Initialize_132;

   --------------------
   -- Initialize_133 --
   --------------------

   procedure Initialize_133 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_133;

   --------------------
   -- Initialize_134 --
   --------------------

   procedure Initialize_134 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_134;

   --------------------
   -- Initialize_135 --
   --------------------

   procedure Initialize_135 is
   begin
      null;
   end Initialize_135;

   --------------------
   -- Initialize_136 --
   --------------------

   procedure Initialize_136 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_136;

   --------------------
   -- Initialize_137 --
   --------------------

   procedure Initialize_137 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_137;

   --------------------
   -- Initialize_138 --
   --------------------

   procedure Initialize_138 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_138;

   --------------------
   -- Initialize_139 --
   --------------------

   procedure Initialize_139 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_139;

   --------------------
   -- Initialize_140 --
   --------------------

   procedure Initialize_140 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_140;

   --------------------
   -- Initialize_141 --
   --------------------

   procedure Initialize_141 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_141;

   --------------------
   -- Initialize_142 --
   --------------------

   procedure Initialize_142 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_142;

   --------------------
   -- Initialize_143 --
   --------------------

   procedure Initialize_143 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_143;

   --------------------
   -- Initialize_144 --
   --------------------

   procedure Initialize_144 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_144;

   --------------------
   -- Initialize_145 --
   --------------------

   procedure Initialize_145 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_145;

   --------------------
   -- Initialize_146 --
   --------------------

   procedure Initialize_146 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_146;

   --------------------
   -- Initialize_147 --
   --------------------

   procedure Initialize_147 is
   begin
      null;
   end Initialize_147;

   --------------------
   -- Initialize_148 --
   --------------------

   procedure Initialize_148 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_148;

   --------------------
   -- Initialize_149 --
   --------------------

   procedure Initialize_149 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_149;

   --------------------
   -- Initialize_150 --
   --------------------

   procedure Initialize_150 is
   begin
      null;
   end Initialize_150;

   --------------------
   -- Initialize_151 --
   --------------------

   procedure Initialize_151 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_151;

   --------------------
   -- Initialize_152 --
   --------------------

   procedure Initialize_152 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_152;

   --------------------
   -- Initialize_153 --
   --------------------

   procedure Initialize_153 is
   begin
      null;
   end Initialize_153;

   --------------------
   -- Initialize_154 --
   --------------------

   procedure Initialize_154 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_154;

   --------------------
   -- Initialize_155 --
   --------------------

   procedure Initialize_155 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_155;

   --------------------
   -- Initialize_156 --
   --------------------

   procedure Initialize_156 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_156;

   --------------------
   -- Initialize_157 --
   --------------------

   procedure Initialize_157 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_157;

   --------------------
   -- Initialize_158 --
   --------------------

   procedure Initialize_158 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_158;

   --------------------
   -- Initialize_159 --
   --------------------

   procedure Initialize_159 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_159;

   --------------------
   -- Initialize_160 --
   --------------------

   procedure Initialize_160 is
   begin
      null;
   end Initialize_160;

   --------------------
   -- Initialize_161 --
   --------------------

   procedure Initialize_161 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_161;

   --------------------
   -- Initialize_162 --
   --------------------

   procedure Initialize_162 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_162;

   --------------------
   -- Initialize_163 --
   --------------------

   procedure Initialize_163 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_163;

   --------------------
   -- Initialize_164 --
   --------------------

   procedure Initialize_164 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_164;

   --------------------
   -- Initialize_165 --
   --------------------

   procedure Initialize_165 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_165;

   --------------------
   -- Initialize_166 --
   --------------------

   procedure Initialize_166 is
   begin
      null;
   end Initialize_166;

   --------------------
   -- Initialize_167 --
   --------------------

   procedure Initialize_167 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_167;

   --------------------
   -- Initialize_168 --
   --------------------

   procedure Initialize_168 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_168;

   --------------------
   -- Initialize_169 --
   --------------------

   procedure Initialize_169 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_169;

   --------------------
   -- Initialize_170 --
   --------------------

   procedure Initialize_170 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_170;

   --------------------
   -- Initialize_171 --
   --------------------

   procedure Initialize_171 is
   begin
      null;
   end Initialize_171;

   --------------------
   -- Initialize_172 --
   --------------------

   procedure Initialize_172 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_172;

   --------------------
   -- Initialize_173 --
   --------------------

   procedure Initialize_173 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_173;

   --------------------
   -- Initialize_174 --
   --------------------

   procedure Initialize_174 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 174,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_174;

   --------------------
   -- Initialize_175 --
   --------------------

   procedure Initialize_175 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_175;

   --------------------
   -- Initialize_176 --
   --------------------

   procedure Initialize_176 is
   begin
      null;
   end Initialize_176;

   --------------------
   -- Initialize_177 --
   --------------------

   procedure Initialize_177 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_177;

   --------------------
   -- Initialize_178 --
   --------------------

   procedure Initialize_178 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 179,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 179,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_178;

   --------------------
   -- Initialize_179 --
   --------------------

   procedure Initialize_179 is
   begin
      null;
   end Initialize_179;

   --------------------
   -- Initialize_180 --
   --------------------

   procedure Initialize_180 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Tag_Element_Tag,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element_A_Tag,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Tag_Tag_Element);
   end Initialize_180;

end AMF.Internals.Tables.Standard_Profile_L2_Metamodel.Links;
