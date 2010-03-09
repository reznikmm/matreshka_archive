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
-- Copyright © 2010 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
--  This package provides access to MMX instruction set.
------------------------------------------------------------------------------
with Interfaces;

package Matreshka.Internals.SIMD.Intel.MMX is

   pragma Preelaborate;

   procedure mm_empty;
   --  Empty the multimedia state.

   function mm_add
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8;
   --  Add the 8-bit values in M1 to the 8-bit values in M2.

   function mm_add
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8;
   --  Add the 8-bit values in M1 to the 8-bit values in M2.

   function mm_add
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Add the 16-bit values in M1 to the 16-bit values in M2.

   function mm_add
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4;
   --  Add the 16-bit values in M1 to the 16-bit values in M2.

   function mm_add
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2;
   --  Add the 32-bit values in M1 to the 32-bit values in M2.

   function mm_add
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2;
   --  Add the 32-bit values in M1 to the 32-bit values in M2.

   function mm_adds
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8;
   --  Add the 8-bit values in M1 to the 8-bit values in M2 using signed
   --  saturated arithmetic.

   function mm_adds
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8;
   --  Add the 8-bit values in M1 to the 8-bit values in M2 using unsigned
   --  saturated arithmetic.

   function mm_adds
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Add the 16-bit values in M1 to the 16-bit values in M2 using signed
   --  saturated arithmetic.

   function mm_adds
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4;
   --  Add the 16-bit values in M1 to the 16-bit values in M2 using unsigned
   --  saturated arithmetic.

   function mm_sub
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8;
   --  Subtract the 8-bit values in M2 from the 8-bit values in M1.

   function mm_sub
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8;
   --  Subtract the 8-bit values in M2 from the 8-bit values in M1.

   function mm_sub
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Subtract the 16-bit values in M2 from the 16-bit values in M1.

   function mm_sub
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4;
   --  Subtract the 16-bit values in M2 from the 16-bit values in M1.

   function mm_sub
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2;
   --  Subtract the 32-bit values in M2 from the 32-bit values in M1.

   function mm_sub
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2;
   --  Subtract the 32-bit values in M2 from the 32-bit values in M1.

   function mm_subs
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8;
   --  Subtract the 8-bit values in M2 from the 8-bit values in M1 using signed
   --  saturating arithmetic.

   function mm_subs
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8;
   --  Subtract the 8-bit values in M2 from the 8-bit values in M1 using
   --  unsigned saturating arithmetic.

   function mm_subs
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Subtract the 16-bit values in M2 from the 16-bit values in M1 using
   --  signed saturating arithmetic.

   function mm_subs
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4;
   --  Subtract the 16-bit values in M2 from the 16-bit values in M1 using
   --  unsigned saturating arithmetic.

   function mm_madd
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_32_Vector_2;
   --  Multiply four 16-bit values in M1 by four 16-bit values in M2 producing
   --  four 32-bit intermediate results, which are then summed by pairs to
   --  produce two 32-bit results.

   function mm_mulhi
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Multiply four signed 16-bit values in M1 by four signed 16-bit values in
   --  M2 and produce the high 16 bits of the 32-bit results.

   function mm_mullo
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Multiply four 16-bit values in M1 by four 16-bit values in M2 and
   --  produce the low 16 bits of the results.

   function mm_sll
     (M     : Integer_16_Vector_4;
      Count : Interfaces.Unsigned_32) return Integer_16_Vector_4;
   --  Shift four 16-bit values in M left by COUNT.

   function mm_sll
     (M     : Unsigned_16_Vector_4;
      Count : Interfaces.Unsigned_32) return Unsigned_16_Vector_4;
   --  Shift four 16-bit values in M left by COUNT.

   function mm_sll
     (M     : Integer_16_Vector_4;
      Count : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Shift four 16-bit values in M left by COUNT.

   function mm_sll
     (M     : Unsigned_16_Vector_4;
      Count : Unsigned_16_Vector_4) return Unsigned_16_Vector_4;
   --  Shift four 16-bit values in M left by COUNT.

   function mm_sll
     (M     : Integer_32_Vector_2;
      Count : Interfaces.Unsigned_32) return Integer_32_Vector_2;
   --  Shift two 32-bit values in M left by COUNT.

   function mm_sll
     (M     : Unsigned_32_Vector_2;
      Count : Interfaces.Unsigned_32) return Unsigned_32_Vector_2;
   --  Shift two 32-bit values in M left by COUNT.

   function mm_sll
     (M     : Integer_32_Vector_2;
      Count : Integer_32_Vector_2) return Integer_32_Vector_2;
   --  Shift two 32-bit values in M left by COUNT.

   function mm_sll
     (M     : Unsigned_32_Vector_2;
      Count : Unsigned_32_Vector_2) return Unsigned_32_Vector_2;
   --  Shift two 32-bit values in M left by COUNT.

   function mm_sll
     (M     : Integer_64_Vector_1;
      Count : Interfaces.Unsigned_32) return Integer_64_Vector_1;
   --  Shift the 64-bit value in M left by COUNT.

   function mm_sll
     (M     : Unsigned_64_Vector_1;
      Count : Interfaces.Unsigned_32) return Unsigned_64_Vector_1;
   --  Shift the 64-bit value in M left by COUNT.

   function mm_sll
     (M     : Integer_64_Vector_1;
      Count : Integer_64_Vector_1) return Integer_64_Vector_1;
   --  Shift the 64-bit value in M left by COUNT.

   function mm_sll
     (M     : Unsigned_64_Vector_1;
      Count : Unsigned_64_Vector_1) return Unsigned_64_Vector_1;
   --  Shift the 64-bit value in M left by COUNT.

   function mm_sra
     (M     : Integer_16_Vector_4;
      Count : Interfaces.Unsigned_32) return Integer_16_Vector_4;
   --  Shift four 16-bit values in M right by COUNT; shift in the sign bit.

   function mm_sra
     (M     : Integer_32_Vector_2;
      Count : Interfaces.Unsigned_32) return Integer_32_Vector_2;
   --  Shift two 32-bit values in M right by COUNT; shift in the sign bit.

   function mm_sra
     (M     : Integer_16_Vector_4;
      Count : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Shift four 16-bit values in M right by COUNT; shift in the sign bit.

   function mm_sra
     (M     : Integer_32_Vector_2;
      Count : Integer_32_Vector_2) return Integer_32_Vector_2;
   --  Shift two 32-bit values in M right by COUNT; shift in the sign bit.

   function mm_srl
     (M     : Integer_16_Vector_4;
      Count : Interfaces.Unsigned_32) return Integer_16_Vector_4;
   --  Shift four 16-bit values in M right by COUNT; shift in zeros.

   function mm_srl
     (M     : Unsigned_16_Vector_4;
      Count : Interfaces.Unsigned_32) return Unsigned_16_Vector_4;
   --  Shift four 16-bit values in M right by COUNT; shift in zeros.

   function mm_srl
     (M     : Integer_16_Vector_4;
      Count : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Shift four 16-bit values in M right by COUNT; shift in zeros.

   function mm_srl
     (M     : Unsigned_16_Vector_4;
      Count : Unsigned_16_Vector_4) return Unsigned_16_Vector_4;
   --  Shift four 16-bit values in M right by COUNT; shift in zeros.

   function mm_srl
     (M     : Integer_32_Vector_2;
      Count : Interfaces.Unsigned_32) return Integer_32_Vector_2;
   --  Shift two 32-bit values in M right by COUNT; shift in zeros.

   function mm_srl
     (M     : Unsigned_32_Vector_2;
      Count : Interfaces.Unsigned_32) return Unsigned_32_Vector_2;
   --  Shift two 32-bit values in M right by COUNT; shift in zeros.

   function mm_srl
     (M     : Integer_32_Vector_2;
      Count : Integer_32_Vector_2) return Integer_32_Vector_2;
   --  Shift two 32-bit values in M right by COUNT; shift in zeros.

   function mm_srl
     (M     : Unsigned_32_Vector_2;
      Count : Unsigned_32_Vector_2) return Unsigned_32_Vector_2;
   --  Shift two 32-bit values in M right by COUNT; shift in zeros.

   function mm_srl
     (M     : Integer_64_Vector_1;
      Count : Interfaces.Unsigned_32) return Integer_64_Vector_1;
   --  Shift the 64-bit value in M left by COUNT; shift in zeros.

   function mm_srl
     (M     : Unsigned_64_Vector_1;
      Count : Interfaces.Unsigned_32) return Unsigned_64_Vector_1;
   --  Shift the 64-bit value in M left by COUNT; shift in zeros.

   function mm_srl
     (M     : Integer_64_Vector_1;
      Count : Integer_64_Vector_1) return Integer_64_Vector_1;
   --  Shift the 64-bit value in M left by COUNT; shift in zeros.

   function mm_srl
     (M     : Unsigned_64_Vector_1;
      Count : Unsigned_64_Vector_1) return Unsigned_64_Vector_1;
   --  Shift the 64-bit value in M left by COUNT; shift in zeros.

   function mm_and
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8;
   --  Bit-wise AND the 64-bit values in M1 and M2.

   function mm_and
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8;
   --  Bit-wise AND the 64-bit values in M1 and M2.

   function mm_and
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Bit-wise AND the 64-bit values in M1 and M2.

   function mm_and
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4;
   --  Bit-wise AND the 64-bit values in M1 and M2.

   function mm_and
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2;
   --  Bit-wise AND the 64-bit values in M1 and M2.

   function mm_and
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2;
   --  Bit-wise AND the 64-bit values in M1 and M2.

   function mm_and
     (M1 : Integer_64_Vector_1;
      M2 : Integer_64_Vector_1) return Integer_64_Vector_1;
   --  Bit-wise AND the 64-bit values in M1 and M2.

   function mm_and
     (M1 : Unsigned_64_Vector_1;
      M2 : Unsigned_64_Vector_1) return Unsigned_64_Vector_1;
   --  Bit-wise AND the 64-bit values in M1 and M2.

   function mm_andnot
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8;
   --  Bit-wise complement the 64-bit value in M1 and bit-wise AND it with the
   --  64-bit value in M2.

   function mm_andnot
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8;
   --  Bit-wise complement the 64-bit value in M1 and bit-wise AND it with the
   --  64-bit value in M2.

   function mm_andnot
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Bit-wise complement the 64-bit value in M1 and bit-wise AND it with the
   --  64-bit value in M2.

   function mm_andnot
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4;
   --  Bit-wise complement the 64-bit value in M1 and bit-wise AND it with the
   --  64-bit value in M2.

   function mm_andnot
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2;
   --  Bit-wise complement the 64-bit value in M1 and bit-wise AND it with the
   --  64-bit value in M2.

   function mm_andnot
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2;
   --  Bit-wise complement the 64-bit value in M1 and bit-wise AND it with the
   --  64-bit value in M2.

   function mm_andnot
     (M1 : Integer_64_Vector_1;
      M2 : Integer_64_Vector_1) return Integer_64_Vector_1;
   --  Bit-wise complement the 64-bit value in M1 and bit-wise AND it with the
   --  64-bit value in M2.

   function mm_andnot
     (M1 : Unsigned_64_Vector_1;
      M2 : Unsigned_64_Vector_1) return Unsigned_64_Vector_1;
   --  Bit-wise complement the 64-bit value in M1 and bit-wise AND it with the
   --  64-bit value in M2.

   function mm_or
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8;
   --  Bit-wise inclusive OR the 64-bit values in M1 and M2.

   function mm_or
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8;
   --  Bit-wise inclusive OR the 64-bit values in M1 and M2.

   function mm_or
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Bit-wise inclusive OR the 64-bit values in M1 and M2.

   function mm_or
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4;
   --  Bit-wise inclusive OR the 64-bit values in M1 and M2.

   function mm_or
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2;
   --  Bit-wise inclusive OR the 64-bit values in M1 and M2.

   function mm_or
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2;
   --  Bit-wise inclusive OR the 64-bit values in M1 and M2.

   function mm_or
     (M1 : Integer_64_Vector_1;
      M2 : Integer_64_Vector_1) return Integer_64_Vector_1;
   --  Bit-wise inclusive OR the 64-bit values in M1 and M2.

   function mm_or
     (M1 : Unsigned_64_Vector_1;
      M2 : Unsigned_64_Vector_1) return Unsigned_64_Vector_1;
   --  Bit-wise inclusive OR the 64-bit values in M1 and M2.

   function mm_xor
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8;
   --  Bit-wise exclusive OR the 64-bit values in M1 and M2.

   function mm_xor
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8;
   --  Bit-wise exclusive OR the 64-bit values in M1 and M2.

   function mm_xor
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Bit-wise exclusive OR the 64-bit values in M1 and M2.

   function mm_xor
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4;
   --  Bit-wise exclusive OR the 64-bit values in M1 and M2.

   function mm_xor
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2;
   --  Bit-wise exclusive OR the 64-bit values in M1 and M2.

   function mm_xor
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2;
   --  Bit-wise exclusive OR the 64-bit values in M1 and M2.

   function mm_xor
     (M1 : Integer_64_Vector_1;
      M2 : Integer_64_Vector_1) return Integer_64_Vector_1;
   --  Bit-wise exclusive OR the 64-bit values in M1 and M2.

   function mm_xor
     (M1 : Unsigned_64_Vector_1;
      M2 : Unsigned_64_Vector_1) return Unsigned_64_Vector_1;
   --  Bit-wise exclusive OR the 64-bit values in M1 and M2.

   function mm_eq
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8;
   --  Compare eight 8-bit values.  The result of the comparison is 0xFF if the
   --  test is true and zero if false.

   function mm_eq
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8;
   --  Compare eight 8-bit values. The result of the comparison is 0xFF if the
   --  test is true and zero if false.

   function mm_eq
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Compare four 16-bit values. The result of the comparison is 0xFFFF if
   --  the test is true and zero if false.

   function mm_eq
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4;
   --  Compare four 16-bit values. The result of the comparison is 0xFFFF if
   --  the test is true and zero if false.

   function mm_eq
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2;
   --  Compare two 32-bit values. The result of the comparison is 0xFFFFFFFF if
   --  the test is true and zero if false.

   function mm_eq
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2;
   --  Compare two 32-bit values. The result of the comparison is 0xFFFFFFFF if
   --  the test is true and zero if false.

   function mm_gt
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8;
   --  Compare eight 8-bit values.  The result of the comparison is 0xFF if the
   --  test is true and zero if false.

   function mm_gt
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4;
   --  Compare four 16-bit values. The result of the comparison is 0xFFFF if
   --  the test is true and zero if false.

   function mm_gt
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2;
   --  Compare two 32-bit values. The result of the comparison is 0xFFFFFFFF if
   --  the test is true and zero if false.

private

   pragma Import (Intrinsic, mm_empty, "__builtin_ia32_emms");

--    _mm_cvtsi32_si64
--    _m_from_int
--    _m_from_int64      x86_64 (Intel)
--    _mm_cvtsi64_m64    x86_64 (Intel)
--    _mm_cvtsi64x_si64  x86_64 (Microsoft)
--    _mm_set_pi64x      x86_64 (Microsoft)
--    _mm_cvtsi64_si32
--    _m_to_int
--    _m_to_int64        x86_64 (Intel)
--    _mm_cvtm64_si64    x86_64 (Intel)
--    _mm_cvtsi64_si64x  x86_64 (Microsoft)
--    _mm_packs_pi16
--    _m_packsswb
--    _mm_packs_pi32
--    _m_packssdw
--    _mm_packs_pu16
--    _m_packuswb
--    _mm_unpackhi_pi8
--    _m_punpckhbw
--    _mm_unpackhi_pi16
--    _m_punpckhwd
--    _mm_unpackhi_pi32
--    _m_punpckhdq
--    _mm_unpacklo_pi8
--    _m_punpcklbw
--    _mm_unpacklo_pi16
--    _m_punpcklwd
--    _mm_unpacklo_pi32
--    _m_punpckldq
--    _mm_add_si64        SSE2
--    _mm_sub_si64        SSE2
--    _mm_setzero_si64
--    _mm_set_pi32
--    _mm_set_pi16
--    _mm_set_pi8
--    _mm_setr_pi32
--    _mm_setr_pi16
--    _mm_setr_pi8
--    _mm_set1_pi32
--    _mm_set1_pi16
--    _mm_set1_pi8

   pragma Inline_Always (mm_add);
   pragma Inline_Always (mm_adds);
   pragma Inline_Always (mm_sub);
   pragma Inline_Always (mm_subs);
   pragma Inline_Always (mm_madd);
   pragma Inline_Always (mm_mulhi);
   pragma Inline_Always (mm_mullo);
   pragma Inline_Always (mm_sll);
   pragma Inline_Always (mm_sra);
   pragma Inline_Always (mm_srl);
   pragma Inline_Always (mm_and);
   pragma Inline_Always (mm_andnot);
   pragma Inline_Always (mm_or);
   pragma Inline_Always (mm_xor);
   pragma Inline_Always (mm_eq);
   pragma Inline_Always (mm_gt);

end Matreshka.Internals.SIMD.Intel.MMX;
