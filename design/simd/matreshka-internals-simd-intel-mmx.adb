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
with Ada.Unchecked_Conversion;

package body Matreshka.Internals.SIMD.Intel.MMX is

   --  Import of GCC builtin operations.

   function mm_add_pi8 (M1 : v8qi; M2 : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_add_pi8, "__builtin_ia32_paddb");

   function mm_add_pi16 (M1 : v4hi; M2 : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_add_pi16, "__builtin_ia32_paddw");

   function mm_add_pi32 (M1 : v2si; M2 : v2si) return v2si;
   pragma Import (Intrinsic, mm_add_pi32, "__builtin_ia32_paddd");

   function mm_adds_pi8 (M1 : v8qi; M2 : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_adds_pi8, "__builtin_ia32_paddsb");

   function mm_adds_pu8 (M1 : v8qi; M2 : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_adds_pu8, "__builtin_ia32_paddusb");

   function mm_adds_pi16 (M1 : v4hi; M2 : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_adds_pi16, "__builtin_ia32_paddsw");

   function mm_adds_pu16 (M1 : v4hi; M2 : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_adds_pu16, "__builtin_ia32_paddusw");

   function mm_sub_pi8 (M1 : v8qi; M2 : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_sub_pi8, "__builtin_ia32_psubb");

   function mm_sub_pi16 (M1 : v4hi; M2 : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_sub_pi16, "__builtin_ia32_psubw");

   function mm_sub_pi32 (M1 : v2si; M2 : v2si) return v2si;
   pragma Import (Intrinsic, mm_sub_pi32, "__builtin_ia32_psubd");

   function mm_subs_pi8 (M1 : v8qi; M2 : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_subs_pi8, "__builtin_ia32_psubsb");

   function mm_subs_pu8 (M1 : v8qi; M2 : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_subs_pu8, "__builtin_ia32_psubusb");

   function mm_subs_pi16 (M1 : v4hi; M2 : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_subs_pi16, "__builtin_ia32_psubsw");

   function mm_subs_pu16 (M1 : v4hi; M2 : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_subs_pu16, "__builtin_ia32_psubusw");

   function mm_madd_pi16 (M1 : v4hi; M2 : v4hi) return v2si;
   pragma Import (Intrinsic, mm_madd_pi16, "__builtin_ia32_pmaddwd");

   function mm_mulhi_pi16 (M1 : v4hi; M2 : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_mulhi_pi16, "__builtin_ia32_pmulhw");

   function mm_mullo_pi16 (M1 : v4hi; M2 : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_mullo_pi16, "__builtin_ia32_pmullw");

   --  GCC 4.5

