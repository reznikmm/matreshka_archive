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
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.DG_String_Data_00;
with AMF.Internals.Tables.DG_String_Data_01;

package body AMF.Internals.Tables.DG_Metamodel.Properties is

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
      Initialize_320;
      Initialize_321;
      Initialize_322;
   end Initialize;

   ------------------
   -- Initialize_1 --
   ------------------

   procedure Initialize_1 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 1,
        AMF.Internals.Tables.DG_String_Data_01.MS_010C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 1, (Is_Empty => True));
   end Initialize_1;

   ------------------
   -- Initialize_2 --
   ------------------

   procedure Initialize_2 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 2,
        AMF.Internals.Tables.DG_String_Data_00.MS_0096'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 2, (Is_Empty => True));
   end Initialize_2;

   ------------------
   -- Initialize_3 --
   ------------------

   procedure Initialize_3 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 3,
        AMF.Internals.Tables.DG_String_Data_00.MS_0048'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 3, (Is_Empty => True));
   end Initialize_3;

   ------------------
   -- Initialize_4 --
   ------------------

   procedure Initialize_4 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 4,
        AMF.Internals.Tables.DG_String_Data_00.MS_00E5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 4, (Is_Empty => True));
   end Initialize_4;

   ------------------
   -- Initialize_5 --
   ------------------

   procedure Initialize_5 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 5, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 5,
        AMF.Internals.Tables.DG_String_Data_00.MS_0027'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 5, (Is_Empty => True));
   end Initialize_5;

   ------------------
   -- Initialize_6 --
   ------------------

   procedure Initialize_6 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 6, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 6,
        AMF.Internals.Tables.DG_String_Data_01.MS_011F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 6, (Is_Empty => True));
   end Initialize_6;

   ------------------
   -- Initialize_7 --
   ------------------

   procedure Initialize_7 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 7, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 7,
        AMF.Internals.Tables.DG_String_Data_00.MS_00F3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 7, (Is_Empty => True));
   end Initialize_7;

   ------------------
   -- Initialize_8 --
   ------------------

   procedure Initialize_8 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 8,
        AMF.Internals.Tables.DG_String_Data_01.MS_0122'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 8, (Is_Empty => True));
   end Initialize_8;

   ------------------
   -- Initialize_9 --
   ------------------

   procedure Initialize_9 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 9,
        AMF.Internals.Tables.DG_String_Data_00.MS_0046'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 9, (Is_Empty => True));
   end Initialize_9;

   -------------------
   -- Initialize_10 --
   -------------------

   procedure Initialize_10 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 10,
        AMF.Internals.Tables.DG_String_Data_00.MS_0033'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 10, (Is_Empty => True));
   end Initialize_10;

   -------------------
   -- Initialize_11 --
   -------------------

   procedure Initialize_11 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 11,
        AMF.Internals.Tables.DG_String_Data_00.MS_008F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 11, (Is_Empty => True));
   end Initialize_11;

   -------------------
   -- Initialize_12 --
   -------------------

   procedure Initialize_12 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 12,
        AMF.Internals.Tables.DG_String_Data_00.MS_00CA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 12, (Is_Empty => True));
   end Initialize_12;

   -------------------
   -- Initialize_13 --
   -------------------

   procedure Initialize_13 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 13,
        AMF.Internals.Tables.DG_String_Data_00.MS_005F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 13, (Is_Empty => True));
   end Initialize_13;

   -------------------
   -- Initialize_14 --
   -------------------

   procedure Initialize_14 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 14,
        AMF.Internals.Tables.DG_String_Data_00.MS_0072'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 14, (Is_Empty => True));
   end Initialize_14;

   -------------------
   -- Initialize_15 --
   -------------------

   procedure Initialize_15 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 15,
        AMF.Internals.Tables.DG_String_Data_00.MS_00D7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 15, (Is_Empty => True));
   end Initialize_15;

   -------------------
   -- Initialize_16 --
   -------------------

   procedure Initialize_16 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 16,
        AMF.Internals.Tables.DG_String_Data_00.MS_00E2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 16, (Is_Empty => True));
   end Initialize_16;

   -------------------
   -- Initialize_17 --
   -------------------

   procedure Initialize_17 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 17,
        AMF.Internals.Tables.DG_String_Data_00.MS_007C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 17, (Is_Empty => True));
   end Initialize_17;

   -------------------
   -- Initialize_18 --
   -------------------

   procedure Initialize_18 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 18,
        AMF.Internals.Tables.DG_String_Data_00.MS_002D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 18, (Is_Empty => True));
   end Initialize_18;

   -------------------
   -- Initialize_19 --
   -------------------

   procedure Initialize_19 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 19,
        AMF.Internals.Tables.DG_String_Data_00.MS_0029'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 19, (Is_Empty => True));
   end Initialize_19;

   -------------------
   -- Initialize_20 --
   -------------------

   procedure Initialize_20 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 20,
        AMF.Internals.Tables.DG_String_Data_00.MS_00DE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 20, (Is_Empty => True));
   end Initialize_20;

   -------------------
   -- Initialize_21 --
   -------------------

   procedure Initialize_21 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 21,
        AMF.Internals.Tables.DG_String_Data_00.MS_003B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 21, (Is_Empty => True));
   end Initialize_21;

   -------------------
   -- Initialize_22 --
   -------------------

   procedure Initialize_22 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 22, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 22, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 22,
        AMF.Internals.Tables.DG_String_Data_01.MS_0107'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 22, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 22, (False, AMF.CMOF.Public_Visibility));
   end Initialize_22;

   -------------------
   -- Initialize_23 --
   -------------------

   procedure Initialize_23 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 23, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 23, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 23,
        AMF.Internals.Tables.DG_String_Data_00.MS_00BF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 23, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 23, (False, AMF.CMOF.Public_Visibility));
   end Initialize_23;

   -------------------
   -- Initialize_24 --
   -------------------

   procedure Initialize_24 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 24, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 24, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 24,
        AMF.Internals.Tables.DG_String_Data_01.MS_0108'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 24, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 24, (False, AMF.CMOF.Public_Visibility));
   end Initialize_24;

   -------------------
   -- Initialize_25 --
   -------------------

   procedure Initialize_25 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 25, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 25, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 25, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 25,
        AMF.Internals.Tables.DG_String_Data_00.MS_0056'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 25, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 25, (False, AMF.CMOF.Public_Visibility));
   end Initialize_25;

   -------------------
   -- Initialize_26 --
   -------------------

   procedure Initialize_26 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 26, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 26, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 26,
        AMF.Internals.Tables.DG_String_Data_00.MS_00A4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 26, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 26, (False, AMF.CMOF.Public_Visibility));
   end Initialize_26;

   -------------------
   -- Initialize_27 --
   -------------------

   procedure Initialize_27 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 27, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 27, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 27, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 27,
        AMF.Internals.Tables.DG_String_Data_01.MS_011D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 27, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 27, (False, AMF.CMOF.Public_Visibility));
   end Initialize_27;

   -------------------
   -- Initialize_28 --
   -------------------

   procedure Initialize_28 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 28, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 28,
        AMF.Internals.Tables.DG_String_Data_01.MS_0117'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 28, (False, AMF.CMOF.Public_Visibility));
   end Initialize_28;

   -------------------
   -- Initialize_29 --
   -------------------

   procedure Initialize_29 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 29, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 29,
        AMF.Internals.Tables.DG_String_Data_01.MS_0114'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 29, (False, AMF.CMOF.Public_Visibility));
   end Initialize_29;

   -------------------
   -- Initialize_30 --
   -------------------

   procedure Initialize_30 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 30,
        AMF.Internals.Tables.DG_String_Data_00.MS_00BE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 30, (False, AMF.CMOF.Public_Visibility));
   end Initialize_30;

   -------------------
   -- Initialize_31 --
   -------------------

   procedure Initialize_31 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 31,
        AMF.Internals.Tables.DG_String_Data_00.MS_00EF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 31, (False, AMF.CMOF.Public_Visibility));
   end Initialize_31;

   -------------------
   -- Initialize_32 --
   -------------------

   procedure Initialize_32 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 32,
        AMF.Internals.Tables.DG_String_Data_00.MS_0017'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 32, (False, AMF.CMOF.Public_Visibility));
   end Initialize_32;

   -------------------
   -- Initialize_33 --
   -------------------

   procedure Initialize_33 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 33,
        AMF.Internals.Tables.DG_String_Data_00.MS_00BE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 33, (False, AMF.CMOF.Public_Visibility));
   end Initialize_33;

   -------------------
   -- Initialize_34 --
   -------------------

   procedure Initialize_34 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 34,
        AMF.Internals.Tables.DG_String_Data_00.MS_0036'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 34, (False, AMF.CMOF.Public_Visibility));
   end Initialize_34;

   -------------------
   -- Initialize_35 --
   -------------------

   procedure Initialize_35 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 35,
        AMF.Internals.Tables.DG_String_Data_00.MS_00B3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 35, (False, AMF.CMOF.Public_Visibility));
   end Initialize_35;

   -------------------
   -- Initialize_36 --
   -------------------

   procedure Initialize_36 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 36, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Unique (Base + 36, False);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 36, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 36,
        AMF.Internals.Tables.DG_String_Data_00.MS_00A5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 36, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 36, (False, AMF.CMOF.Public_Visibility));
   end Initialize_36;

   -------------------
   -- Initialize_37 --
   -------------------

   procedure Initialize_37 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 37, (False, 2));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 37,
        AMF.Internals.Tables.DG_String_Data_00.MS_0066'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 37, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 37, (False, AMF.CMOF.Public_Visibility));
   end Initialize_37;

   -------------------
   -- Initialize_38 --
   -------------------

   procedure Initialize_38 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 38, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 38, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 38,
        AMF.Internals.Tables.DG_String_Data_00.MS_003A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 38, (False, AMF.CMOF.Public_Visibility));
   end Initialize_38;

   -------------------
   -- Initialize_39 --
   -------------------

   procedure Initialize_39 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 39, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 39,
        AMF.Internals.Tables.DG_String_Data_00.MS_0016'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 39, (False, AMF.CMOF.Public_Visibility));
   end Initialize_39;

   -------------------
   -- Initialize_40 --
   -------------------

   procedure Initialize_40 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 40, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Unique (Base + 40, False);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 40, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 40,
        AMF.Internals.Tables.DG_String_Data_00.MS_00A5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 40, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 40, (False, AMF.CMOF.Public_Visibility));
   end Initialize_40;

   -------------------
   -- Initialize_41 --
   -------------------

   procedure Initialize_41 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 41,
        AMF.Internals.Tables.DG_String_Data_00.MS_008E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 41, (False, AMF.CMOF.Public_Visibility));
   end Initialize_41;

   -------------------
   -- Initialize_42 --
   -------------------

   procedure Initialize_42 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 42,
        AMF.Internals.Tables.DG_String_Data_00.MS_0081'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 42, (False, AMF.CMOF.Public_Visibility));
   end Initialize_42;

   -------------------
   -- Initialize_43 --
   -------------------

   procedure Initialize_43 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 43,
        AMF.Internals.Tables.DG_String_Data_00.MS_00F4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 43, (False, AMF.CMOF.Public_Visibility));
   end Initialize_43;

   -------------------
   -- Initialize_44 --
   -------------------

   procedure Initialize_44 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 44,
        AMF.Internals.Tables.DG_String_Data_00.MS_0023'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 44, (False, AMF.CMOF.Public_Visibility));
   end Initialize_44;

   -------------------
   -- Initialize_45 --
   -------------------

   procedure Initialize_45 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 45,
        AMF.Internals.Tables.DG_String_Data_00.MS_007B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 45, (False, AMF.CMOF.Public_Visibility));
   end Initialize_45;

   -------------------
   -- Initialize_46 --
   -------------------

   procedure Initialize_46 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 46,
        AMF.Internals.Tables.DG_String_Data_01.MS_0121'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 46,
        AMF.Internals.Tables.DG_String_Data_00.MS_0006'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 46, (False, AMF.CMOF.Public_Visibility));
   end Initialize_46;

   -------------------
   -- Initialize_47 --
   -------------------

   procedure Initialize_47 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 47,
        AMF.Internals.Tables.DG_String_Data_00.MS_0037'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 47,
        AMF.Internals.Tables.DG_String_Data_00.MS_0025'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 47, (False, AMF.CMOF.Public_Visibility));
   end Initialize_47;

   -------------------
   -- Initialize_48 --
   -------------------

   procedure Initialize_48 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 48,
        AMF.Internals.Tables.DG_String_Data_01.MS_0121'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 48,
        AMF.Internals.Tables.DG_String_Data_00.MS_00A7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 48, (False, AMF.CMOF.Public_Visibility));
   end Initialize_48;

   -------------------
   -- Initialize_49 --
   -------------------

   procedure Initialize_49 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 49,
        AMF.Internals.Tables.DG_String_Data_00.MS_0037'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 49,
        AMF.Internals.Tables.DG_String_Data_00.MS_0086'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 49, (False, AMF.CMOF.Public_Visibility));
   end Initialize_49;

   -------------------
   -- Initialize_50 --
   -------------------

   procedure Initialize_50 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 50, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 50,
        AMF.Internals.Tables.DG_String_Data_00.MS_00BD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 50, (False, AMF.CMOF.Public_Visibility));
   end Initialize_50;

   -------------------
   -- Initialize_51 --
   -------------------

   procedure Initialize_51 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 51, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 51,
        AMF.Internals.Tables.DG_String_Data_00.MS_00AE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 51, (False, AMF.CMOF.Public_Visibility));
   end Initialize_51;

   -------------------
   -- Initialize_52 --
   -------------------

   procedure Initialize_52 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 52, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 52,
        AMF.Internals.Tables.DG_String_Data_01.MS_0120'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 52, (False, AMF.CMOF.Public_Visibility));
   end Initialize_52;

   -------------------
   -- Initialize_53 --
   -------------------

   procedure Initialize_53 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 53,
        AMF.Internals.Tables.DG_String_Data_00.MS_00B3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 53, (False, AMF.CMOF.Public_Visibility));
   end Initialize_53;

   -------------------
   -- Initialize_54 --
   -------------------

   procedure Initialize_54 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 54,
        AMF.Internals.Tables.DG_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 54, (False, AMF.CMOF.Public_Visibility));
   end Initialize_54;

   -------------------
   -- Initialize_55 --
   -------------------

   procedure Initialize_55 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 55,
        AMF.Internals.Tables.DG_String_Data_00.MS_0079'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 55, (False, AMF.CMOF.Public_Visibility));
   end Initialize_55;

   -------------------
   -- Initialize_56 --
   -------------------

   procedure Initialize_56 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 56, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Unique (Base + 56, False);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 56, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 56,
        AMF.Internals.Tables.DG_String_Data_01.MS_010A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 56, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 56, (False, AMF.CMOF.Public_Visibility));
   end Initialize_56;

   -------------------
   -- Initialize_57 --
   -------------------

   procedure Initialize_57 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 57,
        AMF.Internals.Tables.DG_String_Data_00.MS_008E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 57, (False, AMF.CMOF.Public_Visibility));
   end Initialize_57;

   -------------------
   -- Initialize_58 --
   -------------------

   procedure Initialize_58 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 58, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 58,
        AMF.Internals.Tables.DG_String_Data_00.MS_0014'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 58, (False, AMF.CMOF.Public_Visibility));
   end Initialize_58;

   -------------------
   -- Initialize_59 --
   -------------------

   procedure Initialize_59 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 59, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Unique (Base + 59, False);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 59, (False, 3));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 59,
        AMF.Internals.Tables.DG_String_Data_00.MS_00FF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 59, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 59, (False, AMF.CMOF.Public_Visibility));
   end Initialize_59;

   -------------------
   -- Initialize_60 --
   -------------------

   procedure Initialize_60 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 60, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Unique (Base + 60, False);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 60, (False, 2));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 60,
        AMF.Internals.Tables.DG_String_Data_00.MS_00FF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 60, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 60, (False, AMF.CMOF.Public_Visibility));
   end Initialize_60;

   -------------------
   -- Initialize_61 --
   -------------------

   procedure Initialize_61 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 61,
        AMF.Internals.Tables.DG_String_Data_00.MS_0019'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 61,
        AMF.Internals.Tables.DG_String_Data_00.MS_000E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 61, (False, AMF.CMOF.Public_Visibility));
   end Initialize_61;

   -------------------
   -- Initialize_62 --
   -------------------

   procedure Initialize_62 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 62,
        AMF.Internals.Tables.DG_String_Data_00.MS_0019'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 62,
        AMF.Internals.Tables.DG_String_Data_00.MS_00B1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 62, (False, AMF.CMOF.Public_Visibility));
   end Initialize_62;

   -------------------
   -- Initialize_63 --
   -------------------

   procedure Initialize_63 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 63,
        AMF.Internals.Tables.DG_String_Data_00.MS_0019'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 63,
        AMF.Internals.Tables.DG_String_Data_00.MS_00A8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 63, (False, AMF.CMOF.Public_Visibility));
   end Initialize_63;

   -------------------
   -- Initialize_64 --
   -------------------

   procedure Initialize_64 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 64,
        AMF.Internals.Tables.DG_String_Data_00.MS_0019'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 64,
        AMF.Internals.Tables.DG_String_Data_00.MS_009D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 64, (False, AMF.CMOF.Public_Visibility));
   end Initialize_64;

   -------------------
   -- Initialize_65 --
   -------------------

   procedure Initialize_65 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 65,
        AMF.Internals.Tables.DG_String_Data_00.MS_0019'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 65,
        AMF.Internals.Tables.DG_String_Data_00.MS_00EF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 65, (False, AMF.CMOF.Public_Visibility));
   end Initialize_65;

   -------------------
   -- Initialize_66 --
   -------------------

   procedure Initialize_66 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 66,
        AMF.Internals.Tables.DG_String_Data_00.MS_008E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 66, (False, AMF.CMOF.Public_Visibility));
   end Initialize_66;

   -------------------
   -- Initialize_67 --
   -------------------

   procedure Initialize_67 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 67,
        AMF.Internals.Tables.DG_String_Data_01.MS_0121'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 67,
        AMF.Internals.Tables.DG_String_Data_00.MS_0039'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 67, (False, AMF.CMOF.Public_Visibility));
   end Initialize_67;

   -------------------
   -- Initialize_68 --
   -------------------

   procedure Initialize_68 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 68, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 68,
        AMF.Internals.Tables.DG_String_Data_01.MS_010D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 68, (False, AMF.CMOF.Public_Visibility));
   end Initialize_68;

   -------------------
   -- Initialize_69 --
   -------------------

   procedure Initialize_69 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 69, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 69,
        AMF.Internals.Tables.DG_String_Data_00.MS_0022'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 69, (False, AMF.CMOF.Public_Visibility));
   end Initialize_69;

   -------------------
   -- Initialize_70 --
   -------------------

   procedure Initialize_70 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 70, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 70,
        AMF.Internals.Tables.DG_String_Data_00.MS_0095'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 70, (False, AMF.CMOF.Public_Visibility));
   end Initialize_70;

   -------------------
   -- Initialize_71 --
   -------------------

   procedure Initialize_71 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 71, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 71,
        AMF.Internals.Tables.DG_String_Data_00.MS_00A9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 71, (False, AMF.CMOF.Public_Visibility));
   end Initialize_71;

   -------------------
   -- Initialize_72 --
   -------------------

   procedure Initialize_72 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 72, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 72,
        AMF.Internals.Tables.DG_String_Data_00.MS_00A1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 72, (False, AMF.CMOF.Public_Visibility));
   end Initialize_72;

   -------------------
   -- Initialize_73 --
   -------------------

   procedure Initialize_73 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 73, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 73,
        AMF.Internals.Tables.DG_String_Data_01.MS_0119'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 73, (False, AMF.CMOF.Public_Visibility));
   end Initialize_73;

   -------------------
   -- Initialize_74 --
   -------------------

   procedure Initialize_74 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 74, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 74,
        AMF.Internals.Tables.DG_String_Data_00.MS_0080'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 74, (False, AMF.CMOF.Public_Visibility));
   end Initialize_74;

   -------------------
   -- Initialize_75 --
   -------------------

   procedure Initialize_75 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 75, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 75,
        AMF.Internals.Tables.DG_String_Data_00.MS_0044'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 75, (False, AMF.CMOF.Public_Visibility));
   end Initialize_75;

   -------------------
   -- Initialize_76 --
   -------------------

   procedure Initialize_76 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 76, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 76,
        AMF.Internals.Tables.DG_String_Data_00.MS_00AF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 76, (False, AMF.CMOF.Public_Visibility));
   end Initialize_76;

   -------------------
   -- Initialize_77 --
   -------------------

   procedure Initialize_77 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 77, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 77,
        AMF.Internals.Tables.DG_String_Data_00.MS_001D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 77, (False, AMF.CMOF.Public_Visibility));
   end Initialize_77;

   -------------------
   -- Initialize_78 --
   -------------------

   procedure Initialize_78 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 78, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 78,
        AMF.Internals.Tables.DG_String_Data_00.MS_00A2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 78, (False, AMF.CMOF.Public_Visibility));
   end Initialize_78;

   -------------------
   -- Initialize_79 --
   -------------------

   procedure Initialize_79 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 79, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Unique (Base + 79, False);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 79, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 79,
        AMF.Internals.Tables.DG_String_Data_01.MS_011C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 79, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 79, (False, AMF.CMOF.Public_Visibility));
   end Initialize_79;

   -------------------
   -- Initialize_80 --
   -------------------

   procedure Initialize_80 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 80, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 80,
        AMF.Internals.Tables.DG_String_Data_00.MS_0034'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 80, (False, AMF.CMOF.Public_Visibility));
   end Initialize_80;

   -------------------
   -- Initialize_81 --
   -------------------

   procedure Initialize_81 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 81, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 81,
        AMF.Internals.Tables.DG_String_Data_00.MS_006D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 81, (False, AMF.CMOF.Public_Visibility));
   end Initialize_81;

   -------------------
   -- Initialize_82 --
   -------------------

   procedure Initialize_82 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 82,
        AMF.Internals.Tables.DG_String_Data_00.MS_00E1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 82, (False, AMF.CMOF.Public_Visibility));
   end Initialize_82;

   -------------------
   -- Initialize_83 --
   -------------------

   procedure Initialize_83 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 83,
        AMF.Internals.Tables.DG_String_Data_00.MS_008E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 83, (False, AMF.CMOF.Public_Visibility));
   end Initialize_83;

   -------------------
   -- Initialize_84 --
   -------------------

   procedure Initialize_84 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 84,
        AMF.Internals.Tables.DG_String_Data_00.MS_00EE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 84, (False, AMF.CMOF.Public_Visibility));
   end Initialize_84;

   -------------------
   -- Initialize_85 --
   -------------------

   procedure Initialize_85 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 85,
        AMF.Internals.Tables.DG_String_Data_00.MS_00AD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 85, (False, AMF.CMOF.Private_Visibility));
   end Initialize_85;

   -------------------
   -- Initialize_86 --
   -------------------

   procedure Initialize_86 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 86, (False, AMF.CMOF.Private_Visibility));
   end Initialize_86;

   -------------------
   -- Initialize_87 --
   -------------------

   procedure Initialize_87 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 87,
        AMF.Internals.Tables.DG_String_Data_01.MS_010F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 87, (False, AMF.CMOF.Private_Visibility));
   end Initialize_87;

   -------------------
   -- Initialize_88 --
   -------------------

   procedure Initialize_88 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 88,
        AMF.Internals.Tables.DG_String_Data_00.MS_001B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 88, (False, AMF.CMOF.Private_Visibility));
   end Initialize_88;

   -------------------
   -- Initialize_89 --
   -------------------

   procedure Initialize_89 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 89,
        AMF.Internals.Tables.DG_String_Data_00.MS_002C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 89, (False, AMF.CMOF.Private_Visibility));
   end Initialize_89;

   -------------------
   -- Initialize_90 --
   -------------------

   procedure Initialize_90 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 90,
        AMF.Internals.Tables.DG_String_Data_00.MS_0069'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 90, (False, AMF.CMOF.Private_Visibility));
   end Initialize_90;

   -------------------
   -- Initialize_91 --
   -------------------

   procedure Initialize_91 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 91,
        AMF.Internals.Tables.DG_String_Data_00.MS_0042'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 91, (False, AMF.CMOF.Private_Visibility));
   end Initialize_91;

   -------------------
   -- Initialize_92 --
   -------------------

   procedure Initialize_92 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 92,
        AMF.Internals.Tables.DG_String_Data_01.MS_0113'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 92, (False, AMF.CMOF.Private_Visibility));
   end Initialize_92;

   -------------------
   -- Initialize_93 --
   -------------------

   procedure Initialize_93 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 93,
        AMF.Internals.Tables.DG_String_Data_00.MS_00EB'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 93, (False, AMF.CMOF.Private_Visibility));
   end Initialize_93;

   -------------------
   -- Initialize_94 --
   -------------------

   procedure Initialize_94 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 94,
        AMF.Internals.Tables.DG_String_Data_00.MS_0068'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 94, (False, AMF.CMOF.Private_Visibility));
   end Initialize_94;

   -------------------
   -- Initialize_95 --
   -------------------

   procedure Initialize_95 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 95,
        AMF.Internals.Tables.DG_String_Data_00.MS_003C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 95, (False, AMF.CMOF.Private_Visibility));
   end Initialize_95;

   -------------------
   -- Initialize_96 --
   -------------------

   procedure Initialize_96 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 96,
        AMF.Internals.Tables.DG_String_Data_00.MS_004E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 96, (False, AMF.CMOF.Private_Visibility));
   end Initialize_96;

   -------------------
   -- Initialize_97 --
   -------------------

   procedure Initialize_97 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 97,
        AMF.Internals.Tables.DG_String_Data_00.MS_0055'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 97, (False, AMF.CMOF.Private_Visibility));
   end Initialize_97;

   -------------------
   -- Initialize_98 --
   -------------------

   procedure Initialize_98 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 98,
        AMF.Internals.Tables.DG_String_Data_00.MS_00F8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Uri
       (Base + 98,
        AMF.Internals.Tables.DG_String_Data_00.MS_00F7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 98, (Is_Empty => True));
   end Initialize_98;

   -------------------
   -- Initialize_99 --
   -------------------

   procedure Initialize_99 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 99,
        AMF.Internals.Tables.DG_String_Data_00.MS_0007'Access);
   end Initialize_99;

   --------------------
   -- Initialize_100 --
   --------------------

   procedure Initialize_100 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 100, AMF.CMOF.Public_Visibility);
   end Initialize_100;

   --------------------
   -- Initialize_101 --
   --------------------

   procedure Initialize_101 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 101,
        AMF.Internals.Tables.DG_String_Data_01.MS_0103'Access);
   end Initialize_101;

   --------------------
   -- Initialize_102 --
   --------------------

   procedure Initialize_102 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 102,
        AMF.Internals.Tables.DG_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 102, (Is_Empty => True));
   end Initialize_102;

   --------------------
   -- Initialize_103 --
   --------------------

   procedure Initialize_103 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 103,
        AMF.Internals.Tables.DG_String_Data_00.MS_0043'Access);
   end Initialize_103;

   --------------------
   -- Initialize_104 --
   --------------------

   procedure Initialize_104 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 104, (Is_Empty => True));
   end Initialize_104;

   --------------------
   -- Initialize_105 --
   --------------------

   procedure Initialize_105 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 105,
        AMF.Internals.Tables.DG_String_Data_01.MS_011A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 105, (Is_Empty => True));
   end Initialize_105;

   --------------------
   -- Initialize_106 --
   --------------------

   procedure Initialize_106 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 106,
        AMF.Internals.Tables.DG_String_Data_00.MS_002A'Access);
   end Initialize_106;

   --------------------
   -- Initialize_107 --
   --------------------

   procedure Initialize_107 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 107, (Is_Empty => True));
   end Initialize_107;

   --------------------
   -- Initialize_108 --
   --------------------

   procedure Initialize_108 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 108,
        AMF.Internals.Tables.DG_String_Data_00.MS_002B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 108, (Is_Empty => True));
   end Initialize_108;

   --------------------
   -- Initialize_109 --
   --------------------

   procedure Initialize_109 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 109,
        AMF.Internals.Tables.DG_String_Data_00.MS_0084'Access);
   end Initialize_109;

   --------------------
   -- Initialize_110 --
   --------------------

   procedure Initialize_110 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 110, (Is_Empty => True));
   end Initialize_110;

   --------------------
   -- Initialize_111 --
   --------------------

   procedure Initialize_111 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 111,
        AMF.Internals.Tables.DG_String_Data_00.MS_00EA'Access);
   end Initialize_111;

   --------------------
   -- Initialize_112 --
   --------------------

   procedure Initialize_112 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 112,
        AMF.Internals.Tables.DG_String_Data_00.MS_003F'Access);
   end Initialize_112;

   --------------------
   -- Initialize_113 --
   --------------------

   procedure Initialize_113 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 113,
        AMF.Internals.Tables.DG_String_Data_00.MS_0065'Access);
   end Initialize_113;

   --------------------
   -- Initialize_114 --
   --------------------

   procedure Initialize_114 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 114,
        AMF.Internals.Tables.DG_String_Data_00.MS_00CB'Access);
   end Initialize_114;

   --------------------
   -- Initialize_115 --
   --------------------

   procedure Initialize_115 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 115,
        AMF.Internals.Tables.DG_String_Data_00.MS_0060'Access);
   end Initialize_115;

   --------------------
   -- Initialize_116 --
   --------------------

   procedure Initialize_116 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 116,
        AMF.Internals.Tables.DG_String_Data_00.MS_004A'Access);
   end Initialize_116;

   --------------------
   -- Initialize_117 --
   --------------------

   procedure Initialize_117 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 117,
        AMF.Internals.Tables.DG_String_Data_00.MS_005A'Access);
   end Initialize_117;

   --------------------
   -- Initialize_118 --
   --------------------

   procedure Initialize_118 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 118,
        AMF.Internals.Tables.DG_String_Data_00.MS_0018'Access);
   end Initialize_118;

   --------------------
   -- Initialize_119 --
   --------------------

   procedure Initialize_119 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 119,
        AMF.Internals.Tables.DG_String_Data_00.MS_0070'Access);
   end Initialize_119;

   --------------------
   -- Initialize_120 --
   --------------------

   procedure Initialize_120 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 120,
        AMF.Internals.Tables.DG_String_Data_00.MS_006C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 120, (Is_Empty => True));
   end Initialize_120;

   --------------------
   -- Initialize_121 --
   --------------------

   procedure Initialize_121 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 121,
        AMF.Internals.Tables.DG_String_Data_00.MS_0057'Access);
   end Initialize_121;

   --------------------
   -- Initialize_122 --
   --------------------

   procedure Initialize_122 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 122, (Is_Empty => True));
   end Initialize_122;

   --------------------
   -- Initialize_123 --
   --------------------

   procedure Initialize_123 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 123,
        AMF.Internals.Tables.DG_String_Data_00.MS_00FC'Access);
   end Initialize_123;

   --------------------
   -- Initialize_124 --
   --------------------

   procedure Initialize_124 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 124,
        AMF.Internals.Tables.DG_String_Data_01.MS_0102'Access);
   end Initialize_124;

   --------------------
   -- Initialize_125 --
   --------------------

   procedure Initialize_125 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 125,
        AMF.Internals.Tables.DG_String_Data_00.MS_00C3'Access);
   end Initialize_125;

   --------------------
   -- Initialize_126 --
   --------------------

   procedure Initialize_126 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 126,
        AMF.Internals.Tables.DG_String_Data_01.MS_010E'Access);
   end Initialize_126;

   --------------------
   -- Initialize_127 --
   --------------------

   procedure Initialize_127 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 127,
        AMF.Internals.Tables.DG_String_Data_00.MS_0092'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 127, (Is_Empty => True));
   end Initialize_127;

   --------------------
   -- Initialize_128 --
   --------------------

   procedure Initialize_128 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 128,
        AMF.Internals.Tables.DG_String_Data_00.MS_00C0'Access);
   end Initialize_128;

   --------------------
   -- Initialize_129 --
   --------------------

   procedure Initialize_129 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 129,
        AMF.Internals.Tables.DG_String_Data_00.MS_008D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 129, (Is_Empty => True));
   end Initialize_129;

   --------------------
   -- Initialize_130 --
   --------------------

   procedure Initialize_130 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 130,
        AMF.Internals.Tables.DG_String_Data_00.MS_0020'Access);
   end Initialize_130;

   --------------------
   -- Initialize_131 --
   --------------------

   procedure Initialize_131 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 131, (Is_Empty => True));
   end Initialize_131;

   --------------------
   -- Initialize_132 --
   --------------------

   procedure Initialize_132 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 132,
        AMF.Internals.Tables.DG_String_Data_00.MS_00F1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 132, (Is_Empty => True));
   end Initialize_132;

   --------------------
   -- Initialize_133 --
   --------------------

   procedure Initialize_133 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 133,
        AMF.Internals.Tables.DG_String_Data_00.MS_002E'Access);
   end Initialize_133;

   --------------------
   -- Initialize_134 --
   --------------------

   procedure Initialize_134 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 134, (Is_Empty => True));
   end Initialize_134;

   --------------------
   -- Initialize_135 --
   --------------------

   procedure Initialize_135 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 135,
        AMF.Internals.Tables.DG_String_Data_00.MS_00EC'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 135, (False, AMF.CMOF.Public_Visibility));
   end Initialize_135;

   --------------------
   -- Initialize_136 --
   --------------------

   procedure Initialize_136 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 136,
        AMF.Internals.Tables.DG_String_Data_00.MS_00BB'Access);
   end Initialize_136;

   --------------------
   -- Initialize_137 --
   --------------------

   procedure Initialize_137 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 137,
        AMF.Internals.Tables.DG_String_Data_00.MS_00F9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 137, (False, AMF.CMOF.Public_Visibility));
   end Initialize_137;

   --------------------
   -- Initialize_138 --
   --------------------

   procedure Initialize_138 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 138,
        AMF.Internals.Tables.DG_String_Data_01.MS_0123'Access);
   end Initialize_138;

   --------------------
   -- Initialize_139 --
   --------------------

   procedure Initialize_139 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 139,
        AMF.Internals.Tables.DG_String_Data_00.MS_0037'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 139,
        AMF.Internals.Tables.DG_String_Data_00.MS_0000'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 139, (False, AMF.CMOF.Public_Visibility));
   end Initialize_139;

   --------------------
   -- Initialize_140 --
   --------------------

   procedure Initialize_140 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 140,
        AMF.Internals.Tables.DG_String_Data_00.MS_0051'Access);
   end Initialize_140;

   --------------------
   -- Initialize_141 --
   --------------------

   procedure Initialize_141 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 141,
        AMF.Internals.Tables.DG_String_Data_00.MS_000A'Access);
   end Initialize_141;

   --------------------
   -- Initialize_142 --
   --------------------

   procedure Initialize_142 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 142,
        AMF.Internals.Tables.DG_String_Data_00.MS_001C'Access);
   end Initialize_142;

   --------------------
   -- Initialize_143 --
   --------------------

   procedure Initialize_143 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 143,
        AMF.Internals.Tables.DG_String_Data_00.MS_0082'Access);
   end Initialize_143;

   --------------------
   -- Initialize_144 --
   --------------------

   procedure Initialize_144 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 144,
        AMF.Internals.Tables.DG_String_Data_00.MS_000B'Access);
   end Initialize_144;

   --------------------
   -- Initialize_145 --
   --------------------

   procedure Initialize_145 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 145,
        AMF.Internals.Tables.DG_String_Data_00.MS_0050'Access);
   end Initialize_145;

   --------------------
   -- Initialize_146 --
   --------------------

   procedure Initialize_146 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 146,
        AMF.Internals.Tables.DG_String_Data_00.MS_00E6'Access);
   end Initialize_146;

   --------------------
   -- Initialize_147 --
   --------------------

   procedure Initialize_147 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 147,
        AMF.Internals.Tables.DG_String_Data_00.MS_00A6'Access);
   end Initialize_147;

   --------------------
   -- Initialize_148 --
   --------------------

   procedure Initialize_148 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 148,
        AMF.Internals.Tables.DG_String_Data_01.MS_0115'Access);
   end Initialize_148;

   --------------------
   -- Initialize_149 --
   --------------------

   procedure Initialize_149 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 149,
        AMF.Internals.Tables.DG_String_Data_00.MS_0038'Access);
   end Initialize_149;

   --------------------
   -- Initialize_150 --
   --------------------

   procedure Initialize_150 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 150,
        AMF.Internals.Tables.DG_String_Data_00.MS_007D'Access);
   end Initialize_150;

   --------------------
   -- Initialize_151 --
   --------------------

   procedure Initialize_151 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 151,
        AMF.Internals.Tables.DG_String_Data_00.MS_00E8'Access);
   end Initialize_151;

   --------------------
   -- Initialize_152 --
   --------------------

   procedure Initialize_152 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 152,
        AMF.Internals.Tables.DG_String_Data_01.MS_0109'Access);
   end Initialize_152;

   --------------------
   -- Initialize_153 --
   --------------------

   procedure Initialize_153 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 153,
        AMF.Internals.Tables.DG_String_Data_00.MS_00D2'Access);
   end Initialize_153;

   --------------------
   -- Initialize_154 --
   --------------------

   procedure Initialize_154 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 154,
        AMF.Internals.Tables.DG_String_Data_00.MS_009F'Access);
   end Initialize_154;

   --------------------
   -- Initialize_155 --
   --------------------

   procedure Initialize_155 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 155,
        AMF.Internals.Tables.DG_String_Data_00.MS_00AC'Access);
   end Initialize_155;

   --------------------
   -- Initialize_156 --
   --------------------

   procedure Initialize_156 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 156,
        AMF.Internals.Tables.DG_String_Data_00.MS_0049'Access);
   end Initialize_156;

   --------------------
   -- Initialize_157 --
   --------------------

   procedure Initialize_157 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 157,
        AMF.Internals.Tables.DG_String_Data_00.MS_0074'Access);
   end Initialize_157;

   --------------------
   -- Initialize_158 --
   --------------------

   procedure Initialize_158 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 158,
        AMF.Internals.Tables.DG_String_Data_00.MS_0058'Access);
   end Initialize_158;

   --------------------
   -- Initialize_159 --
   --------------------

   procedure Initialize_159 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 159,
        AMF.Internals.Tables.DG_String_Data_01.MS_0116'Access);
   end Initialize_159;

   --------------------
   -- Initialize_160 --
   --------------------

   procedure Initialize_160 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 160,
        AMF.Internals.Tables.DG_String_Data_00.MS_00DC'Access);
   end Initialize_160;

   --------------------
   -- Initialize_161 --
   --------------------

   procedure Initialize_161 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 161,
        AMF.Internals.Tables.DG_String_Data_00.MS_00D6'Access);
   end Initialize_161;

   --------------------
   -- Initialize_162 --
   --------------------

   procedure Initialize_162 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 162,
        AMF.Internals.Tables.DG_String_Data_00.MS_00E0'Access);
   end Initialize_162;

   --------------------
   -- Initialize_163 --
   --------------------

   procedure Initialize_163 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 163,
        AMF.Internals.Tables.DG_String_Data_00.MS_00B7'Access);
   end Initialize_163;

   --------------------
   -- Initialize_164 --
   --------------------

   procedure Initialize_164 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 164,
        AMF.Internals.Tables.DG_String_Data_00.MS_007A'Access);
   end Initialize_164;

   --------------------
   -- Initialize_165 --
   --------------------

   procedure Initialize_165 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 165,
        AMF.Internals.Tables.DG_String_Data_00.MS_00A3'Access);
   end Initialize_165;

   --------------------
   -- Initialize_166 --
   --------------------

   procedure Initialize_166 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 166,
        AMF.Internals.Tables.DG_String_Data_00.MS_006A'Access);
   end Initialize_166;

   --------------------
   -- Initialize_167 --
   --------------------

   procedure Initialize_167 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 167,
        AMF.Internals.Tables.DG_String_Data_00.MS_00E3'Access);
   end Initialize_167;

   --------------------
   -- Initialize_168 --
   --------------------

   procedure Initialize_168 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 168,
        AMF.Internals.Tables.DG_String_Data_00.MS_00B4'Access);
   end Initialize_168;

   --------------------
   -- Initialize_169 --
   --------------------

   procedure Initialize_169 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 169,
        AMF.Internals.Tables.DG_String_Data_00.MS_0077'Access);
   end Initialize_169;

   --------------------
   -- Initialize_170 --
   --------------------

   procedure Initialize_170 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 170,
        AMF.Internals.Tables.DG_String_Data_00.MS_0012'Access);
   end Initialize_170;

   --------------------
   -- Initialize_171 --
   --------------------

   procedure Initialize_171 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 171,
        AMF.Internals.Tables.DG_String_Data_00.MS_0028'Access);
   end Initialize_171;

   --------------------
   -- Initialize_172 --
   --------------------

   procedure Initialize_172 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 172,
        AMF.Internals.Tables.DG_String_Data_00.MS_00DA'Access);
   end Initialize_172;

   --------------------
   -- Initialize_173 --
   --------------------

   procedure Initialize_173 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 173,
        AMF.Internals.Tables.DG_String_Data_00.MS_0063'Access);
   end Initialize_173;

   --------------------
   -- Initialize_174 --
   --------------------

   procedure Initialize_174 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 174,
        AMF.Internals.Tables.DG_String_Data_00.MS_00F2'Access);
   end Initialize_174;

   --------------------
   -- Initialize_175 --
   --------------------

   procedure Initialize_175 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 175,
        AMF.Internals.Tables.DG_String_Data_00.MS_0008'Access);
   end Initialize_175;

   --------------------
   -- Initialize_176 --
   --------------------

   procedure Initialize_176 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 176,
        AMF.Internals.Tables.DG_String_Data_00.MS_0004'Access);
   end Initialize_176;

   --------------------
   -- Initialize_177 --
   --------------------

   procedure Initialize_177 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 177,
        AMF.Internals.Tables.DG_String_Data_00.MS_005D'Access);
   end Initialize_177;

   --------------------
   -- Initialize_178 --
   --------------------

   procedure Initialize_178 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 178,
        AMF.Internals.Tables.DG_String_Data_00.MS_00BA'Access);
   end Initialize_178;

   --------------------
   -- Initialize_179 --
   --------------------

   procedure Initialize_179 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 179,
        AMF.Internals.Tables.DG_String_Data_00.MS_00FB'Access);
   end Initialize_179;

   --------------------
   -- Initialize_180 --
   --------------------

   procedure Initialize_180 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 180,
        AMF.Internals.Tables.DG_String_Data_00.MS_0061'Access);
   end Initialize_180;

   --------------------
   -- Initialize_181 --
   --------------------

   procedure Initialize_181 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 181,
        AMF.Internals.Tables.DG_String_Data_00.MS_001F'Access);
   end Initialize_181;

   --------------------
   -- Initialize_182 --
   --------------------

   procedure Initialize_182 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 182,
        AMF.Internals.Tables.DG_String_Data_00.MS_00CE'Access);
   end Initialize_182;

   --------------------
   -- Initialize_183 --
   --------------------

   procedure Initialize_183 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 183,
        AMF.Internals.Tables.DG_String_Data_00.MS_005B'Access);
   end Initialize_183;

   --------------------
   -- Initialize_184 --
   --------------------

   procedure Initialize_184 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 184,
        AMF.Internals.Tables.DG_String_Data_00.MS_003D'Access);
   end Initialize_184;

   --------------------
   -- Initialize_185 --
   --------------------

   procedure Initialize_185 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 185,
        AMF.Internals.Tables.DG_String_Data_00.MS_0071'Access);
   end Initialize_185;

   --------------------
   -- Initialize_186 --
   --------------------

   procedure Initialize_186 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 186,
        AMF.Internals.Tables.DG_String_Data_01.MS_0104'Access);
   end Initialize_186;

   --------------------
   -- Initialize_187 --
   --------------------

   procedure Initialize_187 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 187,
        AMF.Internals.Tables.DG_String_Data_00.MS_00B5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 187, (Is_Empty => True));
   end Initialize_187;

   --------------------
   -- Initialize_188 --
   --------------------

   procedure Initialize_188 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 188,
        AMF.Internals.Tables.DG_String_Data_00.MS_001A'Access);
   end Initialize_188;

   --------------------
   -- Initialize_189 --
   --------------------

   procedure Initialize_189 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 189,
        AMF.Internals.Tables.DG_String_Data_00.MS_00C9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 189, (Is_Empty => True));
   end Initialize_189;

   --------------------
   -- Initialize_190 --
   --------------------

   procedure Initialize_190 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 190,
        AMF.Internals.Tables.DG_String_Data_00.MS_008C'Access);
   end Initialize_190;

   --------------------
   -- Initialize_191 --
   --------------------

   procedure Initialize_191 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 191,
        AMF.Internals.Tables.DG_String_Data_00.MS_00A0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 191, (False, AMF.CMOF.Public_Visibility));
   end Initialize_191;

   --------------------
   -- Initialize_192 --
   --------------------

   procedure Initialize_192 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 192,
        AMF.Internals.Tables.DG_String_Data_00.MS_001E'Access);
   end Initialize_192;

   --------------------
   -- Initialize_193 --
   --------------------

   procedure Initialize_193 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 193,
        AMF.Internals.Tables.DG_String_Data_00.MS_009E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 193, (False, AMF.CMOF.Public_Visibility));
   end Initialize_193;

   --------------------
   -- Initialize_194 --
   --------------------

   procedure Initialize_194 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 194,
        AMF.Internals.Tables.DG_String_Data_00.MS_00B6'Access);
   end Initialize_194;

   --------------------
   -- Initialize_195 --
   --------------------

   procedure Initialize_195 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 195,
        AMF.Internals.Tables.DG_String_Data_00.MS_0088'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 195, (Is_Empty => True));
   end Initialize_195;

   --------------------
   -- Initialize_196 --
   --------------------

   procedure Initialize_196 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 196,
        AMF.Internals.Tables.DG_String_Data_00.MS_0009'Access);
   end Initialize_196;

   --------------------
   -- Initialize_197 --
   --------------------

   procedure Initialize_197 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 197,
        AMF.Internals.Tables.DG_String_Data_00.MS_00C7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 197, (Is_Empty => True));
   end Initialize_197;

   --------------------
   -- Initialize_198 --
   --------------------

   procedure Initialize_198 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 198,
        AMF.Internals.Tables.DG_String_Data_01.MS_0112'Access);
   end Initialize_198;

   --------------------
   -- Initialize_199 --
   --------------------

   procedure Initialize_199 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 199, (Is_Empty => True));
   end Initialize_199;

   --------------------
   -- Initialize_200 --
   --------------------

   procedure Initialize_200 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 200,
        AMF.Internals.Tables.DG_String_Data_00.MS_00ED'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 200, (False, AMF.CMOF.Public_Visibility));
   end Initialize_200;

   --------------------
   -- Initialize_201 --
   --------------------

   procedure Initialize_201 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 201,
        AMF.Internals.Tables.DG_String_Data_00.MS_00FA'Access);
   end Initialize_201;

   --------------------
   -- Initialize_202 --
   --------------------

   procedure Initialize_202 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 202,
        AMF.Internals.Tables.DG_String_Data_00.MS_0087'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 202, (False, AMF.CMOF.Public_Visibility));
   end Initialize_202;

   --------------------
   -- Initialize_203 --
   --------------------

   procedure Initialize_203 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 203,
        AMF.Internals.Tables.DG_String_Data_00.MS_0053'Access);
   end Initialize_203;

   --------------------
   -- Initialize_204 --
   --------------------

   procedure Initialize_204 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 204,
        AMF.Internals.Tables.DG_String_Data_01.MS_0110'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 204, (Is_Empty => True));
   end Initialize_204;

   --------------------
   -- Initialize_205 --
   --------------------

   procedure Initialize_205 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 205,
        AMF.Internals.Tables.DG_String_Data_00.MS_00AB'Access);
   end Initialize_205;

   --------------------
   -- Initialize_206 --
   --------------------

   procedure Initialize_206 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 206,
        AMF.Internals.Tables.DG_String_Data_01.MS_010B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 206, (False, AMF.CMOF.Public_Visibility));
   end Initialize_206;

   --------------------
   -- Initialize_207 --
   --------------------

   procedure Initialize_207 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 207,
        AMF.Internals.Tables.DG_String_Data_00.MS_004D'Access);
   end Initialize_207;

   --------------------
   -- Initialize_208 --
   --------------------

   procedure Initialize_208 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 208, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 208,
        AMF.Internals.Tables.DG_String_Data_00.MS_00BE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 208, (False, AMF.CMOF.Public_Visibility));
   end Initialize_208;

   --------------------
   -- Initialize_209 --
   --------------------

   procedure Initialize_209 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 209,
        AMF.Internals.Tables.DG_String_Data_00.MS_0045'Access);
   end Initialize_209;

   --------------------
   -- Initialize_210 --
   --------------------

   procedure Initialize_210 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 210, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 210,
        AMF.Internals.Tables.DG_String_Data_00.MS_004C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 210, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 210, (False, AMF.CMOF.Public_Visibility));
   end Initialize_210;

   --------------------
   -- Initialize_211 --
   --------------------

   procedure Initialize_211 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 211, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 211,
        AMF.Internals.Tables.DG_String_Data_00.MS_004C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 211, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 211, (False, AMF.CMOF.Public_Visibility));
   end Initialize_211;

   --------------------
   -- Initialize_212 --
   --------------------

   procedure Initialize_212 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 212,
        AMF.Internals.Tables.DG_String_Data_00.MS_0015'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 212, (Is_Empty => True));
   end Initialize_212;

   --------------------
   -- Initialize_213 --
   --------------------

   procedure Initialize_213 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 213,
        AMF.Internals.Tables.DG_String_Data_00.MS_0041'Access);
   end Initialize_213;

   --------------------
   -- Initialize_214 --
   --------------------

   procedure Initialize_214 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 214,
        AMF.Internals.Tables.DG_String_Data_00.MS_00B8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 214, (False, AMF.CMOF.Public_Visibility));
   end Initialize_214;

   --------------------
   -- Initialize_215 --
   --------------------

   procedure Initialize_215 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 215,
        AMF.Internals.Tables.DG_String_Data_00.MS_0093'Access);
   end Initialize_215;

   --------------------
   -- Initialize_216 --
   --------------------

   procedure Initialize_216 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 216,
        AMF.Internals.Tables.DG_String_Data_00.MS_00F0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 216, (False, AMF.CMOF.Public_Visibility));
   end Initialize_216;

   --------------------
   -- Initialize_217 --
   --------------------

   procedure Initialize_217 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 217,
        AMF.Internals.Tables.DG_String_Data_00.MS_0032'Access);
   end Initialize_217;

   --------------------
   -- Initialize_218 --
   --------------------

   procedure Initialize_218 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 218, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 218,
        AMF.Internals.Tables.DG_String_Data_00.MS_004C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 218, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 218, (False, AMF.CMOF.Public_Visibility));
   end Initialize_218;

   --------------------
   -- Initialize_219 --
   --------------------

   procedure Initialize_219 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 219,
        AMF.Internals.Tables.DG_String_Data_00.MS_000F'Access);
   end Initialize_219;

   --------------------
   -- Initialize_220 --
   --------------------

   procedure Initialize_220 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 220,
        AMF.Internals.Tables.DG_String_Data_00.MS_0078'Access);
   end Initialize_220;

   --------------------
   -- Initialize_221 --
   --------------------

   procedure Initialize_221 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 221,
        AMF.Internals.Tables.DG_String_Data_00.MS_00E7'Access);
   end Initialize_221;

   --------------------
   -- Initialize_222 --
   --------------------

   procedure Initialize_222 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 222,
        AMF.Internals.Tables.DG_String_Data_00.MS_0040'Access);
   end Initialize_222;

   --------------------
   -- Initialize_223 --
   --------------------

   procedure Initialize_223 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 223,
        AMF.Internals.Tables.DG_String_Data_00.MS_00D8'Access);
   end Initialize_223;

   --------------------
   -- Initialize_224 --
   --------------------

   procedure Initialize_224 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 224,
        AMF.Internals.Tables.DG_String_Data_00.MS_0094'Access);
   end Initialize_224;

   --------------------
   -- Initialize_225 --
   --------------------

   procedure Initialize_225 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 225,
        AMF.Internals.Tables.DG_String_Data_00.MS_00C6'Access);
   end Initialize_225;

   --------------------
   -- Initialize_226 --
   --------------------

   procedure Initialize_226 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 226,
        AMF.Internals.Tables.DG_String_Data_00.MS_0024'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 226, (Is_Empty => True));
   end Initialize_226;

   --------------------
   -- Initialize_227 --
   --------------------

   procedure Initialize_227 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 227,
        AMF.Internals.Tables.DG_String_Data_00.MS_00B2'Access);
   end Initialize_227;

   --------------------
   -- Initialize_228 --
   --------------------

   procedure Initialize_228 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 228, (Is_Empty => True));
   end Initialize_228;

   --------------------
   -- Initialize_229 --
   --------------------

   procedure Initialize_229 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 229,
        AMF.Internals.Tables.DG_String_Data_01.MS_0111'Access);
   end Initialize_229;

   --------------------
   -- Initialize_230 --
   --------------------

   procedure Initialize_230 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 230,
        AMF.Internals.Tables.DG_String_Data_00.MS_00BC'Access);
   end Initialize_230;

   --------------------
   -- Initialize_231 --
   --------------------

   procedure Initialize_231 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 231,
        AMF.Internals.Tables.DG_String_Data_00.MS_00CC'Access);
   end Initialize_231;

   --------------------
   -- Initialize_232 --
   --------------------

   procedure Initialize_232 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 232,
        AMF.Internals.Tables.DG_String_Data_00.MS_00D5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 232, (Is_Empty => True));
   end Initialize_232;

   --------------------
   -- Initialize_233 --
   --------------------

   procedure Initialize_233 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 233,
        AMF.Internals.Tables.DG_String_Data_00.MS_006E'Access);
   end Initialize_233;

   --------------------
   -- Initialize_234 --
   --------------------

   procedure Initialize_234 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 234, (Is_Empty => True));
   end Initialize_234;

   --------------------
   -- Initialize_235 --
   --------------------

   procedure Initialize_235 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 235,
        AMF.Internals.Tables.DG_String_Data_00.MS_0031'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 235, (Is_Empty => True));
   end Initialize_235;

   --------------------
   -- Initialize_236 --
   --------------------

   procedure Initialize_236 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 236,
        AMF.Internals.Tables.DG_String_Data_00.MS_00E4'Access);
   end Initialize_236;

   --------------------
   -- Initialize_237 --
   --------------------

   procedure Initialize_237 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 237, (Is_Empty => True));
   end Initialize_237;

   --------------------
   -- Initialize_238 --
   --------------------

   procedure Initialize_238 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 238,
        AMF.Internals.Tables.DG_String_Data_00.MS_0035'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 238, (Is_Empty => True));
   end Initialize_238;

   --------------------
   -- Initialize_239 --
   --------------------

   procedure Initialize_239 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 239,
        AMF.Internals.Tables.DG_String_Data_00.MS_00E4'Access);
   end Initialize_239;

   --------------------
   -- Initialize_240 --
   --------------------

   procedure Initialize_240 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 240, (Is_Empty => True));
   end Initialize_240;

   --------------------
   -- Initialize_241 --
   --------------------

   procedure Initialize_241 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 241,
        AMF.Internals.Tables.DG_String_Data_00.MS_005E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 241, (Is_Empty => True));
   end Initialize_241;

   --------------------
   -- Initialize_242 --
   --------------------

   procedure Initialize_242 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 242,
        AMF.Internals.Tables.DG_String_Data_00.MS_008A'Access);
   end Initialize_242;

   --------------------
   -- Initialize_243 --
   --------------------

   procedure Initialize_243 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 243, (Is_Empty => True));
   end Initialize_243;

   --------------------
   -- Initialize_244 --
   --------------------

   procedure Initialize_244 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 244,
        AMF.Internals.Tables.DG_String_Data_00.MS_0076'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 244, (Is_Empty => True));
   end Initialize_244;

   --------------------
   -- Initialize_245 --
   --------------------

   procedure Initialize_245 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 245,
        AMF.Internals.Tables.DG_String_Data_00.MS_0005'Access);
   end Initialize_245;

   --------------------
   -- Initialize_246 --
   --------------------

   procedure Initialize_246 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 246, (Is_Empty => True));
   end Initialize_246;

   --------------------
   -- Initialize_247 --
   --------------------

   procedure Initialize_247 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 247,
        AMF.Internals.Tables.DG_String_Data_01.MS_0106'Access);
   end Initialize_247;

   --------------------
   -- Initialize_248 --
   --------------------

   procedure Initialize_248 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 248,
        AMF.Internals.Tables.DG_String_Data_00.MS_00C5'Access);
   end Initialize_248;

   --------------------
   -- Initialize_249 --
   --------------------

   procedure Initialize_249 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 249,
        AMF.Internals.Tables.DG_String_Data_00.MS_005C'Access);
   end Initialize_249;

   --------------------
   -- Initialize_250 --
   --------------------

   procedure Initialize_250 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 250,
        AMF.Internals.Tables.DG_String_Data_00.MS_00DF'Access);
   end Initialize_250;

   --------------------
   -- Initialize_251 --
   --------------------

   procedure Initialize_251 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 251,
        AMF.Internals.Tables.DG_String_Data_01.MS_0105'Access);
   end Initialize_251;

   --------------------
   -- Initialize_252 --
   --------------------

   procedure Initialize_252 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 252,
        AMF.Internals.Tables.DG_String_Data_00.MS_006B'Access);
   end Initialize_252;

   --------------------
   -- Initialize_253 --
   --------------------

   procedure Initialize_253 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 253,
        AMF.Internals.Tables.DG_String_Data_00.MS_0030'Access);
   end Initialize_253;

   --------------------
   -- Initialize_254 --
   --------------------

   procedure Initialize_254 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 254,
        AMF.Internals.Tables.DG_String_Data_00.MS_0089'Access);
   end Initialize_254;

   --------------------
   -- Initialize_255 --
   --------------------

   procedure Initialize_255 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 255,
        AMF.Internals.Tables.DG_String_Data_00.MS_007E'Access);
   end Initialize_255;

   --------------------
   -- Initialize_256 --
   --------------------

   procedure Initialize_256 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 256,
        AMF.Internals.Tables.DG_String_Data_00.MS_0003'Access);
   end Initialize_256;

   --------------------
   -- Initialize_257 --
   --------------------

   procedure Initialize_257 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 257,
        AMF.Internals.Tables.DG_String_Data_00.MS_00B0'Access);
   end Initialize_257;

   --------------------
   -- Initialize_258 --
   --------------------

   procedure Initialize_258 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 258,
        AMF.Internals.Tables.DG_String_Data_00.MS_00F6'Access);
   end Initialize_258;

   --------------------
   -- Initialize_259 --
   --------------------

   procedure Initialize_259 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 259,
        AMF.Internals.Tables.DG_String_Data_00.MS_00B9'Access);
   end Initialize_259;

   --------------------
   -- Initialize_260 --
   --------------------

   procedure Initialize_260 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 260,
        AMF.Internals.Tables.DG_String_Data_00.MS_0091'Access);
   end Initialize_260;

   --------------------
   -- Initialize_261 --
   --------------------

   procedure Initialize_261 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 261, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 261,
        AMF.Internals.Tables.DG_String_Data_00.MS_00F5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 261, (False, AMF.CMOF.Public_Visibility));
   end Initialize_261;

   --------------------
   -- Initialize_262 --
   --------------------

   procedure Initialize_262 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 262,
        AMF.Internals.Tables.DG_String_Data_00.MS_0021'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 262, (Is_Empty => True));
   end Initialize_262;

   --------------------
   -- Initialize_263 --
   --------------------

   procedure Initialize_263 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 263,
        AMF.Internals.Tables.DG_String_Data_00.MS_0075'Access);
   end Initialize_263;

   --------------------
   -- Initialize_264 --
   --------------------

   procedure Initialize_264 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 264,
        AMF.Internals.Tables.DG_String_Data_01.MS_0101'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 264, (False, AMF.CMOF.Public_Visibility));
   end Initialize_264;

   --------------------
   -- Initialize_265 --
   --------------------

   procedure Initialize_265 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 265,
        AMF.Internals.Tables.DG_String_Data_00.MS_00D1'Access);
   end Initialize_265;

   --------------------
   -- Initialize_266 --
   --------------------

   procedure Initialize_266 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 266,
        AMF.Internals.Tables.DG_String_Data_00.MS_009B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 266, (False, AMF.CMOF.Public_Visibility));
   end Initialize_266;

   --------------------
   -- Initialize_267 --
   --------------------

   procedure Initialize_267 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 267,
        AMF.Internals.Tables.DG_String_Data_00.MS_002F'Access);
   end Initialize_267;

   --------------------
   -- Initialize_268 --
   --------------------

   procedure Initialize_268 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 268,
        AMF.Internals.Tables.DG_String_Data_00.MS_00C1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 268, (False, AMF.CMOF.Public_Visibility));
   end Initialize_268;

   --------------------
   -- Initialize_269 --
   --------------------

   procedure Initialize_269 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 269,
        AMF.Internals.Tables.DG_String_Data_00.MS_000C'Access);
   end Initialize_269;

   --------------------
   -- Initialize_270 --
   --------------------

   procedure Initialize_270 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 270,
        AMF.Internals.Tables.DG_String_Data_00.MS_0002'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 270, (False, AMF.CMOF.Public_Visibility));
   end Initialize_270;

   --------------------
   -- Initialize_271 --
   --------------------

   procedure Initialize_271 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 271,
        AMF.Internals.Tables.DG_String_Data_00.MS_00DD'Access);
   end Initialize_271;

   --------------------
   -- Initialize_272 --
   --------------------

   procedure Initialize_272 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 272,
        AMF.Internals.Tables.DG_String_Data_00.MS_00C8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 272, (False, AMF.CMOF.Public_Visibility));
   end Initialize_272;

   --------------------
   -- Initialize_273 --
   --------------------

   procedure Initialize_273 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 273,
        AMF.Internals.Tables.DG_String_Data_00.MS_0010'Access);
   end Initialize_273;

   --------------------
   -- Initialize_274 --
   --------------------

   procedure Initialize_274 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 274,
        AMF.Internals.Tables.DG_String_Data_01.MS_0118'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 274, (False, AMF.CMOF.Public_Visibility));
   end Initialize_274;

   --------------------
   -- Initialize_275 --
   --------------------

   procedure Initialize_275 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 275,
        AMF.Internals.Tables.DG_String_Data_00.MS_00C4'Access);
   end Initialize_275;

   --------------------
   -- Initialize_276 --
   --------------------

   procedure Initialize_276 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 276,
        AMF.Internals.Tables.DG_String_Data_00.MS_00AA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 276, (Is_Empty => True));
   end Initialize_276;

   --------------------
   -- Initialize_277 --
   --------------------

   procedure Initialize_277 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 277,
        AMF.Internals.Tables.DG_String_Data_00.MS_009A'Access);
   end Initialize_277;

   --------------------
   -- Initialize_278 --
   --------------------

   procedure Initialize_278 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 278,
        AMF.Internals.Tables.DG_String_Data_00.MS_0090'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 278,
        AMF.Internals.Tables.DG_String_Data_00.MS_007F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 278, (False, AMF.CMOF.Public_Visibility));
   end Initialize_278;

   --------------------
   -- Initialize_279 --
   --------------------

   procedure Initialize_279 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 279,
        AMF.Internals.Tables.DG_String_Data_00.MS_000D'Access);
   end Initialize_279;

   --------------------
   -- Initialize_280 --
   --------------------

   procedure Initialize_280 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 280,
        AMF.Internals.Tables.DG_String_Data_00.MS_0059'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 280, (Is_Empty => True));
   end Initialize_280;

   --------------------
   -- Initialize_281 --
   --------------------

   procedure Initialize_281 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 281,
        AMF.Internals.Tables.DG_String_Data_00.MS_0054'Access);
   end Initialize_281;

   --------------------
   -- Initialize_282 --
   --------------------

   procedure Initialize_282 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 282,
        AMF.Internals.Tables.DG_String_Data_00.MS_00FF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 282, (False, AMF.CMOF.Public_Visibility));
   end Initialize_282;

   --------------------
   -- Initialize_283 --
   --------------------

   procedure Initialize_283 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 283,
        AMF.Internals.Tables.DG_String_Data_00.MS_0013'Access);
   end Initialize_283;

   --------------------
   -- Initialize_284 --
   --------------------

   procedure Initialize_284 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 284,
        AMF.Internals.Tables.DG_String_Data_01.MS_0100'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 284, (Is_Empty => True));
   end Initialize_284;

   --------------------
   -- Initialize_285 --
   --------------------

   procedure Initialize_285 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 285,
        AMF.Internals.Tables.DG_String_Data_00.MS_00FE'Access);
   end Initialize_285;

   --------------------
   -- Initialize_286 --
   --------------------

   procedure Initialize_286 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 286,
        AMF.Internals.Tables.DG_String_Data_00.MS_00FF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 286, (False, AMF.CMOF.Public_Visibility));
   end Initialize_286;

   --------------------
   -- Initialize_287 --
   --------------------

   procedure Initialize_287 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 287,
        AMF.Internals.Tables.DG_String_Data_00.MS_003E'Access);
   end Initialize_287;

   --------------------
   -- Initialize_288 --
   --------------------

   procedure Initialize_288 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 288,
        AMF.Internals.Tables.DG_String_Data_01.MS_011E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 288, (Is_Empty => True));
   end Initialize_288;

   --------------------
   -- Initialize_289 --
   --------------------

   procedure Initialize_289 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 289,
        AMF.Internals.Tables.DG_String_Data_00.MS_006F'Access);
   end Initialize_289;

   --------------------
   -- Initialize_290 --
   --------------------

   procedure Initialize_290 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 290,
        AMF.Internals.Tables.DG_String_Data_00.MS_00FF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 290, (False, AMF.CMOF.Public_Visibility));
   end Initialize_290;

   --------------------
   -- Initialize_291 --
   --------------------

   procedure Initialize_291 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 291,
        AMF.Internals.Tables.DG_String_Data_00.MS_00CF'Access);
   end Initialize_291;

   --------------------
   -- Initialize_292 --
   --------------------

   procedure Initialize_292 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 292,
        AMF.Internals.Tables.DG_String_Data_00.MS_0026'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 292, (False, AMF.CMOF.Public_Visibility));
   end Initialize_292;

   --------------------
   -- Initialize_293 --
   --------------------

   procedure Initialize_293 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 293,
        AMF.Internals.Tables.DG_String_Data_00.MS_0097'Access);
   end Initialize_293;

   --------------------
   -- Initialize_294 --
   --------------------

   procedure Initialize_294 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 294,
        AMF.Internals.Tables.DG_String_Data_00.MS_00C2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 294, (False, AMF.CMOF.Public_Visibility));
   end Initialize_294;

   --------------------
   -- Initialize_295 --
   --------------------

   procedure Initialize_295 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 295,
        AMF.Internals.Tables.DG_String_Data_00.MS_00DB'Access);
   end Initialize_295;

   --------------------
   -- Initialize_296 --
   --------------------

   procedure Initialize_296 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 296,
        AMF.Internals.Tables.DG_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 296, (Is_Empty => True));
   end Initialize_296;

   --------------------
   -- Initialize_297 --
   --------------------

   procedure Initialize_297 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 297,
        AMF.Internals.Tables.DG_String_Data_00.MS_0001'Access);
   end Initialize_297;

   --------------------
   -- Initialize_298 --
   --------------------

   procedure Initialize_298 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 298,
        AMF.Internals.Tables.DG_String_Data_00.MS_00FF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 298, (False, AMF.CMOF.Public_Visibility));
   end Initialize_298;

   --------------------
   -- Initialize_299 --
   --------------------

   procedure Initialize_299 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 299,
        AMF.Internals.Tables.DG_String_Data_00.MS_004B'Access);
   end Initialize_299;

   --------------------
   -- Initialize_300 --
   --------------------

   procedure Initialize_300 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 300,
        AMF.Internals.Tables.DG_String_Data_00.MS_00D9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 300, (False, AMF.CMOF.Public_Visibility));
   end Initialize_300;

   --------------------
   -- Initialize_301 --
   --------------------

   procedure Initialize_301 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 301,
        AMF.Internals.Tables.DG_String_Data_00.MS_004F'Access);
   end Initialize_301;

   --------------------
   -- Initialize_302 --
   --------------------

   procedure Initialize_302 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 302,
        AMF.Internals.Tables.DG_String_Data_00.MS_00D0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 302, (Is_Empty => True));
   end Initialize_302;

   --------------------
   -- Initialize_303 --
   --------------------

   procedure Initialize_303 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 303,
        AMF.Internals.Tables.DG_String_Data_00.MS_0064'Access);
   end Initialize_303;

   --------------------
   -- Initialize_304 --
   --------------------

   procedure Initialize_304 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 304,
        AMF.Internals.Tables.DG_String_Data_00.MS_00FF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 304, (False, AMF.CMOF.Public_Visibility));
   end Initialize_304;

   --------------------
   -- Initialize_305 --
   --------------------

   procedure Initialize_305 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 305,
        AMF.Internals.Tables.DG_String_Data_00.MS_0099'Access);
   end Initialize_305;

   --------------------
   -- Initialize_306 --
   --------------------

   procedure Initialize_306 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 306,
        AMF.Internals.Tables.DG_String_Data_00.MS_0036'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 306, (False, AMF.CMOF.Public_Visibility));
   end Initialize_306;

   --------------------
   -- Initialize_307 --
   --------------------

   procedure Initialize_307 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 307,
        AMF.Internals.Tables.DG_String_Data_00.MS_0062'Access);
   end Initialize_307;

   --------------------
   -- Initialize_308 --
   --------------------

   procedure Initialize_308 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 308,
        AMF.Internals.Tables.DG_String_Data_00.MS_00D4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 308, (False, AMF.CMOF.Public_Visibility));
   end Initialize_308;

   --------------------
   -- Initialize_309 --
   --------------------

   procedure Initialize_309 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 309,
        AMF.Internals.Tables.DG_String_Data_00.MS_0073'Access);
   end Initialize_309;

   --------------------
   -- Initialize_310 --
   --------------------

   procedure Initialize_310 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 310,
        AMF.Internals.Tables.DG_String_Data_00.MS_0052'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 310, (False, AMF.CMOF.Public_Visibility));
   end Initialize_310;

   --------------------
   -- Initialize_311 --
   --------------------

   procedure Initialize_311 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 311,
        AMF.Internals.Tables.DG_String_Data_00.MS_008B'Access);
   end Initialize_311;

   --------------------
   -- Initialize_312 --
   --------------------

   procedure Initialize_312 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 312,
        AMF.Internals.Tables.DG_String_Data_00.MS_00FD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 312, (False, AMF.CMOF.Public_Visibility));
   end Initialize_312;

   --------------------
   -- Initialize_313 --
   --------------------

   procedure Initialize_313 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 313,
        AMF.Internals.Tables.DG_String_Data_00.MS_0083'Access);
   end Initialize_313;

   --------------------
   -- Initialize_314 --
   --------------------

   procedure Initialize_314 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 314,
        AMF.Internals.Tables.DG_String_Data_01.MS_011B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 314, (Is_Empty => True));
   end Initialize_314;

   --------------------
   -- Initialize_315 --
   --------------------

   procedure Initialize_315 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 315,
        AMF.Internals.Tables.DG_String_Data_00.MS_00D3'Access);
   end Initialize_315;

   --------------------
   -- Initialize_316 --
   --------------------

   procedure Initialize_316 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 316, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 316,
        AMF.Internals.Tables.DG_String_Data_00.MS_009C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 316, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 316, (False, AMF.CMOF.Public_Visibility));
   end Initialize_316;

   --------------------
   -- Initialize_317 --
   --------------------

   procedure Initialize_317 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 317, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 317,
        AMF.Internals.Tables.DG_String_Data_00.MS_00F5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 317, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 317, (False, AMF.CMOF.Public_Visibility));
   end Initialize_317;

   --------------------
   -- Initialize_318 --
   --------------------

   procedure Initialize_318 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 318, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 318,
        AMF.Internals.Tables.DG_String_Data_00.MS_00B3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 318, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 318, (False, AMF.CMOF.Public_Visibility));
   end Initialize_318;

   --------------------
   -- Initialize_319 --
   --------------------

   procedure Initialize_319 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 319, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 319,
        AMF.Internals.Tables.DG_String_Data_00.MS_00CD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 319, (False, AMF.CMOF.Public_Visibility));
   end Initialize_319;

   --------------------
   -- Initialize_320 --
   --------------------

   procedure Initialize_320 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 320,
        AMF.Internals.Tables.DG_String_Data_00.MS_00B3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 320, (False, AMF.CMOF.Public_Visibility));
   end Initialize_320;

   --------------------
   -- Initialize_321 --
   --------------------

   procedure Initialize_321 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 321,
        AMF.Internals.Tables.DG_String_Data_00.MS_00E9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 321,
        AMF.Internals.Tables.DG_String_Data_00.MS_0098'Access);
   end Initialize_321;

   --------------------
   -- Initialize_322 --
   --------------------

   procedure Initialize_322 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 322,
        AMF.Internals.Tables.DG_String_Data_00.MS_0047'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 322,
        AMF.Internals.Tables.DG_String_Data_00.MS_00F7'Access);
   end Initialize_322;

end AMF.Internals.Tables.DG_Metamodel.Properties;
