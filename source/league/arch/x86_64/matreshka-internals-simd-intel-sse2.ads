------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
with System;

package Matreshka.Internals.SIMD.Intel.SSE2 is

   pragma Pure;

--  _mm_set_sd

--  _mm_set1_pd

--  _mm_set_pd1

--  _mm_set_pd

--  _mm_setr_pd

--  _mm_setzero_pd

   function mm_move_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_move_sd, "__builtin_ia32_movsd");

--  _mm_load_pd

   function mm_loadu_pd (P : access Interfaces.IEEE_Float_64) return v2df;
   pragma Import (Intrinsic, mm_loadu_pd, "__builtin_ia32_loadupd");

--  _mm_load1_pd

--  _mm_load_sd

--  _mm_load_pd1

--  _mm_loadr_pd

--  _mm_store_pd

   procedure mm_store_pd (P : access Interfaces.IEEE_Float_64; A : v2df);
   pragma Import (Intrinsic, mm_store_pd, "__builtin_ia32_storeupd");

--  _mm_store_sd

--  _mm_cvtsd_f64

--  _mm_storel_pd

--  _mm_storeh_pd

--  _mm_store1_pd

--  _mm_store_pd1

--  _mm_storer_pd

--  _mm_cvtsi128_si32

--  _mm_cvtsi128_si64

--  _mm_cvtsi128_si64x

   function mm_add_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_add_pd, "__builtin_ia32_addpd");

   function mm_add_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_add_sd, "__builtin_ia32_addsd");

   function mm_sub_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_sub_pd, "__builtin_ia32_subpd");

   function mm_sub_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_sub_sd, "__builtin_ia32_subsd");

   function mm_mul_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_mul_pd, "__builtin_ia32_mulpd");

   function mm_mul_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_mul_sd, "__builtin_ia32_mulsd");

   function mm_div_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_div_pd, "__builtin_ia32_divpd");

   function mm_div_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_div_sd, "__builtin_ia32_divsd");

   function mm_sqrt_pd (A : v2df) return v2df;
   pragma Import (Intrinsic, mm_sqrt_pd, "__builtin_ia32_sqrtpd");

--  _mm_sqrt_sd

   function mm_min_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_min_pd, "__builtin_ia32_minpd");

   function mm_min_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_min_sd, "__builtin_ia32_minsd");

   function mm_max_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_max_pd, "__builtin_ia32_maxpd");

   function mm_max_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_max_sd, "__builtin_ia32_maxsd");

   function mm_and_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_and_pd, "__builtin_ia32_andpd");

   function mm_andnot_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_andnot_pd, "__builtin_ia32_andnpd");

   function mm_or_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_or_pd, "__builtin_ia32_orpd");

   function mm_xor_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_xor_pd, "__builtin_ia32_xorpd");

   function mm_cmpeq_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpeq_pd, "__builtin_ia32_cmpeqpd");

   function mm_cmplt_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmplt_pd, "__builtin_ia32_cmpltpd");

   function mm_cmple_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmple_pd, "__builtin_ia32_cmplepd");

   function mm_cmpgt_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpgt_pd, "__builtin_ia32_cmpgtpd");

   function mm_cmpge_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpge_pd, "__builtin_ia32_cmpgepd");

   function mm_cmpneq_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpneq_pd, "__builtin_ia32_cmpneqpd");

   function mm_cmpnlt_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpnlt_pd, "__builtin_ia32_cmpnltpd");

   function mm_cmpnle_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpnle_pd, "__builtin_ia32_cmpnlepd");

   function mm_cmpngt_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpngt_pd, "__builtin_ia32_cmpngtpd");

   function mm_cmpnge_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpnge_pd, "__builtin_ia32_cmpngepd");

   function mm_cmpord_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpord_pd, "__builtin_ia32_cmpordpd");

   function mm_cmpunord_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpunord_pd, "__builtin_ia32_cmpunordpd");

   function mm_cmpeq_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpeq_sd, "__builtin_ia32_cmpeqsd");

   function mm_cmplt_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmplt_sd, "__builtin_ia32_cmpltsd");

   function mm_cmple_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmple_sd, "__builtin_ia32_cmplesd");

--  _mm_cmpgt_sd

--  _mm_cmpge_sd

   function mm_cmpneq_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpneq_sd, "__builtin_ia32_cmpneqsd");

   function mm_cmpnlt_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpnlt_sd, "__builtin_ia32_cmpnltsd");

   function mm_cmpnle_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpnle_sd, "__builtin_ia32_cmpnlesd");

