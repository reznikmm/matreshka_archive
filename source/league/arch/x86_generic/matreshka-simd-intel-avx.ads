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
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This package provides access to Intel x86 AVX instructions set.
------------------------------------------------------------------------------

package Matreshka.SIMD.Intel.AVX is

   pragma Preelaborate;

   --  _mm256_add_pd

   --  _mm256_add_ps

   --  _mm256_addsub_pd

   --  _mm256_addsub_ps

   function mm256_and_pd (A : v4df; B : v4df) return v4df;
   pragma Import (Intrinsic, mm256_and_pd, "__builtin_ia32_andpd256");

   function mm256_and_ps (A : v8sf; B : v8sf) return v8sf;
   pragma Import (Intrinsic, mm256_and_ps, "__builtin_ia32_andps256");

   --  _mm256_andnot_pd

   --  _mm256_andnot_ps

   --  _mm256_blend_pd

   --  _mm256_blend_ps

   --  _mm256_blendv_pd

   --  _mm256_blendv_ps

   --  _mm256_div_pd

   --  _mm256_div_ps

   --  _mm256_dp_ps

   --  _mm256_hadd_pd

   --  _mm256_hadd_ps

   --  _mm256_hsub_pd

   --  _mm256_hsub_ps

   --

   --

   --

   --

   --

end Matreshka.SIMD.Intel.AVX;
