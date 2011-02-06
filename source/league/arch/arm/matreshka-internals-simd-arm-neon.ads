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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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

package Matreshka.Internals.SIMD.ARM.NEON is

   function vadd_s8 (A : int8x8_t; B : int8x8_t) return int8x8_t;
   pragma Inline_Always (vadd_s8);

   function vadd_s16 (A : int16x4_t; B : int16x4_t) return int16x4_t;
   pragma Inline_Always (vadd_s16);

   function vadd_s32 (A : int32x2_t; B : int32x2_t) return int32x2_t;
   pragma Inline_Always (vadd_s32);

--   function vadd_s64 (A : int64x1_t; B : int64x1_t) return int64x1_t;
--   pragma Inline_Always (vadd_s64);
--  XXX GNAT 4.5.0 bug

   function vadd_f32 (A : float32x2_t; B : float32x2_t) return float32x2_t;
   pragma Inline_Always (vadd_f32);

   function vadd_u8 (A : uint8x8_t; B : uint8x8_t) return uint8x8_t;
   pragma Inline_Always (vadd_u8);

   function vadd_u16 (A : uint16x4_t; B : uint16x4_t) return uint16x4_t;
   pragma Inline_Always (vadd_u16);

   function vadd_u32 (A : uint32x2_t; B : uint32x2_t) return uint32x2_t;
   pragma Inline_Always (vadd_u32);

   function vadd_u64 (A : uint64x1_t; B : uint64x1_t) return uint64x1_t;
   pragma Inline_Always (vadd_u64);

   function vaddq_s8 (A : int8x16_t; B : int8x16_t) return int8x16_t;
   pragma Inline_Always (vaddq_s8);

   function vaddq_s16 (A : int16x8_t; B : int16x8_t) return int16x8_t;
   pragma Inline_Always (vaddq_s16);

   function vaddq_s32 (A : int32x4_t; B : int32x4_t) return int32x4_t;
   pragma Inline_Always (vaddq_s32);

   function vaddq_s64 (A : int64x2_t; B : int64x2_t) return int64x2_t;
   pragma Inline_Always (vaddq_s64);

   function vaddq_f32 (A : float32x4_t; B : float32x4_t) return float32x4_t;
   pragma Inline_Always (vaddq_f32);

end Matreshka.Internals.SIMD.ARM.NEON;
