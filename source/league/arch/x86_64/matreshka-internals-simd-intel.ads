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
--  instruction sets. Children packages provide operations on this types,
--  one child package covers one instruction set. Types declarations are
--  specific for GNAT compiler. The way how subprograms are defined is also
--  GNAT specific, it allows to highly optimize code and replace one function
--  by one instruction in most cases.
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

   --  Type conversion operations.

   function To_v16qi is new Ada.Unchecked_Conversion (v8hi, v16qi);
   function To_v8hi is new Ada.Unchecked_Conversion (v4si, v8hi);
   function To_v8hi is new Ada.Unchecked_Conversion (v2di, v8hi);
   function To_v4si is new Ada.Unchecked_Conversion (v8hi, v4si);
   function To_v2di is new Ada.Unchecked_Conversion (v4si, v2di);
   function To_v2di is new Ada.Unchecked_Conversion (v8hi, v2di);

end Matreshka.Internals.SIMD.Intel;