--  _mm_cmpngt_sd

--  _mm_cmpnge_sd

   function mm_cmpord_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpord_sd, "__builtin_ia32_cmpordsd");

   function mm_cmpunord_sd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_cmpunord_sd, "__builtin_ia32_cmpunordsd");

   function mm_comieq_sd (A : v2df; B : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_comieq_sd, "__builtin_ia32_comisdeq");

   function mm_comilt_sd (A : v2df; B : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_comilt_sd, "__builtin_ia32_comisdlt");

   function mm_comile_sd (A : v2df; B : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_comile_sd, "__builtin_ia32_comisdle");

   function mm_comigt_sd (A : v2df; B : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_comigt_sd, "__builtin_ia32_comisdgt");

   function mm_comige_sd (A : v2df; B : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_comige_sd, "__builtin_ia32_comisdge");

   function mm_comineq_sd (A : v2df; B : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_comineq_sd, "__builtin_ia32_comisdneq");

   function mm_ucomieq_sd (A : v2df; B : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_ucomieq_sd, "__builtin_ia32_ucomisdeq");

   function mm_ucomilt_sd (A : v2df; B : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_ucomilt_sd, "__builtin_ia32_ucomisdlt");

   function mm_ucomile_sd (A : v2df; B : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_ucomile_sd, "__builtin_ia32_ucomisdle");

   function mm_ucomigt_sd (A : v2df; B : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_ucomigt_sd, "__builtin_ia32_ucomisdgt");

   function mm_ucomige_sd (A : v2df; B : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_ucomige_sd, "__builtin_ia32_ucomisdge");

   function mm_ucomineq_sd (A : v2df; B : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_ucomineq_sd, "__builtin_ia32_ucomisdneq");

--  _mm_set_epi64x

--  _mm_set_epi64

--  _mm_set_epi32

--  _mm_set_epi16

--  _mm_set_epi8

--  _mm_set1_epi64x

--  _mm_set1_epi64

--  _mm_set1_epi32

--  _mm_set_epi32

--  _mm_set1_epi16

--  _mm_set1_epi8

--  _mm_setr_epi64

--  _mm_setr_epi32

--  _mm_setr_epi16

--  _mm_setr_epi8

--  _mm_load_si128

   function mm_loadu_si128 (P : access v2di) return v16qi;
   pragma Import (Intrinsic, mm_loadu_si128, "__builtin_ia32_loaddqu");

--  _mm_loadl_epi64

--  _mm_store_si128

   procedure mm_storeu_si128 (P : access v2di; B : v16qi);
   pragma Import (Intrinsic, mm_storeu_si128, "__builtin_ia32_storedqu");

--  _mm_storel_epi64

--  _mm_movepi64_pi64

--  _mm_movpi64_epi64

   function mm_move_epi64 (A : v2di) return v2di;
   pragma Import (Intrinsic, mm_move_epi64, "__builtin_ia32_movq128");

