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
-- Copyright © 2010-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This package provides access to Intel x86 SSE instructions set.
------------------------------------------------------------------------------

package Matreshka.SIMD.Intel.SSE is

   pragma Preelaborate;

   function mm_setzero_ps return v4sf;
   pragma Inline_Always (mm_setzero_ps);

   function mm_add_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_add_ss, "__builtin_ia32_addss");

   function mm_sub_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_sub_ss, "__builtin_ia32_subss");

   function mm_mul_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_mul_ss, "__builtin_ia32_mulss");

   function mm_div_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_div_ss, "__builtin_ia32_divss");

   function mm_sqrt_ss (A : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_sqrt_ss, "__builtin_ia32_sqrtss");

   function mm_rcp_ss (A : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_rcp_ss, "__builtin_ia32_rcpss");

   function mm_rsqrt_ss (A : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_rsqrt_ss, "__builtin_ia32_rsqrtss");

   function mm_min_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_min_ss, "__builtin_ia32_minss");

   function mm_max_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_max_ss, "__builtin_ia32_maxss");

   function mm_add_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_add_ps, "__builtin_ia32_addps");

   function mm_sub_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_sub_ps, "__builtin_ia32_subps");

   function mm_mul_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_mul_ps, "__builtin_ia32_mulps");

   function mm_div_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_div_ps, "__builtin_ia32_divps");

   function mm_sqrt_ps (A : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_sqrt_ps, "__builtin_ia32_sqrtps");

   function mm_rcp_ps (A : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_rcp_ps, "__builtin_ia32_rcpps");

   function mm_rsqrt_ps (A : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_rsqrt_ps, "__builtin_ia32_rsqrtps");

   function mm_min_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_min_ps, "__builtin_ia32_minps");

   function mm_max_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_max_ps, "__builtin_ia32_maxps");

   function mm_and_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_and_ps, "__builtin_ia32_andps");

   function mm_andnot_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_andnot_ps, "__builtin_ia32_andnps");

   function mm_or_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_or_ps, "__builtin_ia32_orps");

   function mm_xor_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_xor_ps, "__builtin_ia32_xorps");

   function mm_cmpeq_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpeq_ss, "__builtin_ia32_cmpeqss");

   function mm_cmplt_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmplt_ss, "__builtin_ia32_cmpltss");

   function mm_cmple_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmple_ss, "__builtin_ia32_cmpless");

--   function mm_cmpgt_ss (A : v4sf; B : v4sf) return v4sf;
--   pragma Inline_Always (mm_cmpgt_ss);
--  GNAT GPL 2010 crash on body

--   function mm_cmpge_ss (A : v4sf; B : v4sf) return v4sf;
--   pragma Inline_Always (mm_cmpge_ss);
--  GNAT GPL 2010 crash on body

   function mm_cmpneq_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpneq_ss, "__builtin_ia32_cmpneqss");

   function mm_cmpnlt_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpnlt_ss, "__builtin_ia32_cmpnltss");

   function mm_cmpnle_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpnle_ss, "__builtin_ia32_cmpnless");

--   function mm_cmpngt_ss (A : v4sf; B : v4sf) return v4sf;
--   pragma Inline_Always (mm_cmpngt_ss);
--  GNAT GPL 2010 crash on body

