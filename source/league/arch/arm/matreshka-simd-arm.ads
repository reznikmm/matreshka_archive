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
-- Copyright © 2011-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This package provides data types for SIMD NEON instructions set of ARM.
--  Type declarations use GNAT specific features.
------------------------------------------------------------------------------
with Ada.Unchecked_Conversion;
with Interfaces;

package Matreshka.SIMD.ARM is

   pragma Pure;

   --  64-bit types

   type int8x8_t is array (1 .. 8) of Interfaces.Integer_8;
   pragma Machine_Attribute (int8x8_t, "vector_type");
   pragma Machine_Attribute (int8x8_t, "may_alias");

   type int16x4_t is array (1 .. 4) of Interfaces.Integer_16;
   pragma Machine_Attribute (int16x4_t, "vector_type");
   pragma Machine_Attribute (int16x4_t, "may_alias");

   type int32x2_t is array (1 .. 2) of Interfaces.Integer_32;
   pragma Machine_Attribute (int32x2_t, "vector_type");
   pragma Machine_Attribute (int32x2_t, "may_alias");

   type int64x1_t is array (1 .. 1) of Interfaces.Integer_64;
   pragma Machine_Attribute (int64x1_t, "vector_type");
   pragma Machine_Attribute (int64x1_t, "may_alias");

   type float32x2_t is array (1 .. 2) of Interfaces.IEEE_Float_32;
   pragma Machine_Attribute (float32x2_t, "vector_type");
   pragma Machine_Attribute (float32x2_t, "may_alias");

   --  XXX poly8x8_t
   --  XXX poly16x4_t

   type uint8x8_t is array (1 .. 8) of Interfaces.Unsigned_8;
   pragma Machine_Attribute (uint8x8_t, "vector_type");
   pragma Machine_Attribute (uint8x8_t, "may_alias");

   type uint16x4_t is array (1 .. 4) of Interfaces.Unsigned_16;
   pragma Machine_Attribute (uint16x4_t, "vector_type");
   pragma Machine_Attribute (uint16x4_t, "may_alias");

   type uint32x2_t is array (1 .. 2) of Interfaces.Unsigned_32;
   pragma Machine_Attribute (uint32x2_t, "vector_type");
   pragma Machine_Attribute (uint32x2_t, "may_alias");

   type uint64x1_t is array (1 .. 1) of Interfaces.Unsigned_64;
   pragma Machine_Attribute (uint64x1_t, "vector_type");
   pragma Machine_Attribute (uint64x1_t, "may_alias");

   --  128-bit types

   type int8x16_t is array (1 .. 16) of Interfaces.Integer_8;
   pragma Machine_Attribute (int8x16_t, "vector_type");
   pragma Machine_Attribute (int8x16_t, "may_alias");

   type int16x8_t is array (1 .. 8) of Interfaces.Integer_16;
   pragma Machine_Attribute (int16x8_t, "vector_type");
   pragma Machine_Attribute (int16x8_t, "may_alias");

   type int32x4_t is array (1 .. 4) of Interfaces.Integer_32;
   pragma Machine_Attribute (int32x4_t, "vector_type");
   pragma Machine_Attribute (int32x4_t, "may_alias");

   type int64x2_t is array (1 .. 2) of Interfaces.Integer_64;
   pragma Machine_Attribute (int64x2_t, "vector_type");
   pragma Machine_Attribute (int64x2_t, "may_alias");

   type float32x4_t is array (1 .. 4) of Interfaces.IEEE_Float_32;
   pragma Machine_Attribute (float32x4_t, "vector_type");
   pragma Machine_Attribute (float32x4_t, "may_alias");

   --  XXX poly8x16_t
   --  XXX poly16x8_t

   type uint8x16_t is array (1 .. 16) of Interfaces.Unsigned_8;
   pragma Machine_Attribute (uint8x16_t, "vector_type");
   pragma Machine_Attribute (uint8x16_t, "may_alias");

   type uint16x8_t is array (1 .. 8) of Interfaces.Unsigned_16;
   pragma Machine_Attribute (uint16x8_t, "vector_type");
   pragma Machine_Attribute (uint16x8_t, "may_alias");

   type uint32x4_t is array (1 .. 4) of Interfaces.Unsigned_32;
   pragma Machine_Attribute (uint32x4_t, "vector_type");
   pragma Machine_Attribute (uint32x4_t, "may_alias");

   type uint64x2_t is array (1 .. 2) of Interfaces.Unsigned_64;
   pragma Machine_Attribute (uint64x2_t, "vector_type");
   pragma Machine_Attribute (uint64x2_t, "may_alias");

   --  Type conversion subprograms.

   function To_int8x8_t is new Ada.Unchecked_Conversion (uint8x8_t, int8x8_t);
   function To_int8x16_t is
     new Ada.Unchecked_Conversion (uint8x16_t, int8x16_t);
   function To_int16x4_t is
     new Ada.Unchecked_Conversion (uint16x4_t, int16x4_t);
   function To_int16x8_t is
     new Ada.Unchecked_Conversion (uint16x8_t, int16x8_t);
   function To_int32x2_t is
     new Ada.Unchecked_Conversion (uint32x2_t, int32x2_t);
   function To_int64x1_t is
     new Ada.Unchecked_Conversion (uint64x1_t, int64x1_t);

   function To_uint8x8_t is new Ada.Unchecked_Conversion (int8x8_t, uint8x8_t);
   function To_uint8x16_t is
     new Ada.Unchecked_Conversion (int8x16_t, uint8x16_t);
   function To_uint16x4_t is
     new Ada.Unchecked_Conversion (int16x4_t, uint16x4_t);
   function To_uint16x8_t is
     new Ada.Unchecked_Conversion (int16x8_t, uint16x8_t);
   function To_uint32x2_t is
     new Ada.Unchecked_Conversion (int32x2_t, uint32x2_t);
   function To_uint64x1_t is
     new Ada.Unchecked_Conversion (int64x1_t, uint64x1_t);

end Matreshka.SIMD.ARM;
