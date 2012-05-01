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
with AMF.Internals.Tables.CMOF_String_Data_00;

package body AMF.Internals.Tables.CMOF_Metamodel.Objects is

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
      Extent : constant AMF.Internals.AMF_Extent
        := AMF.Internals.Extents.Allocate_Extent
            (AMF.Internals.Tables.CMOF_String_Data_00.MS_006F'Access);

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
      Initialize_99 (Extent);
      Initialize_100 (Extent);
      Initialize_101 (Extent);
      Initialize_102 (Extent);
      Initialize_103 (Extent);
      Initialize_104 (Extent);
      Initialize_105 (Extent);
      Initialize_106 (Extent);
      Initialize_107 (Extent);
      Initialize_108 (Extent);
      Initialize_109 (Extent);
      Initialize_110 (Extent);
      Initialize_111 (Extent);
      Initialize_112 (Extent);
      Initialize_113 (Extent);
      Initialize_114 (Extent);
      Initialize_115 (Extent);
      Initialize_116 (Extent);
      Initialize_117 (Extent);
      Initialize_118 (Extent);
      Initialize_119 (Extent);
      Initialize_120 (Extent);
      Initialize_121 (Extent);
      Initialize_122 (Extent);
      Initialize_123 (Extent);
      Initialize_124 (Extent);
      Initialize_125 (Extent);
      Initialize_126 (Extent);
      Initialize_127 (Extent);
      Initialize_128 (Extent);
      Initialize_129 (Extent);
      Initialize_130 (Extent);
      Initialize_131 (Extent);
      Initialize_132 (Extent);
      Initialize_133 (Extent);
      Initialize_134 (Extent);
      Initialize_135 (Extent);
      Initialize_136 (Extent);
      Initialize_137 (Extent);
      Initialize_138 (Extent);
      Initialize_139 (Extent);
      Initialize_140 (Extent);
      Initialize_141 (Extent);
      Initialize_142 (Extent);
      Initialize_143 (Extent);
      Initialize_144 (Extent);
      Initialize_145 (Extent);
      Initialize_146 (Extent);
      Initialize_147 (Extent);
      Initialize_148 (Extent);
      Initialize_149 (Extent);
      Initialize_150 (Extent);
      Initialize_151 (Extent);
      Initialize_152 (Extent);
      Initialize_153 (Extent);
      Initialize_154 (Extent);
      Initialize_155 (Extent);
      Initialize_156 (Extent);
      Initialize_157 (Extent);
      Initialize_158 (Extent);
      Initialize_159 (Extent);
      Initialize_160 (Extent);
      Initialize_161 (Extent);
      Initialize_162 (Extent);
      Initialize_163 (Extent);
      Initialize_164 (Extent);
      Initialize_165 (Extent);
      Initialize_166 (Extent);
      Initialize_167 (Extent);
      Initialize_168 (Extent);
      Initialize_169 (Extent);
      Initialize_170 (Extent);
      Initialize_171 (Extent);
      Initialize_172 (Extent);
      Initialize_173 (Extent);
      Initialize_174 (Extent);
      Initialize_175 (Extent);
      Initialize_176 (Extent);
      Initialize_177 (Extent);
      Initialize_178 (Extent);
      Initialize_179 (Extent);
      Initialize_180 (Extent);
      Initialize_181 (Extent);
      Initialize_182 (Extent);
      Initialize_183 (Extent);
      Initialize_184 (Extent);
      Initialize_185 (Extent);
      Initialize_186 (Extent);
      Initialize_187 (Extent);
      Initialize_188 (Extent);
      Initialize_189 (Extent);
      Initialize_190 (Extent);
      Initialize_191 (Extent);
      Initialize_192 (Extent);
      Initialize_193 (Extent);
      Initialize_194 (Extent);
      Initialize_195 (Extent);
      Initialize_196 (Extent);
      Initialize_197 (Extent);
      Initialize_198 (Extent);
      Initialize_199 (Extent);
      Initialize_200 (Extent);
      Initialize_201 (Extent);
      Initialize_202 (Extent);
      Initialize_203 (Extent);
      Initialize_204 (Extent);
      Initialize_205 (Extent);
      Initialize_206 (Extent);
      Initialize_207 (Extent);
      Initialize_208 (Extent);
      Initialize_209 (Extent);
      Initialize_210 (Extent);
      Initialize_211 (Extent);
      Initialize_212 (Extent);
      Initialize_213 (Extent);
      Initialize_214 (Extent);
      Initialize_215 (Extent);
      Initialize_216 (Extent);
      Initialize_217 (Extent);
      Initialize_218 (Extent);
      Initialize_219 (Extent);
      Initialize_220 (Extent);
      Initialize_221 (Extent);
      Initialize_222 (Extent);
      Initialize_223 (Extent);
      Initialize_224 (Extent);
      Initialize_225 (Extent);
      Initialize_226 (Extent);
      Initialize_227 (Extent);
      Initialize_228 (Extent);
      Initialize_229 (Extent);
      Initialize_230 (Extent);
      Initialize_231 (Extent);
      Initialize_232 (Extent);
      Initialize_233 (Extent);
      Initialize_234 (Extent);
      Initialize_235 (Extent);
      Initialize_236 (Extent);
      Initialize_237 (Extent);
      Initialize_238 (Extent);
      Initialize_239 (Extent);
      Initialize_240 (Extent);
      Initialize_241 (Extent);
      Initialize_242 (Extent);
      Initialize_243 (Extent);
      Initialize_244 (Extent);
      Initialize_245 (Extent);
      Initialize_246 (Extent);
      Initialize_247 (Extent);
      Initialize_248 (Extent);
      Initialize_249 (Extent);
      Initialize_250 (Extent);
      Initialize_251 (Extent);
      Initialize_252 (Extent);
      Initialize_253 (Extent);
      Initialize_254 (Extent);
      Initialize_255 (Extent);
      Initialize_256 (Extent);
      Initialize_257 (Extent);
      Initialize_258 (Extent);
      Initialize_259 (Extent);
      Initialize_260 (Extent);
      Initialize_261 (Extent);
      Initialize_262 (Extent);
      Initialize_263 (Extent);
      Initialize_264 (Extent);
      Initialize_265 (Extent);
      Initialize_266 (Extent);
      Initialize_267 (Extent);
      Initialize_268 (Extent);
      Initialize_269 (Extent);
      Initialize_270 (Extent);
      Initialize_271 (Extent);
      Initialize_272 (Extent);
      Initialize_273 (Extent);
      Initialize_274 (Extent);
      Initialize_275 (Extent);
      Initialize_276 (Extent);
      Initialize_277 (Extent);
      Initialize_278 (Extent);
      Initialize_279 (Extent);
      Initialize_280 (Extent);
      Initialize_281 (Extent);
      Initialize_282 (Extent);
      Initialize_283 (Extent);
      Initialize_284 (Extent);
      Initialize_285 (Extent);
      Initialize_286 (Extent);
      Initialize_287 (Extent);
      Initialize_288 (Extent);
      Initialize_289 (Extent);
      Initialize_290 (Extent);
      Initialize_291 (Extent);
      Initialize_292 (Extent);
      Initialize_293 (Extent);
      Initialize_294 (Extent);
      Initialize_295 (Extent);
      Initialize_296 (Extent);
      Initialize_297 (Extent);
      Initialize_298 (Extent);
      Initialize_299 (Extent);
      Initialize_300 (Extent);
      Initialize_301 (Extent);
      Initialize_302 (Extent);
      Initialize_303 (Extent);
      Initialize_304 (Extent);
      Initialize_305 (Extent);
      Initialize_306 (Extent);
      Initialize_307 (Extent);
      Initialize_308 (Extent);
      Initialize_309 (Extent);
      Initialize_310 (Extent);
      Initialize_311 (Extent);
      Initialize_312 (Extent);
      Initialize_313 (Extent);
      Initialize_314 (Extent);
      Initialize_315 (Extent);
      Initialize_316 (Extent);
      Initialize_317 (Extent);
      Initialize_318 (Extent);
      Initialize_319 (Extent);
      Initialize_320 (Extent);
      Initialize_321 (Extent);
      Initialize_322 (Extent);
      Initialize_323 (Extent);
      Initialize_324 (Extent);
      Initialize_325 (Extent);
      Initialize_326 (Extent);
      Initialize_327 (Extent);
      Initialize_328 (Extent);
      Initialize_329 (Extent);
      Initialize_330 (Extent);
      Initialize_331 (Extent);
      Initialize_332 (Extent);
      Initialize_333 (Extent);
      Initialize_334 (Extent);
      Initialize_335 (Extent);
      Initialize_336 (Extent);
      Initialize_337 (Extent);
      Initialize_338 (Extent);
      Initialize_339 (Extent);
      Initialize_340 (Extent);
      Initialize_341 (Extent);
      Initialize_342 (Extent);
      Initialize_343 (Extent);
      Initialize_344 (Extent);
      Initialize_345 (Extent);
      Initialize_346 (Extent);
      Initialize_347 (Extent);
      Initialize_348 (Extent);
      Initialize_349 (Extent);
      Initialize_350 (Extent);
      Initialize_351 (Extent);
      Initialize_352 (Extent);
      Initialize_353 (Extent);
      Initialize_354 (Extent);
      Initialize_355 (Extent);
      Initialize_356 (Extent);
      Initialize_357 (Extent);
      Initialize_358 (Extent);
      Initialize_359 (Extent);
      Initialize_360 (Extent);
      Initialize_361 (Extent);
      Initialize_362 (Extent);
      Initialize_363 (Extent);
      Initialize_364 (Extent);
      Initialize_365 (Extent);
      Initialize_366 (Extent);
      Initialize_367 (Extent);
      Initialize_368 (Extent);
      Initialize_369 (Extent);
      Initialize_370 (Extent);
      Initialize_371 (Extent);
      Initialize_372 (Extent);
      Initialize_373 (Extent);
      Initialize_374 (Extent);
      Initialize_375 (Extent);
      Initialize_376 (Extent);
      Initialize_377 (Extent);
      Initialize_378 (Extent);
      Initialize_379 (Extent);
      Initialize_380 (Extent);
      Initialize_381 (Extent);
      Initialize_382 (Extent);
      Initialize_383 (Extent);
      Initialize_384 (Extent);
      Initialize_385 (Extent);
      Initialize_386 (Extent);
      Initialize_387 (Extent);
      Initialize_388 (Extent);
      Initialize_389 (Extent);
      Initialize_390 (Extent);
      Initialize_391 (Extent);
      Initialize_392 (Extent);
      Initialize_393 (Extent);
      Initialize_394 (Extent);
      Initialize_395 (Extent);
      Initialize_396 (Extent);
      Initialize_397 (Extent);
      Initialize_398 (Extent);
      Initialize_399 (Extent);
      Initialize_400 (Extent);
      Initialize_401 (Extent);
      Initialize_402 (Extent);
      Initialize_403 (Extent);
      Initialize_404 (Extent);
      Initialize_405 (Extent);
      Initialize_406 (Extent);
      Initialize_407 (Extent);
      Initialize_408 (Extent);
      Initialize_409 (Extent);
      Initialize_410 (Extent);
      Initialize_411 (Extent);
      Initialize_412 (Extent);
      Initialize_413 (Extent);
      Initialize_414 (Extent);
      Initialize_415 (Extent);
      Initialize_416 (Extent);
      Initialize_417 (Extent);
      Initialize_418 (Extent);
      Initialize_419 (Extent);
      Initialize_420 (Extent);
      Initialize_421 (Extent);
      Initialize_422 (Extent);
      Initialize_423 (Extent);
      Initialize_424 (Extent);
      Initialize_425 (Extent);
      Initialize_426 (Extent);
      Initialize_427 (Extent);
      Initialize_428 (Extent);
      Initialize_429 (Extent);
      Initialize_430 (Extent);
      Initialize_431 (Extent);
      Initialize_432 (Extent);
      Initialize_433 (Extent);
      Initialize_434 (Extent);
      Initialize_435 (Extent);
      Initialize_436 (Extent);
      Initialize_437 (Extent);
      Initialize_438 (Extent);
      Initialize_439 (Extent);
      Initialize_440 (Extent);
      Initialize_441 (Extent);
      Initialize_442 (Extent);
      Initialize_443 (Extent);
      Initialize_444 (Extent);
      Initialize_445 (Extent);
      Initialize_446 (Extent);
      Initialize_447 (Extent);
      Initialize_448 (Extent);
      Initialize_449 (Extent);
      Initialize_450 (Extent);
      Initialize_451 (Extent);
      Initialize_452 (Extent);
      Initialize_453 (Extent);
      Initialize_454 (Extent);
      Initialize_455 (Extent);
      Initialize_456 (Extent);
      Initialize_457 (Extent);
      Initialize_458 (Extent);
      Initialize_459 (Extent);
      Initialize_460 (Extent);
      Initialize_461 (Extent);
      Initialize_462 (Extent);
      Initialize_463 (Extent);
      Initialize_464 (Extent);
      Initialize_465 (Extent);
      Initialize_466 (Extent);
      Initialize_467 (Extent);
      Initialize_468 (Extent);
      Initialize_469 (Extent);
      Initialize_470 (Extent);
      Initialize_471 (Extent);
      Initialize_472 (Extent);
      Initialize_473 (Extent);
      Initialize_474 (Extent);
      Initialize_475 (Extent);
      Initialize_476 (Extent);
      Initialize_477 (Extent);
      Initialize_478 (Extent);
      Initialize_479 (Extent);
      Initialize_480 (Extent);
      Initialize_481 (Extent);
      Initialize_482 (Extent);
      Initialize_483 (Extent);
      Initialize_484 (Extent);
      Initialize_485 (Extent);
      Initialize_486 (Extent);
      Initialize_487 (Extent);
      Initialize_488 (Extent);
      Initialize_489 (Extent);
      Initialize_490 (Extent);
      Initialize_491 (Extent);
      Initialize_492 (Extent);
      Initialize_493 (Extent);
      Initialize_494 (Extent);
      Initialize_495 (Extent);
      Initialize_496 (Extent);
      Initialize_497 (Extent);
      Initialize_498 (Extent);
      Initialize_499 (Extent);
      Initialize_500 (Extent);
      Initialize_501 (Extent);
      Initialize_502 (Extent);
      Initialize_503 (Extent);
      Initialize_504 (Extent);
      Initialize_505 (Extent);
      Initialize_506 (Extent);
      Initialize_507 (Extent);
      Initialize_508 (Extent);
      Initialize_509 (Extent);
      Initialize_510 (Extent);
      Initialize_511 (Extent);
      Initialize_512 (Extent);
      Initialize_513 (Extent);
      Initialize_514 (Extent);
      Initialize_515 (Extent);
      Initialize_516 (Extent);
      Initialize_517 (Extent);
      Initialize_518 (Extent);
      Initialize_519 (Extent);
      Initialize_520 (Extent);
      Initialize_521 (Extent);
      Initialize_522 (Extent);
      Initialize_523 (Extent);
      Initialize_524 (Extent);
      Initialize_525 (Extent);
      Initialize_526 (Extent);
      Initialize_527 (Extent);
      Initialize_528 (Extent);
      Initialize_529 (Extent);
      Initialize_530 (Extent);
      Initialize_531 (Extent);
      Initialize_532 (Extent);
      Initialize_533 (Extent);
      Initialize_534 (Extent);
      Initialize_535 (Extent);
      Initialize_536 (Extent);
      Initialize_537 (Extent);
      Initialize_538 (Extent);
      Initialize_539 (Extent);
      Initialize_540 (Extent);
      Initialize_541 (Extent);
      Initialize_542 (Extent);
      Initialize_543 (Extent);
      Initialize_544 (Extent);
      Initialize_545 (Extent);
      Initialize_546 (Extent);
      Initialize_547 (Extent);
      Initialize_548 (Extent);
      Initialize_549 (Extent);
      Initialize_550 (Extent);
      Initialize_551 (Extent);
      Initialize_552 (Extent);
      Initialize_553 (Extent);
      Initialize_554 (Extent);
      Initialize_555 (Extent);
      Initialize_556 (Extent);
      Initialize_557 (Extent);
      Initialize_558 (Extent);
      Initialize_559 (Extent);
      Initialize_560 (Extent);
      Initialize_561 (Extent);
      Initialize_562 (Extent);
      Initialize_563 (Extent);
      Initialize_564 (Extent);
      Initialize_565 (Extent);
      Initialize_566 (Extent);
      Initialize_567 (Extent);
      Initialize_568 (Extent);
      Initialize_569 (Extent);
      Initialize_570 (Extent);
      Initialize_571 (Extent);
      Initialize_572 (Extent);
      Initialize_573 (Extent);
      Initialize_574 (Extent);
      Initialize_575 (Extent);
      Initialize_576 (Extent);
      Initialize_577 (Extent);
      Initialize_578 (Extent);
      Initialize_579 (Extent);
      Initialize_580 (Extent);
      Initialize_581 (Extent);
      Initialize_582 (Extent);
      Initialize_583 (Extent);
      Initialize_584 (Extent);
      Initialize_585 (Extent);
      Initialize_586 (Extent);
      Initialize_587 (Extent);
      Initialize_588 (Extent);
      Initialize_589 (Extent);
      Initialize_590 (Extent);
      Initialize_591 (Extent);
      Initialize_592 (Extent);
      Initialize_593 (Extent);
      Initialize_594 (Extent);
      Initialize_595 (Extent);
      Initialize_596 (Extent);
      Initialize_597 (Extent);
      Initialize_598 (Extent);
      Initialize_599 (Extent);
      Initialize_600 (Extent);
      Initialize_601 (Extent);
      Initialize_602 (Extent);
      Initialize_603 (Extent);
      Initialize_604 (Extent);
      Initialize_605 (Extent);
      Initialize_606 (Extent);
      Initialize_607 (Extent);
      Initialize_608 (Extent);
      Initialize_609 (Extent);
      Initialize_610 (Extent);
      Initialize_611 (Extent);
      Initialize_612 (Extent);
      Initialize_613 (Extent);
      Initialize_614 (Extent);
      Initialize_615 (Extent);
      Initialize_616 (Extent);
      Initialize_617 (Extent);
      Initialize_618 (Extent);
      Initialize_619 (Extent);
      Initialize_620 (Extent);
      Initialize_621 (Extent);
      Initialize_622 (Extent);
      Initialize_623 (Extent);
      Initialize_624 (Extent);
      Initialize_625 (Extent);
      Initialize_626 (Extent);
      Initialize_627 (Extent);
      Initialize_628 (Extent);
      Initialize_629 (Extent);
      Initialize_630 (Extent);
      Initialize_631 (Extent);
      Initialize_632 (Extent);
      Initialize_633 (Extent);
      Initialize_634 (Extent);
      Initialize_635 (Extent);
      Initialize_636 (Extent);
      Initialize_637 (Extent);
      Initialize_638 (Extent);
      Initialize_639 (Extent);
      Initialize_640 (Extent);
      Initialize_641 (Extent);
      Initialize_642 (Extent);
      Initialize_643 (Extent);
      Initialize_644 (Extent);
      Initialize_645 (Extent);
      Initialize_646 (Extent);
      Initialize_647 (Extent);
      Initialize_648 (Extent);
      Initialize_649 (Extent);
      Initialize_650 (Extent);
      Initialize_651 (Extent);
      Initialize_652 (Extent);
      Initialize_653 (Extent);
      Initialize_654 (Extent);
      Initialize_655 (Extent);
      Initialize_656 (Extent);
      Initialize_657 (Extent);
      Initialize_658 (Extent);
      Initialize_659 (Extent);
      Initialize_660 (Extent);
      Initialize_661 (Extent);
      Initialize_662 (Extent);
      Initialize_663 (Extent);
      Initialize_664 (Extent);
      Initialize_665 (Extent);
      Initialize_666 (Extent);
      Initialize_667 (Extent);
      Initialize_668 (Extent);
      Initialize_669 (Extent);
      Initialize_670 (Extent);
      Initialize_671 (Extent);
      Initialize_672 (Extent);
      Initialize_673 (Extent);
      Initialize_674 (Extent);
      Initialize_675 (Extent);
      Initialize_676 (Extent);
      Initialize_677 (Extent);
      Initialize_678 (Extent);
      Initialize_679 (Extent);
      Initialize_680 (Extent);
      Initialize_681 (Extent);
      Initialize_682 (Extent);
      Initialize_683 (Extent);
      Initialize_684 (Extent);
      Initialize_685 (Extent);
      Initialize_686 (Extent);
      Initialize_687 (Extent);
      Initialize_688 (Extent);
      Initialize_689 (Extent);
      Initialize_690 (Extent);
      Initialize_691 (Extent);
      Initialize_692 (Extent);
      Initialize_693 (Extent);
      Initialize_694 (Extent);
      Initialize_695 (Extent);
      Initialize_696 (Extent);
      Initialize_697 (Extent);
      Initialize_698 (Extent);
      Initialize_699 (Extent);
      Initialize_700 (Extent);
      Initialize_701 (Extent);
      Initialize_702 (Extent);
      Initialize_703 (Extent);
      Initialize_704 (Extent);
      Initialize_705 (Extent);
      Initialize_706 (Extent);
      Initialize_707 (Extent);
      Initialize_708 (Extent);
      Initialize_709 (Extent);
      Initialize_710 (Extent);
      Initialize_711 (Extent);
      Initialize_712 (Extent);
      Initialize_713 (Extent);
      Initialize_714 (Extent);
      Initialize_715 (Extent);
      Initialize_716 (Extent);
      Initialize_717 (Extent);
      Initialize_718 (Extent);
      Initialize_719 (Extent);
      Initialize_720 (Extent);
      Initialize_721 (Extent);
      Initialize_722 (Extent);
      Initialize_723 (Extent);
      Initialize_724 (Extent);
      Initialize_725 (Extent);
      Initialize_726 (Extent);
      Initialize_727 (Extent);
      Initialize_728 (Extent);
      Initialize_729 (Extent);
      Initialize_730 (Extent);
      Initialize_731 (Extent);
      Initialize_732 (Extent);
      Initialize_733 (Extent);
      Initialize_734 (Extent);
      Initialize_735 (Extent);
      Initialize_736 (Extent);
      Initialize_737 (Extent);
      Initialize_738 (Extent);
      Initialize_739 (Extent);
      Initialize_740 (Extent);
      Initialize_741 (Extent);
      Initialize_742 (Extent);
      Initialize_743 (Extent);
      Initialize_744 (Extent);
      Initialize_745 (Extent);
      Initialize_746 (Extent);
      Initialize_747 (Extent);
      Initialize_748 (Extent);
      Initialize_749 (Extent);
      Initialize_750 (Extent);
      Initialize_751 (Extent);
      Initialize_752 (Extent);
      Initialize_753 (Extent);
      Initialize_754 (Extent);
      Initialize_755 (Extent);
      Initialize_756 (Extent);
      Initialize_757 (Extent);
      Initialize_758 (Extent);
      Initialize_759 (Extent);
      Initialize_760 (Extent);
      Initialize_761 (Extent);
      Initialize_762 (Extent);
      Initialize_763 (Extent);
      Initialize_764 (Extent);
      Initialize_765 (Extent);
      Initialize_766 (Extent);
      Initialize_767 (Extent);
      Initialize_768 (Extent);
      Initialize_769 (Extent);
      Initialize_770 (Extent);
      Initialize_771 (Extent);
      Initialize_772 (Extent);
      Initialize_773 (Extent);
      Initialize_774 (Extent);
      Initialize_775 (Extent);
      Initialize_776 (Extent);
      Initialize_777 (Extent);
      Initialize_778 (Extent);
      Initialize_779 (Extent);
      Initialize_780 (Extent);
      Initialize_781 (Extent);
      Initialize_782 (Extent);
      Initialize_783 (Extent);
      Initialize_784 (Extent);
      Initialize_785 (Extent);
      Initialize_786 (Extent);
      Initialize_787 (Extent);
      Initialize_788 (Extent);
      Initialize_789 (Extent);
      Initialize_790 (Extent);
      Initialize_791 (Extent);
      Initialize_792 (Extent);
      Initialize_793 (Extent);
      Initialize_794 (Extent);
      Initialize_795 (Extent);
      Initialize_796 (Extent);
      Initialize_797 (Extent);
      Initialize_798 (Extent);
      Initialize_799 (Extent);
      Initialize_800 (Extent);
   end Initialize;

   ------------------
   -- Initialize_1 --
   ------------------

   procedure Initialize_1 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_1;

   ------------------
   -- Initialize_2 --
   ------------------

   procedure Initialize_2 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_2;

   ------------------
   -- Initialize_3 --
   ------------------

   procedure Initialize_3 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_3;

   ------------------
   -- Initialize_4 --
   ------------------

   procedure Initialize_4 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_4;

   ------------------
   -- Initialize_5 --
   ------------------

   procedure Initialize_5 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_5;

   ------------------
   -- Initialize_6 --
   ------------------

   procedure Initialize_6 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_6;

   ------------------
   -- Initialize_7 --
   ------------------

   procedure Initialize_7 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_7;

   ------------------
   -- Initialize_8 --
   ------------------

   procedure Initialize_8 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_8;

   ------------------
   -- Initialize_9 --
   ------------------

   procedure Initialize_9 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_9;

   -------------------
   -- Initialize_10 --
   -------------------

   procedure Initialize_10 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_10;

   -------------------
   -- Initialize_11 --
   -------------------

   procedure Initialize_11 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_11;

   -------------------
   -- Initialize_12 --
   -------------------

   procedure Initialize_12 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_12;

   -------------------
   -- Initialize_13 --
   -------------------

   procedure Initialize_13 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_13;

   -------------------
   -- Initialize_14 --
   -------------------

   procedure Initialize_14 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_14;

   -------------------
   -- Initialize_15 --
   -------------------

   procedure Initialize_15 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_15;

   -------------------
   -- Initialize_16 --
   -------------------

   procedure Initialize_16 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_16;

   -------------------
   -- Initialize_17 --
   -------------------

   procedure Initialize_17 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_17;

   -------------------
   -- Initialize_18 --
   -------------------

   procedure Initialize_18 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_18;

   -------------------
   -- Initialize_19 --
   -------------------

   procedure Initialize_19 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_19;

   -------------------
   -- Initialize_20 --
   -------------------

   procedure Initialize_20 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_20;

   -------------------
   -- Initialize_21 --
   -------------------

   procedure Initialize_21 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_21;

   -------------------
   -- Initialize_22 --
   -------------------

   procedure Initialize_22 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_22;

   -------------------
   -- Initialize_23 --
   -------------------

   procedure Initialize_23 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_23;

   -------------------
   -- Initialize_24 --
   -------------------

   procedure Initialize_24 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_24;

   -------------------
   -- Initialize_25 --
   -------------------

   procedure Initialize_25 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_25;

   -------------------
   -- Initialize_26 --
   -------------------

   procedure Initialize_26 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_26;

   -------------------
   -- Initialize_27 --
   -------------------

   procedure Initialize_27 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_27;

   -------------------
   -- Initialize_28 --
   -------------------

   procedure Initialize_28 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_28;

   -------------------
   -- Initialize_29 --
   -------------------

   procedure Initialize_29 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_29;

   -------------------
   -- Initialize_30 --
   -------------------

   procedure Initialize_30 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_30;

   -------------------
   -- Initialize_31 --
   -------------------

   procedure Initialize_31 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_31;

   -------------------
   -- Initialize_32 --
   -------------------

   procedure Initialize_32 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_32;

   -------------------
   -- Initialize_33 --
   -------------------

   procedure Initialize_33 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_33;

   -------------------
   -- Initialize_34 --
   -------------------

   procedure Initialize_34 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
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
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_36;

   -------------------
   -- Initialize_37 --
   -------------------

   procedure Initialize_37 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_37;

   -------------------
   -- Initialize_38 --
   -------------------

   procedure Initialize_38 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_38;

   -------------------
   -- Initialize_39 --
   -------------------

   procedure Initialize_39 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_39;

   -------------------
   -- Initialize_40 --
   -------------------

   procedure Initialize_40 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_40;

   -------------------
   -- Initialize_41 --
   -------------------

   procedure Initialize_41 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
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
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
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
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
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
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
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
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_49;

   -------------------
   -- Initialize_50 --
   -------------------

   procedure Initialize_50 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_50;

   -------------------
   -- Initialize_51 --
   -------------------

   procedure Initialize_51 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_51;

   -------------------
   -- Initialize_52 --
   -------------------

   procedure Initialize_52 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_52;

   -------------------
   -- Initialize_53 --
   -------------------

   procedure Initialize_53 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_53;

   -------------------
   -- Initialize_54 --
   -------------------

   procedure Initialize_54 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_54;

   -------------------
   -- Initialize_55 --
   -------------------

   procedure Initialize_55 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_55;

   -------------------
   -- Initialize_56 --
   -------------------

   procedure Initialize_56 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_56;

   -------------------
   -- Initialize_57 --
   -------------------

   procedure Initialize_57 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_57;

   -------------------
   -- Initialize_58 --
   -------------------

   procedure Initialize_58 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_58;

   -------------------
   -- Initialize_59 --
   -------------------

   procedure Initialize_59 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_59;

   -------------------
   -- Initialize_60 --
   -------------------

   procedure Initialize_60 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_60;

   -------------------
   -- Initialize_61 --
   -------------------

   procedure Initialize_61 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_61;

   -------------------
   -- Initialize_62 --
   -------------------

   procedure Initialize_62 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_62;

   -------------------
   -- Initialize_63 --
   -------------------

   procedure Initialize_63 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_63;

   -------------------
   -- Initialize_64 --
   -------------------

   procedure Initialize_64 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_64;

   -------------------
   -- Initialize_65 --
   -------------------

   procedure Initialize_65 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_65;

   -------------------
   -- Initialize_66 --
   -------------------

   procedure Initialize_66 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_66;

   -------------------
   -- Initialize_67 --
   -------------------

   procedure Initialize_67 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_67;

   -------------------
   -- Initialize_68 --
   -------------------

   procedure Initialize_68 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_68;

   -------------------
   -- Initialize_69 --
   -------------------

   procedure Initialize_69 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_69;

   -------------------
   -- Initialize_70 --
   -------------------

   procedure Initialize_70 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_70;

   -------------------
   -- Initialize_71 --
   -------------------

   procedure Initialize_71 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_71;

   -------------------
   -- Initialize_72 --
   -------------------

   procedure Initialize_72 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_72;

   -------------------
   -- Initialize_73 --
   -------------------

   procedure Initialize_73 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_73;

   -------------------
   -- Initialize_74 --
   -------------------

   procedure Initialize_74 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_74;

   -------------------
   -- Initialize_75 --
   -------------------

   procedure Initialize_75 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_75;

   -------------------
   -- Initialize_76 --
   -------------------

   procedure Initialize_76 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_76;

   -------------------
   -- Initialize_77 --
   -------------------

   procedure Initialize_77 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_77;

   -------------------
   -- Initialize_78 --
   -------------------

   procedure Initialize_78 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_78;

   -------------------
   -- Initialize_79 --
   -------------------

   procedure Initialize_79 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_79;

   -------------------
   -- Initialize_80 --
   -------------------

   procedure Initialize_80 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_80;

   -------------------
   -- Initialize_81 --
   -------------------

   procedure Initialize_81 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_81;

   -------------------
   -- Initialize_82 --
   -------------------

   procedure Initialize_82 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_82;

   -------------------
   -- Initialize_83 --
   -------------------

   procedure Initialize_83 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_83;

   -------------------
   -- Initialize_84 --
   -------------------

   procedure Initialize_84 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_84;

   -------------------
   -- Initialize_85 --
   -------------------

   procedure Initialize_85 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_85;

   -------------------
   -- Initialize_86 --
   -------------------

   procedure Initialize_86 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_86;

   -------------------
   -- Initialize_87 --
   -------------------

   procedure Initialize_87 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_87;

   -------------------
   -- Initialize_88 --
   -------------------

   procedure Initialize_88 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_88;

   -------------------
   -- Initialize_89 --
   -------------------

   procedure Initialize_89 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_89;

   -------------------
   -- Initialize_90 --
   -------------------

   procedure Initialize_90 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_90;

   -------------------
   -- Initialize_91 --
   -------------------

   procedure Initialize_91 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_91;

   -------------------
   -- Initialize_92 --
   -------------------

   procedure Initialize_92 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_92;

   -------------------
   -- Initialize_93 --
   -------------------

   procedure Initialize_93 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_93;

   -------------------
   -- Initialize_94 --
   -------------------

   procedure Initialize_94 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_94;

   -------------------
   -- Initialize_95 --
   -------------------

   procedure Initialize_95 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_95;

   -------------------
   -- Initialize_96 --
   -------------------

   procedure Initialize_96 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_96;

   -------------------
   -- Initialize_97 --
   -------------------

   procedure Initialize_97 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_97;

   -------------------
   -- Initialize_98 --
   -------------------

   procedure Initialize_98 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_98;

   -------------------
   -- Initialize_99 --
   -------------------

   procedure Initialize_99 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_99;

   --------------------
   -- Initialize_100 --
   --------------------

   procedure Initialize_100 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_100;

   --------------------
   -- Initialize_101 --
   --------------------

   procedure Initialize_101 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_101;

   --------------------
   -- Initialize_102 --
   --------------------

   procedure Initialize_102 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_102;

   --------------------
   -- Initialize_103 --
   --------------------

   procedure Initialize_103 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_103;

   --------------------
   -- Initialize_104 --
   --------------------

   procedure Initialize_104 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_104;

   --------------------
   -- Initialize_105 --
   --------------------

   procedure Initialize_105 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_105;

   --------------------
   -- Initialize_106 --
   --------------------

   procedure Initialize_106 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_106;

   --------------------
   -- Initialize_107 --
   --------------------

   procedure Initialize_107 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_107;

   --------------------
   -- Initialize_108 --
   --------------------

   procedure Initialize_108 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_108;

   --------------------
   -- Initialize_109 --
   --------------------

   procedure Initialize_109 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_109;

   --------------------
   -- Initialize_110 --
   --------------------

   procedure Initialize_110 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_110;

   --------------------
   -- Initialize_111 --
   --------------------

   procedure Initialize_111 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_111;

   --------------------
   -- Initialize_112 --
   --------------------

   procedure Initialize_112 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_112;

   --------------------
   -- Initialize_113 --
   --------------------

   procedure Initialize_113 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_113;

   --------------------
   -- Initialize_114 --
   --------------------

   procedure Initialize_114 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_114;

   --------------------
   -- Initialize_115 --
   --------------------

   procedure Initialize_115 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_115;

   --------------------
   -- Initialize_116 --
   --------------------

   procedure Initialize_116 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_116;

   --------------------
   -- Initialize_117 --
   --------------------

   procedure Initialize_117 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_117;

   --------------------
   -- Initialize_118 --
   --------------------

   procedure Initialize_118 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_118;

   --------------------
   -- Initialize_119 --
   --------------------

   procedure Initialize_119 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_119;

   --------------------
   -- Initialize_120 --
   --------------------

   procedure Initialize_120 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_120;

   --------------------
   -- Initialize_121 --
   --------------------

   procedure Initialize_121 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_121;

   --------------------
   -- Initialize_122 --
   --------------------

   procedure Initialize_122 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_122;

   --------------------
   -- Initialize_123 --
   --------------------

   procedure Initialize_123 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_123;

   --------------------
   -- Initialize_124 --
   --------------------

   procedure Initialize_124 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_124;

   --------------------
   -- Initialize_125 --
   --------------------

   procedure Initialize_125 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_125;

   --------------------
   -- Initialize_126 --
   --------------------

   procedure Initialize_126 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_126;

   --------------------
   -- Initialize_127 --
   --------------------

   procedure Initialize_127 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_127;

   --------------------
   -- Initialize_128 --
   --------------------

   procedure Initialize_128 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_128;

   --------------------
   -- Initialize_129 --
   --------------------

   procedure Initialize_129 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_129;

   --------------------
   -- Initialize_130 --
   --------------------

   procedure Initialize_130 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_130;

   --------------------
   -- Initialize_131 --
   --------------------

   procedure Initialize_131 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_131;

   --------------------
   -- Initialize_132 --
   --------------------

   procedure Initialize_132 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_132;

   --------------------
   -- Initialize_133 --
   --------------------

   procedure Initialize_133 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_133;

   --------------------
   -- Initialize_134 --
   --------------------

   procedure Initialize_134 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_134;

   --------------------
   -- Initialize_135 --
   --------------------

   procedure Initialize_135 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_135;

   --------------------
   -- Initialize_136 --
   --------------------

   procedure Initialize_136 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_136;

   --------------------
   -- Initialize_137 --
   --------------------

   procedure Initialize_137 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_137;

   --------------------
   -- Initialize_138 --
   --------------------

   procedure Initialize_138 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_138;

   --------------------
   -- Initialize_139 --
   --------------------

   procedure Initialize_139 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_139;

   --------------------
   -- Initialize_140 --
   --------------------

   procedure Initialize_140 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_140;

   --------------------
   -- Initialize_141 --
   --------------------

   procedure Initialize_141 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_141;

   --------------------
   -- Initialize_142 --
   --------------------

   procedure Initialize_142 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_142;

   --------------------
   -- Initialize_143 --
   --------------------

   procedure Initialize_143 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_143;

   --------------------
   -- Initialize_144 --
   --------------------

   procedure Initialize_144 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_144;

   --------------------
   -- Initialize_145 --
   --------------------

   procedure Initialize_145 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_145;

   --------------------
   -- Initialize_146 --
   --------------------

   procedure Initialize_146 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_146;

   --------------------
   -- Initialize_147 --
   --------------------

   procedure Initialize_147 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_147;

   --------------------
   -- Initialize_148 --
   --------------------

   procedure Initialize_148 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_148;

   --------------------
   -- Initialize_149 --
   --------------------

   procedure Initialize_149 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_149;

   --------------------
   -- Initialize_150 --
   --------------------

   procedure Initialize_150 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_150;

   --------------------
   -- Initialize_151 --
   --------------------

   procedure Initialize_151 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_151;

   --------------------
   -- Initialize_152 --
   --------------------

   procedure Initialize_152 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_152;

   --------------------
   -- Initialize_153 --
   --------------------

   procedure Initialize_153 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_153;

   --------------------
   -- Initialize_154 --
   --------------------

   procedure Initialize_154 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_154;

   --------------------
   -- Initialize_155 --
   --------------------

   procedure Initialize_155 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_155;

   --------------------
   -- Initialize_156 --
   --------------------

   procedure Initialize_156 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_156;

   --------------------
   -- Initialize_157 --
   --------------------

   procedure Initialize_157 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_157;

   --------------------
   -- Initialize_158 --
   --------------------

   procedure Initialize_158 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_158;

   --------------------
   -- Initialize_159 --
   --------------------

   procedure Initialize_159 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_159;

   --------------------
   -- Initialize_160 --
   --------------------

   procedure Initialize_160 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_160;

   --------------------
   -- Initialize_161 --
   --------------------

   procedure Initialize_161 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_161;

   --------------------
   -- Initialize_162 --
   --------------------

   procedure Initialize_162 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_162;

   --------------------
   -- Initialize_163 --
   --------------------

   procedure Initialize_163 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_163;

   --------------------
   -- Initialize_164 --
   --------------------

   procedure Initialize_164 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_164;

   --------------------
   -- Initialize_165 --
   --------------------

   procedure Initialize_165 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_165;

   --------------------
   -- Initialize_166 --
   --------------------

   procedure Initialize_166 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_166;

   --------------------
   -- Initialize_167 --
   --------------------

   procedure Initialize_167 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_167;

   --------------------
   -- Initialize_168 --
   --------------------

   procedure Initialize_168 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_168;

   --------------------
   -- Initialize_169 --
   --------------------

   procedure Initialize_169 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_169;

   --------------------
   -- Initialize_170 --
   --------------------

   procedure Initialize_170 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_170;

   --------------------
   -- Initialize_171 --
   --------------------

   procedure Initialize_171 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_171;

   --------------------
   -- Initialize_172 --
   --------------------

   procedure Initialize_172 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_172;

   --------------------
   -- Initialize_173 --
   --------------------

   procedure Initialize_173 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_173;

   --------------------
   -- Initialize_174 --
   --------------------

   procedure Initialize_174 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_174;

   --------------------
   -- Initialize_175 --
   --------------------

   procedure Initialize_175 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_175;

   --------------------
   -- Initialize_176 --
   --------------------

   procedure Initialize_176 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_176;

   --------------------
   -- Initialize_177 --
   --------------------

   procedure Initialize_177 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_177;

   --------------------
   -- Initialize_178 --
   --------------------

   procedure Initialize_178 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_178;

   --------------------
   -- Initialize_179 --
   --------------------

   procedure Initialize_179 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_179;

   --------------------
   -- Initialize_180 --
   --------------------

   procedure Initialize_180 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_180;

   --------------------
   -- Initialize_181 --
   --------------------

   procedure Initialize_181 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_181;

   --------------------
   -- Initialize_182 --
   --------------------

   procedure Initialize_182 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_182;

   --------------------
   -- Initialize_183 --
   --------------------

   procedure Initialize_183 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_183;

   --------------------
   -- Initialize_184 --
   --------------------

   procedure Initialize_184 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_184;

   --------------------
   -- Initialize_185 --
   --------------------

   procedure Initialize_185 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_185;

   --------------------
   -- Initialize_186 --
   --------------------

   procedure Initialize_186 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_186;

   --------------------
   -- Initialize_187 --
   --------------------

   procedure Initialize_187 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_187;

   --------------------
   -- Initialize_188 --
   --------------------

   procedure Initialize_188 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_188;

   --------------------
   -- Initialize_189 --
   --------------------

   procedure Initialize_189 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Package;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_189;

   --------------------
   -- Initialize_190 --
   --------------------

   procedure Initialize_190 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_190;

   --------------------
   -- Initialize_191 --
   --------------------

   procedure Initialize_191 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_191;

   --------------------
   -- Initialize_192 --
   --------------------

   procedure Initialize_192 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_192;

   --------------------
   -- Initialize_193 --
   --------------------

   procedure Initialize_193 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_193;

   --------------------
   -- Initialize_194 --
   --------------------

   procedure Initialize_194 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_194;

   --------------------
   -- Initialize_195 --
   --------------------

   procedure Initialize_195 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_195;

   --------------------
   -- Initialize_196 --
   --------------------

   procedure Initialize_196 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_196;

   --------------------
   -- Initialize_197 --
   --------------------

   procedure Initialize_197 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_197;

   --------------------
   -- Initialize_198 --
   --------------------

   procedure Initialize_198 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_198;

   --------------------
   -- Initialize_199 --
   --------------------

   procedure Initialize_199 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_199;

   --------------------
   -- Initialize_200 --
   --------------------

   procedure Initialize_200 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_200;

   --------------------
   -- Initialize_201 --
   --------------------

   procedure Initialize_201 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_201;

   --------------------
   -- Initialize_202 --
   --------------------

   procedure Initialize_202 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_202;

   --------------------
   -- Initialize_203 --
   --------------------

   procedure Initialize_203 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_203;

   --------------------
   -- Initialize_204 --
   --------------------

   procedure Initialize_204 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_204;

   --------------------
   -- Initialize_205 --
   --------------------

   procedure Initialize_205 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_205;

   --------------------
   -- Initialize_206 --
   --------------------

   procedure Initialize_206 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_206;

   --------------------
   -- Initialize_207 --
   --------------------

   procedure Initialize_207 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_207;

   --------------------
   -- Initialize_208 --
   --------------------

   procedure Initialize_208 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_208;

   --------------------
   -- Initialize_209 --
   --------------------

   procedure Initialize_209 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_209;

   --------------------
   -- Initialize_210 --
   --------------------

   procedure Initialize_210 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_210;

   --------------------
   -- Initialize_211 --
   --------------------

   procedure Initialize_211 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_211;

   --------------------
   -- Initialize_212 --
   --------------------

   procedure Initialize_212 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_212;

   --------------------
   -- Initialize_213 --
   --------------------

   procedure Initialize_213 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_213;

   --------------------
   -- Initialize_214 --
   --------------------

   procedure Initialize_214 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_214;

   --------------------
   -- Initialize_215 --
   --------------------

   procedure Initialize_215 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_215;

   --------------------
   -- Initialize_216 --
   --------------------

   procedure Initialize_216 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_216;

   --------------------
   -- Initialize_217 --
   --------------------

   procedure Initialize_217 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_217;

   --------------------
   -- Initialize_218 --
   --------------------

   procedure Initialize_218 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_218;

   --------------------
   -- Initialize_219 --
   --------------------

   procedure Initialize_219 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_219;

   --------------------
   -- Initialize_220 --
   --------------------

   procedure Initialize_220 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_220;

   --------------------
   -- Initialize_221 --
   --------------------

   procedure Initialize_221 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_221;

   --------------------
   -- Initialize_222 --
   --------------------

   procedure Initialize_222 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_222;

   --------------------
   -- Initialize_223 --
   --------------------

   procedure Initialize_223 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_223;

   --------------------
   -- Initialize_224 --
   --------------------

   procedure Initialize_224 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_224;

   --------------------
   -- Initialize_225 --
   --------------------

   procedure Initialize_225 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_225;

   --------------------
   -- Initialize_226 --
   --------------------

   procedure Initialize_226 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_226;

   --------------------
   -- Initialize_227 --
   --------------------

   procedure Initialize_227 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_227;

   --------------------
   -- Initialize_228 --
   --------------------

   procedure Initialize_228 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_228;

   --------------------
   -- Initialize_229 --
   --------------------

   procedure Initialize_229 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_229;

   --------------------
   -- Initialize_230 --
   --------------------

   procedure Initialize_230 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_230;

   --------------------
   -- Initialize_231 --
   --------------------

   procedure Initialize_231 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_231;

   --------------------
   -- Initialize_232 --
   --------------------

   procedure Initialize_232 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_232;

   --------------------
   -- Initialize_233 --
   --------------------

   procedure Initialize_233 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_233;

   --------------------
   -- Initialize_234 --
   --------------------

   procedure Initialize_234 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_234;

   --------------------
   -- Initialize_235 --
   --------------------

   procedure Initialize_235 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_235;

   --------------------
   -- Initialize_236 --
   --------------------

   procedure Initialize_236 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_236;

   --------------------
   -- Initialize_237 --
   --------------------

   procedure Initialize_237 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_237;

   --------------------
   -- Initialize_238 --
   --------------------

   procedure Initialize_238 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_238;

   --------------------
   -- Initialize_239 --
   --------------------

   procedure Initialize_239 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_239;

   --------------------
   -- Initialize_240 --
   --------------------

   procedure Initialize_240 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_240;

   --------------------
   -- Initialize_241 --
   --------------------

   procedure Initialize_241 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_241;

   --------------------
   -- Initialize_242 --
   --------------------

   procedure Initialize_242 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_242;

   --------------------
   -- Initialize_243 --
   --------------------

   procedure Initialize_243 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_243;

   --------------------
   -- Initialize_244 --
   --------------------

   procedure Initialize_244 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_244;

   --------------------
   -- Initialize_245 --
   --------------------

   procedure Initialize_245 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_245;

   --------------------
   -- Initialize_246 --
   --------------------

   procedure Initialize_246 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_246;

   --------------------
   -- Initialize_247 --
   --------------------

   procedure Initialize_247 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_247;

   --------------------
   -- Initialize_248 --
   --------------------

   procedure Initialize_248 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_248;

   --------------------
   -- Initialize_249 --
   --------------------

   procedure Initialize_249 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_249;

   --------------------
   -- Initialize_250 --
   --------------------

   procedure Initialize_250 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_250;

   --------------------
   -- Initialize_251 --
   --------------------

   procedure Initialize_251 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_251;

   --------------------
   -- Initialize_252 --
   --------------------

   procedure Initialize_252 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_252;

   --------------------
   -- Initialize_253 --
   --------------------

   procedure Initialize_253 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_253;

   --------------------
   -- Initialize_254 --
   --------------------

   procedure Initialize_254 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_254;

   --------------------
   -- Initialize_255 --
   --------------------

   procedure Initialize_255 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_255;

   --------------------
   -- Initialize_256 --
   --------------------

   procedure Initialize_256 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_256;

   --------------------
   -- Initialize_257 --
   --------------------

   procedure Initialize_257 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_257;

   --------------------
   -- Initialize_258 --
   --------------------

   procedure Initialize_258 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_258;

   --------------------
   -- Initialize_259 --
   --------------------

   procedure Initialize_259 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_259;

   --------------------
   -- Initialize_260 --
   --------------------

   procedure Initialize_260 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_260;

   --------------------
   -- Initialize_261 --
   --------------------

   procedure Initialize_261 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_261;

   --------------------
   -- Initialize_262 --
   --------------------

   procedure Initialize_262 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_262;

   --------------------
   -- Initialize_263 --
   --------------------

   procedure Initialize_263 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_263;

   --------------------
   -- Initialize_264 --
   --------------------

   procedure Initialize_264 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_264;

   --------------------
   -- Initialize_265 --
   --------------------

   procedure Initialize_265 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_265;

   --------------------
   -- Initialize_266 --
   --------------------

   procedure Initialize_266 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_266;

   --------------------
   -- Initialize_267 --
   --------------------

   procedure Initialize_267 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_267;

   --------------------
   -- Initialize_268 --
   --------------------

   procedure Initialize_268 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_268;

   --------------------
   -- Initialize_269 --
   --------------------

   procedure Initialize_269 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_269;

   --------------------
   -- Initialize_270 --
   --------------------

   procedure Initialize_270 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_270;

   --------------------
   -- Initialize_271 --
   --------------------

   procedure Initialize_271 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_271;

   --------------------
   -- Initialize_272 --
   --------------------

   procedure Initialize_272 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_272;

   --------------------
   -- Initialize_273 --
   --------------------

   procedure Initialize_273 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_273;

   --------------------
   -- Initialize_274 --
   --------------------

   procedure Initialize_274 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_274;

   --------------------
   -- Initialize_275 --
   --------------------

   procedure Initialize_275 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_275;

   --------------------
   -- Initialize_276 --
   --------------------

   procedure Initialize_276 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_276;

   --------------------
   -- Initialize_277 --
   --------------------

   procedure Initialize_277 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_277;

   --------------------
   -- Initialize_278 --
   --------------------

   procedure Initialize_278 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_278;

   --------------------
   -- Initialize_279 --
   --------------------

   procedure Initialize_279 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_279;

   --------------------
   -- Initialize_280 --
   --------------------

   procedure Initialize_280 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_280;

   --------------------
   -- Initialize_281 --
   --------------------

   procedure Initialize_281 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_281;

   --------------------
   -- Initialize_282 --
   --------------------

   procedure Initialize_282 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_282;

   --------------------
   -- Initialize_283 --
   --------------------

   procedure Initialize_283 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_283;

   --------------------
   -- Initialize_284 --
   --------------------

   procedure Initialize_284 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_284;

   --------------------
   -- Initialize_285 --
   --------------------

   procedure Initialize_285 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_285;

   --------------------
   -- Initialize_286 --
   --------------------

   procedure Initialize_286 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_286;

   --------------------
   -- Initialize_287 --
   --------------------

   procedure Initialize_287 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_287;

   --------------------
   -- Initialize_288 --
   --------------------

   procedure Initialize_288 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_288;

   --------------------
   -- Initialize_289 --
   --------------------

   procedure Initialize_289 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_289;

   --------------------
   -- Initialize_290 --
   --------------------

   procedure Initialize_290 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_290;

   --------------------
   -- Initialize_291 --
   --------------------

   procedure Initialize_291 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_291;

   --------------------
   -- Initialize_292 --
   --------------------

   procedure Initialize_292 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_292;

   --------------------
   -- Initialize_293 --
   --------------------

   procedure Initialize_293 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_293;

   --------------------
   -- Initialize_294 --
   --------------------

   procedure Initialize_294 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_294;

   --------------------
   -- Initialize_295 --
   --------------------

   procedure Initialize_295 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_295;

   --------------------
   -- Initialize_296 --
   --------------------

   procedure Initialize_296 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_296;

   --------------------
   -- Initialize_297 --
   --------------------

   procedure Initialize_297 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_297;

   --------------------
   -- Initialize_298 --
   --------------------

   procedure Initialize_298 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_298;

   --------------------
   -- Initialize_299 --
   --------------------

   procedure Initialize_299 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_299;

   --------------------
   -- Initialize_300 --
   --------------------

   procedure Initialize_300 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_300;

   --------------------
   -- Initialize_301 --
   --------------------

   procedure Initialize_301 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_301;

   --------------------
   -- Initialize_302 --
   --------------------

   procedure Initialize_302 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_302;

   --------------------
   -- Initialize_303 --
   --------------------

   procedure Initialize_303 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_303;

   --------------------
   -- Initialize_304 --
   --------------------

   procedure Initialize_304 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_304;

   --------------------
   -- Initialize_305 --
   --------------------

   procedure Initialize_305 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_305;

   --------------------
   -- Initialize_306 --
   --------------------

   procedure Initialize_306 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_306;

   --------------------
   -- Initialize_307 --
   --------------------

   procedure Initialize_307 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_307;

   --------------------
   -- Initialize_308 --
   --------------------

   procedure Initialize_308 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_308;

   --------------------
   -- Initialize_309 --
   --------------------

   procedure Initialize_309 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_309;

   --------------------
   -- Initialize_310 --
   --------------------

   procedure Initialize_310 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_310;

   --------------------
   -- Initialize_311 --
   --------------------

   procedure Initialize_311 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_311;

   --------------------
   -- Initialize_312 --
   --------------------

   procedure Initialize_312 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_312;

   --------------------
   -- Initialize_313 --
   --------------------

   procedure Initialize_313 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_313;

   --------------------
   -- Initialize_314 --
   --------------------

   procedure Initialize_314 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_314;

   --------------------
   -- Initialize_315 --
   --------------------

   procedure Initialize_315 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_315;

   --------------------
   -- Initialize_316 --
   --------------------

   procedure Initialize_316 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_316;

   --------------------
   -- Initialize_317 --
   --------------------

   procedure Initialize_317 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_317;

   --------------------
   -- Initialize_318 --
   --------------------

   procedure Initialize_318 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_318;

   --------------------
   -- Initialize_319 --
   --------------------

   procedure Initialize_319 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_319;

   --------------------
   -- Initialize_320 --
   --------------------

   procedure Initialize_320 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_320;

   --------------------
   -- Initialize_321 --
   --------------------

   procedure Initialize_321 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_321;

   --------------------
   -- Initialize_322 --
   --------------------

   procedure Initialize_322 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_322;

   --------------------
   -- Initialize_323 --
   --------------------

   procedure Initialize_323 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_323;

   --------------------
   -- Initialize_324 --
   --------------------

   procedure Initialize_324 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_324;

   --------------------
   -- Initialize_325 --
   --------------------

   procedure Initialize_325 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_325;

   --------------------
   -- Initialize_326 --
   --------------------

   procedure Initialize_326 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_326;

   --------------------
   -- Initialize_327 --
   --------------------

   procedure Initialize_327 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_327;

   --------------------
   -- Initialize_328 --
   --------------------

   procedure Initialize_328 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_328;

   --------------------
   -- Initialize_329 --
   --------------------

   procedure Initialize_329 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_329;

   --------------------
   -- Initialize_330 --
   --------------------

   procedure Initialize_330 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_330;

   --------------------
   -- Initialize_331 --
   --------------------

   procedure Initialize_331 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_331;

   --------------------
   -- Initialize_332 --
   --------------------

   procedure Initialize_332 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_332;

   --------------------
   -- Initialize_333 --
   --------------------

   procedure Initialize_333 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_333;

   --------------------
   -- Initialize_334 --
   --------------------

   procedure Initialize_334 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_334;

   --------------------
   -- Initialize_335 --
   --------------------

   procedure Initialize_335 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_335;

   --------------------
   -- Initialize_336 --
   --------------------

   procedure Initialize_336 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_336;

   --------------------
   -- Initialize_337 --
   --------------------

   procedure Initialize_337 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_337;

   --------------------
   -- Initialize_338 --
   --------------------

   procedure Initialize_338 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_338;

   --------------------
   -- Initialize_339 --
   --------------------

   procedure Initialize_339 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_339;

   --------------------
   -- Initialize_340 --
   --------------------

   procedure Initialize_340 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_340;

   --------------------
   -- Initialize_341 --
   --------------------

   procedure Initialize_341 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_341;

   --------------------
   -- Initialize_342 --
   --------------------

   procedure Initialize_342 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_342;

   --------------------
   -- Initialize_343 --
   --------------------

   procedure Initialize_343 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_343;

   --------------------
   -- Initialize_344 --
   --------------------

   procedure Initialize_344 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_344;

   --------------------
   -- Initialize_345 --
   --------------------

   procedure Initialize_345 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_345;

   --------------------
   -- Initialize_346 --
   --------------------

   procedure Initialize_346 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_346;

   --------------------
   -- Initialize_347 --
   --------------------

   procedure Initialize_347 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_347;

   --------------------
   -- Initialize_348 --
   --------------------

   procedure Initialize_348 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_348;

   --------------------
   -- Initialize_349 --
   --------------------

   procedure Initialize_349 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_349;

   --------------------
   -- Initialize_350 --
   --------------------

   procedure Initialize_350 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_350;

   --------------------
   -- Initialize_351 --
   --------------------

   procedure Initialize_351 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_351;

   --------------------
   -- Initialize_352 --
   --------------------

   procedure Initialize_352 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_352;

   --------------------
   -- Initialize_353 --
   --------------------

   procedure Initialize_353 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_353;

   --------------------
   -- Initialize_354 --
   --------------------

   procedure Initialize_354 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_354;

   --------------------
   -- Initialize_355 --
   --------------------

   procedure Initialize_355 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_355;

   --------------------
   -- Initialize_356 --
   --------------------

   procedure Initialize_356 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_356;

   --------------------
   -- Initialize_357 --
   --------------------

   procedure Initialize_357 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_357;

   --------------------
   -- Initialize_358 --
   --------------------

   procedure Initialize_358 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_358;

   --------------------
   -- Initialize_359 --
   --------------------

   procedure Initialize_359 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_359;

   --------------------
   -- Initialize_360 --
   --------------------

   procedure Initialize_360 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_360;

   --------------------
   -- Initialize_361 --
   --------------------

   procedure Initialize_361 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_361;

   --------------------
   -- Initialize_362 --
   --------------------

   procedure Initialize_362 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_362;

   --------------------
   -- Initialize_363 --
   --------------------

   procedure Initialize_363 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_363;

   --------------------
   -- Initialize_364 --
   --------------------

   procedure Initialize_364 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_364;

   --------------------
   -- Initialize_365 --
   --------------------

   procedure Initialize_365 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_365;

   --------------------
   -- Initialize_366 --
   --------------------

   procedure Initialize_366 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_366;

   --------------------
   -- Initialize_367 --
   --------------------

   procedure Initialize_367 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_367;

   --------------------
   -- Initialize_368 --
   --------------------

   procedure Initialize_368 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_368;

   --------------------
   -- Initialize_369 --
   --------------------

   procedure Initialize_369 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_369;

   --------------------
   -- Initialize_370 --
   --------------------

   procedure Initialize_370 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_370;

   --------------------
   -- Initialize_371 --
   --------------------

   procedure Initialize_371 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_371;

   --------------------
   -- Initialize_372 --
   --------------------

   procedure Initialize_372 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_372;

   --------------------
   -- Initialize_373 --
   --------------------

   procedure Initialize_373 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_373;

   --------------------
   -- Initialize_374 --
   --------------------

   procedure Initialize_374 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_374;

   --------------------
   -- Initialize_375 --
   --------------------

   procedure Initialize_375 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_375;

   --------------------
   -- Initialize_376 --
   --------------------

   procedure Initialize_376 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_376;

   --------------------
   -- Initialize_377 --
   --------------------

   procedure Initialize_377 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_377;

   --------------------
   -- Initialize_378 --
   --------------------

   procedure Initialize_378 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_378;

   --------------------
   -- Initialize_379 --
   --------------------

   procedure Initialize_379 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_379;

   --------------------
   -- Initialize_380 --
   --------------------

   procedure Initialize_380 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_380;

   --------------------
   -- Initialize_381 --
   --------------------

   procedure Initialize_381 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_381;

   --------------------
   -- Initialize_382 --
   --------------------

   procedure Initialize_382 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_382;

   --------------------
   -- Initialize_383 --
   --------------------

   procedure Initialize_383 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_383;

   --------------------
   -- Initialize_384 --
   --------------------

   procedure Initialize_384 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_384;

   --------------------
   -- Initialize_385 --
   --------------------

   procedure Initialize_385 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_385;

   --------------------
   -- Initialize_386 --
   --------------------

   procedure Initialize_386 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_386;

   --------------------
   -- Initialize_387 --
   --------------------

   procedure Initialize_387 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_387;

   --------------------
   -- Initialize_388 --
   --------------------

   procedure Initialize_388 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_388;

   --------------------
   -- Initialize_389 --
   --------------------

   procedure Initialize_389 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_389;

   --------------------
   -- Initialize_390 --
   --------------------

   procedure Initialize_390 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_390;

   --------------------
   -- Initialize_391 --
   --------------------

   procedure Initialize_391 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_391;

   --------------------
   -- Initialize_392 --
   --------------------

   procedure Initialize_392 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_392;

   --------------------
   -- Initialize_393 --
   --------------------

   procedure Initialize_393 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_393;

   --------------------
   -- Initialize_394 --
   --------------------

   procedure Initialize_394 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_394;

   --------------------
   -- Initialize_395 --
   --------------------

   procedure Initialize_395 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_395;

   --------------------
   -- Initialize_396 --
   --------------------

   procedure Initialize_396 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_396;

   --------------------
   -- Initialize_397 --
   --------------------

   procedure Initialize_397 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_397;

   --------------------
   -- Initialize_398 --
   --------------------

   procedure Initialize_398 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_398;

   --------------------
   -- Initialize_399 --
   --------------------

   procedure Initialize_399 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_399;

   --------------------
   -- Initialize_400 --
   --------------------

   procedure Initialize_400 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_400;

   --------------------
   -- Initialize_401 --
   --------------------

   procedure Initialize_401 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_401;

   --------------------
   -- Initialize_402 --
   --------------------

   procedure Initialize_402 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_402;

   --------------------
   -- Initialize_403 --
   --------------------

   procedure Initialize_403 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_403;

   --------------------
   -- Initialize_404 --
   --------------------

   procedure Initialize_404 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_404;

   --------------------
   -- Initialize_405 --
   --------------------

   procedure Initialize_405 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_405;

   --------------------
   -- Initialize_406 --
   --------------------

   procedure Initialize_406 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_406;

   --------------------
   -- Initialize_407 --
   --------------------

   procedure Initialize_407 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_407;

   --------------------
   -- Initialize_408 --
   --------------------

   procedure Initialize_408 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_408;

   --------------------
   -- Initialize_409 --
   --------------------

   procedure Initialize_409 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_409;

   --------------------
   -- Initialize_410 --
   --------------------

   procedure Initialize_410 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_410;

   --------------------
   -- Initialize_411 --
   --------------------

   procedure Initialize_411 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_411;

   --------------------
   -- Initialize_412 --
   --------------------

   procedure Initialize_412 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_412;

   --------------------
   -- Initialize_413 --
   --------------------

   procedure Initialize_413 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_413;

   --------------------
   -- Initialize_414 --
   --------------------

   procedure Initialize_414 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_414;

   --------------------
   -- Initialize_415 --
   --------------------

   procedure Initialize_415 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_415;

   --------------------
   -- Initialize_416 --
   --------------------

   procedure Initialize_416 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_416;

   --------------------
   -- Initialize_417 --
   --------------------

   procedure Initialize_417 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_417;

   --------------------
   -- Initialize_418 --
   --------------------

   procedure Initialize_418 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_418;

   --------------------
   -- Initialize_419 --
   --------------------

   procedure Initialize_419 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_419;

   --------------------
   -- Initialize_420 --
   --------------------

   procedure Initialize_420 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_420;

   --------------------
   -- Initialize_421 --
   --------------------

   procedure Initialize_421 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_421;

   --------------------
   -- Initialize_422 --
   --------------------

   procedure Initialize_422 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_422;

   --------------------
   -- Initialize_423 --
   --------------------

   procedure Initialize_423 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_423;

   --------------------
   -- Initialize_424 --
   --------------------

   procedure Initialize_424 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_424;

   --------------------
   -- Initialize_425 --
   --------------------

   procedure Initialize_425 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_425;

   --------------------
   -- Initialize_426 --
   --------------------

   procedure Initialize_426 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_426;

   --------------------
   -- Initialize_427 --
   --------------------

   procedure Initialize_427 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_427;

   --------------------
   -- Initialize_428 --
   --------------------

   procedure Initialize_428 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_428;

   --------------------
   -- Initialize_429 --
   --------------------

   procedure Initialize_429 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_429;

   --------------------
   -- Initialize_430 --
   --------------------

   procedure Initialize_430 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_430;

   --------------------
   -- Initialize_431 --
   --------------------

   procedure Initialize_431 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_431;

   --------------------
   -- Initialize_432 --
   --------------------

   procedure Initialize_432 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_432;

   --------------------
   -- Initialize_433 --
   --------------------

   procedure Initialize_433 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_433;

   --------------------
   -- Initialize_434 --
   --------------------

   procedure Initialize_434 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_434;

   --------------------
   -- Initialize_435 --
   --------------------

   procedure Initialize_435 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_435;

   --------------------
   -- Initialize_436 --
   --------------------

   procedure Initialize_436 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_436;

   --------------------
   -- Initialize_437 --
   --------------------

   procedure Initialize_437 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_437;

   --------------------
   -- Initialize_438 --
   --------------------

   procedure Initialize_438 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_438;

   --------------------
   -- Initialize_439 --
   --------------------

   procedure Initialize_439 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_439;

   --------------------
   -- Initialize_440 --
   --------------------

   procedure Initialize_440 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_440;

   --------------------
   -- Initialize_441 --
   --------------------

   procedure Initialize_441 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_441;

   --------------------
   -- Initialize_442 --
   --------------------

   procedure Initialize_442 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_442;

   --------------------
   -- Initialize_443 --
   --------------------

   procedure Initialize_443 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_443;

   --------------------
   -- Initialize_444 --
   --------------------

   procedure Initialize_444 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_444;

   --------------------
   -- Initialize_445 --
   --------------------

   procedure Initialize_445 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_445;

   --------------------
   -- Initialize_446 --
   --------------------

   procedure Initialize_446 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_446;

   --------------------
   -- Initialize_447 --
   --------------------

   procedure Initialize_447 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_447;

   --------------------
   -- Initialize_448 --
   --------------------

   procedure Initialize_448 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_448;

   --------------------
   -- Initialize_449 --
   --------------------

   procedure Initialize_449 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_449;

   --------------------
   -- Initialize_450 --
   --------------------

   procedure Initialize_450 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_450;

   --------------------
   -- Initialize_451 --
   --------------------

   procedure Initialize_451 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_451;

   --------------------
   -- Initialize_452 --
   --------------------

   procedure Initialize_452 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_452;

   --------------------
   -- Initialize_453 --
   --------------------

   procedure Initialize_453 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_453;

   --------------------
   -- Initialize_454 --
   --------------------

   procedure Initialize_454 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_454;

   --------------------
   -- Initialize_455 --
   --------------------

   procedure Initialize_455 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_455;

   --------------------
   -- Initialize_456 --
   --------------------

   procedure Initialize_456 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_456;

   --------------------
   -- Initialize_457 --
   --------------------

   procedure Initialize_457 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_457;

   --------------------
   -- Initialize_458 --
   --------------------

   procedure Initialize_458 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_458;

   --------------------
   -- Initialize_459 --
   --------------------

   procedure Initialize_459 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_459;

   --------------------
   -- Initialize_460 --
   --------------------

   procedure Initialize_460 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_460;

   --------------------
   -- Initialize_461 --
   --------------------

   procedure Initialize_461 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_461;

   --------------------
   -- Initialize_462 --
   --------------------

   procedure Initialize_462 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_462;

   --------------------
   -- Initialize_463 --
   --------------------

   procedure Initialize_463 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_463;

   --------------------
   -- Initialize_464 --
   --------------------

   procedure Initialize_464 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_464;

   --------------------
   -- Initialize_465 --
   --------------------

   procedure Initialize_465 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_465;

   --------------------
   -- Initialize_466 --
   --------------------

   procedure Initialize_466 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_466;

   --------------------
   -- Initialize_467 --
   --------------------

   procedure Initialize_467 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_467;

   --------------------
   -- Initialize_468 --
   --------------------

   procedure Initialize_468 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_468;

   --------------------
   -- Initialize_469 --
   --------------------

   procedure Initialize_469 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_469;

   --------------------
   -- Initialize_470 --
   --------------------

   procedure Initialize_470 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_470;

   --------------------
   -- Initialize_471 --
   --------------------

   procedure Initialize_471 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_471;

   --------------------
   -- Initialize_472 --
   --------------------

   procedure Initialize_472 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_472;

   --------------------
   -- Initialize_473 --
   --------------------

   procedure Initialize_473 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_473;

   --------------------
   -- Initialize_474 --
   --------------------

   procedure Initialize_474 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_474;

   --------------------
   -- Initialize_475 --
   --------------------

   procedure Initialize_475 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_475;

   --------------------
   -- Initialize_476 --
   --------------------

   procedure Initialize_476 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_476;

   --------------------
   -- Initialize_477 --
   --------------------

   procedure Initialize_477 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_477;

   --------------------
   -- Initialize_478 --
   --------------------

   procedure Initialize_478 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_478;

   --------------------
   -- Initialize_479 --
   --------------------

   procedure Initialize_479 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_479;

   --------------------
   -- Initialize_480 --
   --------------------

   procedure Initialize_480 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_480;

   --------------------
   -- Initialize_481 --
   --------------------

   procedure Initialize_481 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_481;

   --------------------
   -- Initialize_482 --
   --------------------

   procedure Initialize_482 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_482;

   --------------------
   -- Initialize_483 --
   --------------------

   procedure Initialize_483 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_483;

   --------------------
   -- Initialize_484 --
   --------------------

   procedure Initialize_484 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_484;

   --------------------
   -- Initialize_485 --
   --------------------

   procedure Initialize_485 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_485;

   --------------------
   -- Initialize_486 --
   --------------------

   procedure Initialize_486 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_486;

   --------------------
   -- Initialize_487 --
   --------------------

   procedure Initialize_487 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_487;

   --------------------
   -- Initialize_488 --
   --------------------

   procedure Initialize_488 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_488;

   --------------------
   -- Initialize_489 --
   --------------------

   procedure Initialize_489 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_489;

   --------------------
   -- Initialize_490 --
   --------------------

   procedure Initialize_490 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_490;

   --------------------
   -- Initialize_491 --
   --------------------

   procedure Initialize_491 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_491;

   --------------------
   -- Initialize_492 --
   --------------------

   procedure Initialize_492 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_492;

   --------------------
   -- Initialize_493 --
   --------------------

   procedure Initialize_493 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_493;

   --------------------
   -- Initialize_494 --
   --------------------

   procedure Initialize_494 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_494;

   --------------------
   -- Initialize_495 --
   --------------------

   procedure Initialize_495 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_495;

   --------------------
   -- Initialize_496 --
   --------------------

   procedure Initialize_496 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_496;

   --------------------
   -- Initialize_497 --
   --------------------

   procedure Initialize_497 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_497;

   --------------------
   -- Initialize_498 --
   --------------------

   procedure Initialize_498 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_498;

   --------------------
   -- Initialize_499 --
   --------------------

   procedure Initialize_499 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_499;

   --------------------
   -- Initialize_500 --
   --------------------

   procedure Initialize_500 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_500;

   --------------------
   -- Initialize_501 --
   --------------------

   procedure Initialize_501 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_501;

   --------------------
   -- Initialize_502 --
   --------------------

   procedure Initialize_502 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_502;

   --------------------
   -- Initialize_503 --
   --------------------

   procedure Initialize_503 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_503;

   --------------------
   -- Initialize_504 --
   --------------------

   procedure Initialize_504 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_504;

   --------------------
   -- Initialize_505 --
   --------------------

   procedure Initialize_505 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_505;

   --------------------
   -- Initialize_506 --
   --------------------

   procedure Initialize_506 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_506;

   --------------------
   -- Initialize_507 --
   --------------------

   procedure Initialize_507 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_507;

   --------------------
   -- Initialize_508 --
   --------------------

   procedure Initialize_508 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_508;

   --------------------
   -- Initialize_509 --
   --------------------

   procedure Initialize_509 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_509;

   --------------------
   -- Initialize_510 --
   --------------------

   procedure Initialize_510 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_510;

   --------------------
   -- Initialize_511 --
   --------------------

   procedure Initialize_511 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_511;

   --------------------
   -- Initialize_512 --
   --------------------

   procedure Initialize_512 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_512;

   --------------------
   -- Initialize_513 --
   --------------------

   procedure Initialize_513 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_513;

   --------------------
   -- Initialize_514 --
   --------------------

   procedure Initialize_514 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_514;

   --------------------
   -- Initialize_515 --
   --------------------

   procedure Initialize_515 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_515;

   --------------------
   -- Initialize_516 --
   --------------------

   procedure Initialize_516 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_516;

   --------------------
   -- Initialize_517 --
   --------------------

   procedure Initialize_517 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_517;

   --------------------
   -- Initialize_518 --
   --------------------

   procedure Initialize_518 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_518;

   --------------------
   -- Initialize_519 --
   --------------------

   procedure Initialize_519 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_519;

   --------------------
   -- Initialize_520 --
   --------------------

   procedure Initialize_520 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_520;

   --------------------
   -- Initialize_521 --
   --------------------

   procedure Initialize_521 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_521;

   --------------------
   -- Initialize_522 --
   --------------------

   procedure Initialize_522 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_522;

   --------------------
   -- Initialize_523 --
   --------------------

   procedure Initialize_523 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_523;

   --------------------
   -- Initialize_524 --
   --------------------

   procedure Initialize_524 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_524;

   --------------------
   -- Initialize_525 --
   --------------------

   procedure Initialize_525 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_525;

   --------------------
   -- Initialize_526 --
   --------------------

   procedure Initialize_526 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_526;

   --------------------
   -- Initialize_527 --
   --------------------

   procedure Initialize_527 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_527;

   --------------------
   -- Initialize_528 --
   --------------------

   procedure Initialize_528 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_528;

   --------------------
   -- Initialize_529 --
   --------------------

   procedure Initialize_529 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_529;

   --------------------
   -- Initialize_530 --
   --------------------

   procedure Initialize_530 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_530;

   --------------------
   -- Initialize_531 --
   --------------------

   procedure Initialize_531 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_531;

   --------------------
   -- Initialize_532 --
   --------------------

   procedure Initialize_532 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_532;

   --------------------
   -- Initialize_533 --
   --------------------

   procedure Initialize_533 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_533;

   --------------------
   -- Initialize_534 --
   --------------------

   procedure Initialize_534 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_534;

   --------------------
   -- Initialize_535 --
   --------------------

   procedure Initialize_535 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_535;

   --------------------
   -- Initialize_536 --
   --------------------

   procedure Initialize_536 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_536;

   --------------------
   -- Initialize_537 --
   --------------------

   procedure Initialize_537 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_537;

   --------------------
   -- Initialize_538 --
   --------------------

   procedure Initialize_538 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_538;

   --------------------
   -- Initialize_539 --
   --------------------

   procedure Initialize_539 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_539;

   --------------------
   -- Initialize_540 --
   --------------------

   procedure Initialize_540 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_540;

   --------------------
   -- Initialize_541 --
   --------------------

   procedure Initialize_541 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_541;

   --------------------
   -- Initialize_542 --
   --------------------

   procedure Initialize_542 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_542;

   --------------------
   -- Initialize_543 --
   --------------------

   procedure Initialize_543 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_543;

   --------------------
   -- Initialize_544 --
   --------------------

   procedure Initialize_544 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_544;

   --------------------
   -- Initialize_545 --
   --------------------

   procedure Initialize_545 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_545;

   --------------------
   -- Initialize_546 --
   --------------------

   procedure Initialize_546 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_546;

   --------------------
   -- Initialize_547 --
   --------------------

   procedure Initialize_547 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_547;

   --------------------
   -- Initialize_548 --
   --------------------

   procedure Initialize_548 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_548;

   --------------------
   -- Initialize_549 --
   --------------------

   procedure Initialize_549 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_549;

   --------------------
   -- Initialize_550 --
   --------------------

   procedure Initialize_550 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_550;

   --------------------
   -- Initialize_551 --
   --------------------

   procedure Initialize_551 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_551;

   --------------------
   -- Initialize_552 --
   --------------------

   procedure Initialize_552 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_552;

   --------------------
   -- Initialize_553 --
   --------------------

   procedure Initialize_553 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_553;

   --------------------
   -- Initialize_554 --
   --------------------

   procedure Initialize_554 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_554;

   --------------------
   -- Initialize_555 --
   --------------------

   procedure Initialize_555 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_555;

   --------------------
   -- Initialize_556 --
   --------------------

   procedure Initialize_556 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_556;

   --------------------
   -- Initialize_557 --
   --------------------

   procedure Initialize_557 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_557;

   --------------------
   -- Initialize_558 --
   --------------------

   procedure Initialize_558 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_558;

   --------------------
   -- Initialize_559 --
   --------------------

   procedure Initialize_559 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_559;

   --------------------
   -- Initialize_560 --
   --------------------

   procedure Initialize_560 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_560;

   --------------------
   -- Initialize_561 --
   --------------------

   procedure Initialize_561 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_561;

   --------------------
   -- Initialize_562 --
   --------------------

   procedure Initialize_562 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_562;

   --------------------
   -- Initialize_563 --
   --------------------

   procedure Initialize_563 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_563;

   --------------------
   -- Initialize_564 --
   --------------------

   procedure Initialize_564 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_564;

   --------------------
   -- Initialize_565 --
   --------------------

   procedure Initialize_565 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_565;

   --------------------
   -- Initialize_566 --
   --------------------

   procedure Initialize_566 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_566;

   --------------------
   -- Initialize_567 --
   --------------------

   procedure Initialize_567 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_567;

   --------------------
   -- Initialize_568 --
   --------------------

   procedure Initialize_568 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_568;

   --------------------
   -- Initialize_569 --
   --------------------

   procedure Initialize_569 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_569;

   --------------------
   -- Initialize_570 --
   --------------------

   procedure Initialize_570 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_570;

   --------------------
   -- Initialize_571 --
   --------------------

   procedure Initialize_571 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_571;

   --------------------
   -- Initialize_572 --
   --------------------

   procedure Initialize_572 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_572;

   --------------------
   -- Initialize_573 --
   --------------------

   procedure Initialize_573 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_573;

   --------------------
   -- Initialize_574 --
   --------------------

   procedure Initialize_574 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_574;

   --------------------
   -- Initialize_575 --
   --------------------

   procedure Initialize_575 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_575;

   --------------------
   -- Initialize_576 --
   --------------------

   procedure Initialize_576 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_576;

   --------------------
   -- Initialize_577 --
   --------------------

   procedure Initialize_577 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_577;

   --------------------
   -- Initialize_578 --
   --------------------

   procedure Initialize_578 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_578;

   --------------------
   -- Initialize_579 --
   --------------------

   procedure Initialize_579 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_579;

   --------------------
   -- Initialize_580 --
   --------------------

   procedure Initialize_580 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_580;

   --------------------
   -- Initialize_581 --
   --------------------

   procedure Initialize_581 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_581;

   --------------------
   -- Initialize_582 --
   --------------------

   procedure Initialize_582 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_582;

   --------------------
   -- Initialize_583 --
   --------------------

   procedure Initialize_583 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_583;

   --------------------
   -- Initialize_584 --
   --------------------

   procedure Initialize_584 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_584;

   --------------------
   -- Initialize_585 --
   --------------------

   procedure Initialize_585 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_585;

   --------------------
   -- Initialize_586 --
   --------------------

   procedure Initialize_586 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_586;

   --------------------
   -- Initialize_587 --
   --------------------

   procedure Initialize_587 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_587;

   --------------------
   -- Initialize_588 --
   --------------------

   procedure Initialize_588 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_588;

   --------------------
   -- Initialize_589 --
   --------------------

   procedure Initialize_589 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_589;

   --------------------
   -- Initialize_590 --
   --------------------

   procedure Initialize_590 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_590;

   --------------------
   -- Initialize_591 --
   --------------------

   procedure Initialize_591 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_591;

   --------------------
   -- Initialize_592 --
   --------------------

   procedure Initialize_592 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_592;

   --------------------
   -- Initialize_593 --
   --------------------

   procedure Initialize_593 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_593;

   --------------------
   -- Initialize_594 --
   --------------------

   procedure Initialize_594 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_594;

   --------------------
   -- Initialize_595 --
   --------------------

   procedure Initialize_595 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_595;

   --------------------
   -- Initialize_596 --
   --------------------

   procedure Initialize_596 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_596;

   --------------------
   -- Initialize_597 --
   --------------------

   procedure Initialize_597 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_597;

   --------------------
   -- Initialize_598 --
   --------------------

   procedure Initialize_598 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_598;

   --------------------
   -- Initialize_599 --
   --------------------

   procedure Initialize_599 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_599;

   --------------------
   -- Initialize_600 --
   --------------------

   procedure Initialize_600 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_600;

   --------------------
   -- Initialize_601 --
   --------------------

   procedure Initialize_601 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_601;

   --------------------
   -- Initialize_602 --
   --------------------

   procedure Initialize_602 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_602;

   --------------------
   -- Initialize_603 --
   --------------------

   procedure Initialize_603 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_603;

   --------------------
   -- Initialize_604 --
   --------------------

   procedure Initialize_604 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_604;

   --------------------
   -- Initialize_605 --
   --------------------

   procedure Initialize_605 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_605;

   --------------------
   -- Initialize_606 --
   --------------------

   procedure Initialize_606 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_606;

   --------------------
   -- Initialize_607 --
   --------------------

   procedure Initialize_607 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_607;

   --------------------
   -- Initialize_608 --
   --------------------

   procedure Initialize_608 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_608;

   --------------------
   -- Initialize_609 --
   --------------------

   procedure Initialize_609 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_609;

   --------------------
   -- Initialize_610 --
   --------------------

   procedure Initialize_610 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_610;

   --------------------
   -- Initialize_611 --
   --------------------

   procedure Initialize_611 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_611;

   --------------------
   -- Initialize_612 --
   --------------------

   procedure Initialize_612 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_612;

   --------------------
   -- Initialize_613 --
   --------------------

   procedure Initialize_613 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_613;

   --------------------
   -- Initialize_614 --
   --------------------

   procedure Initialize_614 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_614;

   --------------------
   -- Initialize_615 --
   --------------------

   procedure Initialize_615 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_615;

   --------------------
   -- Initialize_616 --
   --------------------

   procedure Initialize_616 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_616;

   --------------------
   -- Initialize_617 --
   --------------------

   procedure Initialize_617 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_617;

   --------------------
   -- Initialize_618 --
   --------------------

   procedure Initialize_618 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_618;

   --------------------
   -- Initialize_619 --
   --------------------

   procedure Initialize_619 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_619;

   --------------------
   -- Initialize_620 --
   --------------------

   procedure Initialize_620 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_620;

   --------------------
   -- Initialize_621 --
   --------------------

   procedure Initialize_621 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_621;

   --------------------
   -- Initialize_622 --
   --------------------

   procedure Initialize_622 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_622;

   --------------------
   -- Initialize_623 --
   --------------------

   procedure Initialize_623 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_623;

   --------------------
   -- Initialize_624 --
   --------------------

   procedure Initialize_624 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_624;

   --------------------
   -- Initialize_625 --
   --------------------

   procedure Initialize_625 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_625;

   --------------------
   -- Initialize_626 --
   --------------------

   procedure Initialize_626 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_626;

   --------------------
   -- Initialize_627 --
   --------------------

   procedure Initialize_627 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_627;

   --------------------
   -- Initialize_628 --
   --------------------

   procedure Initialize_628 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_628;

   --------------------
   -- Initialize_629 --
   --------------------

   procedure Initialize_629 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_629;

   --------------------
   -- Initialize_630 --
   --------------------

   procedure Initialize_630 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_630;

   --------------------
   -- Initialize_631 --
   --------------------

   procedure Initialize_631 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_631;

   --------------------
   -- Initialize_632 --
   --------------------

   procedure Initialize_632 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_632;

   --------------------
   -- Initialize_633 --
   --------------------

   procedure Initialize_633 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_633;

   --------------------
   -- Initialize_634 --
   --------------------

   procedure Initialize_634 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_634;

   --------------------
   -- Initialize_635 --
   --------------------

   procedure Initialize_635 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_635;

   --------------------
   -- Initialize_636 --
   --------------------

   procedure Initialize_636 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_636;

   --------------------
   -- Initialize_637 --
   --------------------

   procedure Initialize_637 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_637;

   --------------------
   -- Initialize_638 --
   --------------------

   procedure Initialize_638 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_638;

   --------------------
   -- Initialize_639 --
   --------------------

   procedure Initialize_639 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_639;

   --------------------
   -- Initialize_640 --
   --------------------

   procedure Initialize_640 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_640;

   --------------------
   -- Initialize_641 --
   --------------------

   procedure Initialize_641 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_641;

   --------------------
   -- Initialize_642 --
   --------------------

   procedure Initialize_642 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_642;

   --------------------
   -- Initialize_643 --
   --------------------

   procedure Initialize_643 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_643;

   --------------------
   -- Initialize_644 --
   --------------------

   procedure Initialize_644 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_644;

   --------------------
   -- Initialize_645 --
   --------------------

   procedure Initialize_645 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_645;

   --------------------
   -- Initialize_646 --
   --------------------

   procedure Initialize_646 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_646;

   --------------------
   -- Initialize_647 --
   --------------------

   procedure Initialize_647 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_647;

   --------------------
   -- Initialize_648 --
   --------------------

   procedure Initialize_648 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_648;

   --------------------
   -- Initialize_649 --
   --------------------

   procedure Initialize_649 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_649;

   --------------------
   -- Initialize_650 --
   --------------------

   procedure Initialize_650 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_650;

   --------------------
   -- Initialize_651 --
   --------------------

   procedure Initialize_651 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_651;

   --------------------
   -- Initialize_652 --
   --------------------

   procedure Initialize_652 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_652;

   --------------------
   -- Initialize_653 --
   --------------------

   procedure Initialize_653 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_653;

   --------------------
   -- Initialize_654 --
   --------------------

   procedure Initialize_654 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_654;

   --------------------
   -- Initialize_655 --
   --------------------

   procedure Initialize_655 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_655;

   --------------------
   -- Initialize_656 --
   --------------------

   procedure Initialize_656 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_656;

   --------------------
   -- Initialize_657 --
   --------------------

   procedure Initialize_657 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_657;

   --------------------
   -- Initialize_658 --
   --------------------

   procedure Initialize_658 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_658;

   --------------------
   -- Initialize_659 --
   --------------------

   procedure Initialize_659 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_659;

   --------------------
   -- Initialize_660 --
   --------------------

   procedure Initialize_660 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_660;

   --------------------
   -- Initialize_661 --
   --------------------

   procedure Initialize_661 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_661;

   --------------------
   -- Initialize_662 --
   --------------------

   procedure Initialize_662 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_662;

   --------------------
   -- Initialize_663 --
   --------------------

   procedure Initialize_663 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_663;

   --------------------
   -- Initialize_664 --
   --------------------

   procedure Initialize_664 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_664;

   --------------------
   -- Initialize_665 --
   --------------------

   procedure Initialize_665 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_665;

   --------------------
   -- Initialize_666 --
   --------------------

   procedure Initialize_666 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_666;

   --------------------
   -- Initialize_667 --
   --------------------

   procedure Initialize_667 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_667;

   --------------------
   -- Initialize_668 --
   --------------------

   procedure Initialize_668 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_668;

   --------------------
   -- Initialize_669 --
   --------------------

   procedure Initialize_669 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_669;

   --------------------
   -- Initialize_670 --
   --------------------

   procedure Initialize_670 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_670;

   --------------------
   -- Initialize_671 --
   --------------------

   procedure Initialize_671 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_671;

   --------------------
   -- Initialize_672 --
   --------------------

   procedure Initialize_672 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_672;

   --------------------
   -- Initialize_673 --
   --------------------

   procedure Initialize_673 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_673;

   --------------------
   -- Initialize_674 --
   --------------------

   procedure Initialize_674 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_674;

   --------------------
   -- Initialize_675 --
   --------------------

   procedure Initialize_675 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_675;

   --------------------
   -- Initialize_676 --
   --------------------

   procedure Initialize_676 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_676;

   --------------------
   -- Initialize_677 --
   --------------------

   procedure Initialize_677 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_677;

   --------------------
   -- Initialize_678 --
   --------------------

   procedure Initialize_678 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_678;

   --------------------
   -- Initialize_679 --
   --------------------

   procedure Initialize_679 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_679;

   --------------------
   -- Initialize_680 --
   --------------------

   procedure Initialize_680 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_680;

   --------------------
   -- Initialize_681 --
   --------------------

   procedure Initialize_681 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_681;

   --------------------
   -- Initialize_682 --
   --------------------

   procedure Initialize_682 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_682;

   --------------------
   -- Initialize_683 --
   --------------------

   procedure Initialize_683 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_683;

   --------------------
   -- Initialize_684 --
   --------------------

   procedure Initialize_684 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_684;

   --------------------
   -- Initialize_685 --
   --------------------

   procedure Initialize_685 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_685;

   --------------------
   -- Initialize_686 --
   --------------------

   procedure Initialize_686 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_686;

   --------------------
   -- Initialize_687 --
   --------------------

   procedure Initialize_687 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_687;

   --------------------
   -- Initialize_688 --
   --------------------

   procedure Initialize_688 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_688;

   --------------------
   -- Initialize_689 --
   --------------------

   procedure Initialize_689 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_689;

   --------------------
   -- Initialize_690 --
   --------------------

   procedure Initialize_690 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_690;

   --------------------
   -- Initialize_691 --
   --------------------

   procedure Initialize_691 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_691;

   --------------------
   -- Initialize_692 --
   --------------------

   procedure Initialize_692 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_692;

   --------------------
   -- Initialize_693 --
   --------------------

   procedure Initialize_693 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_693;

   --------------------
   -- Initialize_694 --
   --------------------

   procedure Initialize_694 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_694;

   --------------------
   -- Initialize_695 --
   --------------------

   procedure Initialize_695 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_695;

   --------------------
   -- Initialize_696 --
   --------------------

   procedure Initialize_696 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_696;

   --------------------
   -- Initialize_697 --
   --------------------

   procedure Initialize_697 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_697;

   --------------------
   -- Initialize_698 --
   --------------------

   procedure Initialize_698 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_698;

   --------------------
   -- Initialize_699 --
   --------------------

   procedure Initialize_699 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_699;

   --------------------
   -- Initialize_700 --
   --------------------

   procedure Initialize_700 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_700;

   --------------------
   -- Initialize_701 --
   --------------------

   procedure Initialize_701 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_701;

   --------------------
   -- Initialize_702 --
   --------------------

   procedure Initialize_702 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_702;

   --------------------
   -- Initialize_703 --
   --------------------

   procedure Initialize_703 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_703;

   --------------------
   -- Initialize_704 --
   --------------------

   procedure Initialize_704 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_704;

   --------------------
   -- Initialize_705 --
   --------------------

   procedure Initialize_705 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_705;

   --------------------
   -- Initialize_706 --
   --------------------

   procedure Initialize_706 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_706;

   --------------------
   -- Initialize_707 --
   --------------------

   procedure Initialize_707 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_707;

   --------------------
   -- Initialize_708 --
   --------------------

   procedure Initialize_708 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_708;

   --------------------
   -- Initialize_709 --
   --------------------

   procedure Initialize_709 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_709;

   --------------------
   -- Initialize_710 --
   --------------------

   procedure Initialize_710 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_710;

   --------------------
   -- Initialize_711 --
   --------------------

   procedure Initialize_711 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_711;

   --------------------
   -- Initialize_712 --
   --------------------

   procedure Initialize_712 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_712;

   --------------------
   -- Initialize_713 --
   --------------------

   procedure Initialize_713 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_713;

   --------------------
   -- Initialize_714 --
   --------------------

   procedure Initialize_714 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_714;

   --------------------
   -- Initialize_715 --
   --------------------

   procedure Initialize_715 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_715;

   --------------------
   -- Initialize_716 --
   --------------------

   procedure Initialize_716 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_716;

   --------------------
   -- Initialize_717 --
   --------------------

   procedure Initialize_717 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_717;

   --------------------
   -- Initialize_718 --
   --------------------

   procedure Initialize_718 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_718;

   --------------------
   -- Initialize_719 --
   --------------------

   procedure Initialize_719 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_719;

   --------------------
   -- Initialize_720 --
   --------------------

   procedure Initialize_720 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_720;

   --------------------
   -- Initialize_721 --
   --------------------

   procedure Initialize_721 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_721;

   --------------------
   -- Initialize_722 --
   --------------------

   procedure Initialize_722 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_722;

   --------------------
   -- Initialize_723 --
   --------------------

   procedure Initialize_723 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_723;

   --------------------
   -- Initialize_724 --
   --------------------

   procedure Initialize_724 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_724;

   --------------------
   -- Initialize_725 --
   --------------------

   procedure Initialize_725 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_725;

   --------------------
   -- Initialize_726 --
   --------------------

   procedure Initialize_726 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_726;

   --------------------
   -- Initialize_727 --
   --------------------

   procedure Initialize_727 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_727;

   --------------------
   -- Initialize_728 --
   --------------------

   procedure Initialize_728 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_728;

   --------------------
   -- Initialize_729 --
   --------------------

   procedure Initialize_729 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_729;

   --------------------
   -- Initialize_730 --
   --------------------

   procedure Initialize_730 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_730;

   --------------------
   -- Initialize_731 --
   --------------------

   procedure Initialize_731 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_731;

   --------------------
   -- Initialize_732 --
   --------------------

   procedure Initialize_732 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_732;

   --------------------
   -- Initialize_733 --
   --------------------

   procedure Initialize_733 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_733;

   --------------------
   -- Initialize_734 --
   --------------------

   procedure Initialize_734 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_734;

   --------------------
   -- Initialize_735 --
   --------------------

   procedure Initialize_735 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_735;

   --------------------
   -- Initialize_736 --
   --------------------

   procedure Initialize_736 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_736;

   --------------------
   -- Initialize_737 --
   --------------------

   procedure Initialize_737 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_737;

   --------------------
   -- Initialize_738 --
   --------------------

   procedure Initialize_738 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_738;

   --------------------
   -- Initialize_739 --
   --------------------

   procedure Initialize_739 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_739;

   --------------------
   -- Initialize_740 --
   --------------------

   procedure Initialize_740 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_740;

   --------------------
   -- Initialize_741 --
   --------------------

   procedure Initialize_741 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_741;

   --------------------
   -- Initialize_742 --
   --------------------

   procedure Initialize_742 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_742;

   --------------------
   -- Initialize_743 --
   --------------------

   procedure Initialize_743 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_743;

   --------------------
   -- Initialize_744 --
   --------------------

   procedure Initialize_744 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_744;

   --------------------
   -- Initialize_745 --
   --------------------

   procedure Initialize_745 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_745;

   --------------------
   -- Initialize_746 --
   --------------------

   procedure Initialize_746 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_746;

   --------------------
   -- Initialize_747 --
   --------------------

   procedure Initialize_747 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_747;

   --------------------
   -- Initialize_748 --
   --------------------

   procedure Initialize_748 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_748;

   --------------------
   -- Initialize_749 --
   --------------------

   procedure Initialize_749 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_749;

   --------------------
   -- Initialize_750 --
   --------------------

   procedure Initialize_750 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_750;

   --------------------
   -- Initialize_751 --
   --------------------

   procedure Initialize_751 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_751;

   --------------------
   -- Initialize_752 --
   --------------------

   procedure Initialize_752 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_752;

   --------------------
   -- Initialize_753 --
   --------------------

   procedure Initialize_753 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_753;

   --------------------
   -- Initialize_754 --
   --------------------

   procedure Initialize_754 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_754;

   --------------------
   -- Initialize_755 --
   --------------------

   procedure Initialize_755 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_755;

   --------------------
   -- Initialize_756 --
   --------------------

   procedure Initialize_756 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_756;

   --------------------
   -- Initialize_757 --
   --------------------

   procedure Initialize_757 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_757;

   --------------------
   -- Initialize_758 --
   --------------------

   procedure Initialize_758 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_758;

   --------------------
   -- Initialize_759 --
   --------------------

   procedure Initialize_759 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_759;

   --------------------
   -- Initialize_760 --
   --------------------

   procedure Initialize_760 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_760;

   --------------------
   -- Initialize_761 --
   --------------------

   procedure Initialize_761 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_761;

   --------------------
   -- Initialize_762 --
   --------------------

   procedure Initialize_762 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_762;

   --------------------
   -- Initialize_763 --
   --------------------

   procedure Initialize_763 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_763;

   --------------------
   -- Initialize_764 --
   --------------------

   procedure Initialize_764 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_764;

   --------------------
   -- Initialize_765 --
   --------------------

   procedure Initialize_765 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_765;

   --------------------
   -- Initialize_766 --
   --------------------

   procedure Initialize_766 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_766;

   --------------------
   -- Initialize_767 --
   --------------------

   procedure Initialize_767 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_767;

   --------------------
   -- Initialize_768 --
   --------------------

   procedure Initialize_768 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_768;

   --------------------
   -- Initialize_769 --
   --------------------

   procedure Initialize_769 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_769;

   --------------------
   -- Initialize_770 --
   --------------------

   procedure Initialize_770 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_770;

   --------------------
   -- Initialize_771 --
   --------------------

   procedure Initialize_771 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_771;

   --------------------
   -- Initialize_772 --
   --------------------

   procedure Initialize_772 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_772;

   --------------------
   -- Initialize_773 --
   --------------------

   procedure Initialize_773 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_773;

   --------------------
   -- Initialize_774 --
   --------------------

   procedure Initialize_774 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_774;

   --------------------
   -- Initialize_775 --
   --------------------

   procedure Initialize_775 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_775;

   --------------------
   -- Initialize_776 --
   --------------------

   procedure Initialize_776 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_776;

   --------------------
   -- Initialize_777 --
   --------------------

   procedure Initialize_777 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_777;

   --------------------
   -- Initialize_778 --
   --------------------

   procedure Initialize_778 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_778;

   --------------------
   -- Initialize_779 --
   --------------------

   procedure Initialize_779 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_779;

   --------------------
   -- Initialize_780 --
   --------------------

   procedure Initialize_780 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_780;

   --------------------
   -- Initialize_781 --
   --------------------

   procedure Initialize_781 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_781;

   --------------------
   -- Initialize_782 --
   --------------------

   procedure Initialize_782 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_782;

   --------------------
   -- Initialize_783 --
   --------------------

   procedure Initialize_783 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_783;

   --------------------
   -- Initialize_784 --
   --------------------

   procedure Initialize_784 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_784;

   --------------------
   -- Initialize_785 --
   --------------------

   procedure Initialize_785 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_785;

   --------------------
   -- Initialize_786 --
   --------------------

   procedure Initialize_786 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_786;

   --------------------
   -- Initialize_787 --
   --------------------

   procedure Initialize_787 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_787;

   --------------------
   -- Initialize_788 --
   --------------------

   procedure Initialize_788 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_788;

   --------------------
   -- Initialize_789 --
   --------------------

   procedure Initialize_789 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_789;

   --------------------
   -- Initialize_790 --
   --------------------

   procedure Initialize_790 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_790;

   --------------------
   -- Initialize_791 --
   --------------------

   procedure Initialize_791 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_791;

   --------------------
   -- Initialize_792 --
   --------------------

   procedure Initialize_792 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_792;

   --------------------
   -- Initialize_793 --
   --------------------

   procedure Initialize_793 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_793;

   --------------------
   -- Initialize_794 --
   --------------------

   procedure Initialize_794 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_794;

   --------------------
   -- Initialize_795 --
   --------------------

   procedure Initialize_795 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_795;

   --------------------
   -- Initialize_796 --
   --------------------

   procedure Initialize_796 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_796;

   --------------------
   -- Initialize_797 --
   --------------------

   procedure Initialize_797 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_797;

   --------------------
   -- Initialize_798 --
   --------------------

   procedure Initialize_798 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_798;

   --------------------
   -- Initialize_799 --
   --------------------

   procedure Initialize_799 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_799;

   --------------------
   -- Initialize_800 --
   --------------------

   procedure Initialize_800 (Extent : AMF.Internals.AMF_Extent) is
      Aux : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
   end Initialize_800;

end AMF.Internals.Tables.CMOF_Metamodel.Objects;
