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

   package SSE2 is

      type v16qi is array (1 .. 16) of Interfaces.Unsigned_8;
      pragma Machine_Attribute (v16qi, "vector_type");
      pragma Machine_Attribute (v16qi, "may_alias");

      type v8hi is array (1 .. 8) of Interfaces.Unsigned_16;
      pragma Machine_Attribute (v8hi, "vector_type");
      pragma Machine_Attribute (v8hi, "may_alias");

      type v4si is array (1 .. 4) of Interfaces.Unsigned_32;
      pragma Machine_Attribute (v4si, "vector_type");
      pragma Machine_Attribute (v4si, "may_alias");

      type v2di is array (1 .. 2) of Interfaces.Unsigned_64;
      pragma Machine_Attribute (v2di, "vector_type");
      pragma Machine_Attribute (v2di, "may_alias");

      function mm_and_si128 (Left : v2di; Right : v2di) return v2di;
      pragma Import (Intrinsic, mm_and_si128, "__builtin_ia32_pand128");

      function mm_add_epi16 (Left : v8hi; Right : v8hi) return v8hi;
      pragma Import (Intrinsic, mm_add_epi16, "__builtin_ia32_paddw128");

      function mm_cmpeq_epi16 (Left : v8hi; Right : v8hi) return v8hi;
      pragma Import (Intrinsic, mm_cmpeq_epi16, "__builtin_ia32_pcmpeqw128");

      function mm_cmpgt_epi16 (Left : v8hi; Right : v8hi) return v8hi;
      pragma Import (Intrinsic, mm_cmpgt_epi16, "__builtin_ia32_pcmpgtw128");

      function mm_cmpgt_epi32 (Left : v4si; Right : v4si) return v4si;
      pragma Import (Intrinsic, mm_cmpgt_epi32, "__builtin_ia32_pcmpgtd128");

      function mm_srli_epi16
        (Item : v8hi;
         Bits : Interfaces.Unsigned_32) return v8hi;
      pragma Import (Intrinsic, mm_srli_epi16, "__builtin_ia32_psrlwi128");

      function mm_unpackhi_epi16 (A : v8hi; B : v8hi) return v8hi;
      pragma Import
        (Intrinsic, mm_unpackhi_epi16, "__builtin_ia32_punpckhwd128");

      function mm_unpacklo_epi16 (A : v8hi; B : v8hi) return v8hi;
      pragma Import
        (Intrinsic, mm_unpacklo_epi16, "__builtin_ia32_punpcklwd128");

      function mm_shuffle_epi32
        (A : v4si; N : Interfaces.Unsigned_32) return v4si;
      pragma Import (Intrinsic, mm_shuffle_epi32, "__builtin_ia32_pshufd");

      function mm_movemask_epi8 (Item : v16qi) return Interfaces.Unsigned_32;
      pragma Import
        (Intrinsic, mm_movemask_epi8, "__builtin_ia32_pmovmskb128");

      function mm_extract_epi16
        (A : v8hi; N : Interfaces.Unsigned_32) return Interfaces.Unsigned_32;
      pragma Import
        (Intrinsic, mm_extract_epi16, "__builtin_ia32_vec_ext_v8hi");

      --  Convinient operations

      function mm_and (Left : v8hi; Right : v8hi) return v8hi;
      pragma Inline (mm_and);

      function mm_movemask (Item : v8hi) return Interfaces.Unsigned_32;
      pragma Inline (mm_movemask);

      function mm_movemask (Item : v4si) return Interfaces.Unsigned_32;
      pragma Inline (mm_movemask);

   end SSE2;

   function ffs (A : Interfaces.Unsigned_32) return Interfaces.Unsigned_32;
   pragma Import (Intrinsic, ffs, "__builtin_ffs");

   use Interfaces;
   use Matreshka.Internals.Unicode;
   use SSE2;

   type v8hi_Array is array (Positive range 1 .. Integer'Last) of v8hi;

   Fill_Terminator_Mask : constant array (Integer range 0 .. 7) of v8hi :=
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
      Value  : v8hi_Array;
      for Value'Address use Self.Value'Address;
      Index  : constant Natural := Self.Last / 8 + 1;
      Offset : constant Natural := Self.Last mod 8;

   begin
      Value (Index) := mm_and (Value (Index), Fill_Terminator_Mask (Offset));
   end Fill_Null_Terminator;

   --------------
   -- Is_Equal --
   --------------

   function Is_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      Last : constant Natural := (Left.Last + 7) / 8;
      L    : v8hi_Array;
      for L'Address use Left.Value'Address;
      R    : v8hi_Array;
      for R'Address use Right.Value'Address;

   begin
      if Left /= Right then
         if Left.Last /= Right.Last then
            return False;
         end if;

         for J in 1 .. Last loop
            if mm_movemask (mm_cmpeq_epi16 (L (J), R (J)))
                 /= 16#0000_FFFF#
            then
               return False;
            end if;
         end loop;
      end if;

      return True;
   end Is_Equal;

   ----------------
   -- Is_Greater --
   ----------------

   function Is_Greater
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      Last  : constant Natural :=
        Natural'Min ((Left.Last + 7) / 8, (Right.Last + 7) / 8);
      L     : v8hi_Array;
      for L'Address use Left.Value'Address;
      R     : v8hi_Array;
      for R'Address use Right.Value'Address;
      M     : Unsigned_32;
      LC    : Code_Unit_16;
      RC    : Code_Unit_16;
      Index : Natural;

   begin
      if Left = Right then
         return False;
      end if;

      for J in 1 .. Last loop
         M  := mm_movemask (mm_cmpeq_epi16 (L (J), R (J)));

         if M /= 16#0000_FFFF# then
            Index := (J - 1) * 8 + Integer (ffs (not M) / 2) + 1;
            LC    := Left.Value (Index);
            RC    := Right.Value (Index);

            return
              LC + Utf16_Fixup (LC / 16#800#)
                > RC + Utf16_Fixup (RC / 16#800#);
         end if;
      end loop;

      return Left.Last > Right.Last;
   end Is_Greater;

   -------------------------
   -- Is_Greater_Or_Equal --
   -------------------------

   function Is_Greater_Or_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      Last  : constant Natural :=
        Natural'Min ((Left.Last + 7) / 8, (Right.Last + 7) / 8);
      L     : v8hi_Array;
      for L'Address use Left.Value'Address;
      R     : v8hi_Array;
      for R'Address use Right.Value'Address;
      M     : Unsigned_32;
      LC    : Code_Unit_16;
      RC    : Code_Unit_16;
      Index : Natural;

   begin
      if Left = Right then
         return True;
      end if;

      for J in 1 .. Last loop
         M  := mm_movemask (mm_cmpeq_epi16 (L (J), R (J)));

         if M /= 16#0000_FFFF# then
            Index := (J - 1) * 8 + Integer (ffs (not M) / 2) + 1;
            LC    := Left.Value (Index);
            RC    := Right.Value (Index);

            return
              LC + Utf16_Fixup (LC / 16#800#)
                > RC + Utf16_Fixup (RC / 16#800#);
         end if;
      end loop;

      return Left.Last >= Right.Last;
   end Is_Greater_Or_Equal;

   -------------
   -- Is_Less --
   -------------

   function Is_Less
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      Last  : constant Natural :=
        Natural'Min ((Left.Last + 7) / 8, (Right.Last + 7) / 8);
      L     : v8hi_Array;
      for L'Address use Left.Value'Address;
      R     : v8hi_Array;
      for R'Address use Right.Value'Address;
      M     : Unsigned_32;
      LC    : Code_Unit_16;
      RC    : Code_Unit_16;
      Index : Natural;

   begin
      if Left = Right then
         return False;
      end if;

      for J in 1 .. Last loop
         M  := mm_movemask (mm_cmpeq_epi16 (L (J), R (J)));

         if M /= 16#0000_FFFF# then
            Index := (J - 1) * 8 + Integer (ffs (not M) / 2) + 1;
            LC    := Left.Value (Index);
            RC    := Right.Value (Index);

            return
              LC + Utf16_Fixup (LC / 16#800#)
                < RC + Utf16_Fixup (RC / 16#800#);
         end if;
      end loop;

      return Left.Last < Right.Last;
   end Is_Less;

   ----------------------
   -- Is_Less_Or_Equal --
   ----------------------

   function Is_Less_Or_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      Last  : constant Natural :=
        Natural'Min ((Left.Last + 7) / 8, (Right.Last + 7) / 8);
      L     : v8hi_Array;
      for L'Address use Left.Value'Address;
      R     : v8hi_Array;
      for R'Address use Right.Value'Address;
      M     : Unsigned_32;
      LC    : Code_Unit_16;
      RC    : Code_Unit_16;
      Index : Natural;

   begin
      if Left = Right then
         return True;
      end if;

      for J in 1 .. Last loop
         M  := mm_movemask (mm_cmpeq_epi16 (L (J), R (J)));

         if M /= 16#0000_FFFF# then
            Index := (J - 1) * 8 + Integer (ffs (not M) / 2) + 1;
            LC    := Left.Value (Index);
            RC    := Right.Value (Index);

            return
              LC + Utf16_Fixup (LC / 16#800#)
                < RC + Utf16_Fixup (RC / 16#800#);
         end if;
      end loop;

      return Left.Last <= Right.Last;
   end Is_Less_Or_Equal;

   ----------
   -- SSE2 --
   ----------

   package body SSE2 is

      ------------
      -- mm_and --
      ------------

      function mm_and (Left : v8hi; Right : v8hi) return v8hi is
         function To_v2di is new Ada.Unchecked_Conversion (v8hi, v2di);
         function To_v8hi is new Ada.Unchecked_Conversion (v2di, v8hi);

      begin
         return To_v8hi (mm_and_si128 (To_v2di (Left), To_v2di (Right)));
      end mm_and;

      -----------------
      -- mm_movemask --
      -----------------

      function mm_movemask (Item : v8hi) return Interfaces.Unsigned_32 is
         function To_v16qi is new Ada.Unchecked_Conversion (v8hi, v16qi);

      begin
         return mm_movemask_epi8 (To_v16qi (Item));
      end mm_movemask;

      -----------------
      -- mm_movemask --
      -----------------

      function mm_movemask (Item : v4si) return Interfaces.Unsigned_32 is
         function To_v16qi is new Ada.Unchecked_Conversion (v4si, v16qi);

      begin
         return mm_movemask_epi8 (To_v16qi (Item));
      end mm_movemask;

   end SSE2;

end Matreshka.Internals.Strings.SIMD;
