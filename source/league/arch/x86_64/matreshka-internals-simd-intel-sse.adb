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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.SIMD.Intel.MMX;

package body Matreshka.Internals.SIMD.Intel.SSE is

   use Matreshka.Internals.SIMD.Intel.MMX;

   -----------------
   -- mm_cmpge_ss --
   -----------------

--   function mm_cmpge_ss (A : v4sf; B : v4sf) return v4sf is
--   begin
--      return mm_move_ss (A, mm_cmple_ss (B, A));
--   end mm_cmpge_ss;

   -----------------
   -- mm_cmpgt_ss --
   -----------------

--   function mm_cmpgt_ss (A : v4sf; B : v4sf) return v4sf is
--   begin
--      return mm_move_ss (A, mm_cmplt_ss (B, A));
--   end mm_cmpgt_ss;

   ------------------
   -- mm_cmpnge_ss --
   ------------------

--   function mm_cmpnge_ss (A : v4sf; B : v4sf) return v4sf is
--   begin
--      return mm_move_ss (A, mm_cmpnle_ss (B, A));
--   end mm_cmpnge_ss;

   ------------------
   -- mm_cmpngt_ss --
   ------------------

--   function mm_cmpngt_ss (A : v4sf; B : v4sf) return v4sf is
--   begin
--      return mm_move_ss (A, mm_cmpnlt_ss (B, A));
--   end mm_cmpngt_ss;

   -------------------
   -- mm_cvtpi16_ps --
   -------------------

   function mm_cvtpi16_ps (A : v4hi) return v4sf is
      Sign : v4hi;
      HiSi : v2si;
      LoSi : v2si;
      Zero : v4sf;
      Ra   : v4sf;
      Rb   : v4sf;

   begin
      --  This comparison against zero gives us a mask that can be used to
      --  fill in the missing sign bits in the unpack operations below, so
      --  that we get signed values after unpacking.

      Sign := mm_cmpgt_pi16 ((others => 0), A);

      --  Convert the four words to doublewords.

      LoSi := To_v2si (mm_unpacklo_pi16 (A, Sign));
      HiSi := To_v2si (mm_unpackhi_pi16 (A, Sign));

      --  Convert the doublewords to floating point two at a time.

      Zero := mm_setzero_ps;
      Ra   := mm_cvtpi32_ps (Zero, LoSi);
      Rb   := mm_cvtpi32_ps (Ra, HiSi);

      return mm_movelh_ps (Ra, Rb);
   end mm_cvtpi16_ps;

   ---------------------
   -- mm_cvtpi32x2_ps --
   ---------------------

   function mm_cvtpi32x2_ps (A : v2si; B : v2si) return v4sf is
      Zero : v4sf;
      Sfa  : v4sf;
      Sfb  : v4sf;

   begin
      Zero := mm_setzero_ps;
      Sfa  := mm_cvtpi32_ps (Zero, A);
      Sfb  := mm_cvtpi32_ps (Sfa, B);

      return mm_movelh_ps (Sfa, Sfb);
   end mm_cvtpi32x2_ps;

   ------------------
   -- mm_cvtpi8_ps --
   ------------------

   function mm_cvtpi8_ps (A : v8qi) return v4sf is
      Sign : v8qi;
      B    : v8qi;

   begin
      --  This comparison against zero gives us a mask that can be used to
      --  fill in the missing sign bits in the unpack operations below, so
      --  that we get signed values after unpacking.

      Sign := mm_cmpgt_pi8 (To_v8qi (mm_setzero_si64), A);

      --  Convert the four low bytes to words.

      B := mm_unpacklo_pi8 (A, Sign);

      return mm_cvtpi16_ps (To_v4hi (B));
   end mm_cvtpi8_ps;

   -------------------
   -- mm_cvtps_pi16 --
   -------------------

   function mm_cvtps_pi16 (A : v4sf) return v4hi is
      HiSf : v4sf;
      LoSf : v4sf;
      HiSi : v2si;
      LoSi : v2si;

   begin
      HiSf := A;
      LoSf := mm_movehl_ps (HiSf, HiSf);
      HiSi := mm_cvtps_pi32 (HiSf);
      LoSi := mm_cvtps_pi32 (LoSf);

      return mm_packs_pi32 (HiSi, LoSi);
   end mm_cvtps_pi16;

   ------------------
   -- mm_cvtps_pi8 --
   ------------------

   function mm_cvtps_pi8 (A : v4sf) return v8qi is
      Tmp : v4hi;

   begin
      Tmp := mm_cvtps_pi16 (A);

      return mm_packs_pi16 (Tmp, (others => 0));
   end mm_cvtps_pi8;

   -------------------
   -- mm_cvtpu16_ps --
   -------------------

   function mm_cvtpu16_ps (A : v4hi) return v4sf is
      HiSi : v2si;
      LoSi : v2si;
      Zero : v4sf;
      Ra   : v4sf;
      Rb   : v4sf;

   begin
      --  Convert the four words to doublewords.

      LoSi := To_v2si (mm_unpacklo_pi16 (A, (others => 0)));
      HiSi := To_v2si (mm_unpackhi_pi16 (A, (others => 0)));

      --  Convert the doublewords to floating point two at a time.

      Zero := mm_setzero_ps;
      Ra   := mm_cvtpi32_ps (Zero, LoSi);
      Rb   := mm_cvtpi32_ps (Ra, Hisi);

      return mm_movelh_ps (Ra, Rb);
   end mm_cvtpu16_ps;

   ------------------
   -- mm_cvtpu8_ps --
   ------------------

   function mm_cvtpu8_ps (A : v8qi) return v4sf is
      B : v8qi;

   begin
      B := mm_unpacklo_pi8 (A, To_v8qi (mm_setzero_si64));

      return mm_cvtpu16_ps (To_v4hi (B));
   end mm_cvtpu8_ps;

   -------------------
   -- mm_setzero_ps --
   -------------------

   function mm_setzero_ps return v4sf is
   begin
      return (0.0, 0.0, 0.0, 0.0);
   end mm_setzero_ps;

end Matreshka.Internals.SIMD.Intel.SSE;
