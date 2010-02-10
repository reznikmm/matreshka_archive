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
--  This implementation of the package intended to be used on all x86_64
--  platforms. It utilizes 128-bit instructions from SSE and SSE2 instructions
--  sets which is known to be available on all x86_64 processors.
------------------------------------------------------------------------------
with Ada.Unchecked_Conversion;
with Interfaces;

package body Matreshka.Internals.Strings.SIMD is

   pragma Suppress (All_Checks);

   package SSE2 is

      type v8hi is array (1 .. 8) of Interfaces.Unsigned_16;
      pragma Machine_Attribute (v8hi, "vector_type");
      pragma Machine_Attribute (v8hi, "may_alias");

      type v2di is array (1 .. 2) of Interfaces.Unsigned_64;
      pragma Machine_Attribute (v2di, "vector_type");
      pragma Machine_Attribute (v2di, "may_alias");

      type v8hi_Array is array (Positive range <>) of v8hi;

      function mm_and_si128 (Left : v2di; Right : v2di) return v2di;
      pragma Import (Intrinsic, mm_and_si128, "__builtin_ia32_pand128");

      function mm_and (Left : v8hi; Right : v8hi) return v8hi;
      pragma Inline (mm_and);

   end SSE2;

   use SSE2;

   Fill_Mask : constant array (Integer range 0 .. 7) of v8hi :=
     (0 => (others => 0),
      1 => (1 => 16#FFFF#, others => 0),
      2 => (1 .. 2 => 16#FFFF#, others => 0),
      3 => (1 .. 3 => 16#FFFF#, others => 0),
      4 => (1 .. 4 => 16#FFFF#, others => 0),
      5 => (1 .. 5 => 16#FFFF#, others => 0),
      6 => (1 .. 6 => 16#FFFF#, others => 0),
      7 => (1 .. 7 => 16#FFFF#, others => 0));

   --------------------------
   -- Fill_Null_Terminator --
   --------------------------

   procedure Fill_Null_Terminator (Self : not null Shared_String_Access) is
      Value : v8hi_Array (1 .. Self.Size / 8);
      for Value'Address use Self.Value'Address;
      Index : constant Natural := Self.Last / 8 + 1;

   begin
      Value (Index) := mm_and (Value (Index), Fill_Mask (Self.Last mod 8));
   end Fill_Null_Terminator;

   ----------
   -- SSE2 --
   ----------

   package body SSE2 is

      ----------
      -- SSE2 --
      ----------

      function mm_and (Left : v8hi; Right : v8hi) return v8hi is
         function To_v2di is new Ada.Unchecked_Conversion (v8hi, v2di);
         function To_v8hi is new Ada.Unchecked_Conversion (v2di, v8hi);

      begin
         return To_v8hi (mm_and_si128 (To_v2di (Left), To_v2di (Right)));
      end mm_and;

   end SSE2;

end Matreshka.Internals.Strings.SIMD;
