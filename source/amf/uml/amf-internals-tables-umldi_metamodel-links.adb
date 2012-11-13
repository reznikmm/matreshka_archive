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
with AMF.Internals.Tables.DI_Metamodel;
with AMF.Internals.Tables.Primitive_Types_Metamodel;
with AMF.Internals.Tables.UML_Metamodel;

package body AMF.Internals.Tables.UMLDI_Metamodel.Links is

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
      Initialize_181;
      Initialize_182;
      Initialize_183;
      Initialize_184;
      Initialize_185;
      Initialize_186;
      Initialize_187;
      Initialize_188;
      Initialize_189;
      Initialize_190;
      Initialize_191;
      Initialize_192;
      Initialize_193;
      Initialize_194;
      Initialize_195;
      Initialize_196;
      Initialize_197;
      Initialize_198;
      Initialize_199;
      Initialize_200;
      Initialize_201;
      Initialize_202;
      Initialize_203;
      Initialize_204;
      Initialize_205;
      Initialize_206;
      Initialize_207;
      Initialize_208;
      Initialize_209;
      Initialize_210;
      Initialize_211;
      Initialize_212;
      Initialize_213;
      Initialize_214;
      Initialize_215;
      Initialize_216;
      Initialize_217;
      Initialize_218;
      Initialize_219;
      Initialize_220;
      Initialize_221;
      Initialize_222;
      Initialize_223;
      Initialize_224;
      Initialize_225;
      Initialize_226;
      Initialize_227;
      Initialize_228;
      Initialize_229;
      Initialize_230;
      Initialize_231;
      Initialize_232;
      Initialize_233;
      Initialize_234;
      Initialize_235;
      Initialize_236;
      Initialize_237;
      Initialize_238;
      Initialize_239;
      Initialize_240;
      Initialize_241;
      Initialize_242;
      Initialize_243;
      Initialize_244;
      Initialize_245;
      Initialize_246;
      Initialize_247;
      Initialize_248;
      Initialize_249;
      Initialize_250;
      Initialize_251;
      Initialize_252;
      Initialize_253;
      Initialize_254;
      Initialize_255;
      Initialize_256;
      Initialize_257;
      Initialize_258;
      Initialize_259;
      Initialize_260;
      Initialize_261;
      Initialize_262;
      Initialize_263;
      Initialize_264;
      Initialize_265;
      Initialize_266;
      Initialize_267;
      Initialize_268;
      Initialize_269;
      Initialize_270;
      Initialize_271;
      Initialize_272;
      Initialize_273;
      Initialize_274;
      Initialize_275;
      Initialize_276;
      Initialize_277;
      Initialize_278;
      Initialize_279;
      Initialize_280;
      Initialize_281;
      Initialize_282;
      Initialize_283;
      Initialize_284;
      Initialize_285;
      Initialize_286;
      Initialize_287;
      Initialize_288;
      Initialize_289;
      Initialize_290;
      Initialize_291;
      Initialize_292;
      Initialize_293;
      Initialize_294;
      Initialize_295;
      Initialize_296;
      Initialize_297;
      Initialize_298;
      Initialize_299;
      Initialize_300;
      Initialize_301;
      Initialize_302;
      Initialize_303;
      Initialize_304;
      Initialize_305;
      Initialize_306;
      Initialize_307;
      Initialize_308;
      Initialize_309;
      Initialize_310;
      Initialize_311;
      Initialize_312;
      Initialize_313;
      Initialize_314;
      Initialize_315;
      Initialize_316;
      Initialize_317;
      Initialize_318;
      Initialize_319;
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
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
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
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_4;

   ------------------
   -- Initialize_5 --
   ------------------

   procedure Initialize_5 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 30,
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
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 14,
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
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_9;

   -------------------
   -- Initialize_10 --
   -------------------

   procedure Initialize_10 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_10;

   -------------------
   -- Initialize_11 --
   -------------------

   procedure Initialize_11 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_11;

   -------------------
   -- Initialize_12 --
   -------------------

   procedure Initialize_12 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 179,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 179,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 187,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 183,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 183,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 187,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 187,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 187,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Packageable_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        AMF.Internals.Tables.DI_Metamodel.MC_DI_Diagram,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        AMF.Internals.Tables.DI_Metamodel.MC_DI_Diagram_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 199,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 199,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        AMF.Internals.Tables.DI_Metamodel.MC_DI_Edge,
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
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 202,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 202,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_17;

   -------------------
   -- Initialize_18 --
   -------------------

   procedure Initialize_18 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 206,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 205,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 205,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 206,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 206,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 206,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 213,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 209,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 209,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 213,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 213,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 213,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 217,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 217,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 219,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 219,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_21;

   -------------------
   -- Initialize_22 --
   -------------------

   procedure Initialize_22 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 222,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 221,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 221,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 222,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 222,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 222,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_22;

   -------------------
   -- Initialize_23 --
   -------------------

   procedure Initialize_23 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 225,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 225,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_23;

   -------------------
   -- Initialize_24 --
   -------------------

   procedure Initialize_24 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 230,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 229,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 229,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 230,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 230,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 230,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 233,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 233,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_25;

   -------------------
   -- Initialize_26 --
   -------------------

   procedure Initialize_26 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 235,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 235,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        AMF.Internals.Tables.DI_Metamodel.MC_DI_Shape,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 237,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 236,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 236,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 237,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 237,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 237,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 243,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 243,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 243,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 243,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
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
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 247,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 250,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 246,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 246,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 247,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 250,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 247,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 250,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 247,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 250,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_29;

   -------------------
   -- Initialize_30 --
   -------------------

   procedure Initialize_30 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 254,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 254,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_30;

   -------------------
   -- Initialize_31 --
   -------------------

   procedure Initialize_31 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Classifier_Classifier_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 256,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Owned_Attribute_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 255,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 255,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 256,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 256,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 256,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Packageable_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        AMF.Internals.Tables.DI_Metamodel.MC_DI_Style,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_31;

   -------------------
   -- Initialize_32 --
   -------------------

   procedure Initialize_32 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 262,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 261,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 261,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 262,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 262,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 262,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_32;

   -------------------
   -- Initialize_33 --
   -------------------

   procedure Initialize_33 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 269,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 268,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 268,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 269,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 269,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Rule_Context,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context,
        Base + 269,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Class_Class_Super_Class);
   end Initialize_33;

   -------------------
   -- Initialize_34 --
   -------------------

   procedure Initialize_34 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Owned_Element_Diagram_Element_Owning_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Subsetted_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_34;

   -------------------
   -- Initialize_35 --
   -------------------

   procedure Initialize_35 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Owned_Element_Diagram_Element_Owning_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Subsetted_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 8,
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
        Base + 196,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 196,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Owned_Element_Diagram_Element_Owning_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Owned_Element_Diagram_Element_Owning_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_36;

   -------------------
   -- Initialize_37 --
   -------------------

   procedure Initialize_37 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Boolean,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_37;

   -------------------
   -- Initialize_38 --
   -------------------

   procedure Initialize_38 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
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
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Activity,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_38;

   -------------------
   -- Initialize_39 --
   -------------------

   procedure Initialize_39 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Property,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_39;

   -------------------
   -- Initialize_40 --
   -------------------

   procedure Initialize_40 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_40;

   -------------------
   -- Initialize_41 --
   -------------------

   procedure Initialize_41 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Behavior,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_41;

   -------------------
   -- Initialize_42 --
   -------------------

   procedure Initialize_42 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Boolean,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_42;

   -------------------
   -- Initialize_43 --
   -------------------

   procedure Initialize_43 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_43;

   -------------------
   -- Initialize_44 --
   -------------------

   procedure Initialize_44 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_44;

   -------------------
   -- Initialize_45 --
   -------------------

   procedure Initialize_45 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Boolean,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_45;

   -------------------
   -- Initialize_46 --
   -------------------

   procedure Initialize_46 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Boolean,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_46;

   -------------------
   -- Initialize_47 --
   -------------------

   procedure Initialize_47 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
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
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_48;

   -------------------
   -- Initialize_49 --
   -------------------

   procedure Initialize_49 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 190,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 190,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Boolean,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_49;

   -------------------
   -- Initialize_50 --
   -------------------

   procedure Initialize_50 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 191,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 191,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Boolean,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_50;

   -------------------
   -- Initialize_51 --
   -------------------

   procedure Initialize_51 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 193,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 193,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Boolean,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_51;

   -------------------
   -- Initialize_52 --
   -------------------

   procedure Initialize_52 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Local_Style_A_Styled_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Local_Style_A_Styled_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_52;

   -------------------
   -- Initialize_53 --
   -------------------

   procedure Initialize_53 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 195,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 195,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Model_Element_A_Diagram_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Model_Element_A_Diagram_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_53;

   -------------------
   -- Initialize_54 --
   -------------------

   procedure Initialize_54 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 197,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 197,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Owning_Element_Diagram_Element_Owned_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Owning_Element_Diagram_Element_Owned_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_54;

   -------------------
   -- Initialize_55 --
   -------------------

   procedure Initialize_55 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 198,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 198,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Shared_Style_A_Styled_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Shared_Style_A_Styled_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_55;

   -------------------
   -- Initialize_56 --
   -------------------

   procedure Initialize_56 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 200,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 200,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Edge_Source_A_Source_Edge,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Edge_Source_A_Source_Edge,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_56;

   -------------------
   -- Initialize_57 --
   -------------------

   procedure Initialize_57 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 201,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 201,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Edge_Target_A_Target_Edge,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Edge_Target_A_Target_Edge,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_57;

   -------------------
   -- Initialize_58 --
   -------------------

   procedure Initialize_58 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 203,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 203,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_58;

   -------------------
   -- Initialize_59 --
   -------------------

   procedure Initialize_59 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 204,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 204,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Interaction,
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
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_60;

   -------------------
   -- Initialize_61 --
   -------------------

   procedure Initialize_61 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 216,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 216,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_61;

   -------------------
   -- Initialize_62 --
   -------------------

   procedure Initialize_62 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 218,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 218,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Multiplicity_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_62;

   -------------------
   -- Initialize_63 --
   -------------------

   procedure Initialize_63 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 220,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 220,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Named_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_63;

   -------------------
   -- Initialize_64 --
   -------------------

   procedure Initialize_64 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 234,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 234,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Redefinable_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_64;

   -------------------
   -- Initialize_65 --
   -------------------

   procedure Initialize_65 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 240,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 240,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_65;

   -------------------
   -- Initialize_66 --
   -------------------

   procedure Initialize_66 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Boolean,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_66;

   -------------------
   -- Initialize_67 --
   -------------------

   procedure Initialize_67 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 242,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 242,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Boolean,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_67;

   -------------------
   -- Initialize_68 --
   -------------------

   procedure Initialize_68 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_State_Machine,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_68;

   -------------------
   -- Initialize_69 --
   -------------------

   procedure Initialize_69 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Boolean,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_69;

   -------------------
   -- Initialize_70 --
   -------------------

   procedure Initialize_70 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_State,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_70;

   -------------------
   -- Initialize_71 --
   -------------------

   procedure Initialize_71 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 252,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 252,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Property,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_71;

   -------------------
   -- Initialize_72 --
   -------------------

   procedure Initialize_72 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 253,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 253,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_72;

   -------------------
   -- Initialize_73 --
   -------------------

   procedure Initialize_73 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 259,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 259,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_73;

   -------------------
   -- Initialize_74 --
   -------------------

   procedure Initialize_74 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 260,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 260,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Real,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
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
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 97,
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
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 98,
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
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 99,
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
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 100,
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
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 101,
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
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 103,
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
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 104,
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
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_82;

   -------------------
   -- Initialize_83 --
   -------------------

   procedure Initialize_83 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
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
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 106,
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
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 107,
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
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 108,
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
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 109,
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
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 110,
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
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 111,
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
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 112,
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
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 113,
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
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 114,
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
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 115,
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
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_94;

   -------------------
   -- Initialize_95 --
   -------------------

   procedure Initialize_95 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier_Classifier_Feature);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 117,
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
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Member_End_Association,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association_Association_Member_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Association_Owned_End_Owning_Association,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_95;

   -------------------
   -- Initialize_96 --
   -------------------

   procedure Initialize_96 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 317,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 318,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Owned_Type_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type_Type_Package,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Package_Import_Importing_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import_Package_Import_Importing_Namespace,
        Base + 317,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Import_Importing_Namespace_Namespace_Package_Import);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Package_Import_Importing_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import_Package_Import_Importing_Namespace,
        Base + 318,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Import_Importing_Namespace_Namespace_Package_Import);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Packaged_Element_Owning_Package,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Package_Package_Packaged_Element);
   end Initialize_96;

   -------------------
   -- Initialize_97 --
   -------------------

   procedure Initialize_97 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_97;

   -------------------
   -- Initialize_98 --
   -------------------

   procedure Initialize_98 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_98;

   -------------------
   -- Initialize_99 --
   -------------------

   procedure Initialize_99 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_99;

   --------------------
   -- Initialize_100 --
   --------------------

   procedure Initialize_100 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_100;

   --------------------
   -- Initialize_101 --
   --------------------

   procedure Initialize_101 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Owning_Element_Diagram_Element_Owned_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Subsetted_Property);
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
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_102;

   --------------------
   -- Initialize_103 --
   --------------------

   procedure Initialize_103 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_Diagram_Element_Owning_Element_Diagram_Element_Owned_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Subsetted_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_103;

   --------------------
   -- Initialize_104 --
   --------------------

   procedure Initialize_104 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_A_Styled_Element_Diagram_Element_Shared_Style,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_A_Styled_Element_Diagram_Element_Shared_Style,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_104;

   --------------------
   -- Initialize_105 --
   --------------------

   procedure Initialize_105 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_A_Diagram_Element_Diagram_Element_Model_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Subsetted_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_105;

   --------------------
   -- Initialize_106 --
   --------------------

   procedure Initialize_106 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_A_Styled_Element_Diagram_Element_Shared_Style,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_A_Styled_Element_Diagram_Element_Shared_Style,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 14,
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
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_107;

   --------------------
   -- Initialize_108 --
   --------------------

   procedure Initialize_108 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_A_Source_Edge_Edge_Source,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_A_Source_Edge_Edge_Source,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_108;

   --------------------
   -- Initialize_109 --
   --------------------

   procedure Initialize_109 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_A_Target_Edge_Edge_Target,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        AMF.Internals.Tables.DI_Metamodel.MP_DI_A_Target_Edge_Edge_Target,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_109;

   --------------------
   -- Initialize_110 --
   --------------------

   procedure Initialize_110 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_110;

   --------------------
   -- Initialize_111 --
   --------------------

   procedure Initialize_111 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_111;

   --------------------
   -- Initialize_112 --
   --------------------

   procedure Initialize_112 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_112;

   --------------------
   -- Initialize_113 --
   --------------------

   procedure Initialize_113 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_113;

   --------------------
   -- Initialize_114 --
   --------------------

   procedure Initialize_114 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_114;

   --------------------
   -- Initialize_115 --
   --------------------

   procedure Initialize_115 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_115;

   --------------------
   -- Initialize_116 --
   --------------------

   procedure Initialize_116 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Redefinable_Element_Redefinable_Element_Redefined_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Property_Property_Redefined_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Typed_Element_Type_Typed_Element,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type_A_Typed_Element,
        Base + 29,
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
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Typed_Element_Typed_Element_Type);
   end Initialize_117;

   --------------------
   -- Initialize_118 --
   --------------------

   procedure Initialize_118 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_118;

   --------------------
   -- Initialize_119 --
   --------------------

   procedure Initialize_119 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_119;

   --------------------
   -- Initialize_120 --
   --------------------

   procedure Initialize_120 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_120;

   --------------------
   -- Initialize_121 --
   --------------------

   procedure Initialize_121 is
   begin
      null;
   end Initialize_121;

   --------------------
   -- Initialize_122 --
   --------------------

   procedure Initialize_122 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_122;

   --------------------
   -- Initialize_123 --
   --------------------

   procedure Initialize_123 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_123;

   --------------------
   -- Initialize_124 --
   --------------------

   procedure Initialize_124 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_124;

   --------------------
   -- Initialize_125 --
   --------------------

   procedure Initialize_125 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_125;

   --------------------
   -- Initialize_126 --
   --------------------

   procedure Initialize_126 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_126;

   --------------------
   -- Initialize_127 --
   --------------------

   procedure Initialize_127 is
   begin
      null;
   end Initialize_127;

   --------------------
   -- Initialize_128 --
   --------------------

   procedure Initialize_128 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
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
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_129;

   --------------------
   -- Initialize_130 --
   --------------------

   procedure Initialize_130 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_130;

   --------------------
   -- Initialize_131 --
   --------------------

   procedure Initialize_131 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
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
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_133;

   --------------------
   -- Initialize_134 --
   --------------------

   procedure Initialize_134 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
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
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
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
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_137;

   --------------------
   -- Initialize_138 --
   --------------------

   procedure Initialize_138 is
   begin
      null;
   end Initialize_138;

   --------------------
   -- Initialize_139 --
   --------------------

   procedure Initialize_139 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
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
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_140;

   --------------------
   -- Initialize_141 --
   --------------------

   procedure Initialize_141 is
   begin
      null;
   end Initialize_141;

   --------------------
   -- Initialize_142 --
   --------------------

   procedure Initialize_142 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
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
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_143;

   --------------------
   -- Initialize_144 --
   --------------------

   procedure Initialize_144 is
   begin
      null;
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
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_145;

   --------------------
   -- Initialize_146 --
   --------------------

   procedure Initialize_146 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_146;

   --------------------
   -- Initialize_147 --
   --------------------

   procedure Initialize_147 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_147;

   --------------------
   -- Initialize_148 --
   --------------------

   procedure Initialize_148 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_148;

   --------------------
   -- Initialize_149 --
   --------------------

   procedure Initialize_149 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
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
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_151;

   --------------------
   -- Initialize_152 --
   --------------------

   procedure Initialize_152 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_152;

   --------------------
   -- Initialize_153 --
   --------------------

   procedure Initialize_153 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
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
        Base + 44,
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
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_155;

   --------------------
   -- Initialize_156 --
   --------------------

   procedure Initialize_156 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
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
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_157;

   --------------------
   -- Initialize_158 --
   --------------------

   procedure Initialize_158 is
   begin
      null;
   end Initialize_158;

   --------------------
   -- Initialize_159 --
   --------------------

   procedure Initialize_159 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_159;

   --------------------
   -- Initialize_160 --
   --------------------

   procedure Initialize_160 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
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
        Base + 47,
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
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_162;

   --------------------
   -- Initialize_163 --
   --------------------

   procedure Initialize_163 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
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
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_164;

   --------------------
   -- Initialize_165 --
   --------------------

   procedure Initialize_165 is
   begin
      null;
   end Initialize_165;

   --------------------
   -- Initialize_166 --
   --------------------

   procedure Initialize_166 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
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
        Base + 9,
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
        Base + 35,
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
        Base + 10,
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
        Base + 10,
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
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_172;

   --------------------
   -- Initialize_173 --
   --------------------

   procedure Initialize_173 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 174,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 174,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
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
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_174;

   --------------------
   -- Initialize_175 --
   --------------------

   procedure Initialize_175 is
   begin
      null;
   end Initialize_175;

   --------------------
   -- Initialize_176 --
   --------------------

   procedure Initialize_176 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
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
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_177;

   --------------------
   -- Initialize_178 --
   --------------------

   procedure Initialize_178 is
   begin
      null;
   end Initialize_178;

   --------------------
   -- Initialize_179 --
   --------------------

   procedure Initialize_179 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 179,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_179;

   --------------------
   -- Initialize_180 --
   --------------------

   procedure Initialize_180 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 181,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 181,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 182,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 182,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_180;

   --------------------
   -- Initialize_181 --
   --------------------

   procedure Initialize_181 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 181,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_181;

   --------------------
   -- Initialize_182 --
   --------------------

   procedure Initialize_182 is
   begin
      null;
   end Initialize_182;

   --------------------
   -- Initialize_183 --
   --------------------

   procedure Initialize_183 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 183,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_183;

   --------------------
   -- Initialize_184 --
   --------------------

   procedure Initialize_184 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 185,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 185,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 186,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 186,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_184;

   --------------------
   -- Initialize_185 --
   --------------------

   procedure Initialize_185 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 185,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_185;

   --------------------
   -- Initialize_186 --
   --------------------

   procedure Initialize_186 is
   begin
      null;
   end Initialize_186;

   --------------------
   -- Initialize_187 --
   --------------------

   procedure Initialize_187 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 187,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 188,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 187,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 188,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 187,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 187,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_187;

   --------------------
   -- Initialize_188 --
   --------------------

   procedure Initialize_188 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 188,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 187,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_188;

   --------------------
   -- Initialize_189 --
   --------------------

   procedure Initialize_189 is
   begin
      null;
   end Initialize_189;

   --------------------
   -- Initialize_190 --
   --------------------

   procedure Initialize_190 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 190,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_190;

   --------------------
   -- Initialize_191 --
   --------------------

   procedure Initialize_191 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 191,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_191;

   --------------------
   -- Initialize_192 --
   --------------------

   procedure Initialize_192 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_192;

   --------------------
   -- Initialize_193 --
   --------------------

   procedure Initialize_193 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 193,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_193;

   --------------------
   -- Initialize_194 --
   --------------------

   procedure Initialize_194 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_194;

   --------------------
   -- Initialize_195 --
   --------------------

   procedure Initialize_195 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 195,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_195;

   --------------------
   -- Initialize_196 --
   --------------------

   procedure Initialize_196 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 196,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_196;

   --------------------
   -- Initialize_197 --
   --------------------

   procedure Initialize_197 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 197,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_197;

   --------------------
   -- Initialize_198 --
   --------------------

   procedure Initialize_198 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 198,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_198;

   --------------------
   -- Initialize_199 --
   --------------------

   procedure Initialize_199 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 199,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_199;

   --------------------
   -- Initialize_200 --
   --------------------

   procedure Initialize_200 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 200,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_200;

   --------------------
   -- Initialize_201 --
   --------------------

   procedure Initialize_201 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 201,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_201;

   --------------------
   -- Initialize_202 --
   --------------------

   procedure Initialize_202 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 202,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_202;

   --------------------
   -- Initialize_203 --
   --------------------

   procedure Initialize_203 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 203,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_203;

   --------------------
   -- Initialize_204 --
   --------------------

   procedure Initialize_204 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 204,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_204;

   --------------------
   -- Initialize_205 --
   --------------------

   procedure Initialize_205 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 205,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_205;

   --------------------
   -- Initialize_206 --
   --------------------

   procedure Initialize_206 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 206,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 206,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 207,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 206,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 207,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 206,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 208,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 206,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 208,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_206;

   --------------------
   -- Initialize_207 --
   --------------------

   procedure Initialize_207 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 207,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 206,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_207;

   --------------------
   -- Initialize_208 --
   --------------------

   procedure Initialize_208 is
   begin
      null;
   end Initialize_208;

   --------------------
   -- Initialize_209 --
   --------------------

   procedure Initialize_209 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 209,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_209;

   --------------------
   -- Initialize_210 --
   --------------------

   procedure Initialize_210 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 211,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 211,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 212,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 212,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_210;

   --------------------
   -- Initialize_211 --
   --------------------

   procedure Initialize_211 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 211,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_211;

   --------------------
   -- Initialize_212 --
   --------------------

   procedure Initialize_212 is
   begin
      null;
   end Initialize_212;

   --------------------
   -- Initialize_213 --
   --------------------

   procedure Initialize_213 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 213,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 213,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 214,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 213,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 214,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 213,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 215,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 213,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 215,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_213;

   --------------------
   -- Initialize_214 --
   --------------------

   procedure Initialize_214 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 214,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 213,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_214;

   --------------------
   -- Initialize_215 --
   --------------------

   procedure Initialize_215 is
   begin
      null;
   end Initialize_215;

   --------------------
   -- Initialize_216 --
   --------------------

   procedure Initialize_216 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 216,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_216;

   --------------------
   -- Initialize_217 --
   --------------------

   procedure Initialize_217 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 217,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_217;

   --------------------
   -- Initialize_218 --
   --------------------

   procedure Initialize_218 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 218,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_218;

   --------------------
   -- Initialize_219 --
   --------------------

   procedure Initialize_219 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 219,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_219;

   --------------------
   -- Initialize_220 --
   --------------------

   procedure Initialize_220 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 220,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_220;

   --------------------
   -- Initialize_221 --
   --------------------

   procedure Initialize_221 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 221,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_221;

   --------------------
   -- Initialize_222 --
   --------------------

   procedure Initialize_222 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 222,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 222,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 223,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 222,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 223,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 222,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 224,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 222,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 224,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_222;

   --------------------
   -- Initialize_223 --
   --------------------

   procedure Initialize_223 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 223,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 222,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_223;

   --------------------
   -- Initialize_224 --
   --------------------

   procedure Initialize_224 is
   begin
      null;
   end Initialize_224;

   --------------------
   -- Initialize_225 --
   --------------------

   procedure Initialize_225 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 225,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_225;

   --------------------
   -- Initialize_226 --
   --------------------

   procedure Initialize_226 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 227,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 227,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 228,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 228,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_226;

   --------------------
   -- Initialize_227 --
   --------------------

   procedure Initialize_227 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 227,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_227;

   --------------------
   -- Initialize_228 --
   --------------------

   procedure Initialize_228 is
   begin
      null;
   end Initialize_228;

   --------------------
   -- Initialize_229 --
   --------------------

   procedure Initialize_229 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 229,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_229;

   --------------------
   -- Initialize_230 --
   --------------------

   procedure Initialize_230 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 230,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 230,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 231,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 230,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 231,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 230,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 232,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 230,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 232,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_230;

   --------------------
   -- Initialize_231 --
   --------------------

   procedure Initialize_231 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 231,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 230,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_231;

   --------------------
   -- Initialize_232 --
   --------------------

   procedure Initialize_232 is
   begin
      null;
   end Initialize_232;

   --------------------
   -- Initialize_233 --
   --------------------

   procedure Initialize_233 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 233,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_233;

   --------------------
   -- Initialize_234 --
   --------------------

   procedure Initialize_234 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 234,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_234;

   --------------------
   -- Initialize_235 --
   --------------------

   procedure Initialize_235 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 235,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_235;

   --------------------
   -- Initialize_236 --
   --------------------

   procedure Initialize_236 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 236,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_236;

   --------------------
   -- Initialize_237 --
   --------------------

   procedure Initialize_237 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 237,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 237,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 238,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 237,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 238,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 237,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 239,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 237,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 239,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_237;

   --------------------
   -- Initialize_238 --
   --------------------

   procedure Initialize_238 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 238,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 237,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_238;

   --------------------
   -- Initialize_239 --
   --------------------

   procedure Initialize_239 is
   begin
      null;
   end Initialize_239;

   --------------------
   -- Initialize_240 --
   --------------------

   procedure Initialize_240 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 240,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_240;

   --------------------
   -- Initialize_241 --
   --------------------

   procedure Initialize_241 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_241;

   --------------------
   -- Initialize_242 --
   --------------------

   procedure Initialize_242 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 242,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_242;

   --------------------
   -- Initialize_243 --
   --------------------

   procedure Initialize_243 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 243,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 244,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 243,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 244,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 243,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 245,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 243,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 245,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_243;

   --------------------
   -- Initialize_244 --
   --------------------

   procedure Initialize_244 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 244,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 243,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_244;

   --------------------
   -- Initialize_245 --
   --------------------

   procedure Initialize_245 is
   begin
      null;
   end Initialize_245;

   --------------------
   -- Initialize_246 --
   --------------------

   procedure Initialize_246 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 246,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_246;

   --------------------
   -- Initialize_247 --
   --------------------

   procedure Initialize_247 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 247,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 247,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 248,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 247,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 248,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 247,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 249,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 247,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 249,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_247;

   --------------------
   -- Initialize_248 --
   --------------------

   procedure Initialize_248 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 248,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 247,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_248;

   --------------------
   -- Initialize_249 --
   --------------------

   procedure Initialize_249 is
   begin
      null;
   end Initialize_249;

   --------------------
   -- Initialize_250 --
   --------------------

   procedure Initialize_250 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 250,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 250,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 251,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 250,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 251,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
   end Initialize_250;

   --------------------
   -- Initialize_251 --
   --------------------

   procedure Initialize_251 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 251,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 250,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_251;

   --------------------
   -- Initialize_252 --
   --------------------

   procedure Initialize_252 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 252,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_252;

   --------------------
   -- Initialize_253 --
   --------------------

   procedure Initialize_253 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 253,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_253;

   --------------------
   -- Initialize_254 --
   --------------------

   procedure Initialize_254 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 254,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_254;

   --------------------
   -- Initialize_255 --
   --------------------

   procedure Initialize_255 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 255,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_255;

   --------------------
   -- Initialize_256 --
   --------------------

   procedure Initialize_256 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 256,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 256,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 257,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 256,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 257,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 256,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 258,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 256,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 258,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_256;

   --------------------
   -- Initialize_257 --
   --------------------

   procedure Initialize_257 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 257,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 256,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_257;

   --------------------
   -- Initialize_258 --
   --------------------

   procedure Initialize_258 is
   begin
      null;
   end Initialize_258;

   --------------------
   -- Initialize_259 --
   --------------------

   procedure Initialize_259 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 259,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_259;

   --------------------
   -- Initialize_260 --
   --------------------

   procedure Initialize_260 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 260,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_260;

   --------------------
   -- Initialize_261 --
   --------------------

   procedure Initialize_261 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 261,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_261;

   --------------------
   -- Initialize_262 --
   --------------------

   procedure Initialize_262 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 262,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 262,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 263,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 262,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 263,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 262,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 264,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 262,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 264,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_262;

   --------------------
   -- Initialize_263 --
   --------------------

   procedure Initialize_263 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 263,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 262,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_263;

   --------------------
   -- Initialize_264 --
   --------------------

   procedure Initialize_264 is
   begin
      null;
   end Initialize_264;

   --------------------
   -- Initialize_265 --
   --------------------

   procedure Initialize_265 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 266,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 266,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 267,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 267,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_265;

   --------------------
   -- Initialize_266 --
   --------------------

   procedure Initialize_266 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 266,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_266;

   --------------------
   -- Initialize_267 --
   --------------------

   procedure Initialize_267 is
   begin
      null;
   end Initialize_267;

   --------------------
   -- Initialize_268 --
   --------------------

   procedure Initialize_268 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 268,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_268;

   --------------------
   -- Initialize_269 --
   --------------------

   procedure Initialize_269 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Constrained_Element_Constraint,
        Base + 269,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element_A_Constraint,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Constraint_Constraint_Constrained_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 269,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 270,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 269,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 270,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 269,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 271,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Specification_Owning_Constraint,
        Base + 269,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint,
        Base + 271,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Constraint_Constraint_Specification);
   end Initialize_269;

   --------------------
   -- Initialize_270 --
   --------------------

   procedure Initialize_270 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 270,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 269,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_270;

   --------------------
   -- Initialize_271 --
   --------------------

   procedure Initialize_271 is
   begin
      null;
   end Initialize_271;

   --------------------
   -- Initialize_272 --
   --------------------

   procedure Initialize_272 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 273,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 274,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 273,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 274,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 273,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 274,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 273,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 274,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_272;

   --------------------
   -- Initialize_273 --
   --------------------

   procedure Initialize_273 is
   begin
      null;
   end Initialize_273;

   --------------------
   -- Initialize_274 --
   --------------------

   procedure Initialize_274 is
   begin
      null;
   end Initialize_274;

   --------------------
   -- Initialize_275 --
   --------------------

   procedure Initialize_275 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 277,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 279,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 276,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 276,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 277,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 279,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 277,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 279,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 277,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 279,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_275;

   --------------------
   -- Initialize_276 --
   --------------------

   procedure Initialize_276 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 276,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_276;

   --------------------
   -- Initialize_277 --
   --------------------

   procedure Initialize_277 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 277,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 278,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 277,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 278,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
   end Initialize_277;

   --------------------
   -- Initialize_278 --
   --------------------

   procedure Initialize_278 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 278,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 277,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_278;

   --------------------
   -- Initialize_279 --
   --------------------

   procedure Initialize_279 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 279,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 280,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 279,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 280,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
   end Initialize_279;

   --------------------
   -- Initialize_280 --
   --------------------

   procedure Initialize_280 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 280,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 279,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_280;

   --------------------
   -- Initialize_281 --
   --------------------

   procedure Initialize_281 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 283,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 285,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 289,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 291,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 282,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 282,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 283,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 285,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 289,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 291,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 283,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 285,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 289,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 291,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 283,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 285,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 289,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 291,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_281;

   --------------------
   -- Initialize_282 --
   --------------------

   procedure Initialize_282 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 282,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_282;

   --------------------
   -- Initialize_283 --
   --------------------

   procedure Initialize_283 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 283,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 284,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 283,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 284,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
   end Initialize_283;

   --------------------
   -- Initialize_284 --
   --------------------

   procedure Initialize_284 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 284,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 283,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_284;

   --------------------
   -- Initialize_285 --
   --------------------

   procedure Initialize_285 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 285,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 286,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 285,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 286,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
   end Initialize_285;

   --------------------
   -- Initialize_286 --
   --------------------

   procedure Initialize_286 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 286,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 285,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_286;

   --------------------
   -- Initialize_287 --
   --------------------

   procedure Initialize_287 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 288,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 288,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
   end Initialize_287;

   --------------------
   -- Initialize_288 --
   --------------------

   procedure Initialize_288 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 288,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_288;

   --------------------
   -- Initialize_289 --
   --------------------

   procedure Initialize_289 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 289,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 290,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 289,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 290,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
   end Initialize_289;

   --------------------
   -- Initialize_290 --
   --------------------

   procedure Initialize_290 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 290,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 289,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_290;

   --------------------
   -- Initialize_291 --
   --------------------

   procedure Initialize_291 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 291,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 292,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 291,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 292,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
   end Initialize_291;

   --------------------
   -- Initialize_292 --
   --------------------

   procedure Initialize_292 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 292,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 291,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_292;

   --------------------
   -- Initialize_293 --
   --------------------

   procedure Initialize_293 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 294,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 295,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 296,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 297,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 298,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 299,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 300,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 301,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 302,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 303,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 304,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 306,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 307,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 308,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 294,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 295,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 296,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 297,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 298,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 299,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 300,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 301,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 302,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 303,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 304,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 306,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 307,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 308,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 294,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 295,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 296,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 297,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 298,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 299,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 300,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 301,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 302,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 303,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 304,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 306,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 307,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 308,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 294,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 295,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 296,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 297,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 298,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 299,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 300,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 301,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 302,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 303,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 304,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 306,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 307,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 308,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_293;

   --------------------
   -- Initialize_294 --
   --------------------

   procedure Initialize_294 is
   begin
      null;
   end Initialize_294;

   --------------------
   -- Initialize_295 --
   --------------------

   procedure Initialize_295 is
   begin
      null;
   end Initialize_295;

   --------------------
   -- Initialize_296 --
   --------------------

   procedure Initialize_296 is
   begin
      null;
   end Initialize_296;

   --------------------
   -- Initialize_297 --
   --------------------

   procedure Initialize_297 is
   begin
      null;
   end Initialize_297;

   --------------------
   -- Initialize_298 --
   --------------------

   procedure Initialize_298 is
   begin
      null;
   end Initialize_298;

   --------------------
   -- Initialize_299 --
   --------------------

   procedure Initialize_299 is
   begin
      null;
   end Initialize_299;

   --------------------
   -- Initialize_300 --
   --------------------

   procedure Initialize_300 is
   begin
      null;
   end Initialize_300;

   --------------------
   -- Initialize_301 --
   --------------------

   procedure Initialize_301 is
   begin
      null;
   end Initialize_301;

   --------------------
   -- Initialize_302 --
   --------------------

   procedure Initialize_302 is
   begin
      null;
   end Initialize_302;

   --------------------
   -- Initialize_303 --
   --------------------

   procedure Initialize_303 is
   begin
      null;
   end Initialize_303;

   --------------------
   -- Initialize_304 --
   --------------------

   procedure Initialize_304 is
   begin
      null;
   end Initialize_304;

   --------------------
   -- Initialize_305 --
   --------------------

   procedure Initialize_305 is
   begin
      null;
   end Initialize_305;

   --------------------
   -- Initialize_306 --
   --------------------

   procedure Initialize_306 is
   begin
      null;
   end Initialize_306;

   --------------------
   -- Initialize_307 --
   --------------------

   procedure Initialize_307 is
   begin
      null;
   end Initialize_307;

   --------------------
   -- Initialize_308 --
   --------------------

   procedure Initialize_308 is
   begin
      null;
   end Initialize_308;

   --------------------
   -- Initialize_309 --
   --------------------

   procedure Initialize_309 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 311,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 313,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member_A_Namespace,
        Base + 315,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Namespace_Namespace_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 310,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 310,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 311,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 313,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 315,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 311,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 313,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Owned_Literal_Enumeration,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration,
        Base + 315,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 311,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 313,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace,
        Base + 315,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member);
   end Initialize_309;

   --------------------
   -- Initialize_310 --
   --------------------

   procedure Initialize_310 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 310,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_310;

   --------------------
   -- Initialize_311 --
   --------------------

   procedure Initialize_311 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 311,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 311,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
   end Initialize_311;

   --------------------
   -- Initialize_312 --
   --------------------

   procedure Initialize_312 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 311,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_312;

   --------------------
   -- Initialize_313 --
   --------------------

   procedure Initialize_313 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 313,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 314,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 313,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 314,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
   end Initialize_313;

   --------------------
   -- Initialize_314 --
   --------------------

   procedure Initialize_314 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 314,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 313,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_314;

   --------------------
   -- Initialize_315 --
   --------------------

   procedure Initialize_315 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Comment_Owning_Element,
        Base + 315,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element,
        Base + 316,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Owning_Element_Element_Owned_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 315,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element_Element_Owner,
        Base + 316,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner_Element_Owned_Element);
   end Initialize_315;

   --------------------
   -- Initialize_316 --
   --------------------

   procedure Initialize_316 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Annotated_Element_Comment,
        Base + 316,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element_A_Comment,
        Base + 315,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Comment_Comment_Annotated_Element);
   end Initialize_316;

   --------------------
   -- Initialize_317 --
   --------------------

   procedure Initialize_317 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Import_Imported_Package_Package_Import,
        Base + 317,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Import_Imported_Package_A_Package_Import,
        AMF.Internals.Tables.DI_Metamodel.MM_DI_DI,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Package_Import_Package_Import_Imported_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Relationship_Related_Element_Relationship,
        Base + 317,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Relationship_Related_Element_A_Relationship,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Relationship_Relationship_Related_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Relationship_Related_Element_Relationship,
        Base + 317,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Relationship_Related_Element_A_Relationship,
        AMF.Internals.Tables.DI_Metamodel.MM_DI_DI,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Relationship_Relationship_Related_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Directed_Relationship_Source_Directed_Relationship,
        Base + 317,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Source_A_Directed_Relationship,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Directed_Relationship_Directed_Relationship_Source);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Directed_Relationship_Target_Directed_Relationship,
        Base + 317,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Target_A_Directed_Relationship,
        AMF.Internals.Tables.DI_Metamodel.MM_DI_DI,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Directed_Relationship_Directed_Relationship_Target);
   end Initialize_317;

   --------------------
   -- Initialize_318 --
   --------------------

   procedure Initialize_318 is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Import_Imported_Package_Package_Import,
        Base + 318,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Import_Imported_Package_A_Package_Import,
        AMF.Internals.Tables.UML_Metamodel.MM_UML_UML,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Package_Import_Package_Import_Imported_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Relationship_Related_Element_Relationship,
        Base + 318,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Relationship_Related_Element_A_Relationship,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Relationship_Relationship_Related_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Relationship_Related_Element_Relationship,
        Base + 318,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Relationship_Related_Element_A_Relationship,
        AMF.Internals.Tables.UML_Metamodel.MM_UML_UML,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Relationship_Relationship_Related_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Directed_Relationship_Source_Directed_Relationship,
        Base + 318,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Source_A_Directed_Relationship,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Directed_Relationship_Directed_Relationship_Source);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Directed_Relationship_Target_Directed_Relationship,
        Base + 318,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Target_A_Directed_Relationship,
        AMF.Internals.Tables.UML_Metamodel.MM_UML_UML,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_A_Directed_Relationship_Directed_Relationship_Target);
   end Initialize_318;

   --------------------
   -- Initialize_319 --
   --------------------

   procedure Initialize_319 is
   begin
      null;
   end Initialize_319;

end AMF.Internals.Tables.UMLDI_Metamodel.Links;
