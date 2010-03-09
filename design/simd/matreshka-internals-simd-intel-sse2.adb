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

package body Matreshka.Internals.SIMD.Intel.SSE2 is

   function To_Integer_16 is
     new Ada.Unchecked_Conversion
          (Interfaces.Unsigned_16, Interfaces.Integer_16);

   function To_v16qi is
     new Ada.Unchecked_Conversion (Integer_16_Vector_8, v16qi);
   function To_v16qi is
     new Ada.Unchecked_Conversion (Unsigned_16_Vector_8, v16qi);
   function To_v8hi is
     new Ada.Unchecked_Conversion (Integer_16_Vector_8, v8hi);
   function To_v8hi is
     new Ada.Unchecked_Conversion (Unsigned_16_Vector_8, v8hi);
   function To_v2di is
     new Ada.Unchecked_Conversion (Integer_16_Vector_8, v2di);
   function To_v2di is
     new Ada.Unchecked_Conversion (Unsigned_16_Vector_8, v2di);
   function To_Integer_16_Vector_8 is
     new Ada.Unchecked_Conversion (v8hi, Integer_16_Vector_8);
   function To_Unsigned_16_Vector_8 is
     new Ada.Unchecked_Conversion (v8hi, Unsigned_16_Vector_8);
   function To_Integer_16_Vector_8 is
     new Ada.Unchecked_Conversion (v2di, Integer_16_Vector_8);
   function To_Unsigned_16_Vector_8 is
     new Ada.Unchecked_Conversion (v2di, Unsigned_16_Vector_8);

   ------------
   -- mm_and --
   ------------

   function mm_and
    (A : Integer_16_Vector_8;
     B : Integer_16_Vector_8) return Integer_16_Vector_8 is
   begin
      return To_Integer_16_Vector_8 (mm_and_si128 (To_v2di (A), To_v2di (B)));
   end mm_and;

   ------------
   -- mm_and --
   ------------

   function mm_and
    (A : Unsigned_16_Vector_8;
     B : Unsigned_16_Vector_8) return Unsigned_16_Vector_8 is
   begin
      return To_Unsigned_16_Vector_8 (mm_and_si128 (To_v2di (A), To_v2di (B)));
   end mm_and;

   --------------
   -- mm_cmpeq --
   --------------

   function mm_cmpeq
    (A : Integer_16_Vector_8;
     B : Integer_16_Vector_8) return Integer_16_Vector_8 is
   begin
      return To_Integer_16_Vector_8 (mm_cmpeq_epi16 (To_v8hi (A), To_v8hi (B)));
   end mm_cmpeq;

   --------------
   -- mm_cmpeq --
   --------------

   function mm_cmpeq
    (A : Unsigned_16_Vector_8;
     B : Unsigned_16_Vector_8) return Unsigned_16_Vector_8 is
   begin
      return To_Unsigned_16_Vector_8 (mm_cmpeq_epi16 (To_v8hi (A), To_v8hi (B)));
   end mm_cmpeq;

   -----------------
   -- mm_movemask --
   -----------------

   function mm_movemask
    (A : Integer_16_Vector_8) return Interfaces.Unsigned_32 is
   begin
      return mm_movemask_epi8 (To_v16qi (A));
   end mm_movemask;

   -----------------
   -- mm_movemask --
   -----------------

   function mm_movemask
    (A : Unsigned_16_Vector_8) return Interfaces.Unsigned_32 is
   begin
      return mm_movemask_epi8 (To_v16qi (A));
   end mm_movemask;

   ----------------------------
   -- To_Integer_16_Vector_8 --
   ----------------------------

   function To_Integer_16_Vector_8
    (Q7 : Interfaces.Integer_16;
     Q6 : Interfaces.Integer_16;
     Q5 : Interfaces.Integer_16;
     Q4 : Interfaces.Integer_16;
     Q3 : Interfaces.Integer_16;
     Q2 : Interfaces.Integer_16;
     Q1 : Interfaces.Integer_16;
     Q0 : Interfaces.Integer_16) return Integer_16_Vector_8 is
   begin
      return (Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0);
   end To_Integer_16_Vector_8;

   -----------------------------
   -- To_Unsigned_16_Vector_8 --
   -----------------------------

   function To_Unsigned_16_Vector_8
    (Q7 : Interfaces.Unsigned_16;
     Q6 : Interfaces.Unsigned_16;
     Q5 : Interfaces.Unsigned_16;
     Q4 : Interfaces.Unsigned_16;
     Q3 : Interfaces.Unsigned_16;
     Q2 : Interfaces.Unsigned_16;
     Q1 : Interfaces.Unsigned_16;
     Q0 : Interfaces.Unsigned_16) return Unsigned_16_Vector_8 is
   begin
      return
       (To_Integer_16 (Q7),
        To_Integer_16 (Q6),
        To_Integer_16 (Q5),
        To_Integer_16 (Q4),
        To_Integer_16 (Q3),
        To_Integer_16 (Q2),
        To_Integer_16 (Q1),
        To_Integer_16 (Q0));
   end To_Unsigned_16_Vector_8;

end Matreshka.Internals.SIMD.Intel.SSE2;