--   function mm_sll_pi16 (M : v4hi; Count : v4hi) return v4hi;
--   pragma Import (Intrinsic, mm_sll_pi16, "__builtin_ia32_psllw");
--
--   function mm_slli_pi16
--     (M : v4hi; Count : Interfaces.Unsigned_32) return v4hi;
--   pragma Import (Intrinsic, mm_slli_pi16, "__builtin_ia32_psllwi");
--
--   function mm_sll_pi32 (M : v2si; Count : v2si) return v2si;
--   pragma Import (Intrinsic, mm_sll_pi32, "__builtin_ia32_pslld");
--
--   function mm_slli_pi32
--     (M : v2si; Count : Interfaces.Unsigned_32) return v2si;
--   pragma Import (Intrinsic, mm_slli_pi32, "__builtin_ia32_pslldi");
--
--   function mm_sll_pi64 (M : v1di; Count : v1di) return v1di;
--   pragma Import (Intrinsic, mm_sll_pi32, "__builtin_ia32_psllq");
--
--   function mm_slli_pi64
--     (M : v1di; Count : Interfaces.Unsigned_32) return v1di;
--   pragma Import (Intrinsic, mm_slli_pi32, "__builtin_ia32_psllqi");
--
--   function mm_sra_pi16 (M : v4hi; Count : v4hi) return v4hi;
--   pragma Import (Intrinsic, mm_sra_pi16, "__builtin_ia32_psraw");
--
--   function mm_srai_pi16
--     (M : v4hi; Count : Interfaces.Unsigned_32) return v4hi;
--   pragma Import (Intrinsic, mm_srai_pi16, "__builtin_ia32_psrawi");
--
--   function mm_sra_pi32 (M : v2si; Count : v2si) return v4hi;
--   pragma Import (Intrinsic, mm_sra_pi32, "__builtin_ia32_psrad");
--
--   function mm_srai_pi32
--     (M : v2si; Count : Interfaces.Unsigned_32) return v4hi;
--   pragma Import (Intrinsic, mm_srai_pi32, "__builtin_ia32_psradi");
--
--   function mm_srl_pi16 (M : v4hi; Count : v4hi) return v4hi;
--   pragma Import (Intrinsic, mm_srl_pi32, "__builtin_ia32_psrlw");
--
--   function mm_srli_pi16
--     (M : v4hi; Count : Interfaces.Unsigned_32) return v4hi;
--   pragma Import (Intrinsic, mm_srli_pi16, "__builtin_ia32_psrlwi");
--
--   function mm_srl_pi32 (M : v2si; Count : v2si) return v2si;
--   pragma Import (Intrinsic, mm_srl_pi32, "__builtin_ia32_psrld");
--
--   function mm_srli_pi32
--     (M : v2si; Count : Interfaces.Unsigned_32) return v2si;
--   pragma Import (Intrinsic, mm_srli_pi32, "__builtin_ia32_psrldi");
--
--   function mm_srl_si64 (M : v1di; Count : v1di) return v1di;
--   pragma Import (Intrinsic, mm_srl_si64, "__builtin_ia32_psrlq");
--
--   function mm_srli_si64
--     (M : v1di; Count : Interfaces.Unsigned_32) return v1di;
--   pragma Import (Intrinsic, mm_srli_si64, "__builtin_ia32_psrlqi");

   --  GCC 4.3

   function mm_sll_pi16
     (M : v4hi; Count : Interfaces.Unsigned_64) return v4hi;
   pragma Import (Intrinsic, mm_sll_pi16, "__builtin_ia32_psllw");

   function mm_sll_pi32
     (M : v2si; Count : Interfaces.Unsigned_64) return v2si;
   pragma Import (Intrinsic, mm_sll_pi32, "__builtin_ia32_pslld");

   function mm_sll_pi64
     (M     : Interfaces.Unsigned_64;
      Count : Interfaces.Unsigned_64) return Interfaces.Unsigned_64;
   pragma Import (Intrinsic, mm_sll_pi64, "__builtin_ia32_psllq");

   function mm_sra_pi16
     (M : v4hi; Count : Interfaces.Unsigned_64) return v4hi;
   pragma Import (Intrinsic, mm_sra_pi16, "__builtin_ia32_psraw");

   function mm_sra_pi32
     (M : v2si; Count : Interfaces.Unsigned_64) return v2si;
   pragma Import (Intrinsic, mm_sra_pi32, "__builtin_ia32_psrad");

   function mm_srl_pi16
     (M : v4hi; Count : Interfaces.Unsigned_64) return v4hi;
   pragma Import (Intrinsic, mm_srl_pi16, "__builtin_ia32_psrlw");

   function mm_srl_pi32
     (M : v2si; Count : Interfaces.Unsigned_64) return v2si;
   pragma Import (Intrinsic, mm_srl_pi32, "__builtin_ia32_psrld");

   function mm_srl_si64
     (M     : Interfaces.Unsigned_64;
      Count : Interfaces.Unsigned_64) return Interfaces.Unsigned_64;
   pragma Import (Intrinsic, mm_srl_si64, "__builtin_ia32_psrlq");

   function mm_and_si64 (M1 : v2si; M2 : v2si) return v2si;
   pragma Import (Intrinsic, mm_and_si64, "__builtin_ia32_pand");

   function mm_andnot_si64 (M1 : v2si; M2 : v2si) return v2si;
   pragma Import (Intrinsic, mm_andnot_si64, "__builtin_ia32_pandn");

   function mm_or_si64 (M1 : v2si; M2 : v2si) return v2si;
   pragma Import (Intrinsic, mm_or_si64, "__builtin_ia32_por");

   function mm_xor_si64 (M1 : v2si; M2 : v2si) return v2si;
   pragma Import (Intrinsic, mm_xor_si64, "__builtin_ia32_pxor");

   function mm_cmpeq_pi8 (M1 : v8qi; M2 : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_cmpeq_pi8, "__builtin_ia32_pcmpeqb");

   function mm_cmpeq_pi16 (M1 : v4hi; M2 : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_cmpeq_pi16, "__builtin_ia32_pcmpeqw");

   function mm_cmpeq_pi32 (M1 : v2si; M2 : v2si) return v2si;
   pragma Import (Intrinsic, mm_cmpeq_pi32, "__builtin_ia32_pcmpeqd");

   function mm_cmpgt_pi8 (M1 : v8qi; M2 : v8qi) return v8qi;
   pragma Import (Intrinsic, mm_cmpgt_pi8, "__builtin_ia32_pcmpgtb");

   function mm_cmpgt_pi16 (M1 : v4hi; M2 : v4hi) return v4hi;
   pragma Import (Intrinsic, mm_cmpgt_pi16, "__builtin_ia32_pcmpgtw");

   function mm_cmpgt_pi32 (M1 : v2si; M2 : v2si) return v2si;
   pragma Import (Intrinsic, mm_cmpgt_pi32, "__builtin_ia32_pcmpgtd");

   function To_v8qi is
     new Ada.Unchecked_Conversion (Integer_8_Vector_8, v8qi);
   function To_v8qi is
     new Ada.Unchecked_Conversion (Unsigned_8_Vector_8, v8qi);
   function To_v4hi is
     new Ada.Unchecked_Conversion (Integer_16_Vector_4, v4hi);
   function To_v4hi is
     new Ada.Unchecked_Conversion (Unsigned_16_Vector_4, v4hi);
   function To_v2si is
     new Ada.Unchecked_Conversion (Integer_8_Vector_8, v2si);
   function To_v2si is
     new Ada.Unchecked_Conversion (Unsigned_8_Vector_8, v2si);
   function To_v2si is
     new Ada.Unchecked_Conversion (Integer_16_Vector_4, v2si);
   function To_v2si is
     new Ada.Unchecked_Conversion (Unsigned_16_Vector_4, v2si);
   function To_v2si is
     new Ada.Unchecked_Conversion (Integer_32_Vector_2, v2si);
   function To_v2si is
     new Ada.Unchecked_Conversion (Unsigned_32_Vector_2, v2si);
   function To_v2si is
     new Ada.Unchecked_Conversion (Integer_64_Vector_1, v2si);
   function To_v2si is
     new Ada.Unchecked_Conversion (Unsigned_64_Vector_1, v2si);
   function To_Integer_8_Vector_8 is
     new Ada.Unchecked_Conversion (v8qi, Integer_8_Vector_8);
   function To_Unsigned_8_Vector_8 is
     new Ada.Unchecked_Conversion (v8qi, Unsigned_8_Vector_8);
   function To_Integer_8_Vector_8 is
     new Ada.Unchecked_Conversion (v2si, Integer_8_Vector_8);
   function To_Unsigned_8_Vector_8 is
     new Ada.Unchecked_Conversion (v2si, Unsigned_8_Vector_8);
   function To_Integer_16_Vector_4 is
     new Ada.Unchecked_Conversion (v4hi, Integer_16_Vector_4);
   function To_Unsigned_16_Vector_4 is
     new Ada.Unchecked_Conversion (v4hi, Unsigned_16_Vector_4);
   function To_Integer_16_Vector_4 is
     new Ada.Unchecked_Conversion (v2si, Integer_16_Vector_4);
   function To_Unsigned_16_Vector_4 is
     new Ada.Unchecked_Conversion (v2si, Unsigned_16_Vector_4);
   function To_Integer_32_Vector_2 is
     new Ada.Unchecked_Conversion (v2si, Integer_32_Vector_2);
   function To_Unsigned_32_Vector_2 is
     new Ada.Unchecked_Conversion (v2si, Unsigned_32_Vector_2);
   function To_Integer_64_Vector_1 is
     new Ada.Unchecked_Conversion (v2si, Integer_64_Vector_1);
   function To_Unsigned_64_Vector_1 is
     new Ada.Unchecked_Conversion (v2si, Unsigned_64_Vector_1);

   --  GCC 4.3

   function To_Unsigned_64 is
     new Ada.Unchecked_Conversion
           (Integer_16_Vector_4, Interfaces.Unsigned_64);
   function To_Unsigned_64 is
     new Ada.Unchecked_Conversion
           (Unsigned_16_Vector_4, Interfaces.Unsigned_64);
   function To_Unsigned_64 is
     new Ada.Unchecked_Conversion
           (Integer_32_Vector_2, Interfaces.Unsigned_64);
   function To_Unsigned_64 is
     new Ada.Unchecked_Conversion
           (Unsigned_32_Vector_2, Interfaces.Unsigned_64);
   function To_Unsigned_64 is
     new Ada.Unchecked_Conversion
           (Integer_64_Vector_1, Interfaces.Unsigned_64);
   function To_Unsigned_64 is
     new Ada.Unchecked_Conversion
           (Unsigned_64_Vector_1, Interfaces.Unsigned_64);
   function To_Integer_64_Vector_1 is
     new Ada.Unchecked_Conversion
           (Interfaces.Unsigned_64, Integer_64_Vector_1);
   function To_Unsigned_64_Vector_1 is
     new Ada.Unchecked_Conversion
           (Interfaces.Unsigned_64, Unsigned_64_Vector_1);

   ------------
   -- mm_add --
   ------------

   function mm_add
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8 is
   begin
      return To_Integer_8_Vector_8 (mm_add_pi8 (To_v8qi (M1), To_v8qi (M2)));
   end mm_add;

   ------------
   -- mm_add --
   ------------

   function mm_add
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8 is
   begin
      return To_Unsigned_8_Vector_8 (mm_add_pi8 (To_v8qi (M1), To_v8qi (M2)));
   end mm_add;

   ------------
   -- mm_add --
   ------------

   function mm_add
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return To_Integer_16_Vector_4 (mm_add_pi16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_add;

   ------------
   -- mm_add --
   ------------

   function mm_add
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4 is
   begin
      return
        To_Unsigned_16_Vector_4 (mm_add_pi16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_add;

   ------------
   -- mm_add --
   ------------

   function mm_add
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2 is
   begin
      return To_Integer_32_Vector_2 (mm_add_pi32 (To_v2si (M1), To_v2si (M2)));
   end mm_add;

   ------------
   -- mm_add --
   ------------

   function mm_add
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2 is
   begin
      return
        To_Unsigned_32_Vector_2 (mm_add_pi32 (To_v2si (M1), To_v2si (M2)));
   end mm_add;

   -------------
   -- mm_adds --
   -------------

   function mm_adds
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8 is
   begin
      return To_Integer_8_Vector_8 (mm_adds_pi8 (To_v8qi (M1), To_v8qi (M2)));
   end mm_adds;

   -------------
   -- mm_adds --
   -------------

   function mm_adds
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8 is
   begin
      return To_Unsigned_8_Vector_8 (mm_adds_pu8 (To_v8qi (M1), To_v8qi (M2)));
   end mm_adds;

   -------------
   -- mm_adds --
   -------------

   function mm_adds
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return
        To_Integer_16_Vector_4 (mm_adds_pi16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_adds;

   -------------
   -- mm_adds --
   -------------

   function mm_adds
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4 is
   begin
      return
        To_Unsigned_16_Vector_4 (mm_adds_pu16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_adds;

   ------------
   -- mm_and --
   ------------

   function mm_and
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8 is
   begin
      return To_Integer_8_Vector_8 (mm_and_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_and;

   ------------
   -- mm_and --
   ------------

   function mm_and
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8 is
   begin
      return To_Unsigned_8_Vector_8 (mm_and_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_and;

   ------------
   -- mm_and --
   ------------

   function mm_and
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return To_Integer_16_Vector_4 (mm_and_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_and;

   ------------
   -- mm_and --
   ------------

   function mm_and
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4 is
   begin
      return
        To_Unsigned_16_Vector_4 (mm_and_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_and;

   ------------
   -- mm_and --
   ------------

   function mm_and
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2 is
   begin
      return
        To_Integer_32_Vector_2 (mm_and_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_and;

   ------------
   -- mm_and --
   ------------

   function mm_and
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2 is
   begin
      return
        To_Unsigned_32_Vector_2 (mm_and_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_and;

   ------------
   -- mm_and --
   ------------

   function mm_and
     (M1 : Integer_64_Vector_1;
      M2 : Integer_64_Vector_1) return Integer_64_Vector_1 is
   begin
      return To_Integer_64_Vector_1 (mm_and_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_and;

   ------------
   -- mm_and --
   ------------

   function mm_and
     (M1 : Unsigned_64_Vector_1;
      M2 : Unsigned_64_Vector_1) return Unsigned_64_Vector_1 is
   begin
      return
        To_Unsigned_64_Vector_1 (mm_and_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_and;

   ---------------
   -- mm_andnot --
   ---------------

   function mm_andnot
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8 is
   begin
      return
        To_Integer_8_Vector_8 (mm_andnot_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_andnot;

   ---------------
   -- mm_andnot --
   ---------------

   function mm_andnot
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8 is
   begin
      return
        To_Unsigned_8_Vector_8 (mm_andnot_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_andnot;

   ---------------
   -- mm_andnot --
   ---------------

   function mm_andnot
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return
        To_Integer_16_Vector_4 (mm_andnot_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_andnot;

   ---------------
   -- mm_andnot --
   ---------------

   function mm_andnot
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4 is
   begin
      return
        To_Unsigned_16_Vector_4 (mm_andnot_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_andnot;

   ---------------
   -- mm_andnot --
   ---------------

   function mm_andnot
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2 is
   begin
      return
        To_Integer_32_Vector_2 (mm_andnot_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_andnot;

   ---------------
   -- mm_andnot --
   ---------------

   function mm_andnot
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2 is
   begin
      return
        To_Unsigned_32_Vector_2 (mm_andnot_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_andnot;

   ---------------
   -- mm_andnot --
   ---------------

   function mm_andnot
     (M1 : Integer_64_Vector_1;
      M2 : Integer_64_Vector_1) return Integer_64_Vector_1 is
   begin
      return
        To_Integer_64_Vector_1 (mm_andnot_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_andnot;

   ---------------
   -- mm_andnot --
   ---------------

   function mm_andnot
     (M1 : Unsigned_64_Vector_1;
      M2 : Unsigned_64_Vector_1) return Unsigned_64_Vector_1 is
   begin
      return
        To_Unsigned_64_Vector_1 (mm_andnot_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_andnot;

   -----------
   -- mm_eq --
   -----------

   function mm_eq
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8 is
   begin
      return To_Integer_8_Vector_8 (mm_cmpeq_pi8 (To_v8qi (M1), To_v8qi (M2)));
   end mm_eq;

   -----------
   -- mm_eq --
   -----------

   function mm_eq
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8 is
   begin
      return
        To_Unsigned_8_Vector_8 (mm_cmpeq_pi8 (To_v8qi (M1), To_v8qi (M2)));
   end mm_eq;

   -----------
   -- mm_eq --
   -----------

   function mm_eq
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return
        To_Integer_16_Vector_4 (mm_cmpeq_pi16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_eq;

   -----------
   -- mm_eq --
   -----------

   function mm_eq
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4 is
   begin
      return
        To_Unsigned_16_Vector_4 (mm_cmpeq_pi16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_eq;

   -----------
   -- mm_eq --
   -----------

   function mm_eq
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2 is
   begin
      return
        To_Integer_32_Vector_2 (mm_cmpeq_pi32 (To_v2si (M1), To_v2si (M2)));
   end mm_eq;

   -----------
   -- mm_eq --
   -----------

   function mm_eq
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2 is
   begin
      return
        To_Unsigned_32_Vector_2 (mm_cmpeq_pi32 (To_v2si (M1), To_v2si (M2)));
   end mm_eq;

   -----------
   -- mm_gt --
   -----------

   function mm_gt
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8 is
   begin
      return To_Integer_8_Vector_8 (mm_cmpgt_pi8 (To_v8qi (M1), To_v8qi (M2)));
   end mm_gt;

   -----------
   -- mm_gt --
   -----------

   function mm_gt
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return
        To_Integer_16_Vector_4 (mm_cmpgt_pi16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_gt;

   -----------
   -- mm_gt --
   -----------

   function mm_gt
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2 is
   begin
      return
        To_Integer_32_Vector_2 (mm_cmpgt_pi32 (To_v2si (M1), To_v2si (M2)));
   end mm_gt;

   -------------
   -- mm_madd --
   -------------

   function mm_madd
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_32_Vector_2 is
   begin
      return
        To_Integer_32_Vector_2 (mm_madd_pi16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_madd;

   --------------
   -- mm_mulhi --
   --------------

   function mm_mulhi
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return
        To_Integer_16_Vector_4 (mm_mulhi_pi16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_mulhi;

   --------------
   -- mm_mullo --
   --------------

   function mm_mullo
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return
        To_Integer_16_Vector_4 (mm_mullo_pi16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_mullo;

   -----------
   -- mm_or --
   -----------

   function mm_or
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8 is
   begin
      return To_Integer_8_Vector_8 (mm_or_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_or;

   -----------
   -- mm_or --
   -----------

   function mm_or
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8 is
   begin
      return To_Unsigned_8_Vector_8 (mm_or_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_or;

   -----------
   -- mm_or --
   -----------

   function mm_or
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return To_Integer_16_Vector_4 (mm_or_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_or;

   -----------
   -- mm_or --
   -----------

   function mm_or
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4 is
   begin
      return To_Unsigned_16_Vector_4 (mm_or_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_or;

   -----------
   -- mm_or --
   -----------

   function mm_or
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2 is
   begin
      return To_Integer_32_Vector_2 (mm_or_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_or;

   -----------
   -- mm_or --
   -----------

   function mm_or
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2 is
   begin
      return To_Unsigned_32_Vector_2 (mm_or_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_or;

   -----------
   -- mm_or --
   -----------

   function mm_or
     (M1 : Integer_64_Vector_1;
      M2 : Integer_64_Vector_1) return Integer_64_Vector_1 is
   begin
      return To_Integer_64_Vector_1 (mm_or_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_or;

   -----------
   -- mm_or --
   -----------

   function mm_or
     (M1 : Unsigned_64_Vector_1;
      M2 : Unsigned_64_Vector_1) return Unsigned_64_Vector_1 is
   begin
      return To_Unsigned_64_Vector_1 (mm_or_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_or;

   --  GCC 4.3

   ------------
   -- mm_sll --
   ------------

   function mm_sll
     (M     : Integer_16_Vector_4;
      Count : Interfaces.Unsigned_32) return Integer_16_Vector_4 is
   begin
      return
        To_Integer_16_Vector_4
          (mm_sll_pi16 (To_v4hi (M), Interfaces.Unsigned_64 (Count)));
   end mm_sll;

   --  GCC 4.5

--   ------------
--   -- mm_sll --
--   ------------
--
--   function mm_sll
--     (M     : Integer_16_Vector_4;
--      Count : Interfaces.Unsigned_32) return Integer_16_Vector_4 is
--   begin
--      return To_Integer_16_Vector_4 (mm_slli_pi16 (To_v4hi (M), Count));
--   end mm_sll;

   --  GCC 4.3

   ------------
   -- mm_sll --
   ------------

   function mm_sll
     (M     : Unsigned_16_Vector_4;
      Count : Interfaces.Unsigned_32) return Unsigned_16_Vector_4 is
   begin
      return
        To_Unsigned_16_Vector_4
          (mm_sll_pi16 (To_v4hi (M), Interfaces.Unsigned_64 (Count)));
   end mm_sll;

   --  GCC 4.5

--   ------------
--   -- mm_sll --
--   ------------
--
--   function mm_sll
--     (M     : Unsigned_16_Vector_4;
--      Count : Interfaces.Unsigned_32) return Unsigned_16_Vector_4 is
--   begin
--      return To_Unsigned_16_Vector_4 (mm_slli_pi16 (To_v4hi (M), Count));
--   end mm_sll;

   ------------
   -- mm_sll --
   ------------

   function mm_sll
     (M     : Integer_32_Vector_2;
      Count : Interfaces.Unsigned_32) return Integer_32_Vector_2 is
   begin
      return
        To_Integer_32_Vector_2
          (mm_sll_pi32 (To_v2si (M), Interfaces.Unsigned_64 (Count)));
   end mm_sll;

   ------------
   -- mm_sll --
   ------------

   function mm_sll
     (M     : Unsigned_32_Vector_2;
      Count : Interfaces.Unsigned_32) return Unsigned_32_Vector_2 is
   begin
      return
        To_Unsigned_32_Vector_2
          (mm_sll_pi32 (To_v2si (M), Interfaces.Unsigned_64 (Count)));
   end mm_sll;

   ------------
   -- mm_sll --
   ------------

   function mm_sll
     (M     : Integer_64_Vector_1;
      Count : Interfaces.Unsigned_32) return Integer_64_Vector_1 is
   begin
      return
        To_Integer_64_Vector_1
          (mm_sll_pi64 (To_Unsigned_64 (M), Interfaces.Unsigned_64 (Count)));
   end mm_sll;

   ------------
   -- mm_sll --
   ------------

   function mm_sll
     (M     : Unsigned_64_Vector_1;
      Count : Interfaces.Unsigned_32) return Unsigned_64_Vector_1 is
   begin
      return
        To_Unsigned_64_Vector_1
          (mm_sll_pi64 (To_Unsigned_64 (M), Interfaces.Unsigned_64 (Count)));
   end mm_sll;

   --  GCC 4.3

   ------------
   -- mm_sll --
   ------------

   function mm_sll
     (M     : Integer_16_Vector_4;
      Count : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return
        To_Integer_16_Vector_4
          (mm_sll_pi16 (To_v4hi (M), To_Unsigned_64 (Count)));
   end mm_sll;

   --  GCC 4.5

--   ------------
--   -- mm_sll --
--   ------------
--
--   function mm_sll
--     (M     : Integer_16_Vector_4;
--      Count : Integer_16_Vector_4) return Integer_16_Vector_4 is
--   begin
--      return
--        To_Integer_16_Vector_4 (mm_sll_pi16 (To_v4hi (M), To_v4hi (Count)));
--   end mm_sll;

   --  GCC 4.3

   ------------
   -- mm_sll --
   ------------

   function mm_sll
     (M     : Unsigned_16_Vector_4;
      Count : Unsigned_16_Vector_4) return Unsigned_16_Vector_4 is
   begin
      return
        To_Unsigned_16_Vector_4
          (mm_sll_pi16 (To_v4hi (M), To_Unsigned_64 (Count)));
   end mm_sll;

   --  GCC 4.5

--   ------------
--   -- mm_sll --
--   ------------
--
--   function mm_sll
--     (M     : Unsigned_16_Vector_4;
--      Count : Unsigned_16_Vector_4) return Unsigned_16_Vector_4 is
--   begin
--      return
--        To_Unsigned_16_Vector_4 (mm_sll_pi16 (To_v4hi (M), To_v4hi (Count)));
--   end mm_sll;

   ------------
   -- mm_sll --
   ------------

   function mm_sll
     (M     : Integer_32_Vector_2;
      Count : Integer_32_Vector_2) return Integer_32_Vector_2 is
   begin
      return
        To_Integer_32_Vector_2
          (mm_sll_pi32 (To_v2si (M), To_Unsigned_64 (Count)));
   end mm_sll;

   ------------
   -- mm_sll --
   ------------

   function mm_sll
     (M     : Unsigned_32_Vector_2;
      Count : Unsigned_32_Vector_2) return Unsigned_32_Vector_2 is
   begin
      return
        To_Unsigned_32_Vector_2
          (mm_sll_pi32 (To_v2si (M), To_Unsigned_64 (Count)));
   end mm_sll;

   ------------
   -- mm_sll --
   ------------

   function mm_sll
     (M     : Integer_64_Vector_1;
      Count : Integer_64_Vector_1) return Integer_64_Vector_1 is
   begin
      return
        To_Integer_64_Vector_1
          (mm_sll_pi64 (To_Unsigned_64 (M), To_Unsigned_64 (Count)));
   end mm_sll;

   ------------
   -- mm_sll --
   ------------

   function mm_sll
     (M     : Unsigned_64_Vector_1;
      Count : Unsigned_64_Vector_1) return Unsigned_64_Vector_1 is
   begin
      return
        To_Unsigned_64_Vector_1
          (mm_sll_pi64 (To_Unsigned_64 (M), To_Unsigned_64 (Count)));
   end mm_sll;

   ------------
   -- mm_sra --
   ------------

   function mm_sra
     (M     : Integer_16_Vector_4;
      Count : Interfaces.Unsigned_32) return Integer_16_Vector_4 is
   begin
      return
        To_Integer_16_Vector_4
          (mm_sra_pi16 (To_v4hi (M), Interfaces.Unsigned_64 (Count)));
   end mm_sra;

   ------------
   -- mm_sra --
   ------------

   function mm_sra
     (M     : Integer_32_Vector_2;
      Count : Interfaces.Unsigned_32) return Integer_32_Vector_2 is
   begin
      return
        To_Integer_32_Vector_2
          (mm_sra_pi32 (To_v2si (M), Interfaces.Unsigned_64 (Count)));
   end mm_sra;

   ------------
   -- mm_sra --
   ------------

   function mm_sra
     (M     : Integer_16_Vector_4;
      Count : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return
        To_Integer_16_Vector_4
          (mm_sra_pi16 (To_v4hi (M), To_Unsigned_64 (Count)));
   end mm_sra;

   ------------
   -- mm_sra --
   ------------

   function mm_sra
     (M     : Integer_32_Vector_2;
      Count : Integer_32_Vector_2) return Integer_32_Vector_2 is
   begin
      return
        To_Integer_32_Vector_2
          (mm_sra_pi32 (To_v2si (M), To_Unsigned_64 (Count)));
   end mm_sra;

   ------------
   -- mm_srl --
   ------------

   function mm_srl
     (M     : Integer_16_Vector_4;
      Count : Interfaces.Unsigned_32) return Integer_16_Vector_4 is
   begin
      return
        To_Integer_16_Vector_4
          (mm_srl_pi16 (To_v4hi (M), Interfaces.Unsigned_64 (Count)));
   end mm_srl;

   ------------
   -- mm_srl --
   ------------

   function mm_srl
     (M     : Unsigned_16_Vector_4;
      Count : Interfaces.Unsigned_32) return Unsigned_16_Vector_4 is
   begin
      return
        To_Unsigned_16_Vector_4
          (mm_srl_pi16 (To_v4hi (M), Interfaces.Unsigned_64 (Count)));
   end mm_srl;

   ------------
   -- mm_srl --
   ------------

   function mm_srl
     (M     : Integer_16_Vector_4;
      Count : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return
        To_Integer_16_Vector_4
          (mm_srl_pi16 (To_v4hi (M), To_Unsigned_64 (Count)));
   end mm_srl;

   ------------
   -- mm_srl --
   ------------

   function mm_srl
     (M     : Unsigned_16_Vector_4;
      Count : Unsigned_16_Vector_4) return Unsigned_16_Vector_4 is
   begin
      return
        To_Unsigned_16_Vector_4
          (mm_srl_pi16 (To_v4hi (M), To_Unsigned_64 (Count)));
   end mm_srl;

   ------------
   -- mm_srl --
   ------------

   function mm_srl
     (M     : Integer_32_Vector_2;
      Count : Interfaces.Unsigned_32) return Integer_32_Vector_2 is
   begin
      return
        To_Integer_32_Vector_2
          (mm_srl_pi32 (To_v2si (M), Interfaces.Unsigned_64 (Count)));
   end mm_srl;

   ------------
   -- mm_srl --
   ------------

   function mm_srl
     (M     : Unsigned_32_Vector_2;
      Count : Interfaces.Unsigned_32) return Unsigned_32_Vector_2 is
   begin
      return
        To_Unsigned_32_Vector_2
          (mm_srl_pi32 (To_v2si (M), Interfaces.Unsigned_64 (Count)));
   end mm_srl;

   ------------
   -- mm_srl --
   ------------

   function mm_srl
     (M     : Integer_32_Vector_2;
      Count : Integer_32_Vector_2) return Integer_32_Vector_2 is
   begin
      return
        To_Integer_32_Vector_2
          (mm_srl_pi32 (To_v2si (M), To_Unsigned_64 (Count)));
   end mm_srl;

   ------------
   -- mm_srl --
   ------------

   function mm_srl
     (M     : Unsigned_32_Vector_2;
      Count : Unsigned_32_Vector_2) return Unsigned_32_Vector_2 is
   begin
      return
        To_Unsigned_32_Vector_2
          (mm_srl_pi32 (To_v2si (M), To_Unsigned_64 (Count)));
   end mm_srl;

   ------------
   -- mm_srl --
   ------------

   function mm_srl
     (M     : Integer_64_Vector_1;
      Count : Interfaces.Unsigned_32) return Integer_64_Vector_1 is
   begin
      return
        To_Integer_64_Vector_1
          (mm_srl_si64 (To_Unsigned_64 (M), Interfaces.Unsigned_64 (Count)));
   end mm_srl;

   ------------
   -- mm_srl --
   ------------

   function mm_srl
     (M     : Unsigned_64_Vector_1;
      Count : Interfaces.Unsigned_32) return Unsigned_64_Vector_1 is
   begin
      return
        To_Unsigned_64_Vector_1
          (mm_srl_si64 (To_Unsigned_64 (M), Interfaces.Unsigned_64 (Count)));
   end mm_srl;

   ------------
   -- mm_srl --
   ------------

   function mm_srl
     (M     : Integer_64_Vector_1;
      Count : Integer_64_Vector_1) return Integer_64_Vector_1 is
   begin
      return
        To_Integer_64_Vector_1
          (mm_srl_si64 (To_Unsigned_64 (M), To_Unsigned_64 (Count)));
   end mm_srl;

   ------------
   -- mm_srl --
   ------------

   function mm_srl
     (M     : Unsigned_64_Vector_1;
      Count : Unsigned_64_Vector_1) return Unsigned_64_Vector_1 is
   begin
      return
        To_Unsigned_64_Vector_1
          (mm_srl_si64 (To_Unsigned_64 (M), To_Unsigned_64 (Count)));
   end mm_srl;

   ------------
   -- mm_sub --
   ------------

   function mm_sub
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8 is
   begin
      return To_Integer_8_Vector_8 (mm_sub_pi8 (To_v8qi (M1), To_v8qi (M2)));
   end mm_sub;

   ------------
   -- mm_sub --
   ------------

   function mm_sub
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8 is
   begin
      return To_Unsigned_8_Vector_8 (mm_sub_pi8 (To_v8qi (M1), To_v8qi (M2)));
   end mm_sub;

   ------------
   -- mm_sub --
   ------------

   function mm_sub
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return To_Integer_16_Vector_4 (mm_sub_pi16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_sub;

   ------------
   -- mm_sub --
   ------------

   function mm_sub
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4 is
   begin
      return To_Unsigned_16_Vector_4 (mm_sub_pi16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_sub;

   ------------
   -- mm_sub --
   ------------

   function mm_sub
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2 is
   begin
      return To_Integer_32_Vector_2 (mm_sub_pi32 (To_v2si (M1), To_v2si (M2)));
   end mm_sub;

   ------------
   -- mm_sub --
   ------------

   function mm_sub
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2 is
   begin
      return
        To_Unsigned_32_Vector_2 (mm_sub_pi32 (To_v2si (M1), To_v2si (M2)));
   end mm_sub;

   -------------
   -- mm_subs --
   -------------

   function mm_subs
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8 is
   begin
      return To_Integer_8_Vector_8 (mm_subs_pi8 (To_v8qi (M1), To_v8qi (M2)));
   end mm_subs;

   -------------
   -- mm_subs --
   -------------

   function mm_subs
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8 is
   begin
      return To_Unsigned_8_Vector_8 (mm_subs_pu8 (To_v8qi (M1), To_v8qi (M2)));
   end mm_subs;

   -------------
   -- mm_subs --
   -------------

   function mm_subs
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return
        To_Integer_16_Vector_4 (mm_subs_pi16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_subs;

   -------------
   -- mm_subs --
   -------------

   function mm_subs
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4 is
   begin
      return
        To_Unsigned_16_Vector_4 (mm_subs_pu16 (To_v4hi (M1), To_v4hi (M2)));
   end mm_subs;

   ------------
   -- mm_xor --
   ------------

   function mm_xor
     (M1 : Integer_8_Vector_8;
      M2 : Integer_8_Vector_8) return Integer_8_Vector_8 is
   begin
      return To_Integer_8_Vector_8 (mm_xor_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_xor;

   ------------
   -- mm_xor --
   ------------

   function mm_xor
     (M1 : Unsigned_8_Vector_8;
      M2 : Unsigned_8_Vector_8) return Unsigned_8_Vector_8 is
   begin
      return To_Unsigned_8_Vector_8 (mm_xor_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_xor;

   ------------
   -- mm_xor --
   ------------

   function mm_xor
     (M1 : Integer_16_Vector_4;
      M2 : Integer_16_Vector_4) return Integer_16_Vector_4 is
   begin
      return To_Integer_16_Vector_4 (mm_xor_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_xor;

   ------------
   -- mm_xor --
   ------------

   function mm_xor
     (M1 : Unsigned_16_Vector_4;
      M2 : Unsigned_16_Vector_4) return Unsigned_16_Vector_4 is
   begin
      return
        To_Unsigned_16_Vector_4 (mm_xor_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_xor;

   ------------
   -- mm_xor --
   ------------

   function mm_xor
     (M1 : Integer_32_Vector_2;
      M2 : Integer_32_Vector_2) return Integer_32_Vector_2 is
   begin
      return To_Integer_32_Vector_2 (mm_xor_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_xor;

   ------------
   -- mm_xor --
   ------------

   function mm_xor
     (M1 : Unsigned_32_Vector_2;
      M2 : Unsigned_32_Vector_2) return Unsigned_32_Vector_2 is
   begin
      return
        To_Unsigned_32_Vector_2 (mm_xor_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_xor;

   ------------
   -- mm_xor --
   ------------

   function mm_xor
     (M1 : Integer_64_Vector_1;
      M2 : Integer_64_Vector_1) return Integer_64_Vector_1 is
   begin
      return To_Integer_64_Vector_1 (mm_xor_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_xor;

   ------------
   -- mm_xor --
   ------------

   function mm_xor
     (M1 : Unsigned_64_Vector_1;
      M2 : Unsigned_64_Vector_1) return Unsigned_64_Vector_1 is
   begin
      return
        To_Unsigned_64_Vector_1 (mm_xor_si64 (To_v2si (M1), To_v2si (M2)));
   end mm_xor;

end Matreshka.Internals.SIMD.Intel.MMX;