--   function mm_cmpnge_ss (A : v4sf; B : v4sf) return v4sf;
--   pragma Inline_Always (mm_cmpnge_ss);
--  GNAT GPL 2010 crash on body

   function mm_cmpord_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpord_ss, "__builtin_ia32_cmpordss");

   function mm_cmpunord_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpunord_ss, "__builtin_ia32_cmpunordss");

   function mm_cmpeq_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpeq_ps, "__builtin_ia32_cmpeqps");

   function mm_cmplt_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmplt_ps, "__builtin_ia32_cmpltps");

   function mm_cmple_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmple_ps, "__builtin_ia32_cmpleps");

   function mm_cmpgt_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpgt_ps, "__builtin_ia32_cmpgtps");

   function mm_cmpge_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpge_ps, "__builtin_ia32_cmpgeps");

   function mm_cmpneq_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpneq_ps, "__builtin_ia32_cmpneqps");

   function mm_cmpnlt_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpnlt_ps, "__builtin_ia32_cmpnltps");

   function mm_cmpnle_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpnle_ps, "__builtin_ia32_cmpnleps");

   function mm_cmpngt_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpngt_ps, "__builtin_ia32_cmpngtps");

   function mm_cmpnge_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpnge_ps, "__builtin_ia32_cmpngeps");

   function mm_cmpord_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpord_ps, "__builtin_ia32_cmpordps");

   function mm_cmpunord_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_cmpunord_ps, "__builtin_ia32_cmpunordps");

   function mm_comieq_ss (A : v4sf; B : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_comieq_ss, "__builtin_ia32_comieq");

   function mm_comilt_ss (A : v4sf; B : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_comilt_ss, "__builtin_ia32_comilt");

   function mm_comile_ss (A : v4sf; B : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_comile_ss, "__builtin_ia32_comile");

   function mm_comigt_ss (A : v4sf; B : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_comigt_ss, "__builtin_ia32_comigt");

   function mm_comige_ss (A : v4sf; B : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_comige_ss, "__builtin_ia32_comige");

   function mm_comineq_ss (A : v4sf; B : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_comineq_ss, "__builtin_ia32_comineq");

   function mm_ucomieq_ss (A : v4sf; B : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_ucomieq_ss, "__builtin_ia32_ucomieq");

   function mm_ucomilt_ss (A : v4sf; B : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_ucomilt_ss, "__builtin_ia32_ucomilt");

   function mm_ucomile_ss (A : v4sf; B : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_ucomile_ss, "__builtin_ia32_ucomile");

   function mm_ucomigt_ss (A : v4sf; B : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_ucomigt_ss, "__builtin_ia32_ucomigt");

   function mm_ucomige_ss (A : v4sf; B : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_ucomige_ss, "__builtin_ia32_ucomige");

   function mm_ucomineq_ss (A : v4sf; B : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_ucomineq_ss, "__builtin_ia32_ucomineq");

   function mm_cvtss_si32 (A : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_cvtss_si32, "__builtin_ia32_cvtss2si");

   function mm_cvt_ss2si (A : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_cvt_ss2si, "__builtin_ia32_cvtss2si");

   function mm_cvtss_si64 (A : v4sf) return Interfaces.Integer_64;
   pragma Import (Intrinsic, mm_cvtss_si64, "__builtin_ia32_cvtss2si64");
   --  x86_64

   function mm_cvtss_si64x (A : v4sf) return Interfaces.Integer_64;
   pragma Import (Intrinsic, mm_cvtss_si64x, "__builtin_ia32_cvtss2si64");
   --  x86_64

   function mm_cvtps_pi32 (A : v4sf) return v2si;
   pragma Import (Intrinsic, mm_cvtps_pi32, "__builtin_ia32_cvtps2pi");

   function mm_cvt_ps2pi (A : v4sf) return v2si;
   pragma Import (Intrinsic, mm_cvt_ps2pi, "__builtin_ia32_cvtps2pi");

   function mm_cvttss_si32 (A : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_cvttss_si32, "__builtin_ia32_cvttss2si");

   function mm_cvtt_ss2si (A : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_cvtt_ss2si, "__builtin_ia32_cvttss2si");

   function mm_cvttss_si64 (A : v4sf) return Interfaces.Integer_64;
   pragma Import (Intrinsic, mm_cvttss_si64, "__builtin_ia32_cvttss2si64");
   --  x86_64

   function mm_cvttss_si64x (A : v4sf) return Interfaces.Integer_64;
   pragma Import (Intrinsic, mm_cvttss_si64x, "__builtin_ia32_cvttss2si64");
   --  x86_64

   function mm_cvttps_pi32 (A : v4sf) return v2si;
   pragma Import (Intrinsic, mm_cvttps_pi32, "__builtin_ia32_cvttps2pi");

   function mm_cvtt_ps2pi (A : v4sf) return v2si;
   pragma Import (Intrinsic, mm_cvtt_ps2pi, "__builtin_ia32_cvttps2pi");

   function mm_cvtsi32_ss (A : v4sf; B : Interfaces.Integer_32) return v4sf;
   pragma Import (Intrinsic, mm_cvtsi32_ss, "__builtin_ia32_cvtsi2ss");

   function mm_cvt_si2ss (A : v4sf; B : Interfaces.Integer_32) return v4sf;
   pragma Import (Intrinsic, mm_cvt_si2ss, "__builtin_ia32_cvtsi2ss");

   function mm_cvtsi64_ss (A : v4sf; B : Interfaces.Integer_64) return v4sf;
   pragma Import (Intrinsic, mm_cvtsi64_ss, "__builtin_ia32_cvtsi642ss");
   --  x86_64

   function mm_cvtsi64x_ss (A : v4sf; B : Interfaces.Integer_64) return v4sf;
   pragma Import (Intrinsic, mm_cvtsi64x_ss, "__builtin_ia32_cvtsi642ss");
   --  x86_64

   function mm_cvtpi32_ps (A : v4sf; B : v2si) return v4sf;
   pragma Import (Intrinsic, mm_cvtpi32_ps, "__builtin_ia32_cvtpi2ps");

   function mm_cvt_pi2ps (A : v4sf; B : v2si) return v4sf;
   pragma Import (Intrinsic, mm_cvt_pi2ps, "__builtin_ia32_cvtpi2ps");

   function mm_cvtpi16_ps (A : v4hi) return v4sf;
   pragma Inline_Always (mm_cvtpi16_ps);

   function mm_cvtpu16_ps (A : v4hi) return v4sf;
   pragma Inline_Always (mm_cvtpu16_ps);

   function mm_cvtpi8_ps (A : v8qi) return v4sf;
   pragma Inline_Always (mm_cvtpi8_ps);

   function mm_cvtpu8_ps (A : v8qi) return v4sf;
   pragma Inline_Always (mm_cvtpu8_ps);

   function mm_cvtpi32x2_ps (A : v2si; B : v2si) return v4sf;
   pragma Inline_Always (mm_cvtpi32x2_ps);

   function mm_cvtps_pi16 (A : v4sf) return v4hi;
   pragma Inline_Always (mm_cvtps_pi16);

   function mm_cvtps_pi8 (A : v4sf) return v8qi;
   pragma Inline_Always (mm_cvtps_pi8);

   function mm_shuffle_ps
    (A : v4sf; B : v4sf; Mask : Interfaces.Integer_32) return v4sf;
   pragma Import (Intrinsic, mm_shuffle_ps, "__builtin_ia32_shufps");

   function mm_unpackhi_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_unpackhi_ps, "__builtin_ia32_unpckhps");

   function mm_unpacklo_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_unpacklo_ps, "__builtin_ia32_unpcklps");

   function mm_loadh_pi (A : v4sf; B : access v2si) return v4sf;
   pragma Import (Intrinsic, mm_loadh_pi, "__builtin_ia32_loadhps");

   procedure mm_storeh_pi (A : access v2si; B : v4sf);
   pragma Import (Intrinsic, mm_storeh_pi, "__builtin_ia32_storehps");

   function mm_movehl_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_movehl_ps, "__builtin_ia32_movhlps");

   function mm_movelh_ps (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_movelh_ps, "__builtin_ia32_movlhps");

   function mm_loadl_pi (A : v4sf; B : access v2si) return v4sf;
   pragma Import (Intrinsic, mm_loadl_pi, "__builtin_ia32_loadlps");

   procedure mm_storel_pi (A : access v2si; B : v4sf);
   pragma Import (Intrinsic, mm_storel_pi, "__builtin_ia32_storelps");

   function mm_movemask_ps (A : v4sf) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_movemask_ps, "__builtin_ia32_movmskps");

   function mm_getcsr return Interfaces.Unsigned_32;
   pragma Import (Intrinsic, mm_getcsr, "__builtin_ia32_stmxcsr");

