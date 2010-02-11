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

      type v8hi_Array is array (Positive range <>) of v8hi;

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

      --  Convinient operations

      function mm_and (Left : v8hi; Right : v8hi) return v8hi;
      pragma Inline (mm_and);

      function mm_movemask (Item : v8hi) return Interfaces.Unsigned_32;
      pragma Inline (mm_movemask);

      function mm_movemask (Item : v4si) return Interfaces.Unsigned_32;
      pragma Inline (mm_movemask);

   end SSE2;

   use Interfaces;
   use SSE2;

   Fill_Terminator_Mask : constant array (Integer range 0 .. 7) of v8hi :=
     (0 => (others => 0),
      1 => (1 => 16#FFFF#, others => 0),
      2 => (1 .. 2 => 16#FFFF#, others => 0),
      3 => (1 .. 3 => 16#FFFF#, others => 0),
      4 => (1 .. 4 => 16#FFFF#, others => 0),
      5 => (1 .. 5 => 16#FFFF#, others => 0),
      6 => (1 .. 6 => 16#FFFF#, others => 0),
      7 => (1 .. 7 => 16#FFFF#, others => 0));

   Zero              : constant v8hi := (others => 0);
   Utf16_Fixup_Mask  : constant v8hi := (others => 16#F800#);
   Utf16_Fixup_Plane : constant v8hi := (others => 16#00D8#);
   Utf16_Fixup_1     : constant v8hi := (others => 16#2000#);
   Utf16_Fixup_2     : v8hi renames Utf16_Fixup_Mask;

   procedure Compare
     (Left    : v8hi;
      Right   : v8hi;
      Less    : out Interfaces.Unsigned_32;
      Greater : out Interfaces.Unsigned_32);
   --  Fixup data in the vectors and compare when. Less and Greater are weight
   --  of less or greate charactreistics.

   -------------
   -- Compare --
   -------------

   procedure Compare
     (Left    : v8hi;
      Right   : v8hi;
      Less    : out Interfaces.Unsigned_32;
      Greater : out Interfaces.Unsigned_32)
   is

      procedure Fixup (E : v8hi; RH : out v4si; RL : out v4si);
      pragma Inline (Fixup);
      --  Fixup data in the vector and store it into the RH and RL.

      -----------
      -- Fixup --
      -----------

      procedure Fixup (E : v8hi; RH : out v4si; RL : out v4si) is

         function To_v4si is new Ada.Unchecked_Conversion (v8hi, v4si);

         M  : v8hi;
         F1 : v8hi;
         F2 : v8hi;
         R  : v8hi;

      begin
         M  := mm_and (E, Utf16_Fixup_Mask);
         M  := mm_srli_epi16 (M, 8);
         F1 := mm_cmpeq_epi16 (M, Utf16_Fixup_Plane);
         F1 := mm_and (F1, Utf16_Fixup_1);
         F2 := mm_cmpgt_epi16 (M, Utf16_Fixup_Plane);
         F2 := mm_and (F2, Utf16_Fixup_2);
         R  := mm_add_epi16 (E, F1);
         R  := mm_add_epi16 (R, F2);
         RH := To_v4si (mm_unpackhi_epi16 (R, Zero));
         RL := To_v4si (mm_unpacklo_epi16 (R, Zero));
         RH := mm_shuffle_epi32 (RH, 2#00011011#);
         RL := mm_shuffle_epi32 (RL, 2#00011011#);
      end Fixup;

      LRH : v4si;
      LRL : v4si;

      RRH : v4si;
      RRL : v4si;
      GCH : v4si;
      GCL : v4si;
      LCH : v4si;
      LCL : v4si;

   begin
      Fixup (Left, LRH, LRL);
      Fixup (Right, RRH, RRL);

      GCH := mm_cmpgt_epi32 (LRH, RRH);
      LCH := mm_cmpgt_epi32 (RRH, LRH);
      GCL := mm_cmpgt_epi32 (LRL, RRL);
      LCL := mm_cmpgt_epi32 (RRL, LRL);

      Less    := (mm_movemask (GCL) * 16#1_0000#) or mm_movemask (GCH);
      Greater := (mm_movemask (LCL) * 16#1_0000#) or mm_movemask (LCH);
   end Compare;

   --------------------------
   -- Fill_Null_Terminator --
   --------------------------

   procedure Fill_Null_Terminator (Self : not null Shared_String_Access) is
      Value  : v8hi_Array (1 .. Self.Size / 8);
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
      L : v8hi_Array (1 .. (Left.Last + 7) / 8);
      for L'Address use Left.Value'Address;
      R : v8hi_Array (1 .. (Right.Last + 7) / 8);
      for R'Address use Right.Value'Address;

   begin
      if Left /= Right then
         if Left.Last /= Right.Last then
            return False;
         end if;

         for J in 1 .. L'Last loop
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
      L  : v8hi_Array (1 .. (Left.Last + 7) / 8);
      for L'Address use Left.Value'Address;
      R  : v8hi_Array (1 .. (Right.Last + 7) / 8);
      for R'Address use Right.Value'Address;
      LE : v8hi;
      LW : Unsigned_32;
      RE : v8hi;
      GW : Unsigned_32;

   begin
      for J in 1 .. Natural'Min (L'Last, R'Last) loop
         LE := L (J);
         RE := R (J);

         if mm_movemask (mm_cmpeq_epi16 (LE, RE)) /= 16#0000_FFFF# then
            Compare (LE, RE, LW, GW);

            return LW > GW;
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
      L  : v8hi_Array (1 .. (Left.Last + 7) / 8);
      for L'Address use Left.Value'Address;
      R  : v8hi_Array (1 .. (Right.Last + 7) / 8);
      for R'Address use Right.Value'Address;
      LE : v8hi;
      LM : v8hi;
      L1 : v8hi;
      L2 : v8hi;
      LR : v8hi;
      LW : Unsigned_32;
      RE : v8hi;
      RM : v8hi;
      R1 : v8hi;
      R2 : v8hi;
      RR : v8hi;
      RW : Unsigned_32;

   begin
      for J in 1 .. Natural'Min (L'Last, R'Last) loop
         LE := L (J);
         RE := R (J);

         if mm_movemask (mm_cmpeq_epi16 (LE, RE)) /= 16#0000_FFFF# then
            LM := mm_and (LE, Utf16_Fixup_Mask);
            RM := mm_and (RE, Utf16_Fixup_Mask);
            L1 := mm_cmpeq_epi16 (LM, Utf16_Fixup_Plane);
            R1 := mm_cmpeq_epi16 (RM, Utf16_Fixup_Plane);
            L1 := mm_and (L1, Utf16_Fixup_1);
            R1 := mm_and (R1, Utf16_Fixup_1);
            L2 := mm_cmpgt_epi16 (Utf16_Fixup_Plane, LM);
            R2 := mm_cmpgt_epi16 (Utf16_Fixup_Plane, RM);
            L2 := mm_and (L2, Utf16_Fixup_2);
            R2 := mm_and (R2, Utf16_Fixup_2);
            LR := mm_add_epi16 (LE, L1);
            RR := mm_add_epi16 (RE, R1);
            LR := mm_add_epi16 (LR, L2);
            RR := mm_add_epi16 (RR, R2);
            LW := mm_movemask (mm_cmpgt_epi16 (LR, RR));
            RW := mm_movemask (mm_cmpgt_epi16 (RR, LR));

            return LW > RW;
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
      L  : v8hi_Array (1 .. (Left.Last + 7) / 8);
      for L'Address use Left.Value'Address;
      R  : v8hi_Array (1 .. (Right.Last + 7) / 8);
      for R'Address use Right.Value'Address;
      LE : v8hi;
      LM : v8hi;
      L1 : v8hi;
      L2 : v8hi;
      LR : v8hi;
      LW : Unsigned_32;
      RE : v8hi;
      RM : v8hi;
      R1 : v8hi;
      R2 : v8hi;
      RR : v8hi;
      RW : Unsigned_32;

   begin
      for J in 1 .. Natural'Min (L'Last, R'Last) loop
         LE := L (J);
         RE := R (J);

         if mm_movemask (mm_cmpeq_epi16 (LE, RE)) /= 16#0000_FFFF# then
            LM := mm_and (LE, Utf16_Fixup_Mask);
            RM := mm_and (RE, Utf16_Fixup_Mask);
            L1 := mm_cmpeq_epi16 (LM, Utf16_Fixup_Plane);
            R1 := mm_cmpeq_epi16 (RM, Utf16_Fixup_Plane);
            L1 := mm_and (L1, Utf16_Fixup_1);
            R1 := mm_and (R1, Utf16_Fixup_1);
            L2 := mm_cmpgt_epi16 (Utf16_Fixup_Plane, LM);
            R2 := mm_cmpgt_epi16 (Utf16_Fixup_Plane, RM);
            L2 := mm_and (L2, Utf16_Fixup_2);
            R2 := mm_and (R2, Utf16_Fixup_2);
            LR := mm_add_epi16 (LE, L1);
            RR := mm_add_epi16 (RE, R1);
            LR := mm_add_epi16 (LR, L2);
            RR := mm_add_epi16 (RR, R2);
            LW := mm_movemask (mm_cmpgt_epi16 (LR, RR));
            RW := mm_movemask (mm_cmpgt_epi16 (RR, LR));

            return LW < RW;
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
      L  : v8hi_Array (1 .. (Left.Last + 7) / 8);
      for L'Address use Left.Value'Address;
      R  : v8hi_Array (1 .. (Right.Last + 7) / 8);
      for R'Address use Right.Value'Address;
      LE : v8hi;
      LM : v8hi;
      L1 : v8hi;
      L2 : v8hi;
      LR : v8hi;
      LW : Unsigned_32;
      RE : v8hi;
      RM : v8hi;
      R1 : v8hi;
      R2 : v8hi;
      RR : v8hi;
      RW : Unsigned_32;

   begin
      for J in 1 .. Natural'Min (L'Last, R'Last) loop
         LE := L (J);
         RE := R (J);

         if mm_movemask (mm_cmpeq_epi16 (LE, RE)) /= 16#0000_FFFF# then
            LM := mm_and (LE, Utf16_Fixup_Mask);
            RM := mm_and (RE, Utf16_Fixup_Mask);
            L1 := mm_cmpeq_epi16 (LM, Utf16_Fixup_Plane);
            R1 := mm_cmpeq_epi16 (RM, Utf16_Fixup_Plane);
            L1 := mm_and (L1, Utf16_Fixup_1);
            R1 := mm_and (R1, Utf16_Fixup_1);
            L2 := mm_cmpgt_epi16 (LM, Utf16_Fixup_Plane);
            R2 := mm_cmpgt_epi16 (RM, Utf16_Fixup_Plane);
            L2 := mm_and (L2, Utf16_Fixup_2);
            R2 := mm_and (R2, Utf16_Fixup_2);
            LR := mm_add_epi16 (LE, L1);
            RR := mm_add_epi16 (RE, R1);
            LR := mm_add_epi16 (LR, L2);
            RR := mm_add_epi16 (RR, R2);
            LW := mm_movemask (mm_cmpgt_epi16 (LR, RR));
            RW := mm_movemask (mm_cmpgt_epi16 (RR, LR));

            return LW < RW;
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