--  _mm_setzero_si128

   function mm_cvtepi32_pd (A : v4si) return v2df;
   pragma Import (Intrinsic, mm_cvtepi32_pd, "__builtin_ia32_cvtdq2pd");

   function mm_cvtepi32_ps (A : v4si) return v4sf;
   pragma Import (Intrinsic, mm_cvtepi32_ps, "__builtin_ia32_cvtdq2ps");

   function mm_cvtpd_epi32 (A : v2df) return v4si;
   pragma Import (Intrinsic, mm_cvtpd_epi32, "__builtin_ia32_cvtpd2dq");

   function mm_cvtpd_pi32 (A : v2df) return v2si;
   pragma Import (Intrinsic, mm_cvtpd_pi32, "__builtin_ia32_cvtpd2pi");

   function mm_cvtpd_ps (A : v2df) return v4sf;
   pragma Import (Intrinsic, mm_cvtpd_ps, "__builtin_ia32_cvtpd2ps");

   function mm_cvttpd_epi32 (A : v2df) return v4si;
   pragma Import (Intrinsic, mm_cvttpd_epi32, "__builtin_ia32_cvttpd2dq");

   function mm_cvttpd_pi32 (A : v2df) return v2si;
   pragma Import (Intrinsic, mm_cvttpd_pi32, "__builtin_ia32_cvttpd2pi");

   function mm_cvtpi32_pd (A : v2si) return v2df;
   pragma Import (Intrinsic, mm_cvtpi32_pd, "__builtin_ia32_cvtpi2pd");

   function mm_cvtps_epi32 (A : v4sf) return v4si;
   pragma Import (Intrinsic, mm_cvtps_epi32, "__builtin_ia32_cvtps2dq");

   function mm_cvttps_epi32 (A : v4sf) return v4si;
   pragma Import (Intrinsic, mm_cvttps_epi32, "__builtin_ia32_cvttps2dq");

   function mm_cvtps_pd (A : v4sf) return v2df;
   pragma Import (Intrinsic, mm_cvtps_pd, "__builtin_ia32_cvtps2pd");

   function mm_cvtsd_si32 (A : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_cvtsd_si32, "__builtin_ia32_cvtsd2si");

   function mm_cvtsd_si64 (A : v2df) return Interfaces.Integer_64;
   pragma Import (Intrinsic, mm_cvtsd_si64, "__builtin_ia32_cvtsd2si64");
   --  x86_64

   function mm_cvtsd_si64x (A : v2df) return Interfaces.Integer_64;
   pragma Import (Intrinsic, mm_cvtsd_si64x, "__builtin_ia32_cvtsd2si64");
   --  x86_64

   function mm_cvttsd_si32 (A : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_cvttsd_si32, "__builtin_ia32_cvttsd2si");

   function mm_cvttsd_si64 (A : v2df) return Interfaces.Integer_64;
   pragma Import (Intrinsic, mm_cvttsd_si64, "__builtin_ia32_cvttsd2si64");
   --  x86_64

   function mm_cvttsd_si64x (A : v2df) return Interfaces.Integer_64;
   pragma Import (Intrinsic, mm_cvttsd_si64x, "__builtin_ia32_cvttsd2si64");
   --  x86_64

   function mm_cvtsd_ss (A : v4sf; B : v2df) return v4sf;
   pragma Import (Intrinsic, mm_cvtsd_ss, "__builtin_ia32_cvtsd2ss");

   function mm_cvtsi32_sd (A : v2df; B : Interfaces.Integer_32) return v2df;
   pragma Import (Intrinsic, mm_cvtsi32_sd, "__builtin_ia32_cvtsi2sd");

   function mm_cvtsi64_sd (A : v2df; B : Interfaces.Integer_64) return v2df;
   pragma Import (Intrinsic, mm_cvtsi64_sd, "__builtin_ia32_cvtsi642sd");
   --  x86_64

   function mm_cvtsi64x_sd (A : v2df; B : Interfaces.Integer_64) return v2df;
   pragma Import (Intrinsic, mm_cvtsi64x_sd, "__builtin_ia32_cvtsi642sd");
   --  x86_64

   function mm_cvtss_sd (A : v2df; B : v4sf) return v2df;
   pragma Import (Intrinsic, mm_cvtss_sd, "__builtin_ia32_cvtss2sd");

   function mm_shuffle_pd
    (A : v2df; B : v2df; Mask : Interfaces.Integer_32) return v2df;
   pragma Import (Intrinsic, mm_shuffle_pd, "__builtin_ia32_shufpd");

   function mm_unpackhi_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_unpackhi_pd, "__builtin_ia32_unpckhpd");

   function mm_unpacklo_pd (A : v2df; B : v2df) return v2df;
   pragma Import (Intrinsic, mm_unpacklo_pd, "__builtin_ia32_unpcklpd");

   function mm_loadh_pd (A : v2df; B : access Interfaces.IEEE_Float_64) return v2df;
   pragma Import (Intrinsic, mm_loadh_pd, "__builtin_ia32_loadhpd");

   function mm_loadl_pd (A : v2df; B : access Interfaces.IEEE_Float_64) return v2df;
   pragma Import (Intrinsic, mm_loadl_pd, "__builtin_ia32_loadlpd");

   function mm_movemask_pd (A : v2df) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_movemask_pd, "__builtin_ia32_movmskpd");

   function mm_packs_epi16 (A : v8hi; B : v8hi) return v16qi;
   pragma Import (Intrinsic, mm_packs_epi16, "__builtin_ia32_packsswb128");

   function mm_packs_epi32 (A : v4si; B : v4si) return v8hi;
   pragma Import (Intrinsic, mm_packs_epi32, "__builtin_ia32_packssdw128");

   function mm_packus_epi16 (A : v8hi; B : v8hi) return v16qi;
   pragma Import (Intrinsic, mm_packus_epi16, "__builtin_ia32_packuswb128");

   function mm_unpackhi_epi8 (A : v16qi; B : v16qi) return v16qi;
   pragma Import (Intrinsic, mm_unpackhi_epi8, "__builtin_ia32_punpckhbw128");

   function mm_unpackhi_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_unpackhi_epi16, "__builtin_ia32_punpckhwd128");

   function mm_unpackhi_epi32 (A : v4si; B : v4si) return v4si;
   pragma Import (Intrinsic, mm_unpackhi_epi32, "__builtin_ia32_punpckhdq128");

   function mm_unpackhi_epi64 (A : v2di; B : v2di) return v2di;
   pragma Import (Intrinsic, mm_unpackhi_epi64, "__builtin_ia32_punpckhqdq128");

   function mm_unpacklo_epi8 (A : v16qi; B : v16qi) return v16qi;
   pragma Import (Intrinsic, mm_unpacklo_epi8, "__builtin_ia32_punpcklbw128");

   function mm_unpacklo_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_unpacklo_epi16, "__builtin_ia32_punpcklwd128");

   function mm_unpacklo_epi32 (A : v4si; B : v4si) return v4si;
   pragma Import (Intrinsic, mm_unpacklo_epi32, "__builtin_ia32_punpckldq128");

   function mm_unpacklo_epi64 (A : v2di; B : v2di) return v2di;
   pragma Import (Intrinsic, mm_unpacklo_epi64, "__builtin_ia32_punpcklqdq128");

   function mm_add_epi8 (A : v16qi; B : v16qi) return v16qi;
   pragma Import (Intrinsic, mm_add_epi8, "__builtin_ia32_paddb128");

   function mm_add_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_add_epi16, "__builtin_ia32_paddw128");

   function mm_add_epi32 (A : v4si; B : v4si) return v4si;
   pragma Import (Intrinsic, mm_add_epi32, "__builtin_ia32_paddd128");

   function mm_add_epi64 (A : v2di; B : v2di) return v2di;
   pragma Import (Intrinsic, mm_add_epi64, "__builtin_ia32_paddq128");

   function mm_adds_epi8 (A : v16qi; B : v16qi) return v16qi;
   pragma Import (Intrinsic, mm_adds_epi8, "__builtin_ia32_paddsb128");

   function mm_adds_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_adds_epi16, "__builtin_ia32_paddsw128");

   function mm_adds_epu8 (A : v16qi; B : v16qi) return v16qi;
   pragma Import (Intrinsic, mm_adds_epu8, "__builtin_ia32_paddusb128");

   function mm_adds_epu16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_adds_epu16, "__builtin_ia32_paddusw128");

   function mm_sub_epi8 (A : v16qi; B : v16qi) return v16qi;
   pragma Import (Intrinsic, mm_sub_epi8, "__builtin_ia32_psubb128");

   function mm_sub_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_sub_epi16, "__builtin_ia32_psubw128");

   function mm_sub_epi32 (A : v4si; B : v4si) return v4si;
   pragma Import (Intrinsic, mm_sub_epi32, "__builtin_ia32_psubd128");

   function mm_sub_epi64 (A : v2di; B : v2di) return v2di;
   pragma Import (Intrinsic, mm_sub_epi64, "__builtin_ia32_psubq128");

   function mm_subs_epi8 (A : v16qi; B : v16qi) return v16qi;
   pragma Import (Intrinsic, mm_subs_epi8, "__builtin_ia32_psubsb128");

   function mm_subs_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_subs_epi16, "__builtin_ia32_psubsw128");

   function mm_subs_epu8 (A : v16qi; B : v16qi) return v16qi;
   pragma Import (Intrinsic, mm_subs_epu8, "__builtin_ia32_psubusb128");

   function mm_subs_epu16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_subs_epu16, "__builtin_ia32_psubusw128");

   function mm_madd_epi16 (A : v8hi; B : v8hi) return v4si;
   pragma Import (Intrinsic, mm_madd_epi16, "__builtin_ia32_pmaddwd128");

   function mm_mulhi_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_mulhi_epi16, "__builtin_ia32_pmulhw128");

   function mm_mullo_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_mullo_epi16, "__builtin_ia32_pmullw128");

   function mm_mul_su32 (A : v2si; B : v2si) return v1di;
   pragma Import (Intrinsic, mm_mul_su32, "__builtin_ia32_pmuludq");

   function mm_mul_epu32 (A : v4si; B : v4si) return v2di;
   pragma Import (Intrinsic, mm_mul_epu32, "__builtin_ia32_pmuludq128");

   function mm_slli_epi16 (A : v8hi; B : Interfaces.Integer_32) return v8hi;
   pragma Import (Intrinsic, mm_slli_epi16, "__builtin_ia32_psllwi128");

   function mm_slli_epi32 (A : v4si; B : Interfaces.Integer_32) return v4si;
   pragma Import (Intrinsic, mm_slli_epi32, "__builtin_ia32_pslldi128");

   function mm_slli_epi64 (A : v2di; B : Interfaces.Integer_32) return v2di;
   pragma Import (Intrinsic, mm_slli_epi64, "__builtin_ia32_psllqi128");

   function mm_srai_epi16 (A : v8hi; B : Interfaces.Integer_32) return v8hi;
   pragma Import (Intrinsic, mm_srai_epi16, "__builtin_ia32_psrawi128");

   function mm_srai_epi32 (A : v4si; B : Interfaces.Integer_32) return v4si;
   pragma Import (Intrinsic, mm_srai_epi32, "__builtin_ia32_psradi128");