--  _MM_GET_EXCEPTION_STATE
--  _MM_GET_EXCEPTION_MASK
--  _MM_GET_ROUNDING_MODE
--  _MM_GET_FLUSH_ZERO_MODE

   procedure mm_setcsr (I : Interfaces.Unsigned_32);
   pragma Import (Intrinsic, mm_setcsr, "__builtin_ia32_ldmxcsr");

--  _MM_SET_EXCEPTION_STATE
--  _MM_SET_EXCEPTION_MASK
--  _MM_SET_ROUNDING_MODE
--  _MM_SET_FLUSH_ZERO_MODE

--  _mm_set_ss

--  _mm_set1_ps

--  _mm_set_ps1

--  _mm_load_ss

--  _mm_load1_ps

--  _mm_load_ps1

--  _mm_load_ps

   function mm_loadu_ps (P : access Interfaces.IEEE_Float_32) return v4sf;
   pragma Import (Intrinsic, mm_loadu_ps, "__builtin_ia32_loadups");
   --  P points to array

--  _mm_loadr_ps

--  _mm_set_ps

--  _mm_setr_ps

--  _mm_store_ss

--  _mm_cvtss_f32

--  _mm_store_ps

   procedure mm_storeu_ps (P : access Interfaces.IEEE_Float_32; A : v4sf);
   pragma Import (Intrinsic, mm_storeu_ps, "__builtin_ia32_storeups");
   --  P points to array

