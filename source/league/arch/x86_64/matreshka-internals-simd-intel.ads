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
--  This package provides set of Intel's specific data types for MMX/SSE
--  instruction sets and GCC builtin operations to operate on objects of
--  vector types. Types and subprograms declarations are specific for GNAT
--  compiler. The way how operations is defined is also very GNAT specific,
--  it allows to highly optimize code and replace one function by one
--  instruction in most cases.
------------------------------------------------------------------------------
with Ada.Unchecked_Conversion;
with Interfaces;

package Matreshka.Internals.SIMD.Intel is

   pragma Pure;

   --  128-bit types

   type v16qi is array (1 .. 16) of Interfaces.Integer_8;
   pragma Machine_Attribute (v16qi, "vector_type");
   pragma Machine_Attribute (v16qi, "may_alias");

   type v8hi is array (1 .. 8) of Interfaces.Integer_16;
   pragma Machine_Attribute (v8hi, "vector_type");
   pragma Machine_Attribute (v8hi, "may_alias");

   type v4si is array (1 .. 4) of Interfaces.Integer_32;
   pragma Machine_Attribute (v4si, "vector_type");
   pragma Machine_Attribute (v4si, "may_alias");

   type v2di is array (1 .. 2) of Interfaces.Integer_64;
   pragma Machine_Attribute (v2di, "vector_type");
   pragma Machine_Attribute (v2di, "may_alias");

   type v4sf is array (1 .. 4) of Interfaces.IEEE_Float_32;
   pragma Machine_Attribute (v4sf, "vector_type");
   pragma Machine_Attribute (v4sf, "may_alias");

   type v2df is array (1 .. 2) of Interfaces.IEEE_Float_64;
   pragma Machine_Attribute (v2df, "vector_type");
   pragma Machine_Attribute (v2df, "may_alias");

   --  64-bit types

   type v8qi is array (1 .. 8) of Interfaces.Integer_8;
   pragma Machine_Attribute (v8qi, "vector_type");
   pragma Machine_Attribute (v8qi, "may_alias");

   type v4hi is array (1 .. 4) of Interfaces.Integer_16;
   pragma Machine_Attribute (v4hi, "vector_type");
   pragma Machine_Attribute (v4hi, "may_alias");

   type v2si is array (1 .. 2) of Interfaces.Integer_32;
   pragma Machine_Attribute (v2si, "vector_type");
   pragma Machine_Attribute (v2si, "may_alias");

   type v1di is array (1 .. 1) of Interfaces.Integer_64;
   pragma Machine_Attribute (v1di, "vector_type");
   pragma Machine_Attribute (v1di, "may_alias");

   function To_v16qi is new Ada.Unchecked_Conversion (v8hi, v16qi);
   function To_v8hi is new Ada.Unchecked_Conversion (v4si, v8hi);
   function To_v8hi is new Ada.Unchecked_Conversion (v2di, v8hi);
   function To_v4si is new Ada.Unchecked_Conversion (v8hi, v4si);
   function To_v2di is new Ada.Unchecked_Conversion (v4si, v2di);
   function To_v2di is new Ada.Unchecked_Conversion (v8hi, v2di);

   function mm_and_si128 (A : v2di; B : v2di) return v2di;
   pragma Import (Intrinsic, mm_and_si128, "__builtin_ia32_pand128");

   function mm_andnot_si128 (A : v2di; B : v2di) return v2di;
   pragma Import (Intrinsic, mm_andnot_si128, "__builtin_ia32_pandn128");

   function mm_movemask_epi8 (Item : v16qi) return Interfaces.Unsigned_32;
   pragma Import (Intrinsic, mm_movemask_epi8, "__builtin_ia32_pmovmskb128");

   function mm_cmpeq_epi16 (Left : v8hi; Right : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_cmpeq_epi16, "__builtin_ia32_pcmpeqw128");

   function mm_cmpgt_epi16 (Left : v8hi; Right : v8hi) return v8hi;
   pragma Import (Intrinsic, mm_cmpgt_epi16, "__builtin_ia32_pcmpgtw128");

   function mm_insert_epi16
    (A : v8hi;
     V : Interfaces.Integer_16;
     N : Interfaces.Unsigned_32) return v8hi;
   pragma Import (Intrinsic, mm_insert_epi16, "__builtin_ia32_vec_set_v8hi");

   function mm_shufflelo_epi16
    (A : v8hi; M : Interfaces.Integer_32) return v8hi;
   pragma Import (Intrinsic, mm_shufflelo_epi16, "__builtin_ia32_pshuflw");

   function mm_shuffle_epi32 (A : v4si; M : Interfaces.Integer_32) return v4si;
   pragma Import (Intrinsic, mm_shuffle_epi32, "__builtin_ia32_pshufd");

