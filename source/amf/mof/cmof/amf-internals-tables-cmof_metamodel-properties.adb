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
with AMF.Internals.Tables.CMOF_String_Data_00;
with AMF.Internals.Tables.CMOF_String_Data_01;
with AMF.Internals.Tables.CMOF_String_Data_02;

package body AMF.Internals.Tables.CMOF_Metamodel.Properties is

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
      Initialize_323;
      Initialize_324;
      Initialize_325;
      Initialize_326;
      Initialize_327;
      Initialize_328;
      Initialize_329;
      Initialize_330;
      Initialize_331;
      Initialize_332;
      Initialize_333;
      Initialize_334;
      Initialize_335;
      Initialize_336;
      Initialize_337;
      Initialize_338;
      Initialize_339;
      Initialize_340;
      Initialize_341;
      Initialize_342;
      Initialize_343;
      Initialize_344;
      Initialize_345;
      Initialize_346;
      Initialize_347;
      Initialize_348;
      Initialize_349;
      Initialize_350;
      Initialize_351;
      Initialize_352;
      Initialize_353;
      Initialize_354;
      Initialize_355;
      Initialize_356;
      Initialize_357;
      Initialize_358;
      Initialize_359;
      Initialize_360;
      Initialize_361;
      Initialize_362;
      Initialize_363;
      Initialize_364;
      Initialize_365;
      Initialize_366;
      Initialize_367;
      Initialize_368;
      Initialize_369;
      Initialize_370;
      Initialize_371;
      Initialize_372;
      Initialize_373;
      Initialize_374;
      Initialize_375;
      Initialize_376;
      Initialize_377;
      Initialize_378;
      Initialize_379;
      Initialize_380;
      Initialize_381;
      Initialize_382;
      Initialize_383;
      Initialize_384;
      Initialize_385;
      Initialize_386;
      Initialize_387;
      Initialize_388;
      Initialize_389;
      Initialize_390;
      Initialize_391;
      Initialize_392;
      Initialize_393;
      Initialize_394;
      Initialize_395;
      Initialize_396;
      Initialize_397;
      Initialize_398;
      Initialize_399;
      Initialize_400;
      Initialize_401;
      Initialize_402;
      Initialize_403;
      Initialize_404;
      Initialize_405;
      Initialize_406;
      Initialize_407;
      Initialize_408;
      Initialize_409;
      Initialize_410;
      Initialize_411;
      Initialize_412;
      Initialize_413;
      Initialize_414;
      Initialize_415;
      Initialize_416;
      Initialize_417;
      Initialize_418;
      Initialize_419;
      Initialize_420;
      Initialize_421;
      Initialize_422;
      Initialize_423;
      Initialize_424;
      Initialize_425;
      Initialize_426;
      Initialize_427;
      Initialize_428;
      Initialize_429;
      Initialize_430;
      Initialize_431;
      Initialize_432;
      Initialize_433;
      Initialize_434;
      Initialize_435;
      Initialize_436;
      Initialize_437;
      Initialize_438;
      Initialize_439;
      Initialize_440;
      Initialize_441;
      Initialize_442;
      Initialize_443;
      Initialize_444;
      Initialize_445;
      Initialize_446;
      Initialize_447;
      Initialize_448;
      Initialize_449;
      Initialize_450;
      Initialize_451;
      Initialize_452;
      Initialize_453;
      Initialize_454;
      Initialize_455;
      Initialize_456;
      Initialize_457;
      Initialize_458;
      Initialize_459;
      Initialize_460;
      Initialize_461;
      Initialize_462;
      Initialize_463;
      Initialize_464;
      Initialize_465;
      Initialize_466;
      Initialize_467;
      Initialize_468;
      Initialize_469;
      Initialize_470;
      Initialize_471;
      Initialize_472;
      Initialize_473;
      Initialize_474;
      Initialize_475;
      Initialize_476;
      Initialize_477;
      Initialize_478;
      Initialize_479;
      Initialize_480;
      Initialize_481;
      Initialize_482;
      Initialize_483;
      Initialize_484;
      Initialize_485;
      Initialize_486;
      Initialize_487;
      Initialize_488;
      Initialize_489;
      Initialize_490;
      Initialize_491;
      Initialize_492;
      Initialize_493;
      Initialize_494;
      Initialize_495;
      Initialize_496;
      Initialize_497;
      Initialize_498;
      Initialize_499;
      Initialize_500;
      Initialize_501;
      Initialize_502;
      Initialize_503;
      Initialize_504;
      Initialize_505;
      Initialize_506;
      Initialize_507;
      Initialize_508;
      Initialize_509;
      Initialize_510;
      Initialize_511;
      Initialize_512;
      Initialize_513;
      Initialize_514;
      Initialize_515;
      Initialize_516;
      Initialize_517;
      Initialize_518;
      Initialize_519;
      Initialize_520;
      Initialize_521;
      Initialize_522;
      Initialize_523;
      Initialize_524;
      Initialize_525;
      Initialize_526;
      Initialize_527;
      Initialize_528;
      Initialize_529;
      Initialize_530;
      Initialize_531;
      Initialize_532;
      Initialize_533;
      Initialize_534;
      Initialize_535;
      Initialize_536;
      Initialize_537;
      Initialize_538;
      Initialize_539;
      Initialize_540;
      Initialize_541;
      Initialize_542;
      Initialize_543;
      Initialize_544;
      Initialize_545;
      Initialize_546;
      Initialize_547;
      Initialize_548;
      Initialize_549;
      Initialize_550;
      Initialize_551;
      Initialize_552;
      Initialize_553;
      Initialize_554;
      Initialize_555;
      Initialize_556;
      Initialize_557;
      Initialize_558;
      Initialize_559;
      Initialize_560;
      Initialize_561;
      Initialize_562;
      Initialize_563;
      Initialize_564;
      Initialize_565;
      Initialize_566;
      Initialize_567;
      Initialize_568;
      Initialize_569;
      Initialize_570;
      Initialize_571;
      Initialize_572;
      Initialize_573;
      Initialize_574;
      Initialize_575;
      Initialize_576;
      Initialize_577;
      Initialize_578;
      Initialize_579;
      Initialize_580;
      Initialize_581;
      Initialize_582;
      Initialize_583;
      Initialize_584;
      Initialize_585;
      Initialize_586;
      Initialize_587;
      Initialize_588;
      Initialize_589;
      Initialize_590;
      Initialize_591;
      Initialize_592;
      Initialize_593;
      Initialize_594;
      Initialize_595;
      Initialize_596;
      Initialize_597;
      Initialize_598;
      Initialize_599;
      Initialize_600;
      Initialize_601;
      Initialize_602;
      Initialize_603;
      Initialize_604;
      Initialize_605;
      Initialize_606;
      Initialize_607;
      Initialize_608;
      Initialize_609;
      Initialize_610;
      Initialize_611;
      Initialize_612;
      Initialize_613;
      Initialize_614;
      Initialize_615;
      Initialize_616;
      Initialize_617;
      Initialize_618;
      Initialize_619;
      Initialize_620;
      Initialize_621;
      Initialize_622;
      Initialize_623;
      Initialize_624;
      Initialize_625;
      Initialize_626;
      Initialize_627;
      Initialize_628;
      Initialize_629;
      Initialize_630;
      Initialize_631;
      Initialize_632;
      Initialize_633;
      Initialize_634;
      Initialize_635;
      Initialize_636;
      Initialize_637;
      Initialize_638;
      Initialize_639;
      Initialize_640;
      Initialize_641;
      Initialize_642;
      Initialize_643;
      Initialize_644;
      Initialize_645;
      Initialize_646;
      Initialize_647;
      Initialize_648;
      Initialize_649;
      Initialize_650;
      Initialize_651;
      Initialize_652;
      Initialize_653;
      Initialize_654;
      Initialize_655;
      Initialize_656;
      Initialize_657;
      Initialize_658;
      Initialize_659;
      Initialize_660;
      Initialize_661;
      Initialize_662;
      Initialize_663;
      Initialize_664;
      Initialize_665;
      Initialize_666;
      Initialize_667;
      Initialize_668;
      Initialize_669;
      Initialize_670;
      Initialize_671;
      Initialize_672;
      Initialize_673;
      Initialize_674;
      Initialize_675;
      Initialize_676;
      Initialize_677;
      Initialize_678;
      Initialize_679;
      Initialize_680;
      Initialize_681;
      Initialize_682;
      Initialize_683;
      Initialize_684;
      Initialize_685;
      Initialize_686;
      Initialize_687;
      Initialize_688;
      Initialize_689;
      Initialize_690;
      Initialize_691;
      Initialize_692;
      Initialize_693;
      Initialize_694;
      Initialize_695;
      Initialize_696;
      Initialize_697;
      Initialize_698;
      Initialize_699;
      Initialize_700;
      Initialize_701;
      Initialize_702;
      Initialize_703;
      Initialize_704;
      Initialize_705;
      Initialize_706;
      Initialize_707;
      Initialize_708;
      Initialize_709;
      Initialize_710;
      Initialize_711;
      Initialize_712;
      Initialize_713;
      Initialize_714;
      Initialize_715;
      Initialize_716;
      Initialize_717;
      Initialize_718;
      Initialize_719;
      Initialize_720;
      Initialize_721;
      Initialize_722;
      Initialize_723;
      Initialize_724;
      Initialize_725;
      Initialize_726;
      Initialize_727;
      Initialize_728;
      Initialize_729;
      Initialize_730;
      Initialize_731;
      Initialize_732;
      Initialize_733;
      Initialize_734;
      Initialize_735;
      Initialize_736;
      Initialize_737;
      Initialize_738;
      Initialize_739;
      Initialize_740;
      Initialize_741;
      Initialize_742;
      Initialize_743;
      Initialize_744;
      Initialize_745;
      Initialize_746;
      Initialize_747;
      Initialize_748;
      Initialize_749;
      Initialize_750;
      Initialize_751;
      Initialize_752;
      Initialize_753;
      Initialize_754;
      Initialize_755;
      Initialize_756;
      Initialize_757;
      Initialize_758;
      Initialize_759;
      Initialize_760;
      Initialize_761;
      Initialize_762;
      Initialize_763;
      Initialize_764;
      Initialize_765;
      Initialize_766;
      Initialize_767;
      Initialize_768;
      Initialize_769;
      Initialize_770;
      Initialize_771;
      Initialize_772;
      Initialize_773;
      Initialize_774;
      Initialize_775;
      Initialize_776;
      Initialize_777;
      Initialize_778;
      Initialize_779;
      Initialize_780;
      Initialize_781;
      Initialize_782;
      Initialize_783;
      Initialize_784;
      Initialize_785;
      Initialize_786;
      Initialize_787;
      Initialize_788;
      Initialize_789;
      Initialize_790;
      Initialize_791;
      Initialize_792;
      Initialize_793;
      Initialize_794;
      Initialize_795;
      Initialize_796;
      Initialize_797;
      Initialize_798;
      Initialize_799;
      Initialize_800;
   end Initialize;

   ------------------
   -- Initialize_1 --
   ------------------

   procedure Initialize_1 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 1,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0068'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 1, (Is_Empty => True));
   end Initialize_1;

   ------------------
   -- Initialize_2 --
   ------------------

   procedure Initialize_2 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 2, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 2,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0022'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 2, (Is_Empty => True));
   end Initialize_2;

   ------------------
   -- Initialize_3 --
   ------------------

   procedure Initialize_3 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 3,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 3, (Is_Empty => True));
   end Initialize_3;

   ------------------
   -- Initialize_4 --
   ------------------

   procedure Initialize_4 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 4, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 4,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0137'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 4, (Is_Empty => True));
   end Initialize_4;

   ------------------
   -- Initialize_5 --
   ------------------

   procedure Initialize_5 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 5,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 5, (Is_Empty => True));
   end Initialize_5;

   ------------------
   -- Initialize_6 --
   ------------------

   procedure Initialize_6 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 6,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 6, (Is_Empty => True));
   end Initialize_6;

   ------------------
   -- Initialize_7 --
   ------------------

   procedure Initialize_7 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 7,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 7, (Is_Empty => True));
   end Initialize_7;

   ------------------
   -- Initialize_8 --
   ------------------

   procedure Initialize_8 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 8, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 8,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 8, (Is_Empty => True));
   end Initialize_8;

   ------------------
   -- Initialize_9 --
   ------------------

   procedure Initialize_9 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 9, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 9,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 9, (Is_Empty => True));
   end Initialize_9;

   -------------------
   -- Initialize_10 --
   -------------------

   procedure Initialize_10 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 10,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01FE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 10, (Is_Empty => True));
   end Initialize_10;

   -------------------
   -- Initialize_11 --
   -------------------

   procedure Initialize_11 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 11,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0020'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 11, (Is_Empty => True));
   end Initialize_11;

   -------------------
   -- Initialize_12 --
   -------------------

   procedure Initialize_12 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 12,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0062'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 12, (Is_Empty => True));
   end Initialize_12;

   -------------------
   -- Initialize_13 --
   -------------------

   procedure Initialize_13 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 13,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0198'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 13, (Is_Empty => True));
   end Initialize_13;

   -------------------
   -- Initialize_14 --
   -------------------

   procedure Initialize_14 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 14, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 14,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 14, (Is_Empty => True));
   end Initialize_14;

   -------------------
   -- Initialize_15 --
   -------------------

   procedure Initialize_15 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 15, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 15,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0152'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 15, (Is_Empty => True));
   end Initialize_15;

   -------------------
   -- Initialize_16 --
   -------------------

   procedure Initialize_16 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 16, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 16,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_015B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 16, (Is_Empty => True));
   end Initialize_16;

   -------------------
   -- Initialize_17 --
   -------------------

   procedure Initialize_17 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 17, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 17,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_018A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 17, (Is_Empty => True));
   end Initialize_17;

   -------------------
   -- Initialize_18 --
   -------------------

   procedure Initialize_18 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 18,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_019C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 18, (Is_Empty => True));
   end Initialize_18;

   -------------------
   -- Initialize_19 --
   -------------------

   procedure Initialize_19 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 19,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0074'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 19, (Is_Empty => True));
   end Initialize_19;

   -------------------
   -- Initialize_20 --
   -------------------

   procedure Initialize_20 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 20,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01AA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 20, (Is_Empty => True));
   end Initialize_20;

   -------------------
   -- Initialize_21 --
   -------------------

   procedure Initialize_21 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 21,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0051'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 21, (Is_Empty => True));
   end Initialize_21;

   -------------------
   -- Initialize_22 --
   -------------------

   procedure Initialize_22 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 22,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01DC'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 22, (Is_Empty => True));
   end Initialize_22;

   -------------------
   -- Initialize_23 --
   -------------------

   procedure Initialize_23 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 23, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 23,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0135'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 23, (Is_Empty => True));
   end Initialize_23;

   -------------------
   -- Initialize_24 --
   -------------------

   procedure Initialize_24 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 24,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 24, (Is_Empty => True));
   end Initialize_24;

   -------------------
   -- Initialize_25 --
   -------------------

   procedure Initialize_25 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 25,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0179'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 25, (Is_Empty => True));
   end Initialize_25;

   -------------------
   -- Initialize_26 --
   -------------------

   procedure Initialize_26 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 26,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0076'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 26, (Is_Empty => True));
   end Initialize_26;

   -------------------
   -- Initialize_27 --
   -------------------

   procedure Initialize_27 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 27, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 27,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_018B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 27, (Is_Empty => True));
   end Initialize_27;

   -------------------
   -- Initialize_28 --
   -------------------

   procedure Initialize_28 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 28, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 28,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 28, (Is_Empty => True));
   end Initialize_28;

   -------------------
   -- Initialize_29 --
   -------------------

   procedure Initialize_29 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 29, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 29,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0185'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 29, (Is_Empty => True));
   end Initialize_29;

   -------------------
   -- Initialize_30 --
   -------------------

   procedure Initialize_30 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 30,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 30, (Is_Empty => True));
   end Initialize_30;

   -------------------
   -- Initialize_31 --
   -------------------

   procedure Initialize_31 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 31, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 31,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 31, (Is_Empty => True));
   end Initialize_31;

   -------------------
   -- Initialize_32 --
   -------------------

   procedure Initialize_32 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 32, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 32,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0158'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 32, (Is_Empty => True));
   end Initialize_32;

   -------------------
   -- Initialize_33 --
   -------------------

   procedure Initialize_33 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 33, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 33,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 33, (Is_Empty => True));
   end Initialize_33;

   -------------------
   -- Initialize_34 --
   -------------------

   procedure Initialize_34 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 34, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 34, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 34,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 34, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 34, (Is_Empty => True));
   end Initialize_34;

   -------------------
   -- Initialize_35 --
   -------------------

   procedure Initialize_35 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 35, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 35, (False, 2));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 35,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 35, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 35, (Is_Empty => True));
   end Initialize_35;

   -------------------
   -- Initialize_36 --
   -------------------

   procedure Initialize_36 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 36, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 36,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0056'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 36, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 36, (Is_Empty => True));
   end Initialize_36;

   -------------------
   -- Initialize_37 --
   -------------------

   procedure Initialize_37 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 37, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 37, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 37, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 37,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0172'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 37, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 37, (Is_Empty => True));
   end Initialize_37;

   -------------------
   -- Initialize_38 --
   -------------------

   procedure Initialize_38 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 38, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 38, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 38, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 38,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 38, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 38, (Is_Empty => True));
   end Initialize_38;

   -------------------
   -- Initialize_39 --
   -------------------

   procedure Initialize_39 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 39, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 39,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 39, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 39, (Is_Empty => True));
   end Initialize_39;

   -------------------
   -- Initialize_40 --
   -------------------

   procedure Initialize_40 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 40, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 40, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 40, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 40,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0052'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 40, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 40, (Is_Empty => True));
   end Initialize_40;

   -------------------
   -- Initialize_41 --
   -------------------

   procedure Initialize_41 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 41, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 41, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 41, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 41,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 41, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 41, (Is_Empty => True));
   end Initialize_41;

   -------------------
   -- Initialize_42 --
   -------------------

   procedure Initialize_42 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 42, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 42,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_017A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 42, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 42, (Is_Empty => True));
   end Initialize_42;

   -------------------
   -- Initialize_43 --
   -------------------

   procedure Initialize_43 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 43, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 43, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 43, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 43, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 43,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0138'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 43, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 43, (Is_Empty => True));
   end Initialize_43;

   -------------------
   -- Initialize_44 --
   -------------------

   procedure Initialize_44 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 44, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 44, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 44, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 44, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 44,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 44, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 44, (Is_Empty => True));
   end Initialize_44;

   -------------------
   -- Initialize_45 --
   -------------------

   procedure Initialize_45 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 45, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 45,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0095'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 45, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 45, (Is_Empty => True));
   end Initialize_45;

   -------------------
   -- Initialize_46 --
   -------------------

   procedure Initialize_46 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 46, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 46, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 46, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 46,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 46, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 46, (Is_Empty => True));
   end Initialize_46;

   -------------------
   -- Initialize_47 --
   -------------------

   procedure Initialize_47 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 47, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 47,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0170'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 47, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 47, (Is_Empty => True));
   end Initialize_47;

   -------------------
   -- Initialize_48 --
   -------------------

   procedure Initialize_48 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 48, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 48, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 48,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FC'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 48, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 48, (Is_Empty => True));
   end Initialize_48;

   -------------------
   -- Initialize_49 --
   -------------------

   procedure Initialize_49 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 49, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 49, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 49, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 49,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0052'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 49, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 49, (Is_Empty => True));
   end Initialize_49;

   -------------------
   -- Initialize_50 --
   -------------------

   procedure Initialize_50 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 50, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 50, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 50, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 50,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 50, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 50, (Is_Empty => True));
   end Initialize_50;

   -------------------
   -- Initialize_51 --
   -------------------

   procedure Initialize_51 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 51, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 51, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 51, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 51,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01AF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 51, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 51, (Is_Empty => True));
   end Initialize_51;

   -------------------
   -- Initialize_52 --
   -------------------

   procedure Initialize_52 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 52, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 52, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 52, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 52,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 52, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 52, (Is_Empty => True));
   end Initialize_52;

   -------------------
   -- Initialize_53 --
   -------------------

   procedure Initialize_53 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 53, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 53, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 53,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 53, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 53, (Is_Empty => True));
   end Initialize_53;

   -------------------
   -- Initialize_54 --
   -------------------

   procedure Initialize_54 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 54, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 54, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 54, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 54, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 54, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 54,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 54, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 54, (Is_Empty => True));
   end Initialize_54;

   -------------------
   -- Initialize_55 --
   -------------------

   procedure Initialize_55 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 55, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 55, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 55, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 55,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 55, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 55, (Is_Empty => True));
   end Initialize_55;

   -------------------
   -- Initialize_56 --
   -------------------

   procedure Initialize_56 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 56, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 56, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 56, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 56,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0194'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 56, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 56, (Is_Empty => True));
   end Initialize_56;

   -------------------
   -- Initialize_57 --
   -------------------

   procedure Initialize_57 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 57, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 57, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 57, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 57, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 57,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01BA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 57, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 57, (Is_Empty => True));
   end Initialize_57;

   -------------------
   -- Initialize_58 --
   -------------------

   procedure Initialize_58 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 58, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 58, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 58,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 58, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 58, (Is_Empty => True));
   end Initialize_58;

   -------------------
   -- Initialize_59 --
   -------------------

   procedure Initialize_59 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 59, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 59, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 59, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 59,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 59, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 59, (Is_Empty => True));
   end Initialize_59;

   -------------------
   -- Initialize_60 --
   -------------------

   procedure Initialize_60 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 60, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 60, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 60, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 60, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 60,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 60, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 60, (Is_Empty => True));
   end Initialize_60;

   -------------------
   -- Initialize_61 --
   -------------------

   procedure Initialize_61 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 61, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 61, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 61, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 61, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 61, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 61,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0148'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 61, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 61, (Is_Empty => True));
   end Initialize_61;

   -------------------
   -- Initialize_62 --
   -------------------

   procedure Initialize_62 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 62, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 62, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 62,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0147'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 62, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 62, (Is_Empty => True));
   end Initialize_62;

   -------------------
   -- Initialize_63 --
   -------------------

   procedure Initialize_63 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 63, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 63, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 63,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0169'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 63, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 63, (Is_Empty => True));
   end Initialize_63;

   -------------------
   -- Initialize_64 --
   -------------------

   procedure Initialize_64 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 64, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 64, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 64, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 64,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 64, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 64, (Is_Empty => True));
   end Initialize_64;

   -------------------
   -- Initialize_65 --
   -------------------

   procedure Initialize_65 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 65, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 65, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 65,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01FA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 65, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 65, (Is_Empty => True));
   end Initialize_65;

   -------------------
   -- Initialize_66 --
   -------------------

   procedure Initialize_66 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 66, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 66, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 66,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 66, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 66, (Is_Empty => True));
   end Initialize_66;

   -------------------
   -- Initialize_67 --
   -------------------

   procedure Initialize_67 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 67, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 67,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 67, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 67, (Is_Empty => True));
   end Initialize_67;

   -------------------
   -- Initialize_68 --
   -------------------

   procedure Initialize_68 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 68, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 68,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01AD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 68, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 68, (Is_Empty => True));
   end Initialize_68;

   -------------------
   -- Initialize_69 --
   -------------------

   procedure Initialize_69 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 69, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 69, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 69, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 69,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0163'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 69, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 69, (Is_Empty => True));
   end Initialize_69;

   -------------------
   -- Initialize_70 --
   -------------------

   procedure Initialize_70 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 70, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 70, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 70, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 70,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0041'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 70, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 70, (Is_Empty => True));
   end Initialize_70;

   -------------------
   -- Initialize_71 --
   -------------------

   procedure Initialize_71 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 71, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 71, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 71,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 71, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 71, (Is_Empty => True));
   end Initialize_71;

   -------------------
   -- Initialize_72 --
   -------------------

   procedure Initialize_72 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 72, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 72, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 72,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 72, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 72, (Is_Empty => True));
   end Initialize_72;

   -------------------
   -- Initialize_73 --
   -------------------

   procedure Initialize_73 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 73, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 73,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0164'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 73, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 73, (Is_Empty => True));
   end Initialize_73;

   -------------------
   -- Initialize_74 --
   -------------------

   procedure Initialize_74 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 74, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 74,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 74, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 74, (Is_Empty => True));
   end Initialize_74;

   -------------------
   -- Initialize_75 --
   -------------------

   procedure Initialize_75 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 75, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 75, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 75, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 75, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 75,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01DE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 75, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 75, (Is_Empty => True));
   end Initialize_75;

   -------------------
   -- Initialize_76 --
   -------------------

   procedure Initialize_76 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 76, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 76, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 76, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 76, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 76,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 76, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 76, (Is_Empty => True));
   end Initialize_76;

   -------------------
   -- Initialize_77 --
   -------------------

   procedure Initialize_77 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 77, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 77, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 77, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 77,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0048'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 77, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 77, (Is_Empty => True));
   end Initialize_77;

   -------------------
   -- Initialize_78 --
   -------------------

   procedure Initialize_78 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 78, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 78,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0104'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 78, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 78, (Is_Empty => True));
   end Initialize_78;

   -------------------
   -- Initialize_79 --
   -------------------

   procedure Initialize_79 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 79,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 79,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 79, (Is_Empty => True));
   end Initialize_79;

   -------------------
   -- Initialize_80 --
   -------------------

   procedure Initialize_80 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 80,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 80,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 80, (Is_Empty => True));
   end Initialize_80;

   -------------------
   -- Initialize_81 --
   -------------------

   procedure Initialize_81 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 81,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 81,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 81, (Is_Empty => True));
   end Initialize_81;

   -------------------
   -- Initialize_82 --
   -------------------

   procedure Initialize_82 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 82, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 82,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0142'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 82, (Is_Empty => True));
   end Initialize_82;

   -------------------
   -- Initialize_83 --
   -------------------

   procedure Initialize_83 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 83, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 83,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 83, (Is_Empty => True));
   end Initialize_83;

   -------------------
   -- Initialize_84 --
   -------------------

   procedure Initialize_84 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 84, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 84,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FB'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 84, (Is_Empty => True));
   end Initialize_84;

   -------------------
   -- Initialize_85 --
   -------------------

   procedure Initialize_85 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 85, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 85, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 85, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 85, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 85,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0154'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 85, (Is_Empty => True));
   end Initialize_85;

   -------------------
   -- Initialize_86 --
   -------------------

   procedure Initialize_86 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 86, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 86,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 86, (Is_Empty => True));
   end Initialize_86;

   -------------------
   -- Initialize_87 --
   -------------------

   procedure Initialize_87 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 87,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 87, (Is_Empty => True));
   end Initialize_87;

   -------------------
   -- Initialize_88 --
   -------------------

   procedure Initialize_88 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 88,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 88, (Is_Empty => True));
   end Initialize_88;

   -------------------
   -- Initialize_89 --
   -------------------

   procedure Initialize_89 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 89,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 89,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 89, (Is_Empty => True));
   end Initialize_89;

   -------------------
   -- Initialize_90 --
   -------------------

   procedure Initialize_90 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 90, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 90,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00DE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 90, (Is_Empty => True));
   end Initialize_90;

   -------------------
   -- Initialize_91 --
   -------------------

   procedure Initialize_91 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 91,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 91,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0113'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 91, (Is_Empty => True));
   end Initialize_91;

   -------------------
   -- Initialize_92 --
   -------------------

   procedure Initialize_92 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 92,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 92,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0178'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 92, (Is_Empty => True));
   end Initialize_92;

   -------------------
   -- Initialize_93 --
   -------------------

   procedure Initialize_93 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 93,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0159'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 93, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 93,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 93, (Is_Empty => True));
   end Initialize_93;

   -------------------
   -- Initialize_94 --
   -------------------

   procedure Initialize_94 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 94,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0159'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 94, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 94,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 94, (Is_Empty => True));
   end Initialize_94;

   -------------------
   -- Initialize_95 --
   -------------------

   procedure Initialize_95 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 95, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 95,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 95, (Is_Empty => True));
   end Initialize_95;

   -------------------
   -- Initialize_96 --
   -------------------

   procedure Initialize_96 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 96, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 96, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 96, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 96, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 96,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 96, (Is_Empty => True));
   end Initialize_96;

   -------------------
   -- Initialize_97 --
   -------------------

   procedure Initialize_97 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 97, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 97, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 97, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 97,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0000'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 97, (Is_Empty => True));
   end Initialize_97;

   -------------------
   -- Initialize_98 --
   -------------------

   procedure Initialize_98 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 98, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 98,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 98, (Is_Empty => True));
   end Initialize_98;

   -------------------
   -- Initialize_99 --
   -------------------

   procedure Initialize_99 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 99, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 99, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Unique (Base + 99, False);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 99, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 99,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0142'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 99, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 99, (Is_Empty => True));
   end Initialize_99;

   --------------------
   -- Initialize_100 --
   --------------------

   procedure Initialize_100 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 100, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 100, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 100, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 100,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_019E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 100, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 100, (Is_Empty => True));
   end Initialize_100;

   --------------------
   -- Initialize_101 --
   --------------------

   procedure Initialize_101 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 101, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 101, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 101,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0077'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 101, (Is_Empty => True));
   end Initialize_101;

   --------------------
   -- Initialize_102 --
   --------------------

   procedure Initialize_102 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 102, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 102,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0029'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 102, (Is_Empty => True));
   end Initialize_102;

   --------------------
   -- Initialize_103 --
   --------------------

   procedure Initialize_103 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 103, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 103,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 103, (Is_Empty => True));
   end Initialize_103;

   --------------------
   -- Initialize_104 --
   --------------------

   procedure Initialize_104 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 104,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 104, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 104,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0113'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 104, (Is_Empty => True));
   end Initialize_104;

   --------------------
   -- Initialize_105 --
   --------------------

   procedure Initialize_105 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 105,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 105,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0021'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 105, (Is_Empty => True));
   end Initialize_105;

   --------------------
   -- Initialize_106 --
   --------------------

   procedure Initialize_106 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 106,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 106, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 106,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0178'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 106, (Is_Empty => True));
   end Initialize_106;

   --------------------
   -- Initialize_107 --
   --------------------

   procedure Initialize_107 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 107,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0159'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 107, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 107, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 107,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 107, (Is_Empty => True));
   end Initialize_107;

   --------------------
   -- Initialize_108 --
   --------------------

   procedure Initialize_108 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 108, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 108, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 108,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0196'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 108, (Is_Empty => True));
   end Initialize_108;

   --------------------
   -- Initialize_109 --
   --------------------

   procedure Initialize_109 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 109,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0159'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 109, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 109, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 109,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 109, (Is_Empty => True));
   end Initialize_109;

   --------------------
   -- Initialize_110 --
   --------------------

   procedure Initialize_110 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 110, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 110,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 110, (Is_Empty => True));
   end Initialize_110;

   --------------------
   -- Initialize_111 --
   --------------------

   procedure Initialize_111 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 111, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 111,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 111, (Is_Empty => True));
   end Initialize_111;

   --------------------
   -- Initialize_112 --
   --------------------

   procedure Initialize_112 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 112,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0049'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 112, (Is_Empty => True));
   end Initialize_112;

   --------------------
   -- Initialize_113 --
   --------------------

   procedure Initialize_113 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 113,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 113, (Is_Empty => True));
   end Initialize_113;

   --------------------
   -- Initialize_114 --
   --------------------

   procedure Initialize_114 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 114,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 114,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 114, (Is_Empty => True));
   end Initialize_114;

   --------------------
   -- Initialize_115 --
   --------------------

   procedure Initialize_115 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 115,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 115, (Is_Empty => True));
   end Initialize_115;

   --------------------
   -- Initialize_116 --
   --------------------

   procedure Initialize_116 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 116,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0117'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 116, (Is_Empty => True));
   end Initialize_116;

   --------------------
   -- Initialize_117 --
   --------------------

   procedure Initialize_117 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 117, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 117,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 117, (Is_Empty => True));
   end Initialize_117;

   --------------------
   -- Initialize_118 --
   --------------------

   procedure Initialize_118 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 118,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 118,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 118, (Is_Empty => True));
   end Initialize_118;

   --------------------
   -- Initialize_119 --
   --------------------

   procedure Initialize_119 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 119, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 119,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0054'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 119, (Is_Empty => True));
   end Initialize_119;

   --------------------
   -- Initialize_120 --
   --------------------

   procedure Initialize_120 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 120, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 120,
        AMF.Internals.Tables.CMOF_String_Data_02.MS_0200'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 120, (Is_Empty => True));
   end Initialize_120;

   --------------------
   -- Initialize_121 --
   --------------------

   procedure Initialize_121 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 121, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 121,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0029'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 121, (Is_Empty => True));
   end Initialize_121;

   --------------------
   -- Initialize_122 --
   --------------------

   procedure Initialize_122 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 122, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 122,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 122, (Is_Empty => True));
   end Initialize_122;

   --------------------
   -- Initialize_123 --
   --------------------

   procedure Initialize_123 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 123, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 123,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 123, (Is_Empty => True));
   end Initialize_123;

   --------------------
   -- Initialize_124 --
   --------------------

   procedure Initialize_124 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 124,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 124,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0111'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 124, (Is_Empty => True));
   end Initialize_124;

   --------------------
   -- Initialize_125 --
   --------------------

   procedure Initialize_125 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 125,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 125,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 125, (Is_Empty => True));
   end Initialize_125;

   --------------------
   -- Initialize_126 --
   --------------------

   procedure Initialize_126 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 126,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 126,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0105'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 126, (Is_Empty => True));
   end Initialize_126;

   --------------------
   -- Initialize_127 --
   --------------------

   procedure Initialize_127 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 127,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 127,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0060'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 127, (Is_Empty => True));
   end Initialize_127;

   --------------------
   -- Initialize_128 --
   --------------------

   procedure Initialize_128 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 128, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 128, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 128,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 128, (Is_Empty => True));
   end Initialize_128;

   --------------------
   -- Initialize_129 --
   --------------------

   procedure Initialize_129 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 129, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 129,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0174'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 129, (Is_Empty => True));
   end Initialize_129;

   --------------------
   -- Initialize_130 --
   --------------------

   procedure Initialize_130 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 130,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 130,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 130, (Is_Empty => True));
   end Initialize_130;

   --------------------
   -- Initialize_131 --
   --------------------

   procedure Initialize_131 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 131,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 131, (Is_Empty => True));
   end Initialize_131;

   --------------------
   -- Initialize_132 --
   --------------------

   procedure Initialize_132 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 132, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 132,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0050'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 132, (Is_Empty => True));
   end Initialize_132;

   --------------------
   -- Initialize_133 --
   --------------------

   procedure Initialize_133 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 133,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0150'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 133, (Is_Empty => True));
   end Initialize_133;

   --------------------
   -- Initialize_134 --
   --------------------

   procedure Initialize_134 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 134, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 134,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 134, (Is_Empty => True));
   end Initialize_134;

   --------------------
   -- Initialize_135 --
   --------------------

   procedure Initialize_135 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 135, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 135,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0196'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 135, (Is_Empty => True));
   end Initialize_135;

   --------------------
   -- Initialize_136 --
   --------------------

   procedure Initialize_136 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 136,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_017F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 136, (Is_Empty => True));
   end Initialize_136;

   --------------------
   -- Initialize_137 --
   --------------------

   procedure Initialize_137 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 137,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 137, (Is_Empty => True));
   end Initialize_137;

   --------------------
   -- Initialize_138 --
   --------------------

   procedure Initialize_138 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 138,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 138, (Is_Empty => True));
   end Initialize_138;

   --------------------
   -- Initialize_139 --
   --------------------

   procedure Initialize_139 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 139,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0197'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 139, (Is_Empty => True));
   end Initialize_139;

   --------------------
   -- Initialize_140 --
   --------------------

   procedure Initialize_140 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 140,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00CE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 140, (Is_Empty => True));
   end Initialize_140;

   --------------------
   -- Initialize_141 --
   --------------------

   procedure Initialize_141 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 141,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 141, (Is_Empty => True));
   end Initialize_141;

   --------------------
   -- Initialize_142 --
   --------------------

   procedure Initialize_142 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 142,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0059'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 142, (Is_Empty => True));
   end Initialize_142;

   --------------------
   -- Initialize_143 --
   --------------------

   procedure Initialize_143 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 143,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0072'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 143, (Is_Empty => True));
   end Initialize_143;

   --------------------
   -- Initialize_144 --
   --------------------

   procedure Initialize_144 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 144,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 144, (Is_Empty => True));
   end Initialize_144;

   --------------------
   -- Initialize_145 --
   --------------------

   procedure Initialize_145 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 145,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 145, (Is_Empty => True));
   end Initialize_145;

   --------------------
   -- Initialize_146 --
   --------------------

   procedure Initialize_146 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 146,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 146, (Is_Empty => True));
   end Initialize_146;

   --------------------
   -- Initialize_147 --
   --------------------

   procedure Initialize_147 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 147,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0175'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 147, (Is_Empty => True));
   end Initialize_147;

   --------------------
   -- Initialize_148 --
   --------------------

   procedure Initialize_148 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 148,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0144'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 148, (Is_Empty => True));
   end Initialize_148;

   --------------------
   -- Initialize_149 --
   --------------------

   procedure Initialize_149 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 149,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 149, (Is_Empty => True));
   end Initialize_149;

   --------------------
   -- Initialize_150 --
   --------------------

   procedure Initialize_150 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 150,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 150, (Is_Empty => True));
   end Initialize_150;

   --------------------
   -- Initialize_151 --
   --------------------

   procedure Initialize_151 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 151,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_018F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 151, (Is_Empty => True));
   end Initialize_151;

   --------------------
   -- Initialize_152 --
   --------------------

   procedure Initialize_152 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 152,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 152, (Is_Empty => True));
   end Initialize_152;

   --------------------
   -- Initialize_153 --
   --------------------

   procedure Initialize_153 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 153,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01FD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 153, (Is_Empty => True));
   end Initialize_153;

   --------------------
   -- Initialize_154 --
   --------------------

   procedure Initialize_154 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 154,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_015A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 154, (Is_Empty => True));
   end Initialize_154;

   --------------------
   -- Initialize_155 --
   --------------------

   procedure Initialize_155 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 155,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 155, (Is_Empty => True));
   end Initialize_155;

   --------------------
   -- Initialize_156 --
   --------------------

   procedure Initialize_156 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 156,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00DA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 156, (Is_Empty => True));
   end Initialize_156;

   --------------------
   -- Initialize_157 --
   --------------------

   procedure Initialize_157 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 157,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0108'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 157, (Is_Empty => True));
   end Initialize_157;

   --------------------
   -- Initialize_158 --
   --------------------

   procedure Initialize_158 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 158,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0006'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 158, (Is_Empty => True));
   end Initialize_158;

   --------------------
   -- Initialize_159 --
   --------------------

   procedure Initialize_159 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 159,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 159, (Is_Empty => True));
   end Initialize_159;

   --------------------
   -- Initialize_160 --
   --------------------

   procedure Initialize_160 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 160,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 160, (Is_Empty => True));
   end Initialize_160;

   --------------------
   -- Initialize_161 --
   --------------------

   procedure Initialize_161 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 161,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 161, (Is_Empty => True));
   end Initialize_161;

   --------------------
   -- Initialize_162 --
   --------------------

   procedure Initialize_162 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 162,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 162, (Is_Empty => True));
   end Initialize_162;

   --------------------
   -- Initialize_163 --
   --------------------

   procedure Initialize_163 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 163,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 163, (Is_Empty => True));
   end Initialize_163;

   --------------------
   -- Initialize_164 --
   --------------------

   procedure Initialize_164 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 164,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0061'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 164, (Is_Empty => True));
   end Initialize_164;

   --------------------
   -- Initialize_165 --
   --------------------

   procedure Initialize_165 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 165,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 165, (Is_Empty => True));
   end Initialize_165;

   --------------------
   -- Initialize_166 --
   --------------------

   procedure Initialize_166 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 166,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 166, (Is_Empty => True));
   end Initialize_166;

   --------------------
   -- Initialize_167 --
   --------------------

   procedure Initialize_167 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 167,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0055'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 167, (Is_Empty => True));
   end Initialize_167;

   --------------------
   -- Initialize_168 --
   --------------------

   procedure Initialize_168 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 168,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0106'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 168, (Is_Empty => True));
   end Initialize_168;

   --------------------
   -- Initialize_169 --
   --------------------

   procedure Initialize_169 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 169,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0033'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 169, (Is_Empty => True));
   end Initialize_169;

   --------------------
   -- Initialize_170 --
   --------------------

   procedure Initialize_170 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 170,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00ED'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 170, (Is_Empty => True));
   end Initialize_170;

   --------------------
   -- Initialize_171 --
   --------------------

   procedure Initialize_171 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 171,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0003'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 171, (Is_Empty => True));
   end Initialize_171;

   --------------------
   -- Initialize_172 --
   --------------------

   procedure Initialize_172 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 172,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0161'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 172, (Is_Empty => True));
   end Initialize_172;

   --------------------
   -- Initialize_173 --
   --------------------

   procedure Initialize_173 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 173,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 173, (Is_Empty => True));
   end Initialize_173;

   --------------------
   -- Initialize_174 --
   --------------------

   procedure Initialize_174 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 174,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01DB'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 174, (Is_Empty => True));
   end Initialize_174;

   --------------------
   -- Initialize_175 --
   --------------------

   procedure Initialize_175 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 175,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 175, (Is_Empty => True));
   end Initialize_175;

   --------------------
   -- Initialize_176 --
   --------------------

   procedure Initialize_176 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 176,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00BE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 176, (Is_Empty => True));
   end Initialize_176;

   --------------------
   -- Initialize_177 --
   --------------------

   procedure Initialize_177 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 177,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CB'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 177, (Is_Empty => True));
   end Initialize_177;

   --------------------
   -- Initialize_178 --
   --------------------

   procedure Initialize_178 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 178,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0065'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 178, (Is_Empty => True));
   end Initialize_178;

   --------------------
   -- Initialize_179 --
   --------------------

   procedure Initialize_179 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 179,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 179, (Is_Empty => True));
   end Initialize_179;

   --------------------
   -- Initialize_180 --
   --------------------

   procedure Initialize_180 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 180,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0034'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 180, (Is_Empty => True));
   end Initialize_180;

   --------------------
   -- Initialize_181 --
   --------------------

   procedure Initialize_181 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 181,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 181, (Is_Empty => True));
   end Initialize_181;

   --------------------
   -- Initialize_182 --
   --------------------

   procedure Initialize_182 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 182,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0008'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 182, (Is_Empty => True));
   end Initialize_182;

   --------------------
   -- Initialize_183 --
   --------------------

   procedure Initialize_183 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 183,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_005F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 183, (Is_Empty => True));
   end Initialize_183;

   --------------------
   -- Initialize_184 --
   --------------------

   procedure Initialize_184 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 184,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 184, (Is_Empty => True));
   end Initialize_184;

   --------------------
   -- Initialize_185 --
   --------------------

   procedure Initialize_185 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 185,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0130'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 185, (Is_Empty => True));
   end Initialize_185;

   --------------------
   -- Initialize_186 --
   --------------------

   procedure Initialize_186 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 186,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0182'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 186, (Is_Empty => True));
   end Initialize_186;

   --------------------
   -- Initialize_187 --
   --------------------

   procedure Initialize_187 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 187,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0035'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 187, (Is_Empty => True));
   end Initialize_187;

   --------------------
   -- Initialize_188 --
   --------------------

   procedure Initialize_188 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 188,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00BA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 188, (Is_Empty => True));
   end Initialize_188;

   --------------------
   -- Initialize_189 --
   --------------------

   procedure Initialize_189 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 189,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Uri
       (Base + 189,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 189, (Is_Empty => True));
   end Initialize_189;

   --------------------
   -- Initialize_190 --
   --------------------

   procedure Initialize_190 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 190,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0173'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 190, (Is_Empty => True));
   end Initialize_190;

   --------------------
   -- Initialize_191 --
   --------------------

   procedure Initialize_191 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 191,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014D'Access);
   end Initialize_191;

   --------------------
   -- Initialize_192 --
   --------------------

   procedure Initialize_192 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 192,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0165'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 192, (Is_Empty => True));
   end Initialize_192;

   --------------------
   -- Initialize_193 --
   --------------------

   procedure Initialize_193 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 193,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008C'Access);
   end Initialize_193;

   --------------------
   -- Initialize_194 --
   --------------------

   procedure Initialize_194 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 194,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0040'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 194, (Is_Empty => True));
   end Initialize_194;

   --------------------
   -- Initialize_195 --
   --------------------

   procedure Initialize_195 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 195,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00CC'Access);
   end Initialize_195;

   --------------------
   -- Initialize_196 --
   --------------------

   procedure Initialize_196 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 196,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 196, (Is_Empty => True));
   end Initialize_196;

   --------------------
   -- Initialize_197 --
   --------------------

   procedure Initialize_197 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 197,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0116'Access);
   end Initialize_197;

   --------------------
   -- Initialize_198 --
   --------------------

   procedure Initialize_198 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 198,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009A'Access);
   end Initialize_198;

   --------------------
   -- Initialize_199 --
   --------------------

   procedure Initialize_199 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 199,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01FF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 199, (Is_Empty => True));
   end Initialize_199;

   --------------------
   -- Initialize_200 --
   --------------------

   procedure Initialize_200 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 200,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0188'Access);
   end Initialize_200;

   --------------------
   -- Initialize_201 --
   --------------------

   procedure Initialize_201 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 201, (Is_Empty => True));
   end Initialize_201;

   --------------------
   -- Initialize_202 --
   --------------------

   procedure Initialize_202 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 202,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0100'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 202, (Is_Empty => True));
   end Initialize_202;

   --------------------
   -- Initialize_203 --
   --------------------

   procedure Initialize_203 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 203,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D6'Access);
   end Initialize_203;

   --------------------
   -- Initialize_204 --
   --------------------

   procedure Initialize_204 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 204, (Is_Empty => True));
   end Initialize_204;

   --------------------
   -- Initialize_205 --
   --------------------

   procedure Initialize_205 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 205,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EC'Access);
   end Initialize_205;

   --------------------
   -- Initialize_206 --
   --------------------

   procedure Initialize_206 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 206,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0131'Access);
   end Initialize_206;

   --------------------
   -- Initialize_207 --
   --------------------

   procedure Initialize_207 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 207,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0018'Access);
   end Initialize_207;

   --------------------
   -- Initialize_208 --
   --------------------

   procedure Initialize_208 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 208,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003A'Access);
   end Initialize_208;

   --------------------
   -- Initialize_209 --
   --------------------

   procedure Initialize_209 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 209,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_013A'Access);
   end Initialize_209;

   --------------------
   -- Initialize_210 --
   --------------------

   procedure Initialize_210 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 210, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 210,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 210, (Is_Empty => True));
   end Initialize_210;

   --------------------
   -- Initialize_211 --
   --------------------

   procedure Initialize_211 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 211,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F8'Access);
   end Initialize_211;

   --------------------
   -- Initialize_212 --
   --------------------

   procedure Initialize_212 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 212,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 212, (Is_Empty => True));
   end Initialize_212;

   --------------------
   -- Initialize_213 --
   --------------------

   procedure Initialize_213 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 213, (Is_Empty => True));
   end Initialize_213;

   --------------------
   -- Initialize_214 --
   --------------------

   procedure Initialize_214 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 214, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 214, (Is_Empty => True));
   end Initialize_214;

   --------------------
   -- Initialize_215 --
   --------------------

   procedure Initialize_215 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 215, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 215,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0112'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 215, (Is_Empty => True));
   end Initialize_215;

   --------------------
   -- Initialize_216 --
   --------------------

   procedure Initialize_216 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 216, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 216,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00DC'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 216, (Is_Empty => True));
   end Initialize_216;

   --------------------
   -- Initialize_217 --
   --------------------

   procedure Initialize_217 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 217,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0070'Access);
   end Initialize_217;

   --------------------
   -- Initialize_218 --
   --------------------

   procedure Initialize_218 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 218,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 218, (Is_Empty => True));
   end Initialize_218;

   --------------------
   -- Initialize_219 --
   --------------------

   procedure Initialize_219 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 219, (Is_Empty => True));
   end Initialize_219;

   --------------------
   -- Initialize_220 --
   --------------------

   procedure Initialize_220 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 220, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 220, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 220, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 220, (Is_Empty => True));
   end Initialize_220;

   --------------------
   -- Initialize_221 --
   --------------------

   procedure Initialize_221 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 221, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 221,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0095'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 221, (Is_Empty => True));
   end Initialize_221;

   --------------------
   -- Initialize_222 --
   --------------------

   procedure Initialize_222 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 222,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0005'Access);
   end Initialize_222;

   --------------------
   -- Initialize_223 --
   --------------------

   procedure Initialize_223 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 223,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 223, (Is_Empty => True));
   end Initialize_223;

   --------------------
   -- Initialize_224 --
   --------------------

   procedure Initialize_224 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 224, (Is_Empty => True));
   end Initialize_224;

   --------------------
   -- Initialize_225 --
   --------------------

   procedure Initialize_225 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 225, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 225, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 225, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 225, (Is_Empty => True));
   end Initialize_225;

   --------------------
   -- Initialize_226 --
   --------------------

   procedure Initialize_226 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 226, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 226,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 226, (Is_Empty => True));
   end Initialize_226;

   --------------------
   -- Initialize_227 --
   --------------------

   procedure Initialize_227 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 227,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D6'Access);
   end Initialize_227;

   --------------------
   -- Initialize_228 --
   --------------------

   procedure Initialize_228 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 228,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 228, (Is_Empty => True));
   end Initialize_228;

   --------------------
   -- Initialize_229 --
   --------------------

   procedure Initialize_229 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 229, (Is_Empty => True));
   end Initialize_229;

   --------------------
   -- Initialize_230 --
   --------------------

   procedure Initialize_230 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 230, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 230, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 230, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 230, (Is_Empty => True));
   end Initialize_230;

   --------------------
   -- Initialize_231 --
   --------------------

   procedure Initialize_231 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 231, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 231,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 231, (Is_Empty => True));
   end Initialize_231;

   --------------------
   -- Initialize_232 --
   --------------------

   procedure Initialize_232 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 232,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01AB'Access);
   end Initialize_232;

   --------------------
   -- Initialize_233 --
   --------------------

   procedure Initialize_233 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 233,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 233, (Is_Empty => True));
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
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 235, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 235, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 235, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 235, (Is_Empty => True));
   end Initialize_235;

   --------------------
   -- Initialize_236 --
   --------------------

   procedure Initialize_236 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 236, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 236,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0176'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 236, (Is_Empty => True));
   end Initialize_236;

   --------------------
   -- Initialize_237 --
   --------------------

   procedure Initialize_237 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 237,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0089'Access);
   end Initialize_237;

   --------------------
   -- Initialize_238 --
   --------------------

   procedure Initialize_238 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 238,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 238, (Is_Empty => True));
   end Initialize_238;

   --------------------
   -- Initialize_239 --
   --------------------

   procedure Initialize_239 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 239, (Is_Empty => True));
   end Initialize_239;

   --------------------
   -- Initialize_240 --
   --------------------

   procedure Initialize_240 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 240, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 240, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 240, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 240, (Is_Empty => True));
   end Initialize_240;

   --------------------
   -- Initialize_241 --
   --------------------

   procedure Initialize_241 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 241, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 241,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0090'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 241, (Is_Empty => True));
   end Initialize_241;

   --------------------
   -- Initialize_242 --
   --------------------

   procedure Initialize_242 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 242,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007C'Access);
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
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 244, (Is_Empty => True));
   end Initialize_244;

   --------------------
   -- Initialize_245 --
   --------------------

   procedure Initialize_245 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 245,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 245, (Is_Empty => True));
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
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 247, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 247, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 247, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 247, (Is_Empty => True));
   end Initialize_247;

   --------------------
   -- Initialize_248 --
   --------------------

   procedure Initialize_248 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 248, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 248,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 248, (Is_Empty => True));
   end Initialize_248;

   --------------------
   -- Initialize_249 --
   --------------------

   procedure Initialize_249 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 249, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 249,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0093'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 249, (Is_Empty => True));
   end Initialize_249;

   --------------------
   -- Initialize_250 --
   --------------------

   procedure Initialize_250 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 250,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0160'Access);
   end Initialize_250;

   --------------------
   -- Initialize_251 --
   --------------------

   procedure Initialize_251 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 251, (Is_Empty => True));
   end Initialize_251;

   --------------------
   -- Initialize_252 --
   --------------------

   procedure Initialize_252 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 252, (Is_Empty => True));
   end Initialize_252;

   --------------------
   -- Initialize_253 --
   --------------------

   procedure Initialize_253 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 253,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 253, (Is_Empty => True));
   end Initialize_253;

   --------------------
   -- Initialize_254 --
   --------------------

   procedure Initialize_254 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 254, (Is_Empty => True));
   end Initialize_254;

   --------------------
   -- Initialize_255 --
   --------------------

   procedure Initialize_255 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 255, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 255, (Is_Empty => True));
   end Initialize_255;

   --------------------
   -- Initialize_256 --
   --------------------

   procedure Initialize_256 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 256, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 256,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 256, (Is_Empty => True));
   end Initialize_256;

   --------------------
   -- Initialize_257 --
   --------------------

   procedure Initialize_257 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 257, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 257,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 257, (Is_Empty => True));
   end Initialize_257;

   --------------------
   -- Initialize_258 --
   --------------------

   procedure Initialize_258 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 258,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016E'Access);
   end Initialize_258;

   --------------------
   -- Initialize_259 --
   --------------------

   procedure Initialize_259 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 259,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 259, (Is_Empty => True));
   end Initialize_259;

   --------------------
   -- Initialize_260 --
   --------------------

   procedure Initialize_260 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 260, (Is_Empty => True));
   end Initialize_260;

   --------------------
   -- Initialize_261 --
   --------------------

   procedure Initialize_261 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 261, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 261, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 261, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 261, (Is_Empty => True));
   end Initialize_261;

   --------------------
   -- Initialize_262 --
   --------------------

   procedure Initialize_262 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 262, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 262, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 262,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 262, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 262, (Is_Empty => True));
   end Initialize_262;

   --------------------
   -- Initialize_263 --
   --------------------

   procedure Initialize_263 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 263, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 263,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0140'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 263, (Is_Empty => True));
   end Initialize_263;

   --------------------
   -- Initialize_264 --
   --------------------

   procedure Initialize_264 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 264,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0181'Access);
   end Initialize_264;

   --------------------
   -- Initialize_265 --
   --------------------

   procedure Initialize_265 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 265,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 265, (Is_Empty => True));
   end Initialize_265;

   --------------------
   -- Initialize_266 --
   --------------------

   procedure Initialize_266 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 266, (Is_Empty => True));
   end Initialize_266;

   --------------------
   -- Initialize_267 --
   --------------------

   procedure Initialize_267 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 267, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 267, (Is_Empty => True));
   end Initialize_267;

   --------------------
   -- Initialize_268 --
   --------------------

   procedure Initialize_268 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 268, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 268,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 268, (Is_Empty => True));
   end Initialize_268;

   --------------------
   -- Initialize_269 --
   --------------------

   procedure Initialize_269 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 269,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0139'Access);
   end Initialize_269;

   --------------------
   -- Initialize_270 --
   --------------------

   procedure Initialize_270 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 270,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0141'Access);
   end Initialize_270;

   --------------------
   -- Initialize_271 --
   --------------------

   procedure Initialize_271 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 271,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008B'Access);
   end Initialize_271;

   --------------------
   -- Initialize_272 --
   --------------------

   procedure Initialize_272 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 272,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D9'Access);
   end Initialize_272;

   --------------------
   -- Initialize_273 --
   --------------------

   procedure Initialize_273 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 273,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 273, (Is_Empty => True));
   end Initialize_273;

   --------------------
   -- Initialize_274 --
   --------------------

   procedure Initialize_274 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 274,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C8'Access);
   end Initialize_274;

   --------------------
   -- Initialize_275 --
   --------------------

   procedure Initialize_275 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 275, (Is_Empty => True));
   end Initialize_275;

   --------------------
   -- Initialize_276 --
   --------------------

   procedure Initialize_276 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 276,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0083'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 276, (Is_Empty => True));
   end Initialize_276;

   --------------------
   -- Initialize_277 --
   --------------------

   procedure Initialize_277 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 277,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B3'Access);
   end Initialize_277;

   --------------------
   -- Initialize_278 --
   --------------------

   procedure Initialize_278 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 278, (Is_Empty => True));
   end Initialize_278;

   --------------------
   -- Initialize_279 --
   --------------------

   procedure Initialize_279 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 279,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0153'Access);
   end Initialize_279;

   --------------------
   -- Initialize_280 --
   --------------------

   procedure Initialize_280 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 280,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0038'Access);
   end Initialize_280;

   --------------------
   -- Initialize_281 --
   --------------------

   procedure Initialize_281 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 281,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01BB'Access);
   end Initialize_281;

   --------------------
   -- Initialize_282 --
   --------------------

   procedure Initialize_282 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 282, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 282,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0058'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 282, (Is_Empty => True));
   end Initialize_282;

   --------------------
   -- Initialize_283 --
   --------------------

   procedure Initialize_283 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 283,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007A'Access);
   end Initialize_283;

   --------------------
   -- Initialize_284 --
   --------------------

   procedure Initialize_284 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 284,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 284, (Is_Empty => True));
   end Initialize_284;

   --------------------
   -- Initialize_285 --
   --------------------

   procedure Initialize_285 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 285, (Is_Empty => True));
   end Initialize_285;

   --------------------
   -- Initialize_286 --
   --------------------

   procedure Initialize_286 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 286, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 286, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 286, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 286, (Is_Empty => True));
   end Initialize_286;

   --------------------
   -- Initialize_287 --
   --------------------

   procedure Initialize_287 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 287, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 287,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 287, (Is_Empty => True));
   end Initialize_287;

   --------------------
   -- Initialize_288 --
   --------------------

   procedure Initialize_288 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 288,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0013'Access);
   end Initialize_288;

   --------------------
   -- Initialize_289 --
   --------------------

   procedure Initialize_289 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 289,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 289, (Is_Empty => True));
   end Initialize_289;

   --------------------
   -- Initialize_290 --
   --------------------

   procedure Initialize_290 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 290, (Is_Empty => True));
   end Initialize_290;

   --------------------
   -- Initialize_291 --
   --------------------

   procedure Initialize_291 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 291, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 291, (Is_Empty => True));
   end Initialize_291;

   --------------------
   -- Initialize_292 --
   --------------------

   procedure Initialize_292 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 292,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_019F'Access);
   end Initialize_292;

   --------------------
   -- Initialize_293 --
   --------------------

   procedure Initialize_293 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 293,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00AD'Access);
   end Initialize_293;

   --------------------
   -- Initialize_294 --
   --------------------

   procedure Initialize_294 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 294,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0109'Access);
   end Initialize_294;

   --------------------
   -- Initialize_295 --
   --------------------

   procedure Initialize_295 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 295,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0115'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 295, (Is_Empty => True));
   end Initialize_295;

   --------------------
   -- Initialize_296 --
   --------------------

   procedure Initialize_296 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 296,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001C'Access);
   end Initialize_296;

   --------------------
   -- Initialize_297 --
   --------------------

   procedure Initialize_297 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 297, (Is_Empty => True));
   end Initialize_297;

   --------------------
   -- Initialize_298 --
   --------------------

   procedure Initialize_298 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 298,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0042'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 298, (Is_Empty => True));
   end Initialize_298;

   --------------------
   -- Initialize_299 --
   --------------------

   procedure Initialize_299 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 299,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D7'Access);
   end Initialize_299;

   --------------------
   -- Initialize_300 --
   --------------------

   procedure Initialize_300 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 300, (Is_Empty => True));
   end Initialize_300;

   --------------------
   -- Initialize_301 --
   --------------------

   procedure Initialize_301 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 301,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0124'Access);
   end Initialize_301;

   --------------------
   -- Initialize_302 --
   --------------------

   procedure Initialize_302 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 302,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E9'Access);
   end Initialize_302;

   --------------------
   -- Initialize_303 --
   --------------------

   procedure Initialize_303 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 303,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003E'Access);
   end Initialize_303;

   --------------------
   -- Initialize_304 --
   --------------------

   procedure Initialize_304 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 304,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_017D'Access);
   end Initialize_304;

   --------------------
   -- Initialize_305 --
   --------------------

   procedure Initialize_305 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 305, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 305,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0101'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 305, (Is_Empty => True));
   end Initialize_305;

   --------------------
   -- Initialize_306 --
   --------------------

   procedure Initialize_306 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 306,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0011'Access);
   end Initialize_306;

   --------------------
   -- Initialize_307 --
   --------------------

   procedure Initialize_307 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 307, (Is_Empty => True));
   end Initialize_307;

   --------------------
   -- Initialize_308 --
   --------------------

   procedure Initialize_308 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 308, (Is_Empty => True));
   end Initialize_308;

   --------------------
   -- Initialize_309 --
   --------------------

   procedure Initialize_309 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 309,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 309, (Is_Empty => True));
   end Initialize_309;

   --------------------
   -- Initialize_310 --
   --------------------

   procedure Initialize_310 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 310, (Is_Empty => True));
   end Initialize_310;

   --------------------
   -- Initialize_311 --
   --------------------

   procedure Initialize_311 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 311, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 311, (Is_Empty => True));
   end Initialize_311;

   --------------------
   -- Initialize_312 --
   --------------------

   procedure Initialize_312 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 312, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 312,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0002'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 312, (Is_Empty => True));
   end Initialize_312;

   --------------------
   -- Initialize_313 --
   --------------------

   procedure Initialize_313 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 313,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F1'Access);
   end Initialize_313;

   --------------------
   -- Initialize_314 --
   --------------------

   procedure Initialize_314 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 314, (Is_Empty => True));
   end Initialize_314;

   --------------------
   -- Initialize_315 --
   --------------------

   procedure Initialize_315 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 315, (Is_Empty => True));
   end Initialize_315;

   --------------------
   -- Initialize_316 --
   --------------------

   procedure Initialize_316 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 316,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 316, (Is_Empty => True));
   end Initialize_316;

   --------------------
   -- Initialize_317 --
   --------------------

   procedure Initialize_317 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 317, (Is_Empty => True));
   end Initialize_317;

   --------------------
   -- Initialize_318 --
   --------------------

   procedure Initialize_318 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 318, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 318, (Is_Empty => True));
   end Initialize_318;

   --------------------
   -- Initialize_319 --
   --------------------

   procedure Initialize_319 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 319, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 319,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 319, (Is_Empty => True));
   end Initialize_319;

   --------------------
   -- Initialize_320 --
   --------------------

   procedure Initialize_320 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 320, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 320,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0126'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 320, (Is_Empty => True));
   end Initialize_320;

   --------------------
   -- Initialize_321 --
   --------------------

   procedure Initialize_321 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 321,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0156'Access);
   end Initialize_321;

   --------------------
   -- Initialize_322 --
   --------------------

   procedure Initialize_322 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 322, (Is_Empty => True));
   end Initialize_322;

   --------------------
   -- Initialize_323 --
   --------------------

   procedure Initialize_323 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 323, (Is_Empty => True));
   end Initialize_323;

   --------------------
   -- Initialize_324 --
   --------------------

   procedure Initialize_324 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 324,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 324, (Is_Empty => True));
   end Initialize_324;

   --------------------
   -- Initialize_325 --
   --------------------

   procedure Initialize_325 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 325, (Is_Empty => True));
   end Initialize_325;

   --------------------
   -- Initialize_326 --
   --------------------

   procedure Initialize_326 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 326, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 326, (Is_Empty => True));
   end Initialize_326;

   --------------------
   -- Initialize_327 --
   --------------------

   procedure Initialize_327 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 327, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 327,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 327, (Is_Empty => True));
   end Initialize_327;

   --------------------
   -- Initialize_328 --
   --------------------

   procedure Initialize_328 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 328, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 328,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 328, (Is_Empty => True));
   end Initialize_328;

   --------------------
   -- Initialize_329 --
   --------------------

   procedure Initialize_329 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 329,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00BF'Access);
   end Initialize_329;

   --------------------
   -- Initialize_330 --
   --------------------

   procedure Initialize_330 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 330,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 330, (Is_Empty => True));
   end Initialize_330;

   --------------------
   -- Initialize_331 --
   --------------------

   procedure Initialize_331 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 331, (Is_Empty => True));
   end Initialize_331;

   --------------------
   -- Initialize_332 --
   --------------------

   procedure Initialize_332 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 332, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 332, (Is_Empty => True));
   end Initialize_332;

   --------------------
   -- Initialize_333 --
   --------------------

   procedure Initialize_333 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 333, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 333,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0136'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 333, (Is_Empty => True));
   end Initialize_333;

   --------------------
   -- Initialize_334 --
   --------------------

   procedure Initialize_334 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 334,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00BC'Access);
   end Initialize_334;

   --------------------
   -- Initialize_335 --
   --------------------

   procedure Initialize_335 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 335,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 335, (Is_Empty => True));
   end Initialize_335;

   --------------------
   -- Initialize_336 --
   --------------------

   procedure Initialize_336 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 336, (Is_Empty => True));
   end Initialize_336;

   --------------------
   -- Initialize_337 --
   --------------------

   procedure Initialize_337 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 337, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 337, (Is_Empty => True));
   end Initialize_337;

   --------------------
   -- Initialize_338 --
   --------------------

   procedure Initialize_338 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 338,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0129'Access);
   end Initialize_338;

   --------------------
   -- Initialize_339 --
   --------------------

   procedure Initialize_339 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 339,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0189'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 339, (Is_Empty => True));
   end Initialize_339;

   --------------------
   -- Initialize_340 --
   --------------------

   procedure Initialize_340 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 340,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014A'Access);
   end Initialize_340;

   --------------------
   -- Initialize_341 --
   --------------------

   procedure Initialize_341 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 341, (Is_Empty => True));
   end Initialize_341;

   --------------------
   -- Initialize_342 --
   --------------------

   procedure Initialize_342 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 342,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0103'Access);
   end Initialize_342;

   --------------------
   -- Initialize_343 --
   --------------------

   procedure Initialize_343 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 343,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_013D'Access);
   end Initialize_343;

   --------------------
   -- Initialize_344 --
   --------------------

   procedure Initialize_344 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 344,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F6'Access);
   end Initialize_344;

   --------------------
   -- Initialize_345 --
   --------------------

   procedure Initialize_345 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 345,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F0'Access);
   end Initialize_345;

   --------------------
   -- Initialize_346 --
   --------------------

   procedure Initialize_346 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 346,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_017E'Access);
   end Initialize_346;

   --------------------
   -- Initialize_347 --
   --------------------

   procedure Initialize_347 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 347, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 347,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 347, (Is_Empty => True));
   end Initialize_347;

   --------------------
   -- Initialize_348 --
   --------------------

   procedure Initialize_348 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 348,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B0'Access);
   end Initialize_348;

   --------------------
   -- Initialize_349 --
   --------------------

   procedure Initialize_349 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 349,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 349, (Is_Empty => True));
   end Initialize_349;

   --------------------
   -- Initialize_350 --
   --------------------

   procedure Initialize_350 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 350, (Is_Empty => True));
   end Initialize_350;

   --------------------
   -- Initialize_351 --
   --------------------

   procedure Initialize_351 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 351, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 351, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 351, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 351, (Is_Empty => True));
   end Initialize_351;

   --------------------
   -- Initialize_352 --
   --------------------

   procedure Initialize_352 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 352, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 352,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_015C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 352, (Is_Empty => True));
   end Initialize_352;

   --------------------
   -- Initialize_353 --
   --------------------

   procedure Initialize_353 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 353,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E5'Access);
   end Initialize_353;

   --------------------
   -- Initialize_354 --
   --------------------

   procedure Initialize_354 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 354,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 354, (Is_Empty => True));
   end Initialize_354;

   --------------------
   -- Initialize_355 --
   --------------------

   procedure Initialize_355 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 355, (Is_Empty => True));
   end Initialize_355;

   --------------------
   -- Initialize_356 --
   --------------------

   procedure Initialize_356 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 356, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 356, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 356, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 356, (Is_Empty => True));
   end Initialize_356;

   --------------------
   -- Initialize_357 --
   --------------------

   procedure Initialize_357 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 357, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 357,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0104'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 357, (Is_Empty => True));
   end Initialize_357;

   --------------------
   -- Initialize_358 --
   --------------------

   procedure Initialize_358 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 358, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 358,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0167'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 358, (Is_Empty => True));
   end Initialize_358;

   --------------------
   -- Initialize_359 --
   --------------------

   procedure Initialize_359 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 359,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0096'Access);
   end Initialize_359;

   --------------------
   -- Initialize_360 --
   --------------------

   procedure Initialize_360 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 360,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 360, (Is_Empty => True));
   end Initialize_360;

   --------------------
   -- Initialize_361 --
   --------------------

   procedure Initialize_361 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 361, (Is_Empty => True));
   end Initialize_361;

   --------------------
   -- Initialize_362 --
   --------------------

   procedure Initialize_362 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 362, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 362, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 362, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 362, (Is_Empty => True));
   end Initialize_362;

   --------------------
   -- Initialize_363 --
   --------------------

   procedure Initialize_363 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 363, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 363, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 363,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 363, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 363, (Is_Empty => True));
   end Initialize_363;

   --------------------
   -- Initialize_364 --
   --------------------

   procedure Initialize_364 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 364, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 364,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 364, (Is_Empty => True));
   end Initialize_364;

   --------------------
   -- Initialize_365 --
   --------------------

   procedure Initialize_365 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 365,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E1'Access);
   end Initialize_365;

   --------------------
   -- Initialize_366 --
   --------------------

   procedure Initialize_366 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 366,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 366, (Is_Empty => True));
   end Initialize_366;

   --------------------
   -- Initialize_367 --
   --------------------

   procedure Initialize_367 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 367, (Is_Empty => True));
   end Initialize_367;

   --------------------
   -- Initialize_368 --
   --------------------

   procedure Initialize_368 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 368, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 368, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 368, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 368, (Is_Empty => True));
   end Initialize_368;

   --------------------
   -- Initialize_369 --
   --------------------

   procedure Initialize_369 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 369, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 369, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 369,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 369, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 369, (Is_Empty => True));
   end Initialize_369;

   --------------------
   -- Initialize_370 --
   --------------------

   procedure Initialize_370 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 370, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 370,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 370, (Is_Empty => True));
   end Initialize_370;

   --------------------
   -- Initialize_371 --
   --------------------

   procedure Initialize_371 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 371,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A2'Access);
   end Initialize_371;

   --------------------
   -- Initialize_372 --
   --------------------

   procedure Initialize_372 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 372,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 372, (Is_Empty => True));
   end Initialize_372;

   --------------------
   -- Initialize_373 --
   --------------------

   procedure Initialize_373 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 373, (Is_Empty => True));
   end Initialize_373;

   --------------------
   -- Initialize_374 --
   --------------------

   procedure Initialize_374 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 374, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 374, (Is_Empty => True));
   end Initialize_374;

   --------------------
   -- Initialize_375 --
   --------------------

   procedure Initialize_375 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 375,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0057'Access);
   end Initialize_375;

   --------------------
   -- Initialize_376 --
   --------------------

   procedure Initialize_376 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 376,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0151'Access);
   end Initialize_376;

   --------------------
   -- Initialize_377 --
   --------------------

   procedure Initialize_377 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 377,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_005B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 377, (Is_Empty => True));
   end Initialize_377;

   --------------------
   -- Initialize_378 --
   --------------------

   procedure Initialize_378 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 378,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010D'Access);
   end Initialize_378;

   --------------------
   -- Initialize_379 --
   --------------------

   procedure Initialize_379 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 379, (Is_Empty => True));
   end Initialize_379;

   --------------------
   -- Initialize_380 --
   --------------------

   procedure Initialize_380 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 380,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 380, (Is_Empty => True));
   end Initialize_380;

   --------------------
   -- Initialize_381 --
   --------------------

   procedure Initialize_381 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 381,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B9'Access);
   end Initialize_381;

   --------------------
   -- Initialize_382 --
   --------------------

   procedure Initialize_382 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 382, (Is_Empty => True));
   end Initialize_382;

   --------------------
   -- Initialize_383 --
   --------------------

   procedure Initialize_383 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 383,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_015E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 383, (Is_Empty => True));
   end Initialize_383;

   --------------------
   -- Initialize_384 --
   --------------------

   procedure Initialize_384 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 384,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D4'Access);
   end Initialize_384;

   --------------------
   -- Initialize_385 --
   --------------------

   procedure Initialize_385 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 385, (Is_Empty => True));
   end Initialize_385;

   --------------------
   -- Initialize_386 --
   --------------------

   procedure Initialize_386 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 386,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_005A'Access);
   end Initialize_386;

   --------------------
   -- Initialize_387 --
   --------------------

   procedure Initialize_387 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 387,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0118'Access);
   end Initialize_387;

   --------------------
   -- Initialize_388 --
   --------------------

   procedure Initialize_388 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 388,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0134'Access);
   end Initialize_388;

   --------------------
   -- Initialize_389 --
   --------------------

   procedure Initialize_389 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 389, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 389,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 389, (Is_Empty => True));
   end Initialize_389;

   --------------------
   -- Initialize_390 --
   --------------------

   procedure Initialize_390 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 390,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C3'Access);
   end Initialize_390;

   --------------------
   -- Initialize_391 --
   --------------------

   procedure Initialize_391 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 391,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 391, (Is_Empty => True));
   end Initialize_391;

   --------------------
   -- Initialize_392 --
   --------------------

   procedure Initialize_392 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 392, (Is_Empty => True));
   end Initialize_392;

   --------------------
   -- Initialize_393 --
   --------------------

   procedure Initialize_393 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 393, (Is_Empty => True));
   end Initialize_393;

   --------------------
   -- Initialize_394 --
   --------------------

   procedure Initialize_394 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 394, (Is_Empty => True));
   end Initialize_394;

   --------------------
   -- Initialize_395 --
   --------------------

   procedure Initialize_395 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 395, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 395, (Is_Empty => True));
   end Initialize_395;

   --------------------
   -- Initialize_396 --
   --------------------

   procedure Initialize_396 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 396, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 396,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 396, (Is_Empty => True));
   end Initialize_396;

   --------------------
   -- Initialize_397 --
   --------------------

   procedure Initialize_397 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 397, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 397,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01BD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 397, (Is_Empty => True));
   end Initialize_397;

   --------------------
   -- Initialize_398 --
   --------------------

   procedure Initialize_398 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 398,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B8'Access);
   end Initialize_398;

   --------------------
   -- Initialize_399 --
   --------------------

   procedure Initialize_399 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 399,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 399, (Is_Empty => True));
   end Initialize_399;

   --------------------
   -- Initialize_400 --
   --------------------

   procedure Initialize_400 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 400, (Is_Empty => True));
   end Initialize_400;

   --------------------
   -- Initialize_401 --
   --------------------

   procedure Initialize_401 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 401, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 401, (Is_Empty => True));
   end Initialize_401;

   --------------------
   -- Initialize_402 --
   --------------------

   procedure Initialize_402 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 402, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 402,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0099'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 402, (Is_Empty => True));
   end Initialize_402;

   --------------------
   -- Initialize_403 --
   --------------------

   procedure Initialize_403 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 403,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C2'Access);
   end Initialize_403;

   --------------------
   -- Initialize_404 --
   --------------------

   procedure Initialize_404 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 404,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0066'Access);
   end Initialize_404;

   --------------------
   -- Initialize_405 --
   --------------------

   procedure Initialize_405 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 405,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012F'Access);
   end Initialize_405;

   --------------------
   -- Initialize_406 --
   --------------------

   procedure Initialize_406 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 406,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_018E'Access);
   end Initialize_406;

   --------------------
   -- Initialize_407 --
   --------------------

   procedure Initialize_407 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 407,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008E'Access);
   end Initialize_407;

   --------------------
   -- Initialize_408 --
   --------------------

   procedure Initialize_408 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 408,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0078'Access);
   end Initialize_408;

   --------------------
   -- Initialize_409 --
   --------------------

   procedure Initialize_409 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 409, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 409,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 409, (Is_Empty => True));
   end Initialize_409;

   --------------------
   -- Initialize_410 --
   --------------------

   procedure Initialize_410 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 410,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C3'Access);
   end Initialize_410;

   --------------------
   -- Initialize_411 --
   --------------------

   procedure Initialize_411 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 411,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 411, (Is_Empty => True));
   end Initialize_411;

   --------------------
   -- Initialize_412 --
   --------------------

   procedure Initialize_412 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 412, (Is_Empty => True));
   end Initialize_412;

   --------------------
   -- Initialize_413 --
   --------------------

   procedure Initialize_413 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 413, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 413, (Is_Empty => True));
   end Initialize_413;

   --------------------
   -- Initialize_414 --
   --------------------

   procedure Initialize_414 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 414, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 414,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0145'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 414, (Is_Empty => True));
   end Initialize_414;

   --------------------
   -- Initialize_415 --
   --------------------

   procedure Initialize_415 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 415,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0064'Access);
   end Initialize_415;

   --------------------
   -- Initialize_416 --
   --------------------

   procedure Initialize_416 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 416,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 416, (Is_Empty => True));
   end Initialize_416;

   --------------------
   -- Initialize_417 --
   --------------------

   procedure Initialize_417 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 417, (Is_Empty => True));
   end Initialize_417;

   --------------------
   -- Initialize_418 --
   --------------------

   procedure Initialize_418 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 418, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 418, (Is_Empty => True));
   end Initialize_418;

   --------------------
   -- Initialize_419 --
   --------------------

   procedure Initialize_419 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 419, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 419,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0092'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 419, (Is_Empty => True));
   end Initialize_419;

   --------------------
   -- Initialize_420 --
   --------------------

   procedure Initialize_420 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 420,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_013E'Access);
   end Initialize_420;

   --------------------
   -- Initialize_421 --
   --------------------

   procedure Initialize_421 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 421,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 421, (Is_Empty => True));
   end Initialize_421;

   --------------------
   -- Initialize_422 --
   --------------------

   procedure Initialize_422 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 422, (Is_Empty => True));
   end Initialize_422;

   --------------------
   -- Initialize_423 --
   --------------------

   procedure Initialize_423 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 423, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 423, (Is_Empty => True));
   end Initialize_423;

   --------------------
   -- Initialize_424 --
   --------------------

   procedure Initialize_424 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 424, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 424,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 424, (Is_Empty => True));
   end Initialize_424;

   --------------------
   -- Initialize_425 --
   --------------------

   procedure Initialize_425 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 425,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_005D'Access);
   end Initialize_425;

   --------------------
   -- Initialize_426 --
   --------------------

   procedure Initialize_426 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 426,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 426, (Is_Empty => True));
   end Initialize_426;

   --------------------
   -- Initialize_427 --
   --------------------

   procedure Initialize_427 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 427, (Is_Empty => True));
   end Initialize_427;

   --------------------
   -- Initialize_428 --
   --------------------

   procedure Initialize_428 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 428, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 428, (Is_Empty => True));
   end Initialize_428;

   --------------------
   -- Initialize_429 --
   --------------------

   procedure Initialize_429 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 429, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 429,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0030'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 429, (Is_Empty => True));
   end Initialize_429;

   --------------------
   -- Initialize_430 --
   --------------------

   procedure Initialize_430 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 430,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0043'Access);
   end Initialize_430;

   --------------------
   -- Initialize_431 --
   --------------------

   procedure Initialize_431 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 431,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 431, (Is_Empty => True));
   end Initialize_431;

   --------------------
   -- Initialize_432 --
   --------------------

   procedure Initialize_432 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 432, (Is_Empty => True));
   end Initialize_432;

   --------------------
   -- Initialize_433 --
   --------------------

   procedure Initialize_433 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 433, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 433, (Is_Empty => True));
   end Initialize_433;

   --------------------
   -- Initialize_434 --
   --------------------

   procedure Initialize_434 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 434, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 434,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0184'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 434, (Is_Empty => True));
   end Initialize_434;

   --------------------
   -- Initialize_435 --
   --------------------

   procedure Initialize_435 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 435,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0094'Access);
   end Initialize_435;

   --------------------
   -- Initialize_436 --
   --------------------

   procedure Initialize_436 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 436,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 436, (Is_Empty => True));
   end Initialize_436;

   --------------------
   -- Initialize_437 --
   --------------------

   procedure Initialize_437 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 437, (Is_Empty => True));
   end Initialize_437;

   --------------------
   -- Initialize_438 --
   --------------------

   procedure Initialize_438 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 438, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 438, (Is_Empty => True));
   end Initialize_438;

   --------------------
   -- Initialize_439 --
   --------------------

   procedure Initialize_439 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 439,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0046'Access);
   end Initialize_439;

   --------------------
   -- Initialize_440 --
   --------------------

   procedure Initialize_440 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 440,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0004'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 440, (Is_Empty => True));
   end Initialize_440;

   --------------------
   -- Initialize_441 --
   --------------------

   procedure Initialize_441 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 441,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B7'Access);
   end Initialize_441;

   --------------------
   -- Initialize_442 --
   --------------------

   procedure Initialize_442 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 442, (Is_Empty => True));
   end Initialize_442;

   --------------------
   -- Initialize_443 --
   --------------------

   procedure Initialize_443 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 443,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 443, (Is_Empty => True));
   end Initialize_443;

   --------------------
   -- Initialize_444 --
   --------------------

   procedure Initialize_444 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 444,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01BF'Access);
   end Initialize_444;

   --------------------
   -- Initialize_445 --
   --------------------

   procedure Initialize_445 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 445, (Is_Empty => True));
   end Initialize_445;

   --------------------
   -- Initialize_446 --
   --------------------

   procedure Initialize_446 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 446,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0017'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 446, (Is_Empty => True));
   end Initialize_446;

   --------------------
   -- Initialize_447 --
   --------------------

   procedure Initialize_447 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 447,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C7'Access);
   end Initialize_447;

   --------------------
   -- Initialize_448 --
   --------------------

   procedure Initialize_448 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 448, (Is_Empty => True));
   end Initialize_448;

   --------------------
   -- Initialize_449 --
   --------------------

   procedure Initialize_449 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 449,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 449, (Is_Empty => True));
   end Initialize_449;

   --------------------
   -- Initialize_450 --
   --------------------

   procedure Initialize_450 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 450,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_019A'Access);
   end Initialize_450;

   --------------------
   -- Initialize_451 --
   --------------------

   procedure Initialize_451 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 451, (Is_Empty => True));
   end Initialize_451;

   --------------------
   -- Initialize_452 --
   --------------------

   procedure Initialize_452 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 452,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001D'Access);
   end Initialize_452;

   --------------------
   -- Initialize_453 --
   --------------------

   procedure Initialize_453 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 453,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0133'Access);
   end Initialize_453;

   --------------------
   -- Initialize_454 --
   --------------------

   procedure Initialize_454 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 454,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00EA'Access);
   end Initialize_454;

   --------------------
   -- Initialize_455 --
   --------------------

   procedure Initialize_455 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 455,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F2'Access);
   end Initialize_455;

   --------------------
   -- Initialize_456 --
   --------------------

   procedure Initialize_456 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 456,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016F'Access);
   end Initialize_456;

   --------------------
   -- Initialize_457 --
   --------------------

   procedure Initialize_457 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 457, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 457,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 457, (Is_Empty => True));
   end Initialize_457;

   --------------------
   -- Initialize_458 --
   --------------------

   procedure Initialize_458 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 458,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0193'Access);
   end Initialize_458;

   --------------------
   -- Initialize_459 --
   --------------------

   procedure Initialize_459 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 459,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 459, (Is_Empty => True));
   end Initialize_459;

   --------------------
   -- Initialize_460 --
   --------------------

   procedure Initialize_460 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 460, (Is_Empty => True));
   end Initialize_460;

   --------------------
   -- Initialize_461 --
   --------------------

   procedure Initialize_461 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 461, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 461, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 461, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 461, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 461, (Is_Empty => True));
   end Initialize_461;

   --------------------
   -- Initialize_462 --
   --------------------

   procedure Initialize_462 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 462,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01AE'Access);
   end Initialize_462;

   --------------------
   -- Initialize_463 --
   --------------------

   procedure Initialize_463 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 463,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0044'Access);
   end Initialize_463;

   --------------------
   -- Initialize_464 --
   --------------------

   procedure Initialize_464 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 464,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_019B'Access);
   end Initialize_464;

   --------------------
   -- Initialize_465 --
   --------------------

   procedure Initialize_465 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 465,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01DA'Access);
   end Initialize_465;

   --------------------
   -- Initialize_466 --
   --------------------

   procedure Initialize_466 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 466,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0073'Access);
   end Initialize_466;

   --------------------
   -- Initialize_467 --
   --------------------

   procedure Initialize_467 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 467, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 467,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 467, (Is_Empty => True));
   end Initialize_467;

   --------------------
   -- Initialize_468 --
   --------------------

   procedure Initialize_468 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 468,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016E'Access);
   end Initialize_468;

   --------------------
   -- Initialize_469 --
   --------------------

   procedure Initialize_469 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 469,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 469, (Is_Empty => True));
   end Initialize_469;

   --------------------
   -- Initialize_470 --
   --------------------

   procedure Initialize_470 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 470, (Is_Empty => True));
   end Initialize_470;

   --------------------
   -- Initialize_471 --
   --------------------

   procedure Initialize_471 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 471, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 471, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 471, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 471, (Is_Empty => True));
   end Initialize_471;

   --------------------
   -- Initialize_472 --
   --------------------

   procedure Initialize_472 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 472, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 472, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 472,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 472, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 472, (Is_Empty => True));
   end Initialize_472;

   --------------------
   -- Initialize_473 --
   --------------------

   procedure Initialize_473 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 473,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0069'Access);
   end Initialize_473;

   --------------------
   -- Initialize_474 --
   --------------------

   procedure Initialize_474 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 474,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0128'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 474, (Is_Empty => True));
   end Initialize_474;

   --------------------
   -- Initialize_475 --
   --------------------

   procedure Initialize_475 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 475,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0146'Access);
   end Initialize_475;

   --------------------
   -- Initialize_476 --
   --------------------

   procedure Initialize_476 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 476, (Is_Empty => True));
   end Initialize_476;

   --------------------
   -- Initialize_477 --
   --------------------

   procedure Initialize_477 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 477,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 477, (Is_Empty => True));
   end Initialize_477;

   --------------------
   -- Initialize_478 --
   --------------------

   procedure Initialize_478 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 478,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0025'Access);
   end Initialize_478;

   --------------------
   -- Initialize_479 --
   --------------------

   procedure Initialize_479 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 479, (Is_Empty => True));
   end Initialize_479;

   --------------------
   -- Initialize_480 --
   --------------------

   procedure Initialize_480 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 480,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 480, (Is_Empty => True));
   end Initialize_480;

   --------------------
   -- Initialize_481 --
   --------------------

   procedure Initialize_481 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 481,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00EF'Access);
   end Initialize_481;

   --------------------
   -- Initialize_482 --
   --------------------

   procedure Initialize_482 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 482, (Is_Empty => True));
   end Initialize_482;

   --------------------
   -- Initialize_483 --
   --------------------

   procedure Initialize_483 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 483,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00EC'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 483, (Is_Empty => True));
   end Initialize_483;

   --------------------
   -- Initialize_484 --
   --------------------

   procedure Initialize_484 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 484,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0023'Access);
   end Initialize_484;

   --------------------
   -- Initialize_485 --
   --------------------

   procedure Initialize_485 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 485, (Is_Empty => True));
   end Initialize_485;

   --------------------
   -- Initialize_486 --
   --------------------

   procedure Initialize_486 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 486,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00AC'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 486, (Is_Empty => True));
   end Initialize_486;

   --------------------
   -- Initialize_487 --
   --------------------

   procedure Initialize_487 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 487,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01AC'Access);
   end Initialize_487;

   --------------------
   -- Initialize_488 --
   --------------------

   procedure Initialize_488 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 488, (Is_Empty => True));
   end Initialize_488;

   --------------------
   -- Initialize_489 --
   --------------------

   procedure Initialize_489 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 489,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 489, (Is_Empty => True));
   end Initialize_489;

   --------------------
   -- Initialize_490 --
   --------------------

   procedure Initialize_490 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 490,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0125'Access);
   end Initialize_490;

   --------------------
   -- Initialize_491 --
   --------------------

   procedure Initialize_491 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 491, (Is_Empty => True));
   end Initialize_491;

   --------------------
   -- Initialize_492 --
   --------------------

   procedure Initialize_492 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 492,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 492, (Is_Empty => True));
   end Initialize_492;

   --------------------
   -- Initialize_493 --
   --------------------

   procedure Initialize_493 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 493,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0091'Access);
   end Initialize_493;

   --------------------
   -- Initialize_494 --
   --------------------

   procedure Initialize_494 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 494, (Is_Empty => True));
   end Initialize_494;

   --------------------
   -- Initialize_495 --
   --------------------

   procedure Initialize_495 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 495,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0157'Access);
   end Initialize_495;

   --------------------
   -- Initialize_496 --
   --------------------

   procedure Initialize_496 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 496,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000C'Access);
   end Initialize_496;

   --------------------
   -- Initialize_497 --
   --------------------

   procedure Initialize_497 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 497,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00DD'Access);
   end Initialize_497;

   --------------------
   -- Initialize_498 --
   --------------------

   procedure Initialize_498 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 498,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B2'Access);
   end Initialize_498;

   --------------------
   -- Initialize_499 --
   --------------------

   procedure Initialize_499 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 499,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_005C'Access);
   end Initialize_499;

   --------------------
   -- Initialize_500 --
   --------------------

   procedure Initialize_500 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 500,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F2'Access);
   end Initialize_500;

   --------------------
   -- Initialize_501 --
   --------------------

   procedure Initialize_501 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 501,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EB'Access);
   end Initialize_501;

   --------------------
   -- Initialize_502 --
   --------------------

   procedure Initialize_502 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 502,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B0'Access);
   end Initialize_502;

   --------------------
   -- Initialize_503 --
   --------------------

   procedure Initialize_503 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 503,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0186'Access);
   end Initialize_503;

   --------------------
   -- Initialize_504 --
   --------------------

   procedure Initialize_504 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 504,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F0'Access);
   end Initialize_504;

   --------------------
   -- Initialize_505 --
   --------------------

   procedure Initialize_505 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 505,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C9'Access);
   end Initialize_505;

   --------------------
   -- Initialize_506 --
   --------------------

   procedure Initialize_506 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 506,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E2'Access);
   end Initialize_506;

   --------------------
   -- Initialize_507 --
   --------------------

   procedure Initialize_507 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 507, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 507,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 507, (Is_Empty => True));
   end Initialize_507;

   --------------------
   -- Initialize_508 --
   --------------------

   procedure Initialize_508 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 508,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0014'Access);
   end Initialize_508;

   --------------------
   -- Initialize_509 --
   --------------------

   procedure Initialize_509 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 509,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 509, (Is_Empty => True));
   end Initialize_509;

   --------------------
   -- Initialize_510 --
   --------------------

   procedure Initialize_510 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 510, (Is_Empty => True));
   end Initialize_510;

   --------------------
   -- Initialize_511 --
   --------------------

   procedure Initialize_511 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 511, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 511, (Is_Empty => True));
   end Initialize_511;

   --------------------
   -- Initialize_512 --
   --------------------

   procedure Initialize_512 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 512, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 512,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 512, (Is_Empty => True));
   end Initialize_512;

   --------------------
   -- Initialize_513 --
   --------------------

   procedure Initialize_513 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 513,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0119'Access);
   end Initialize_513;

   --------------------
   -- Initialize_514 --
   --------------------

   procedure Initialize_514 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 514, (Is_Empty => True));
   end Initialize_514;

   --------------------
   -- Initialize_515 --
   --------------------

   procedure Initialize_515 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 515, (Is_Empty => True));
   end Initialize_515;

   --------------------
   -- Initialize_516 --
   --------------------

   procedure Initialize_516 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 516,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 516, (Is_Empty => True));
   end Initialize_516;

   --------------------
   -- Initialize_517 --
   --------------------

   procedure Initialize_517 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 517, (Is_Empty => True));
   end Initialize_517;

   --------------------
   -- Initialize_518 --
   --------------------

   procedure Initialize_518 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 518, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 518, (Is_Empty => True));
   end Initialize_518;

   --------------------
   -- Initialize_519 --
   --------------------

   procedure Initialize_519 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 519, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 519,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 519, (Is_Empty => True));
   end Initialize_519;

   --------------------
   -- Initialize_520 --
   --------------------

   procedure Initialize_520 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 520, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 520,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 520, (Is_Empty => True));
   end Initialize_520;

   --------------------
   -- Initialize_521 --
   --------------------

   procedure Initialize_521 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 521,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_015D'Access);
   end Initialize_521;

   --------------------
   -- Initialize_522 --
   --------------------

   procedure Initialize_522 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 522,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 522, (Is_Empty => True));
   end Initialize_522;

   --------------------
   -- Initialize_523 --
   --------------------

   procedure Initialize_523 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 523, (Is_Empty => True));
   end Initialize_523;

   --------------------
   -- Initialize_524 --
   --------------------

   procedure Initialize_524 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 524, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 524, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 524, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 524, (Is_Empty => True));
   end Initialize_524;

   --------------------
   -- Initialize_525 --
   --------------------

   procedure Initialize_525 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 525, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 525,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0123'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 525, (Is_Empty => True));
   end Initialize_525;

   --------------------
   -- Initialize_526 --
   --------------------

   procedure Initialize_526 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 526,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004E'Access);
   end Initialize_526;

   --------------------
   -- Initialize_527 --
   --------------------

   procedure Initialize_527 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 527,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 527, (Is_Empty => True));
   end Initialize_527;

   --------------------
   -- Initialize_528 --
   --------------------

   procedure Initialize_528 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 528, (Is_Empty => True));
   end Initialize_528;

   --------------------
   -- Initialize_529 --
   --------------------

   procedure Initialize_529 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 529, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 529, (Is_Empty => True));
   end Initialize_529;

   --------------------
   -- Initialize_530 --
   --------------------

   procedure Initialize_530 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 530, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 530,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0143'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 530, (Is_Empty => True));
   end Initialize_530;

   --------------------
   -- Initialize_531 --
   --------------------

   procedure Initialize_531 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 531,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0107'Access);
   end Initialize_531;

   --------------------
   -- Initialize_532 --
   --------------------

   procedure Initialize_532 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 532,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 532, (Is_Empty => True));
   end Initialize_532;

   --------------------
   -- Initialize_533 --
   --------------------

   procedure Initialize_533 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 533, (Is_Empty => True));
   end Initialize_533;

   --------------------
   -- Initialize_534 --
   --------------------

   procedure Initialize_534 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 534, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 534, (Is_Empty => True));
   end Initialize_534;

   --------------------
   -- Initialize_535 --
   --------------------

   procedure Initialize_535 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 535, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 535,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 535, (Is_Empty => True));
   end Initialize_535;

   --------------------
   -- Initialize_536 --
   --------------------

   procedure Initialize_536 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 536,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003D'Access);
   end Initialize_536;

   --------------------
   -- Initialize_537 --
   --------------------

   procedure Initialize_537 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 537,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0016'Access);
   end Initialize_537;

   --------------------
   -- Initialize_538 --
   --------------------

   procedure Initialize_538 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 538,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0039'Access);
   end Initialize_538;

   --------------------
   -- Initialize_539 --
   --------------------

   procedure Initialize_539 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 539, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 539,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 539, (Is_Empty => True));
   end Initialize_539;

   --------------------
   -- Initialize_540 --
   --------------------

   procedure Initialize_540 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 540,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016E'Access);
   end Initialize_540;

   --------------------
   -- Initialize_541 --
   --------------------

   procedure Initialize_541 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 541,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 541, (Is_Empty => True));
   end Initialize_541;

   --------------------
   -- Initialize_542 --
   --------------------

   procedure Initialize_542 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 542, (Is_Empty => True));
   end Initialize_542;

   --------------------
   -- Initialize_543 --
   --------------------

   procedure Initialize_543 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 543, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 543, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 543, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 543, (Is_Empty => True));
   end Initialize_543;

   --------------------
   -- Initialize_544 --
   --------------------

   procedure Initialize_544 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 544, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 544, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 544,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 544, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 544, (Is_Empty => True));
   end Initialize_544;

   --------------------
   -- Initialize_545 --
   --------------------

   procedure Initialize_545 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 545,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C9'Access);
   end Initialize_545;

   --------------------
   -- Initialize_546 --
   --------------------

   procedure Initialize_546 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 546,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0086'Access);
   end Initialize_546;

   --------------------
   -- Initialize_547 --
   --------------------

   procedure Initialize_547 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 547,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F7'Access);
   end Initialize_547;

   --------------------
   -- Initialize_548 --
   --------------------

   procedure Initialize_548 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 548,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0191'Access);
   end Initialize_548;

   --------------------
   -- Initialize_549 --
   --------------------

   procedure Initialize_549 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 549,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004F'Access);
   end Initialize_549;

   --------------------
   -- Initialize_550 --
   --------------------

   procedure Initialize_550 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 550,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0080'Access);
   end Initialize_550;

   --------------------
   -- Initialize_551 --
   --------------------

   procedure Initialize_551 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 551,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00CB'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 551, (Is_Empty => True));
   end Initialize_551;

   --------------------
   -- Initialize_552 --
   --------------------

   procedure Initialize_552 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 552,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0127'Access);
   end Initialize_552;

   --------------------
   -- Initialize_553 --
   --------------------

   procedure Initialize_553 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 553, (Is_Empty => True));
   end Initialize_553;

   --------------------
   -- Initialize_554 --
   --------------------

   procedure Initialize_554 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 554,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 554, (Is_Empty => True));
   end Initialize_554;

   --------------------
   -- Initialize_555 --
   --------------------

   procedure Initialize_555 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 555,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01ED'Access);
   end Initialize_555;

   --------------------
   -- Initialize_556 --
   --------------------

   procedure Initialize_556 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 556, (Is_Empty => True));
   end Initialize_556;

   --------------------
   -- Initialize_557 --
   --------------------

   procedure Initialize_557 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 557,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0063'Access);
   end Initialize_557;

   --------------------
   -- Initialize_558 --
   --------------------

   procedure Initialize_558 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 558,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FF'Access);
   end Initialize_558;

   --------------------
   -- Initialize_559 --
   --------------------

   procedure Initialize_559 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 559,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E7'Access);
   end Initialize_559;

   --------------------
   -- Initialize_560 --
   --------------------

   procedure Initialize_560 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 560,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 560, (Is_Empty => True));
   end Initialize_560;

   --------------------
   -- Initialize_561 --
   --------------------

   procedure Initialize_561 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 561,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003F'Access);
   end Initialize_561;

   --------------------
   -- Initialize_562 --
   --------------------

   procedure Initialize_562 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 562, (Is_Empty => True));
   end Initialize_562;

   --------------------
   -- Initialize_563 --
   --------------------

   procedure Initialize_563 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 563,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0155'Access);
   end Initialize_563;

   --------------------
   -- Initialize_564 --
   --------------------

   procedure Initialize_564 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 564,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01FC'Access);
   end Initialize_564;

   --------------------
   -- Initialize_565 --
   --------------------

   procedure Initialize_565 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 565,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CE'Access);
   end Initialize_565;

   --------------------
   -- Initialize_566 --
   --------------------

   procedure Initialize_566 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 566,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 566, (Is_Empty => True));
   end Initialize_566;

   --------------------
   -- Initialize_567 --
   --------------------

   procedure Initialize_567 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 567,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F4'Access);
   end Initialize_567;

   --------------------
   -- Initialize_568 --
   --------------------

   procedure Initialize_568 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 568, (Is_Empty => True));
   end Initialize_568;

   --------------------
   -- Initialize_569 --
   --------------------

   procedure Initialize_569 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 569,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_018D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 569, (Is_Empty => True));
   end Initialize_569;

   --------------------
   -- Initialize_570 --
   --------------------

   procedure Initialize_570 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 570,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0031'Access);
   end Initialize_570;

   --------------------
   -- Initialize_571 --
   --------------------

   procedure Initialize_571 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 571, (Is_Empty => True));
   end Initialize_571;

   --------------------
   -- Initialize_572 --
   --------------------

   procedure Initialize_572 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 572,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0036'Access);
   end Initialize_572;

   --------------------
   -- Initialize_573 --
   --------------------

   procedure Initialize_573 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 573,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008E'Access);
   end Initialize_573;

   --------------------
   -- Initialize_574 --
   --------------------

   procedure Initialize_574 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 574,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008E'Access);
   end Initialize_574;

   --------------------
   -- Initialize_575 --
   --------------------

   procedure Initialize_575 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 575,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008E'Access);
   end Initialize_575;

   --------------------
   -- Initialize_576 --
   --------------------

   procedure Initialize_576 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 576,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008E'Access);
   end Initialize_576;

   --------------------
   -- Initialize_577 --
   --------------------

   procedure Initialize_577 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 577,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0037'Access);
   end Initialize_577;

   --------------------
   -- Initialize_578 --
   --------------------

   procedure Initialize_578 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 578,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001F'Access);
   end Initialize_578;

   --------------------
   -- Initialize_579 --
   --------------------

   procedure Initialize_579 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 579,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0081'Access);
   end Initialize_579;

   --------------------
   -- Initialize_580 --
   --------------------

   procedure Initialize_580 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 580,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0053'Access);
   end Initialize_580;

   --------------------
   -- Initialize_581 --
   --------------------

   procedure Initialize_581 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 581,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008E'Access);
   end Initialize_581;

   --------------------
   -- Initialize_582 --
   --------------------

   procedure Initialize_582 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 582,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F5'Access);
   end Initialize_582;

   --------------------
   -- Initialize_583 --
   --------------------

   procedure Initialize_583 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 583, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 583,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0113'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 583, (Is_Empty => True));
   end Initialize_583;

   --------------------
   -- Initialize_584 --
   --------------------

   procedure Initialize_584 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 584,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0012'Access);
   end Initialize_584;

   --------------------
   -- Initialize_585 --
   --------------------

   procedure Initialize_585 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 585,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 585, (Is_Empty => True));
   end Initialize_585;

   --------------------
   -- Initialize_586 --
   --------------------

   procedure Initialize_586 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 586, (Is_Empty => True));
   end Initialize_586;

   --------------------
   -- Initialize_587 --
   --------------------

   procedure Initialize_587 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 587, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 587, (Is_Empty => True));
   end Initialize_587;

   --------------------
   -- Initialize_588 --
   --------------------

   procedure Initialize_588 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 588, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 588,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0178'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 588, (Is_Empty => True));
   end Initialize_588;

   --------------------
   -- Initialize_589 --
   --------------------

   procedure Initialize_589 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 589,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A9'Access);
   end Initialize_589;

   --------------------
   -- Initialize_590 --
   --------------------

   procedure Initialize_590 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 590,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 590, (Is_Empty => True));
   end Initialize_590;

   --------------------
   -- Initialize_591 --
   --------------------

   procedure Initialize_591 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 591, (Is_Empty => True));
   end Initialize_591;

   --------------------
   -- Initialize_592 --
   --------------------

   procedure Initialize_592 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 592, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 592, (Is_Empty => True));
   end Initialize_592;

   --------------------
   -- Initialize_593 --
   --------------------

   procedure Initialize_593 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 593, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 593,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 593, (Is_Empty => True));
   end Initialize_593;

   --------------------
   -- Initialize_594 --
   --------------------

   procedure Initialize_594 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 594,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D1'Access);
   end Initialize_594;

   --------------------
   -- Initialize_595 --
   --------------------

   procedure Initialize_595 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 595,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 595, (Is_Empty => True));
   end Initialize_595;

   --------------------
   -- Initialize_596 --
   --------------------

   procedure Initialize_596 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 596, (Is_Empty => True));
   end Initialize_596;

   --------------------
   -- Initialize_597 --
   --------------------

   procedure Initialize_597 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 597, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 597, (Is_Empty => True));
   end Initialize_597;

   --------------------
   -- Initialize_598 --
   --------------------

   procedure Initialize_598 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 598, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 598,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 598, (Is_Empty => True));
   end Initialize_598;

   --------------------
   -- Initialize_599 --
   --------------------

   procedure Initialize_599 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 599,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_015F'Access);
   end Initialize_599;

   --------------------
   -- Initialize_600 --
   --------------------

   procedure Initialize_600 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 600,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 600, (Is_Empty => True));
   end Initialize_600;

   --------------------
   -- Initialize_601 --
   --------------------

   procedure Initialize_601 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 601, (Is_Empty => True));
   end Initialize_601;

   --------------------
   -- Initialize_602 --
   --------------------

   procedure Initialize_602 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 602, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 602, (Is_Empty => True));
   end Initialize_602;

   --------------------
   -- Initialize_603 --
   --------------------

   procedure Initialize_603 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 603, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 603,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0196'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 603, (Is_Empty => True));
   end Initialize_603;

   --------------------
   -- Initialize_604 --
   --------------------

   procedure Initialize_604 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 604,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E0'Access);
   end Initialize_604;

   --------------------
   -- Initialize_605 --
   --------------------

   procedure Initialize_605 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 605,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 605, (Is_Empty => True));
   end Initialize_605;

   --------------------
   -- Initialize_606 --
   --------------------

   procedure Initialize_606 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 606, (Is_Empty => True));
   end Initialize_606;

   --------------------
   -- Initialize_607 --
   --------------------

   procedure Initialize_607 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 607, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 607, (Is_Empty => True));
   end Initialize_607;

   --------------------
   -- Initialize_608 --
   --------------------

   procedure Initialize_608 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 608, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 608,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 608, (Is_Empty => True));
   end Initialize_608;

   --------------------
   -- Initialize_609 --
   --------------------

   procedure Initialize_609 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 609,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D2'Access);
   end Initialize_609;

   --------------------
   -- Initialize_610 --
   --------------------

   procedure Initialize_610 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 610, (Is_Empty => True));
   end Initialize_610;

   --------------------
   -- Initialize_611 --
   --------------------

   procedure Initialize_611 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 611, (Is_Empty => True));
   end Initialize_611;

   --------------------
   -- Initialize_612 --
   --------------------

   procedure Initialize_612 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 612,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 612, (Is_Empty => True));
   end Initialize_612;

   --------------------
   -- Initialize_613 --
   --------------------

   procedure Initialize_613 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 613, (Is_Empty => True));
   end Initialize_613;

   --------------------
   -- Initialize_614 --
   --------------------

   procedure Initialize_614 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 614, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 614, (Is_Empty => True));
   end Initialize_614;

   --------------------
   -- Initialize_615 --
   --------------------

   procedure Initialize_615 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 615, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 615,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 615, (Is_Empty => True));
   end Initialize_615;

   --------------------
   -- Initialize_616 --
   --------------------

   procedure Initialize_616 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 616, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 616,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 616, (Is_Empty => True));
   end Initialize_616;

   --------------------
   -- Initialize_617 --
   --------------------

   procedure Initialize_617 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 617,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 617, (Is_Empty => True));
   end Initialize_617;

   --------------------
   -- Initialize_618 --
   --------------------

   procedure Initialize_618 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 618, (Is_Empty => True));
   end Initialize_618;

   --------------------
   -- Initialize_619 --
   --------------------

   procedure Initialize_619 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 619, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 619, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 619, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 619, (Is_Empty => True));
   end Initialize_619;

   --------------------
   -- Initialize_620 --
   --------------------

   procedure Initialize_620 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 620,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_017B'Access);
   end Initialize_620;

   --------------------
   -- Initialize_621 --
   --------------------

   procedure Initialize_621 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 621,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00BB'Access);
   end Initialize_621;

   --------------------
   -- Initialize_622 --
   --------------------

   procedure Initialize_622 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 622,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0026'Access);
   end Initialize_622;

   --------------------
   -- Initialize_623 --
   --------------------

   procedure Initialize_623 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 623,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0097'Access);
   end Initialize_623;

   --------------------
   -- Initialize_624 --
   --------------------

   procedure Initialize_624 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 624,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B1'Access);
   end Initialize_624;

   --------------------
   -- Initialize_625 --
   --------------------

   procedure Initialize_625 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 625,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F5'Access);
   end Initialize_625;

   --------------------
   -- Initialize_626 --
   --------------------

   procedure Initialize_626 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 626,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E4'Access);
   end Initialize_626;

   --------------------
   -- Initialize_627 --
   --------------------

   procedure Initialize_627 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 627, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 627,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 627, (Is_Empty => True));
   end Initialize_627;

   --------------------
   -- Initialize_628 --
   --------------------

   procedure Initialize_628 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 628,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0024'Access);
   end Initialize_628;

   --------------------
   -- Initialize_629 --
   --------------------

   procedure Initialize_629 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 629,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 629, (Is_Empty => True));
   end Initialize_629;

   --------------------
   -- Initialize_630 --
   --------------------

   procedure Initialize_630 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 630, (Is_Empty => True));
   end Initialize_630;

   --------------------
   -- Initialize_631 --
   --------------------

   procedure Initialize_631 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 631, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 631, (Is_Empty => True));
   end Initialize_631;

   --------------------
   -- Initialize_632 --
   --------------------

   procedure Initialize_632 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 632, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 632,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 632, (Is_Empty => True));
   end Initialize_632;

   --------------------
   -- Initialize_633 --
   --------------------

   procedure Initialize_633 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 633, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 633,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 633, (Is_Empty => True));
   end Initialize_633;

   --------------------
   -- Initialize_634 --
   --------------------

   procedure Initialize_634 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 634,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00AF'Access);
   end Initialize_634;

   --------------------
   -- Initialize_635 --
   --------------------

   procedure Initialize_635 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 635,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0045'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 635, (Is_Empty => True));
   end Initialize_635;

   --------------------
   -- Initialize_636 --
   --------------------

   procedure Initialize_636 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 636,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00DB'Access);
   end Initialize_636;

   --------------------
   -- Initialize_637 --
   --------------------

   procedure Initialize_637 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 637, (Is_Empty => True));
   end Initialize_637;

   --------------------
   -- Initialize_638 --
   --------------------

   procedure Initialize_638 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 638,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 638, (Is_Empty => True));
   end Initialize_638;

   --------------------
   -- Initialize_639 --
   --------------------

   procedure Initialize_639 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 639,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A6'Access);
   end Initialize_639;

   --------------------
   -- Initialize_640 --
   --------------------

   procedure Initialize_640 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 640, (Is_Empty => True));
   end Initialize_640;

   --------------------
   -- Initialize_641 --
   --------------------

   procedure Initialize_641 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 641,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D1'Access);
   end Initialize_641;

   --------------------
   -- Initialize_642 --
   --------------------

   procedure Initialize_642 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 642,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00CA'Access);
   end Initialize_642;

   --------------------
   -- Initialize_643 --
   --------------------

   procedure Initialize_643 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 643,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0007'Access);
   end Initialize_643;

   --------------------
   -- Initialize_644 --
   --------------------

   procedure Initialize_644 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 644,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B1'Access);
   end Initialize_644;

   --------------------
   -- Initialize_645 --
   --------------------

   procedure Initialize_645 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 645, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 645,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 645, (Is_Empty => True));
   end Initialize_645;

   --------------------
   -- Initialize_646 --
   --------------------

   procedure Initialize_646 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 646,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_018C'Access);
   end Initialize_646;

   --------------------
   -- Initialize_647 --
   --------------------

   procedure Initialize_647 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 647,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 647, (Is_Empty => True));
   end Initialize_647;

   --------------------
   -- Initialize_648 --
   --------------------

   procedure Initialize_648 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 648, (Is_Empty => True));
   end Initialize_648;

   --------------------
   -- Initialize_649 --
   --------------------

   procedure Initialize_649 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 649, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 649, (Is_Empty => True));
   end Initialize_649;

   --------------------
   -- Initialize_650 --
   --------------------

   procedure Initialize_650 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 650,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0132'Access);
   end Initialize_650;

   --------------------
   -- Initialize_651 --
   --------------------

   procedure Initialize_651 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 651,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 651, (Is_Empty => True));
   end Initialize_651;

   --------------------
   -- Initialize_652 --
   --------------------

   procedure Initialize_652 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 652,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0177'Access);
   end Initialize_652;

   --------------------
   -- Initialize_653 --
   --------------------

   procedure Initialize_653 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 653, (Is_Empty => True));
   end Initialize_653;

   --------------------
   -- Initialize_654 --
   --------------------

   procedure Initialize_654 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 654,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E1'Access);
   end Initialize_654;

   --------------------
   -- Initialize_655 --
   --------------------

   procedure Initialize_655 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 655,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D4'Access);
   end Initialize_655;

   --------------------
   -- Initialize_656 --
   --------------------

   procedure Initialize_656 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 656,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E5'Access);
   end Initialize_656;

   --------------------
   -- Initialize_657 --
   --------------------

   procedure Initialize_657 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 657,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0183'Access);
   end Initialize_657;

   --------------------
   -- Initialize_658 --
   --------------------

   procedure Initialize_658 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 658,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00AB'Access);
   end Initialize_658;

   --------------------
   -- Initialize_659 --
   --------------------

   procedure Initialize_659 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 659,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0171'Access);
   end Initialize_659;

   --------------------
   -- Initialize_660 --
   --------------------

   procedure Initialize_660 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 660, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 660,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 660, (Is_Empty => True));
   end Initialize_660;

   --------------------
   -- Initialize_661 --
   --------------------

   procedure Initialize_661 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 661,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0047'Access);
   end Initialize_661;

   --------------------
   -- Initialize_662 --
   --------------------

   procedure Initialize_662 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 662,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 662, (Is_Empty => True));
   end Initialize_662;

   --------------------
   -- Initialize_663 --
   --------------------

   procedure Initialize_663 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 663, (Is_Empty => True));
   end Initialize_663;

   --------------------
   -- Initialize_664 --
   --------------------

   procedure Initialize_664 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 664, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 664, (Is_Empty => True));
   end Initialize_664;

   --------------------
   -- Initialize_665 --
   --------------------

   procedure Initialize_665 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 665, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 665,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 665, (Is_Empty => True));
   end Initialize_665;

   --------------------
   -- Initialize_666 --
   --------------------

   procedure Initialize_666 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 666,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_013C'Access);
   end Initialize_666;

   --------------------
   -- Initialize_667 --
   --------------------

   procedure Initialize_667 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 667,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 667, (Is_Empty => True));
   end Initialize_667;

   --------------------
   -- Initialize_668 --
   --------------------

   procedure Initialize_668 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 668, (Is_Empty => True));
   end Initialize_668;

   --------------------
   -- Initialize_669 --
   --------------------

   procedure Initialize_669 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 669, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 669, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 669, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 669, (Is_Empty => True));
   end Initialize_669;

   --------------------
   -- Initialize_670 --
   --------------------

   procedure Initialize_670 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 670, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 670,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 670, (Is_Empty => True));
   end Initialize_670;

   --------------------
   -- Initialize_671 --
   --------------------

   procedure Initialize_671 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 671,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F4'Access);
   end Initialize_671;

   --------------------
   -- Initialize_672 --
   --------------------

   procedure Initialize_672 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 672, (Is_Empty => True));
   end Initialize_672;

   --------------------
   -- Initialize_673 --
   --------------------

   procedure Initialize_673 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 673, (Is_Empty => True));
   end Initialize_673;

   --------------------
   -- Initialize_674 --
   --------------------

   procedure Initialize_674 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 674,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 674, (Is_Empty => True));
   end Initialize_674;

   --------------------
   -- Initialize_675 --
   --------------------

   procedure Initialize_675 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 675, (Is_Empty => True));
   end Initialize_675;

   --------------------
   -- Initialize_676 --
   --------------------

   procedure Initialize_676 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 676, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 676, (Is_Empty => True));
   end Initialize_676;

   --------------------
   -- Initialize_677 --
   --------------------

   procedure Initialize_677 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 677, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 677,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 677, (Is_Empty => True));
   end Initialize_677;

   --------------------
   -- Initialize_678 --
   --------------------

   procedure Initialize_678 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 678,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A4'Access);
   end Initialize_678;

   --------------------
   -- Initialize_679 --
   --------------------

   procedure Initialize_679 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 679,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01BC'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 679, (Is_Empty => True));
   end Initialize_679;

   --------------------
   -- Initialize_680 --
   --------------------

   procedure Initialize_680 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 680,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0190'Access);
   end Initialize_680;

   --------------------
   -- Initialize_681 --
   --------------------

   procedure Initialize_681 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 681, (Is_Empty => True));
   end Initialize_681;

   --------------------
   -- Initialize_682 --
   --------------------

   procedure Initialize_682 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 682,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A9'Access);
   end Initialize_682;

   --------------------
   -- Initialize_683 --
   --------------------

   procedure Initialize_683 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 683,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012D'Access);
   end Initialize_683;

   --------------------
   -- Initialize_684 --
   --------------------

   procedure Initialize_684 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 684,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00EB'Access);
   end Initialize_684;

   --------------------
   -- Initialize_685 --
   --------------------

   procedure Initialize_685 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 685,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00AE'Access);
   end Initialize_685;

   --------------------
   -- Initialize_686 --
   --------------------

   procedure Initialize_686 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 686,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C0'Access);
   end Initialize_686;

   --------------------
   -- Initialize_687 --
   --------------------

   procedure Initialize_687 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 687,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01DD'Access);
   end Initialize_687;

   --------------------
   -- Initialize_688 --
   --------------------

   procedure Initialize_688 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 688,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A8'Access);
   end Initialize_688;

   --------------------
   -- Initialize_689 --
   --------------------

   procedure Initialize_689 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 689,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0121'Access);
   end Initialize_689;

   --------------------
   -- Initialize_690 --
   --------------------

   procedure Initialize_690 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 690, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 690,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 690, (Is_Empty => True));
   end Initialize_690;

   --------------------
   -- Initialize_691 --
   --------------------

   procedure Initialize_691 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 691,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009D'Access);
   end Initialize_691;

   --------------------
   -- Initialize_692 --
   --------------------

   procedure Initialize_692 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 692,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 692, (Is_Empty => True));
   end Initialize_692;

   --------------------
   -- Initialize_693 --
   --------------------

   procedure Initialize_693 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 693, (Is_Empty => True));
   end Initialize_693;

   --------------------
   -- Initialize_694 --
   --------------------

   procedure Initialize_694 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 694, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 694, (Is_Empty => True));
   end Initialize_694;

   --------------------
   -- Initialize_695 --
   --------------------

   procedure Initialize_695 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 695, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 695,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0112'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 695, (Is_Empty => True));
   end Initialize_695;

   --------------------
   -- Initialize_696 --
   --------------------

   procedure Initialize_696 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 696,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0079'Access);
   end Initialize_696;

   --------------------
   -- Initialize_697 --
   --------------------

   procedure Initialize_697 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 697,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0122'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 697, (Is_Empty => True));
   end Initialize_697;

   --------------------
   -- Initialize_698 --
   --------------------

   procedure Initialize_698 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 698,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011A'Access);
   end Initialize_698;

   --------------------
   -- Initialize_699 --
   --------------------

   procedure Initialize_699 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 699, (Is_Empty => True));
   end Initialize_699;

   --------------------
   -- Initialize_700 --
   --------------------

   procedure Initialize_700 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 700,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 700, (Is_Empty => True));
   end Initialize_700;

   --------------------
   -- Initialize_701 --
   --------------------

   procedure Initialize_701 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 701,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007F'Access);
   end Initialize_701;

   --------------------
   -- Initialize_702 --
   --------------------

   procedure Initialize_702 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 702, (Is_Empty => True));
   end Initialize_702;

   --------------------
   -- Initialize_703 --
   --------------------

   procedure Initialize_703 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 703,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 703, (Is_Empty => True));
   end Initialize_703;

   --------------------
   -- Initialize_704 --
   --------------------

   procedure Initialize_704 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 704,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011E'Access);
   end Initialize_704;

   --------------------
   -- Initialize_705 --
   --------------------

   procedure Initialize_705 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 705, (Is_Empty => True));
   end Initialize_705;

   --------------------
   -- Initialize_706 --
   --------------------

   procedure Initialize_706 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 706,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0199'Access);
   end Initialize_706;

   --------------------
   -- Initialize_707 --
   --------------------

   procedure Initialize_707 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 707,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_005E'Access);
   end Initialize_707;

   --------------------
   -- Initialize_708 --
   --------------------

   procedure Initialize_708 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 708,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0195'Access);
   end Initialize_708;

   --------------------
   -- Initialize_709 --
   --------------------

   procedure Initialize_709 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 709,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_017C'Access);
   end Initialize_709;

   --------------------
   -- Initialize_710 --
   --------------------

   procedure Initialize_710 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 710, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 710,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01FB'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 710, (Is_Empty => True));
   end Initialize_710;

   --------------------
   -- Initialize_711 --
   --------------------

   procedure Initialize_711 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 711,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004A'Access);
   end Initialize_711;

   --------------------
   -- Initialize_712 --
   --------------------

   procedure Initialize_712 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 712,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 712, (Is_Empty => True));
   end Initialize_712;

   --------------------
   -- Initialize_713 --
   --------------------

   procedure Initialize_713 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 713, (Is_Empty => True));
   end Initialize_713;

   --------------------
   -- Initialize_714 --
   --------------------

   procedure Initialize_714 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 714, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 714, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 714, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 714, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 714, (Is_Empty => True));
   end Initialize_714;

   --------------------
   -- Initialize_715 --
   --------------------

   procedure Initialize_715 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 715, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 715,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 715, (Is_Empty => True));
   end Initialize_715;

   --------------------
   -- Initialize_716 --
   --------------------

   procedure Initialize_716 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 716,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CC'Access);
   end Initialize_716;

   --------------------
   -- Initialize_717 --
   --------------------

   procedure Initialize_717 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 717,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 717, (Is_Empty => True));
   end Initialize_717;

   --------------------
   -- Initialize_718 --
   --------------------

   procedure Initialize_718 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 718, (Is_Empty => True));
   end Initialize_718;

   --------------------
   -- Initialize_719 --
   --------------------

   procedure Initialize_719 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 719, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 719, (Is_Empty => True));
   end Initialize_719;

   --------------------
   -- Initialize_720 --
   --------------------

   procedure Initialize_720 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 720, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 720,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 720, (Is_Empty => True));
   end Initialize_720;

   --------------------
   -- Initialize_721 --
   --------------------

   procedure Initialize_721 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 721, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 721,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 721, (Is_Empty => True));
   end Initialize_721;

   --------------------
   -- Initialize_722 --
   --------------------

   procedure Initialize_722 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 722, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 722,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0084'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 722, (Is_Empty => True));
   end Initialize_722;

   --------------------
   -- Initialize_723 --
   --------------------

   procedure Initialize_723 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 723,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006A'Access);
   end Initialize_723;

   --------------------
   -- Initialize_724 --
   --------------------

   procedure Initialize_724 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 724,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 724, (Is_Empty => True));
   end Initialize_724;

   --------------------
   -- Initialize_725 --
   --------------------

   procedure Initialize_725 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 725, (Is_Empty => True));
   end Initialize_725;

   --------------------
   -- Initialize_726 --
   --------------------

   procedure Initialize_726 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 726, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 726, (Is_Empty => True));
   end Initialize_726;

   --------------------
   -- Initialize_727 --
   --------------------

   procedure Initialize_727 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 727, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 727,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0000'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 727, (Is_Empty => True));
   end Initialize_727;

   --------------------
   -- Initialize_728 --
   --------------------

   procedure Initialize_728 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 728,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007F'Access);
   end Initialize_728;

   --------------------
   -- Initialize_729 --
   --------------------

   procedure Initialize_729 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 729,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 729, (Is_Empty => True));
   end Initialize_729;

   --------------------
   -- Initialize_730 --
   --------------------

   procedure Initialize_730 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 730, (Is_Empty => True));
   end Initialize_730;

   --------------------
   -- Initialize_731 --
   --------------------

   procedure Initialize_731 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 731, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 731, (Is_Empty => True));
   end Initialize_731;

   --------------------
   -- Initialize_732 --
   --------------------

   procedure Initialize_732 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 732,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0120'Access);
   end Initialize_732;

   --------------------
   -- Initialize_733 --
   --------------------

   procedure Initialize_733 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 733,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010C'Access);
   end Initialize_733;

   --------------------
   -- Initialize_734 --
   --------------------

   procedure Initialize_734 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 734,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0027'Access);
   end Initialize_734;

   --------------------
   -- Initialize_735 --
   --------------------

   procedure Initialize_735 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 735,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01DF'Access);
   end Initialize_735;

   --------------------
   -- Initialize_736 --
   --------------------

   procedure Initialize_736 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 736,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0087'Access);
   end Initialize_736;

   --------------------
   -- Initialize_737 --
   --------------------

   procedure Initialize_737 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 737,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0015'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 737, (Is_Empty => True));
   end Initialize_737;

   --------------------
   -- Initialize_738 --
   --------------------

   procedure Initialize_738 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 738,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0149'Access);
   end Initialize_738;

   --------------------
   -- Initialize_739 --
   --------------------

   procedure Initialize_739 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 739,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 739, (Is_Empty => True));
   end Initialize_739;

   --------------------
   -- Initialize_740 --
   --------------------

   procedure Initialize_740 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 740,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0019'Access);
   end Initialize_740;

   --------------------
   -- Initialize_741 --
   --------------------

   procedure Initialize_741 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 741,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00DF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 741, (Is_Empty => True));
   end Initialize_741;

   --------------------
   -- Initialize_742 --
   --------------------

   procedure Initialize_742 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 742,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009C'Access);
   end Initialize_742;

   --------------------
   -- Initialize_743 --
   --------------------

   procedure Initialize_743 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 743,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 743, (Is_Empty => True));
   end Initialize_743;

   --------------------
   -- Initialize_744 --
   --------------------

   procedure Initialize_744 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 744,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00EE'Access);
   end Initialize_744;

   --------------------
   -- Initialize_745 --
   --------------------

   procedure Initialize_745 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 745,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01BE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 745, (Is_Empty => True));
   end Initialize_745;

   --------------------
   -- Initialize_746 --
   --------------------

   procedure Initialize_746 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 746,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0098'Access);
   end Initialize_746;

   --------------------
   -- Initialize_747 --
   --------------------

   procedure Initialize_747 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 747,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0192'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 747, (Is_Empty => True));
   end Initialize_747;

   --------------------
   -- Initialize_748 --
   --------------------

   procedure Initialize_748 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 748,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E7'Access);
   end Initialize_748;

   --------------------
   -- Initialize_749 --
   --------------------

   procedure Initialize_749 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 749, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 749,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00AA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 749, (Is_Empty => True));
   end Initialize_749;

   --------------------
   -- Initialize_750 --
   --------------------

   procedure Initialize_750 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 750,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002D'Access);
   end Initialize_750;

   --------------------
   -- Initialize_751 --
   --------------------

   procedure Initialize_751 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 751,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 751, (Is_Empty => True));
   end Initialize_751;

   --------------------
   -- Initialize_752 --
   --------------------

   procedure Initialize_752 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 752, (Is_Empty => True));
   end Initialize_752;

   --------------------
   -- Initialize_753 --
   --------------------

   procedure Initialize_753 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 753, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 753, (Is_Empty => True));
   end Initialize_753;

   --------------------
   -- Initialize_754 --
   --------------------

   procedure Initialize_754 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 754, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 754, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 754,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00CF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 754, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 754, (Is_Empty => True));
   end Initialize_754;

   --------------------
   -- Initialize_755 --
   --------------------

   procedure Initialize_755 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 755,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 755, (Is_Empty => True));
   end Initialize_755;

   --------------------
   -- Initialize_756 --
   --------------------

   procedure Initialize_756 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 756,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0028'Access);
   end Initialize_756;

   --------------------
   -- Initialize_757 --
   --------------------

   procedure Initialize_757 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 757,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_013F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 757, (Is_Empty => True));
   end Initialize_757;

   --------------------
   -- Initialize_758 --
   --------------------

   procedure Initialize_758 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 758,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008D'Access);
   end Initialize_758;

   --------------------
   -- Initialize_759 --
   --------------------

   procedure Initialize_759 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 759,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0114'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 759, (Is_Empty => True));
   end Initialize_759;

   --------------------
   -- Initialize_760 --
   --------------------

   procedure Initialize_760 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 760,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0071'Access);
   end Initialize_760;

   --------------------
   -- Initialize_761 --
   --------------------

   procedure Initialize_761 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 761,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 761, (Is_Empty => True));
   end Initialize_761;

   --------------------
   -- Initialize_762 --
   --------------------

   procedure Initialize_762 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 762,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0166'Access);
   end Initialize_762;

   --------------------
   -- Initialize_763 --
   --------------------

   procedure Initialize_763 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 763, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 763,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 763, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 763, (Is_Empty => True));
   end Initialize_763;

   --------------------
   -- Initialize_764 --
   --------------------

   procedure Initialize_764 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 764, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 764,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 764, (Is_Empty => True));
   end Initialize_764;

   --------------------
   -- Initialize_765 --
   --------------------

   procedure Initialize_765 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 765, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 765,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0075'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 765, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 765, (Is_Empty => True));
   end Initialize_765;

   --------------------
   -- Initialize_766 --
   --------------------

   procedure Initialize_766 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 766, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 766,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0075'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 766, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 766, (Is_Empty => True));
   end Initialize_766;

   --------------------
   -- Initialize_767 --
   --------------------

   procedure Initialize_767 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 767, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 767,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0075'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 767, (Is_Empty => True));
   end Initialize_767;

   --------------------
   -- Initialize_768 --
   --------------------

   procedure Initialize_768 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 768, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 768,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0029'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 768, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 768, (Is_Empty => True));
   end Initialize_768;

   --------------------
   -- Initialize_769 --
   --------------------

   procedure Initialize_769 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 769, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 769,
        AMF.Internals.Tables.CMOF_String_Data_02.MS_0200'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 769, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 769, (Is_Empty => True));
   end Initialize_769;

   --------------------
   -- Initialize_770 --
   --------------------

   procedure Initialize_770 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 770, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 770,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0054'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 770, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 770, (Is_Empty => True));
   end Initialize_770;

   --------------------
   -- Initialize_771 --
   --------------------

   procedure Initialize_771 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 771, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 771,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0054'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 771, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 771, (Is_Empty => True));
   end Initialize_771;

   --------------------
   -- Initialize_772 --
   --------------------

   procedure Initialize_772 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 772, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 772,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00BD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 772, (Is_Empty => True));
   end Initialize_772;

   --------------------
   -- Initialize_773 --
   --------------------

   procedure Initialize_773 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 773, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 773,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00CD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 773, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 773, (Is_Empty => True));
   end Initialize_773;

   --------------------
   -- Initialize_774 --
   --------------------

   procedure Initialize_774 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 774, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 774,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 774, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 774, (Is_Empty => True));
   end Initialize_774;

   --------------------
   -- Initialize_775 --
   --------------------

   procedure Initialize_775 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 775, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 775,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0169'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 775, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 775, (Is_Empty => True));
   end Initialize_775;

   --------------------
   -- Initialize_776 --
   --------------------

   procedure Initialize_776 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 776, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 776,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 776, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 776, (Is_Empty => True));
   end Initialize_776;

   --------------------
   -- Initialize_777 --
   --------------------

   procedure Initialize_777 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 777, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 777,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_013B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 777, (Is_Empty => True));
   end Initialize_777;

   --------------------
   -- Initialize_778 --
   --------------------

   procedure Initialize_778 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 778, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 778,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0054'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 778, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 778, (Is_Empty => True));
   end Initialize_778;

   --------------------
   -- Initialize_779 --
   --------------------

   procedure Initialize_779 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 779, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 779,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 779, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 779, (Is_Empty => True));
   end Initialize_779;

   --------------------
   -- Initialize_780 --
   --------------------

   procedure Initialize_780 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 780, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 780,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 780, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 780, (Is_Empty => True));
   end Initialize_780;

   --------------------
   -- Initialize_781 --
   --------------------

   procedure Initialize_781 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 781, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 781,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 781, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 781, (Is_Empty => True));
   end Initialize_781;

   --------------------
   -- Initialize_782 --
   --------------------

   procedure Initialize_782 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 782, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 782,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0001'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 782, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 782, (Is_Empty => True));
   end Initialize_782;

   --------------------
   -- Initialize_783 --
   --------------------

   procedure Initialize_783 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 783, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 783,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0001'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 783, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 783, (Is_Empty => True));
   end Initialize_783;

   --------------------
   -- Initialize_784 --
   --------------------

   procedure Initialize_784 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 784, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 784,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0102'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 784, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 784, (Is_Empty => True));
   end Initialize_784;

   --------------------
   -- Initialize_785 --
   --------------------

   procedure Initialize_785 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 785, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 785,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0102'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 785, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 785, (Is_Empty => True));
   end Initialize_785;

   --------------------
   -- Initialize_786 --
   --------------------

   procedure Initialize_786 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 786, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 786,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_019D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 786, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 786, (Is_Empty => True));
   end Initialize_786;

   --------------------
   -- Initialize_787 --
   --------------------

   procedure Initialize_787 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 787, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 787,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0009'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 787, (Is_Empty => True));
   end Initialize_787;

   --------------------
   -- Initialize_788 --
   --------------------

   procedure Initialize_788 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 788, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 788,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 788, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 788, (Is_Empty => True));
   end Initialize_788;

   --------------------
   -- Initialize_789 --
   --------------------

   procedure Initialize_789 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 789, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 789,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 789, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 789, (Is_Empty => True));
   end Initialize_789;

   --------------------
   -- Initialize_790 --
   --------------------

   procedure Initialize_790 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 790, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 790,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0082'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 790, (Is_Empty => True));
   end Initialize_790;

   --------------------
   -- Initialize_791 --
   --------------------

   procedure Initialize_791 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 791, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 791,
        AMF.Internals.Tables.CMOF_String_Data_02.MS_0200'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 791, (Is_Empty => True));
   end Initialize_791;

   --------------------
   -- Initialize_792 --
   --------------------

   procedure Initialize_792 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 792, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 792,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 792, (Is_Empty => True));
   end Initialize_792;

   --------------------
   -- Initialize_793 --
   --------------------

   procedure Initialize_793 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 793, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 793,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 793, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 793, (Is_Empty => True));
   end Initialize_793;

   --------------------
   -- Initialize_794 --
   --------------------

   procedure Initialize_794 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 794, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 794,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0180'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 794, (Is_Empty => True));
   end Initialize_794;

   --------------------
   -- Initialize_795 --
   --------------------

   procedure Initialize_795 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 795, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 795,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0168'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 795, (Is_Empty => True));
   end Initialize_795;

   --------------------
   -- Initialize_796 --
   --------------------

   procedure Initialize_796 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 796, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 796,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0187'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 796, (Is_Empty => True));
   end Initialize_796;

   --------------------
   -- Initialize_797 --
   --------------------

   procedure Initialize_797 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 797,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0032'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 797, (Is_Empty => True));
   end Initialize_797;

   --------------------
   -- Initialize_798 --
   --------------------

   procedure Initialize_798 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 798, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 798, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 798,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0088'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 798, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 798, (Is_Empty => True));
   end Initialize_798;

   --------------------
   -- Initialize_799 --
   --------------------

   procedure Initialize_799 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 799,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0110'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 799,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0162'Access);
   end Initialize_799;

   --------------------
   -- Initialize_800 --
   --------------------

   procedure Initialize_800 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 800,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0010'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 800,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006F'Access);
   end Initialize_800;

end AMF.Internals.Tables.CMOF_Metamodel.Properties;