--  _mm_store1_ps

--  _mm_store_ps1

--  _mm_storer_ps

   function mm_move_ss (A : v4sf; B : v4sf) return v4sf;
   pragma Import (Intrinsic, mm_move_ss, "__builtin_ia32_movss");

   function mm_extract_pi16
    (A : v4hi; N : Interfaces.Integer_32) return Interfaces.Integer_16;
   pragma Import (Intrinsic, mm_extract_pi16, "__builtin_ia32_vec_ext_v4hi");

   function mm_insert_pi16
    (A : v4hi;
     D : Interfaces.Integer_16;
     N : Interfaces.Integer_32) return v4hi;
   pragma Import (Intrinsic, mm_insert_pi16, "__builtin_ia32_vec_set_v4hi");

   function mm_max_pi16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_max_pi16, "__builtin_ia32_pmaxsw");

   function mm_max_pu8 (A : v8qi; B : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_max_pu8, "__builtin_ia32_pmaxub");

   function mm_min_pi16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_min_pi16, "__builtin_ia32_pminsw");

   function mm_min_pu8 (A : v8qi; B : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_min_pu8, "__builtin_ia32_pminub");

   function mm_movemask_pi8 (A : v8qi) return Interfaces.Integer_32;
   pragma Import (Intrinsic, mm_movemask_pi8, "__builtin_ia32_pmovmskb");

   function mm_mulhi_pu16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_mulhi_pu16, "__builtin_ia32_pmulhuw");

   function mm_shuffle_pi16 (A : v4hi; N : Interfaces.Integer_32) return v4hi;
   pragma Import (Intrinsic, mm_shuffle_pi16, "__builtin_ia32_pshufw");

   procedure mm_maskmove_si64
    (A : v8qi; N : v8qi; P : access Interfaces.Integer_8);
   pragma Import (Intrinsic, mm_maskmove_si64, "__builtin_ia32_maskmovq");

   function mm_avg_pu8 (A : v8qi; B : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_avg_pu8, "__builtin_ia32_pavgb");

   function mm_avg_pu16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_avg_pu16, "__builtin_ia32_pavgw");

--   function mm_sad_pu8 (A : v8qi; B : v8qi) return v4hi;
--   pragma Import (Intrinsic, mm_sad_pu8, "__builtin_ia32_psadbw");

--  _mm_prefetch

   procedure mm_stream_pi
    (P : access Interfaces.Integer_64; A : Interfaces.Integer_64);
   pragma Import (Intrinsic, mm_stream_pi, "__builtin_ia32_movntq");

   procedure mm_stream_ps (P : access Interfaces.IEEE_Float_32; A : v4sf);
   pragma Import (Intrinsic, mm_stream_ps, "__builtin_ia32_movntps");

   procedure mm_sfence;
   pragma Import (Intrinsic, mm_sfence, "__builtin_ia32_sfence");

--  _mm_pause

end Matreshka.SIMD.Intel.SSE;