--   --  MMX/SSE 64-bit vectors
--
--   type Integer_64_Vector_1 is private;
--   pragma Preelaborable_Initialization (Integer_64_Vector_1);
--   type Unsigned_64_Vector_1 is private;
--   pragma Preelaborable_Initialization (Unsigned_64_Vector_1);
--   type Integer_32_Vector_2 is private;
--   pragma Preelaborable_Initialization (Integer_32_Vector_2);
--   type Unsigned_32_Vector_2 is private;
--   pragma Preelaborable_Initialization (Unsigned_32_Vector_2);
--   type Integer_16_Vector_4 is private;
--   pragma Preelaborable_Initialization (Integer_16_Vector_4);
--   type Unsigned_16_Vector_4 is private;
--   pragma Preelaborable_Initialization (Unsigned_16_Vector_4);
--   type Integer_8_Vector_8 is private;
--   pragma Preelaborable_Initialization (Integer_8_Vector_8);
--   type Unsigned_8_Vector_8 is private;
--   pragma Preelaborable_Initialization (Unsigned_8_Vector_8);
--
--   --  SSE 128-bit vectors
--
--   type Integer_64_Vector_2 is private;
--   pragma Preelaborable_Initialization (Integer_64_Vector_2);
--   type Unsigned_64_Vector_2 is private;
--   pragma Preelaborable_Initialization (Unsigned_64_Vector_2);
--   type Integer_32_Vector_4 is private;
--   pragma Preelaborable_Initialization (Integer_32_Vector_4);
--   type Unsigned_32_Vector_4 is private;
--   pragma Preelaborable_Initialization (Unsigned_32_Vector_4);
--   type Integer_16_Vector_8 is private;
--   pragma Preelaborable_Initialization (Integer_16_Vector_8);
--   type Unsigned_16_Vector_8 is private;
--   pragma Preelaborable_Initialization (Unsigned_16_Vector_8);
--   type Integer_8_Vector_16 is private;
--   pragma Preelaborable_Initialization (Integer_8_Vector_16);
--   type Unsigned_8_Vector_16 is private;
--   pragma Preelaborable_Initialization (Unsigned_8_Vector_16);
--
--  private
--
--   --  Internal data types for implementing the intrinsics.
--
--   type v1di is array (0 .. 0) of Interfaces.Integer_64;
--   pragma Machine_Attribute (v1di, "vector_type");
--   pragma Machine_Attribute (v1di, "may_alias");
--
--   type v2si is array (0 .. 1) of Interfaces.Integer_32;
--   pragma Machine_Attribute (v2si, "vector_type");
--   pragma Machine_Attribute (v2si, "may_alias");
--
--   type v4hi is array (0 .. 3) of Interfaces.Integer_16;
--   pragma Machine_Attribute (v4hi, "vector_type");
--   pragma Machine_Attribute (v4hi, "may_alias");
--
--   type v8qi is array (0 .. 7) of Interfaces.Integer_8;
--   pragma Machine_Attribute (v8qi, "vector_type");
--   pragma Machine_Attribute (v8qi, "may_alias");
--
--   type v4si is array (1 .. 4) of Interfaces.Integer_32;
--   pragma Machine_Attribute (v4si, "vector_type");
--   pragma Machine_Attribute (v4si, "may_alias");
--
--   --  GNAT unable to propagate vector attributes to derived types, thus
--   --  all vector types are declared explicitly instead of be declared as
--   --  derived.
--
--   type Integer_64_Vector_1 is array (0 .. 0) of Interfaces.Integer_64;
--   pragma Machine_Attribute (Integer_64_Vector_1, "vector_type");
--   pragma Machine_Attribute (Integer_64_Vector_1, "may_alias");
--
--   type Unsigned_64_Vector_1 is array (0 .. 0) of Interfaces.Integer_64;
--   pragma Machine_Attribute (Unsigned_64_Vector_1, "vector_type");
--   pragma Machine_Attribute (Unsigned_64_Vector_1, "may_alias");
--
--   type Integer_32_Vector_2 is array (0 .. 1) of Interfaces.Integer_32;
--   pragma Machine_Attribute (Integer_32_Vector_2, "vector_type");
--   pragma Machine_Attribute (Integer_32_Vector_2, "may_alias");
--
--   type Unsigned_32_Vector_2 is array (0 .. 1) of Interfaces.Integer_32;
--   pragma Machine_Attribute (Unsigned_32_Vector_2, "vector_type");
--   pragma Machine_Attribute (Unsigned_32_Vector_2, "may_alias");
--
--   type Integer_16_Vector_4 is array (0 .. 3) of Interfaces.Integer_16;
--   pragma Machine_Attribute (Integer_16_Vector_4, "vector_type");
--   pragma Machine_Attribute (Integer_16_Vector_4, "may_alias");
--
--   type Unsigned_16_Vector_4 is array (0 .. 3) of Interfaces.Integer_16;
--   pragma Machine_Attribute (Unsigned_16_Vector_4, "vector_type");
--   pragma Machine_Attribute (Unsigned_16_Vector_4, "may_alias");
--
--   type Integer_8_Vector_8 is array (0 .. 7) of Interfaces.Integer_8;
--   pragma Machine_Attribute (Integer_8_Vector_8, "vector_type");
--   pragma Machine_Attribute (Integer_8_Vector_8, "may_alias");
--
--   type Unsigned_8_Vector_8 is array (0 .. 7) of Interfaces.Integer_8;
--   pragma Machine_Attribute (Unsigned_8_Vector_8, "vector_type");
--   pragma Machine_Attribute (Unsigned_8_Vector_8, "may_alias");
--
--   type Integer_64_Vector_2 is array (0 .. 1) of Interfaces.Integer_64;
--   pragma Machine_Attribute (Integer_64_Vector_2, "vector_type");
--   pragma Machine_Attribute (Integer_64_Vector_2, "may_alias");
--
--   type Unsigned_64_Vector_2 is array (0 .. 1) of Interfaces.Integer_64;
--   pragma Machine_Attribute (Unsigned_64_Vector_2, "vector_type");
--   pragma Machine_Attribute (Unsigned_64_Vector_2, "may_alias");
--
--   type Integer_32_Vector_4 is array (0 .. 3) of Interfaces.Integer_32;
--   pragma Machine_Attribute (Integer_32_Vector_4, "vector_type");
--   pragma Machine_Attribute (Integer_32_Vector_4, "may_alias");
--
--   type Unsigned_32_Vector_4 is array (0 .. 3) of Interfaces.Integer_32;
--   pragma Machine_Attribute (Unsigned_32_Vector_4, "vector_type");
--   pragma Machine_Attribute (Unsigned_32_Vector_4, "may_alias");
--
--   type Integer_16_Vector_8 is array (0 .. 7) of Interfaces.Integer_16;
--   pragma Machine_Attribute (Integer_16_Vector_8, "vector_type");
--   pragma Machine_Attribute (Integer_16_Vector_8, "may_alias");
--
--   type Unsigned_16_Vector_8 is array (0 .. 7) of Interfaces.Integer_16;
--   pragma Machine_Attribute (Unsigned_16_Vector_8, "vector_type");
--   pragma Machine_Attribute (Unsigned_16_Vector_8, "may_alias");
--
--   type Integer_8_Vector_16 is array (0 .. 15) of Interfaces.Integer_8;
--   pragma Machine_Attribute (Integer_8_Vector_16, "vector_type");
--   pragma Machine_Attribute (Integer_8_Vector_16, "may_alias");
--
--   type Unsigned_8_Vector_16 is array (0 .. 15) of Interfaces.Integer_8;
--   pragma Machine_Attribute (Unsigned_8_Vector_16, "vector_type");
--   pragma Machine_Attribute (Unsigned_8_Vector_16, "may_alias");
--
end Matreshka.Internals.SIMD.Intel;