--  _mm_srli_si128

--  _mm_slli_si128

   function mm_srli_epi16 (A : v8hi; B : Interfaces.Integer_32) return v8hi;
   pragma Import (Intrinsic, mm_srli_epi16, "__builtin_ia32_psrlwi128");

   function mm_srli_epi32 (A : v4si; B : Interfaces.Integer_32) return v4si;
   pragma Import (Intrinsic, mm_srli_epi32, "__builtin_ia32_psrldi128");

   function mm_srli_epi64 (A : v2di; B : Interfaces.Integer_32) return v2di;
   pragma Import (Intrinsic, mm_srli_epi64, "__builtin_ia32_psrlqi128");

   function mm_sll_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_sll_epi16, "__builtin_ia32_psllw128");

   function mm_sll_epi32 (A : v4si; B : v4si) return v4si;
   pragma Import (Intrinsic, mm_sll_epi32, "__builtin_ia32_pslld128");

   function mm_sll_epi64 (A : v2di; B : v2di) return v2di;
   pragma Import (Intrinsic, mm_sll_epi64, "__builtin_ia32_psllq128");

   function mm_sra_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_sra_epi16, "__builtin_ia32_psraw128");

   function mm_sra_epi32 (A : v4si; B : v4si) return v4si;
   pragma Import (Intrinsic, mm_sra_epi32, "__builtin_ia32_psrad128");

   function mm_srl_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_srl_epi16, "__builtin_ia32_psrlw128");

   function mm_srl_epi32 (A : v4si; B : v4si) return v4si;
   pragma Import (Intrinsic, mm_srl_epi32, "__builtin_ia32_psrld128");

   function mm_srl_epi64 (A : v2di; B : v2di) return v2di;
   pragma Import (Intrinsic, mm_srl_epi64, "__builtin_ia32_psrlq128");

   function mm_and_si128 (A : v2di; B : v2di) return v2di;
   pragma Import (Intrinsic, mm_and_si128, "__builtin_ia32_pand128");

   function mm_andnot_si128 (A : v2di; B : v2di) return v2di;
   pragma Import (Intrinsic, mm_andnot_si128, "__builtin_ia32_pandn128");

   function mm_or_si128 (A : v2di; B : v2di) return v2di;
   pragma Import (Intrinsic, mm_or_si128, "__builtin_ia32_por128");

   function mm_xor_si128 (A : v2di; B : v2di) return v2di;
   pragma Import (Intrinsic, mm_xor_si128, "__builtin_ia32_pxor128");

   function mm_cmpeq_epi8 (A : v16qi; B : v16qi) return v16qi;
   pragma Import (Intrinsic, mm_cmpeq_epi8, "__builtin_ia32_pcmpeqb128");

   function mm_cmpeq_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_cmpeq_epi16, "__builtin_ia32_pcmpeqw128");

   function mm_cmpeq_epi32 (A : v4si; B : v4si) return v4si;
   pragma Import (Intrinsic, mm_cmpeq_epi32, "__builtin_ia32_pcmpeqd128");

