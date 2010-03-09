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
--  This package provides set of Intel's specific data types for MMX/SSE
--  instruction sets. Operations to operate on objects of vector types are
--  provided in children packages. Each child package cover one set of
--  instructions. Type declarations are specific for GNAT compiler. The way
--  how operations is defined is also very GNAT specific, it allows to
--  highly optimize code and replace one function by one instruction in most
--  cases.
------------------------------------------------------------------------------
private with Interfaces;

package Matreshka.Internals.SIMD.Intel is

   pragma Pure;

   --  MMX/SSE 64-bit vectors

   type Integer_64_Vector_1 is private;
   pragma Preelaborable_Initialization (Integer_64_Vector_1);
   type Unsigned_64_Vector_1 is private;
   pragma Preelaborable_Initialization (Unsigned_64_Vector_1);
   type Integer_32_Vector_2 is private;
   pragma Preelaborable_Initialization (Integer_32_Vector_2);
   type Unsigned_32_Vector_2 is private;
   pragma Preelaborable_Initialization (Unsigned_32_Vector_2);
   type Integer_16_Vector_4 is private;
   pragma Preelaborable_Initialization (Integer_16_Vector_4);
   type Unsigned_16_Vector_4 is private;
   pragma Preelaborable_Initialization (Unsigned_16_Vector_4);
   type Integer_8_Vector_8 is private;
   pragma Preelaborable_Initialization (Integer_8_Vector_8);
   type Unsigned_8_Vector_8 is private;
   pragma Preelaborable_Initialization (Unsigned_8_Vector_8);

   --  SSE 128-bit vectors

   type Integer_64_Vector_2 is private;
   pragma Preelaborable_Initialization (Integer_64_Vector_2);
   type Unsigned_64_Vector_2 is private;
   pragma Preelaborable_Initialization (Unsigned_64_Vector_2);
   type Integer_32_Vector_4 is private;
   pragma Preelaborable_Initialization (Integer_32_Vector_4);
   type Unsigned_32_Vector_4 is private;
   pragma Preelaborable_Initialization (Unsigned_32_Vector_4);
   type Integer_16_Vector_8 is private;
   pragma Preelaborable_Initialization (Integer_16_Vector_8);
   type Unsigned_16_Vector_8 is private;
   pragma Preelaborable_Initialization (Unsigned_16_Vector_8);
   type Integer_8_Vector_16 is private;
   pragma Preelaborable_Initialization (Integer_8_Vector_16);
   type Unsigned_8_Vector_16 is private;
   pragma Preelaborable_Initialization (Unsigned_8_Vector_16);

