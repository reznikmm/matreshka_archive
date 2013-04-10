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
--  This package provides several constants for x86 and x86_64 platform.
------------------------------------------------------------------------------
with Interfaces;
with Matreshka.Internals.SIMD.Intel;
with Matreshka.Internals.Utf16;

private package Matreshka.Internals.Strings.Constants is

   pragma Preelaborate;

   use type Interfaces.Integer_16;

   Terminator_Mask_32 : constant
     array (Matreshka.Internals.Utf16.Utf16_String_Index range 0 .. 1)
       of Interfaces.Unsigned_32
         := (0 => 16#0000_0000#,
             1 => 16#0000_FFFF#);
   --  This mask is used to set unused components of the element to zero on
   --  32-bits platforms.

   Terminator_Mask_64 : constant
     array (Matreshka.Internals.Utf16.Utf16_String_Index range 0 .. 3)
       of Interfaces.Unsigned_64
         := (0 => 16#0000_0000_0000_0000#,
             1 => 16#0000_0000_0000_FFFF#,
             2 => 16#0000_0000_FFFF_FFFF#,
             3 => 16#0000_FFFF_FFFF_FFFF#);
   --  This mask is used to set unused components of the element to zero on
   --  64-bits platforms.

   Terminator_Mask_x86_64 : constant
     array (Matreshka.Internals.Utf16.Utf16_String_Index range 0 .. 7)
       of Matreshka.Internals.SIMD.Intel.v8hi
         := (0 => (              others => 0),
             1 => (1      => -1, others => 0),
             2 => (1 .. 2 => -1, others => 0),
             3 => (1 .. 3 => -1, others => 0),
             4 => (1 .. 4 => -1, others => 0),
             5 => (1 .. 5 => -1, others => 0),
             6 => (1 .. 6 => -1, others => 0),
             7 => (1 .. 7 => -1, others => 0));
   --  This mask is used to set unused components of the element to zero on
   --  x86_64 platforms.

   Terminator_Mask_AVX : constant
     array (Matreshka.Internals.Utf16.Utf16_String_Index range 0 .. 15)
       of Matreshka.Internals.SIMD.Intel.v16hi
         := (0 => (              others => 0),
             1 => (1      => -1, others => 0),
             2 => (1 .. 2 => -1, others => 0),
             3 => (1 .. 3 => -1, others => 0),
             4 => (1 .. 4 => -1, others => 0),
             5 => (1 .. 5 => -1, others => 0),
             6 => (1 .. 6 => -1, others => 0),
             7 => (1 .. 7 => -1, others => 0),
             8 => (1 .. 8 => -1, others => 0),
             9 => (1 .. 9 => -1, others => 0),
             10 => (1 .. 10 => -1, others => 0),
             11 => (1 .. 11 => -1, others => 0),
             12 => (1 .. 12 => -1, others => 0),
             13 => (1 .. 13 => -1, others => 0),
             14 => (1 .. 14 => -1, others => 0),
             15 => (1 .. 15 => -1, others => 0));
   --  This mask is used to set unused components of the element to zero on
   --  platforms where AVX instruction set is supported.

   Surrogate_Kind_Mask_x86_64   : constant Matreshka.Internals.SIMD.Intel.v8hi
     := (others =>  -1_024);  --  FC00
   Masked_High_Surrogate_x86_64 : constant Matreshka.Internals.SIMD.Intel.v8hi
     := (others => -10_240);  --  D800
   Masked_Low_Surrogate_x86_64  : constant Matreshka.Internals.SIMD.Intel.v8hi
     := (others =>  -9_216);  --  DC00
   --  Mask and constants to detect surrogate characters in vector. To detect
   --  surrogate mask should be applied to vector and result should be compared
   --  with corresponding constant to detect high or low surrogates in vector.

   Surrogate_Kind_Mask_AVX   : constant Matreshka.Internals.SIMD.Intel.v16hi
     := (others =>  -1_024);  --  FC00
   Masked_High_Surrogate_AVX : constant Matreshka.Internals.SIMD.Intel.v16hi
     := (others => -10_240);  --  D800
   Masked_Low_Surrogate_AVX  : constant Matreshka.Internals.SIMD.Intel.v16hi
     := (others =>  -9_216);  --  DC00
   --  Mask and constants to detect surrogate characters in vector. To detect
   --  surrogate mask should be applied to vector and result should be compared
   --  with corresponding constant to detect high or low surrogates in vector.

end Matreshka.Internals.Strings.Constants;