--  _mm_cmplt_epi8

--  _mm_cmplt_epi16

--  _mm_cmplt_epi32

   function mm_cmpgt_epi8 (A : v16qi; B : v16qi) return v16qi;
   pragma Import (Intrinsic, mm_cmpgt_epi8, "__builtin_ia32_pcmpgtb128");

   function mm_cmpgt_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_cmpgt_epi16, "__builtin_ia32_pcmpgtw128");

   function mm_cmpgt_epi32 (A : v4si; B : v4si) return v4si;
   pragma Import (Intrinsic, mm_cmpgt_epi32, "__builtin_ia32_pcmpgtd128");

   function mm_extract_epi16
    (A : v8hi; N : Interfaces.Integer_32) return Interfaces.Integer_16;
   pragma Import (Intrinsic, mm_extract_epi16, "__builtin_ia32_vec_ext_v8hi");

   function mm_insert_epi16
    (A : v8hi;
     D : Interfaces.Integer_16;
     N : Interfaces.Integer_32) return v8hi;
   pragma Import (Intrinsic, mm_insert_epi16, "__builtin_ia32_vec_set_v8hi");

   function mm_max_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_max_epi16, "__builtin_ia32_pmaxsw128");

   function mm_max_epu8 (A : v16qi; B : v16qi) return v16qi;
   pragma Import (Intrinsic, mm_max_epu8, "__builtin_ia32_pmaxub128");

   function mm_min_epi16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_min_epi16, "__builtin_ia32_pminsw128");

   function mm_min_epu8 (A : v16qi; B : v16qi) return v16qi;
   pragma Import (Intrinsic, mm_min_epu8, "__builtin_ia32_pminub128");

   function mm_movemask_epi8 (A : v16qi) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_movemask_epi8, "__builtin_ia32_pmovmskb128");

   function mm_mulhi_epu16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_mulhi_epu16, "__builtin_ia32_pmulhuw128");

   function mm_shufflehi_epi16 (A : v8hi; Mask : Interfaces.Integer_32) return v8hi;
   pragma Import (Intrinsic, mm_shufflehi_epi16, "__builtin_ia32_pshufhw");

   function mm_shufflelo_epi16 (A : v8hi; Mask : Interfaces.Integer_32) return v8hi;
   pragma Import (Intrinsic, mm_shufflelo_epi16, "__builtin_ia32_pshuflw");

   function mm_shuffle_epi32 (A : v4si; Mask : Interfaces.Integer_32) return v4si;
   pragma Import (Intrinsic, mm_shuffle_epi32, "__builtin_ia32_pshufd");

   procedure mm_maskmoveu_si128 (A : v16qi; B : v16qi; C : access Interfaces.Integer_8);
   pragma Import (Intrinsic, mm_maskmoveu_si128, "__builtin_ia32_maskmovdqu");

   function mm_avg_epu8 (A : v16qi; B : v16qi) return v16qi;
   pragma Import (Intrinsic, mm_avg_epu8, "__builtin_ia32_pavgb128");

   function mm_avg_epu16 (A : v8hi; B : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_avg_epu16, "__builtin_ia32_pavgw128");

   function mm_sad_epu8 (A : v16qi; B : v16qi) return v2di;
   pragma Import (Intrinsic, mm_sad_epu8, "__builtin_ia32_psadbw128");

   procedure mm_stream_si32
    (A : access Interfaces.Integer_32; B : Interfaces.Integer_32);
   pragma Import (Intrinsic, mm_stream_si32, "__builtin_ia32_movnti");

   procedure mm_stream_si128 (A : access v2di; B : v2di);
   pragma Import (Intrinsic, mm_stream_si128, "__builtin_ia32_movntdq");

   procedure mm_stream_pd (A : access Interfaces.IEEE_Float_64; B : v2df);
   pragma Import (Intrinsic, mm_stream_pd, "__builtin_ia32_movntpd");

   procedure mm_clflush (A : System.Address);
   pragma Import (Intrinsic, mm_clflush, "__builtin_ia32_clflush");

   procedure mm_lfence;
   pragma Import (Intrinsic, mm_lfence, "__builtin_ia32_lfence");

   procedure mm_mfence;
   pragma Import (Intrinsic, mm_mfence, "__builtin_ia32_mfence");

--  _mm_cvtsi32_si128

--  _mm_cvtsi64_si128

--  _mm_cvtsi64x_si128

--  _mm_castpd_ps

--  _mm_castpd_si128

--  _mm_castps_pd

--  _mm_castps_si128

--  _mm_castsi128_ps

--  _mm_castsi128_pd

end Matreshka.Internals.SIMD.Intel.SSE2;
