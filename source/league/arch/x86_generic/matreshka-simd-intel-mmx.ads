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
--  This package provides access to Intel x86 MMX instructions set.
------------------------------------------------------------------------------

package Matreshka.SIMD.Intel.MMX is

   pragma Preelaborate;

   procedure mm_empty;
   pragma Import (Intrinsic, mm_empty, "__builtin_ia32_emms");

--  _mm_cvtsi32_si64

--  _mm_cvtsi64_m64

--  _mm_cvtsi64x_si64

--  _mm_set_pi64x

--  _mm_cvtsi64_si32

--  _mm_cvtm64_si64

--  _mm_cvtsi64_si64x

   function mm_packs_pi16 (A : v4hi; B : v4hi) return v8qi;
   pragma Import (Intrinsic, mm_packs_pi16, "__builtin_ia32_packsswb");

   function mm_packs_pi32 (A : v2si; B : v2si) return v4hi;
   pragma Import (Intrinsic, mm_packs_pi32, "__builtin_ia32_packssdw");

   function mm_unpackhi_pi8 (A : v8qi; B : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_unpackhi_pi8, "__builtin_ia32_punpckhbw");

   function mm_unpackhi_pi16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_unpackhi_pi16, "__builtin_ia32_punpckhwd");

   function mm_unpackhi_pi32 (A : v2si; B : v2si) return v2si;
   pragma Import (Intrinsic, mm_unpackhi_pi32, "__builtin_ia32_punpckhdq");

   function mm_unpacklo_pi8 (A : v8qi; B : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_unpacklo_pi8, "__builtin_ia32_punpcklbw");

   function mm_unpacklo_pi16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_unpacklo_pi16, "__builtin_ia32_punpcklwd");

   function mm_unpacklo_pi32 (A : v2si; B : v2si) return v2si;
   pragma Import (Intrinsic, mm_unpacklo_pi32, "__builtin_ia32_punpckldq");

   function mm_add_pi8 (A : v8qi; B : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_add_pi8, "__builtin_ia32_paddb");

   function mm_add_pi16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_add_pi16, "__builtin_ia32_paddw");

   function mm_add_pi32 (A : v2si; B : v2si) return v2si;
   pragma Import (Intrinsic, mm_add_pi32, "__builtin_ia32_paddd");

   function mm_add_si64 (A : v1di; B : v1di) return v1di;
   pragma Import (Intrinsic, mm_add_si64, "__builtin_ia32_paddq");
   --  x86_64

   function mm_adds_pi8 (A : v8qi; B : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_adds_pi8, "__builtin_ia32_paddsb");

   function mm_adds_pi16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_adds_pi16, "__builtin_ia32_paddsw");

   function mm_adds_pu8 (A : v8qi; B : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_adds_pu8, "__builtin_ia32_paddusb");

   function mm_adds_pu16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_adds_pu16, "__builtin_ia32_paddusw");

   function mm_sub_pi8 (A : v8qi; B : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_sub_pi8, "__builtin_ia32_psubb");

   function mm_sub_pi16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_sub_pi16, "__builtin_ia32_psubw");

   function mm_sub_pi32 (A : v2si; B : v2si) return v2si;
   pragma Import (Intrinsic, mm_sub_pi32, "__builtin_ia32_psubd");

   function mm_sub_si64 (A : v1di; B : v1di) return v1di;
   pragma Import (Intrinsic, mm_sub_si64, "__builtin_ia32_psubq");

   function mm_subs_pi8 (A : v8qi; B : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_subs_pi8, "__builtin_ia32_psubsb");

   function mm_subs_pi16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_subs_pi16, "__builtin_ia32_psubsw");

   function mm_subs_pu8 (A : v8qi; B : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_subs_pu8, "__builtin_ia32_psubusb");

   function mm_subs_pu16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_subs_pu16, "__builtin_ia32_psubusw");

   function mm_madd_pi16 (A : v4hi; B : v4hi) return v2si;
   pragma Import (Intrinsic, mm_madd_pi16, "__builtin_ia32_pmaddwd");

   function mm_mulhi_pi16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_mulhi_pi16, "__builtin_ia32_pmulhw");

   function mm_mullo_pi16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_mullo_pi16, "__builtin_ia32_pmullw");

   function mm_sll_pi16 (A : v4hi; Count : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_sll_pi16, "__builtin_ia32_psllw");

   function mm_slli_pi16 (A : v4hi; Count : Interfaces.Integer_32) return v4hi;
   pragma Import (Intrinsic, mm_slli_pi16, "__builtin_ia32_psllwi");

   function mm_sll_pi32 (A : v2si; Count : v2si) return v2si;
   pragma Import (Intrinsic, mm_sll_pi32, "__builtin_ia32_pslld");

   function mm_slli_pi32 (A : v2si; Count : Interfaces.Integer_32) return v2si;
   pragma Import (Intrinsic, mm_slli_pi32, "__builtin_ia32_pslldi");

   function mm_sll_si64 (A : v1di; Count : v1di) return v1di;
   pragma Import (Intrinsic, mm_sll_si64, "__builtin_ia32_psllq");

   function mm_slli_si64 (A : v1di; Count : Interfaces.Integer_32) return v1di;
   pragma Import (Intrinsic, mm_slli_si64, "__builtin_ia32_psllqi");

   function mm_sra_pi16 (A : v4hi; Count : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_sra_pi16, "__builtin_ia32_psraw");

   function mm_srai_pi16 (A : v4hi; Count : Interfaces.Integer_32) return v4hi;
   pragma Import (Intrinsic, mm_srai_pi16, "__builtin_ia32_psrawi");

   function mm_sra_pi32 (A : v2si; Count : v2si) return v2si;
   pragma Import (Intrinsic, mm_sra_pi32, "__builtin_ia32_psrad");

   function mm_srai_pi32 (A : v2si; Count : Interfaces.Integer_32) return v2si;
   pragma Import (Intrinsic, mm_srai_pi32, "__builtin_ia32_psradi");

   function mm_srl_pi16 (A : v4hi; Count : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_srl_pi16, "__builtin_ia32_psrlw");

   function mm_srli_pi16 (A : v4hi; Count : Interfaces.Integer_32) return v4hi;
   pragma Import (Intrinsic, mm_srli_pi16, "__builtin_ia32_psrlwi");

   function mm_srl_pi32 (A : v2si; Count : v2si) return v2si;
   pragma Import (Intrinsic, mm_srl_pi32, "__builtin_ia32_psrld");

   function mm_srli_pi32 (A : v2si; Count : Interfaces.Integer_32) return v2si;
   pragma Import (Intrinsic, mm_srli_pi32, "__builtin_ia32_psrldi");

   function mm_srl_si64 (A : v1di; Count : v1di) return v1di;
   pragma Import (Intrinsic, mm_srl_si64, "__builtin_ia32_psrlq");

   function mm_srli_si64 (A : v1di; Count : Interfaces.Integer_32) return v1di;
   pragma Import (Intrinsic, mm_srli_si64, "__builtin_ia32_psrlqi");

   function mm_and_si64 (A : v2si; B : v2si) return v2si;
   pragma Import (Intrinsic, mm_and_si64, "__builtin_ia32_pand");

   function mm_andnot_si64 (A : v2si; B : v2si) return v2si;
   pragma Import (Intrinsic, mm_andnot_si64, "__builtin_ia32_pandn");

   function mm_or_si64 (A : v2si; B : v2si) return v2si;
   pragma Import (Intrinsic, mm_or_si64, "__builtin_ia32_por");

   function mm_xor_si64 (A : v2si; B : v2si) return v2si;
   pragma Import (Intrinsic, mm_xor_si64, "__builtin_ia32_pxor");

   function mm_cmpeq_pi8 (A : v8qi; B : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_cmpeq_pi8, "__builtin_ia32_pcmpeqb");

   function mm_cmpgt_pi8 (A : v8qi; B : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_cmpgt_pi8, "__builtin_ia32_pcmpgtb");

   function mm_cmpeq_pi16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_cmpeq_pi16, "__builtin_ia32_pcmpeqw");

   function mm_cmpgt_pi16 (A : v4hi; B : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_cmpgt_pi16, "__builtin_ia32_pcmpgtw");

   function mm_cmpeq_pi32 (A : v2si; B : v2si) return v2si;
   pragma Import (Intrinsic, mm_cmpeq_pi32, "__builtin_ia32_pcmpeqd");

   function mm_cmpgt_pi32 (A : v2si; B : v2si) return v2si;
   pragma Import (Intrinsic, mm_cmpgt_pi32, "__builtin_ia32_pcmpgtd");

   function mm_setzero_si64 return v2si;
   pragma Inline_Always (mm_setzero_si64);

--  _mm_set_pi32

--  _mm_set_pi16

--  _mm_set_pi8

--  _mm_setr_pi32

--  _mm_setr_pi16

--  _mm_setr_pi8

--  _mm_set1_pi32

--  _mm_set1_pi16

--  _mm_set1_pi8

end Matreshka.SIMD.Intel.MMX;