private

   --  Internal data types for implementing the intrinsics.

   type v1di is array (0 .. 0) of Interfaces.Integer_64;
   pragma Machine_Attribute (v1di, "vector_type");
   pragma Machine_Attribute (v1di, "may_alias");

   type v2si is array (0 .. 1) of Interfaces.Integer_32;
   pragma Machine_Attribute (v2si, "vector_type");
   pragma Machine_Attribute (v2si, "may_alias");

   type v4hi is array (0 .. 3) of Interfaces.Integer_16;
   pragma Machine_Attribute (v4hi, "vector_type");
   pragma Machine_Attribute (v4hi, "may_alias");

   type v8qi is array (0 .. 7) of Interfaces.Integer_8;
   pragma Machine_Attribute (v8qi, "vector_type");
   pragma Machine_Attribute (v8qi, "may_alias");

   type v2di is array (1 .. 2) of Interfaces.Integer_64;
   pragma Machine_Attribute (v2di, "vector_type");
   pragma Machine_Attribute (v2di, "may_alias");

   type v4si is array (1 .. 4) of Interfaces.Integer_32;
   pragma Machine_Attribute (v4si, "vector_type");
   pragma Machine_Attribute (v4si, "may_alias");

   type v8hi is array (1 .. 8) of Interfaces.Integer_16;
   pragma Machine_Attribute (v8hi, "vector_type");
   pragma Machine_Attribute (v8hi, "may_alias");

   type v16qi is array (1 .. 16) of Interfaces.Integer_8;
   pragma Machine_Attribute (v16qi, "vector_type");
   pragma Machine_Attribute (v16qi, "may_alias");

   --  GNAT unable to propagate vector attributes to derived types, thus
   --  all vector types are declared explicitly instead of be declared as
   --  derived.

   type Integer_64_Vector_1 is array (0 .. 0) of Interfaces.Integer_64;
   pragma Machine_Attribute (Integer_64_Vector_1, "vector_type");
   pragma Machine_Attribute (Integer_64_Vector_1, "may_alias");

   type Unsigned_64_Vector_1 is array (0 .. 0) of Interfaces.Integer_64;
   pragma Machine_Attribute (Unsigned_64_Vector_1, "vector_type");
   pragma Machine_Attribute (Unsigned_64_Vector_1, "may_alias");

   type Integer_32_Vector_2 is array (0 .. 1) of Interfaces.Integer_32;
   pragma Machine_Attribute (Integer_32_Vector_2, "vector_type");
   pragma Machine_Attribute (Integer_32_Vector_2, "may_alias");

   type Unsigned_32_Vector_2 is array (0 .. 1) of Interfaces.Integer_32;
   pragma Machine_Attribute (Unsigned_32_Vector_2, "vector_type");
   pragma Machine_Attribute (Unsigned_32_Vector_2, "may_alias");

   type Integer_16_Vector_4 is array (0 .. 3) of Interfaces.Integer_16;
   pragma Machine_Attribute (Integer_16_Vector_4, "vector_type");
   pragma Machine_Attribute (Integer_16_Vector_4, "may_alias");

   type Unsigned_16_Vector_4 is array (0 .. 3) of Interfaces.Integer_16;
   pragma Machine_Attribute (Unsigned_16_Vector_4, "vector_type");
   pragma Machine_Attribute (Unsigned_16_Vector_4, "may_alias");

   type Integer_8_Vector_8 is array (0 .. 7) of Interfaces.Integer_8;
   pragma Machine_Attribute (Integer_8_Vector_8, "vector_type");
   pragma Machine_Attribute (Integer_8_Vector_8, "may_alias");

   type Unsigned_8_Vector_8 is array (0 .. 7) of Interfaces.Integer_8;
   pragma Machine_Attribute (Unsigned_8_Vector_8, "vector_type");
   pragma Machine_Attribute (Unsigned_8_Vector_8, "may_alias");

   type Integer_64_Vector_2 is array (0 .. 1) of Interfaces.Integer_64;
   pragma Machine_Attribute (Integer_64_Vector_2, "vector_type");
   pragma Machine_Attribute (Integer_64_Vector_2, "may_alias");

   type Unsigned_64_Vector_2 is array (0 .. 1) of Interfaces.Integer_64;
   pragma Machine_Attribute (Unsigned_64_Vector_2, "vector_type");
   pragma Machine_Attribute (Unsigned_64_Vector_2, "may_alias");

   type Integer_32_Vector_4 is array (0 .. 3) of Interfaces.Integer_32;
   pragma Machine_Attribute (Integer_32_Vector_4, "vector_type");
   pragma Machine_Attribute (Integer_32_Vector_4, "may_alias");

   type Unsigned_32_Vector_4 is array (0 .. 3) of Interfaces.Integer_32;
   pragma Machine_Attribute (Unsigned_32_Vector_4, "vector_type");
   pragma Machine_Attribute (Unsigned_32_Vector_4, "may_alias");

   type Integer_16_Vector_8 is array (0 .. 7) of Interfaces.Integer_16;
   pragma Machine_Attribute (Integer_16_Vector_8, "vector_type");
   pragma Machine_Attribute (Integer_16_Vector_8, "may_alias");

   type Unsigned_16_Vector_8 is array (0 .. 7) of Interfaces.Integer_16;
   pragma Machine_Attribute (Unsigned_16_Vector_8, "vector_type");
   pragma Machine_Attribute (Unsigned_16_Vector_8, "may_alias");

   type Integer_8_Vector_16 is array (0 .. 15) of Interfaces.Integer_8;
   pragma Machine_Attribute (Integer_8_Vector_16, "vector_type");
   pragma Machine_Attribute (Integer_8_Vector_16, "may_alias");

   type Unsigned_8_Vector_16 is array (0 .. 15) of Interfaces.Integer_8;
   pragma Machine_Attribute (Unsigned_8_Vector_16, "vector_type");
   pragma Machine_Attribute (Unsigned_8_Vector_16, "may_alias");

end Matreshka.Internals.SIMD.Intel;
