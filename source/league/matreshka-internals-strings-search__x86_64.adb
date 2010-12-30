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
--  This is x86_64 specific implementation of the package.
------------------------------------------------------------------------------
with Ada.Unchecked_Conversion;
with Interfaces;

with Matreshka.Internals.SIMD.Intel.SSE2;
with Matreshka.Internals.Strings.Constants;

package body Matreshka.Internals.Strings.Search is

   use Interfaces;
   use Matreshka.Internals.SIMD.Intel;
   use Matreshka.Internals.SIMD.Intel.SSE2;
   use Matreshka.Internals.Strings.Constants;

   function To_Integer_16 is
     new Ada.Unchecked_Conversion (Unsigned_16, Integer_16);

   -----------
   -- Index --
   -----------

   function Index
    (Self : Matreshka.Internals.Strings.Shared_String_Access;
     Code : Matreshka.Internals.Unicode.Code_Point)
       return Natural
   is
      use Matreshka.Internals.Utf16;
      use Matreshka.Internals.Unicode;

      type v8hi_Unrestricted_Array is array (Utf16_String_Index) of v8hi;

      Value  : v8hi_Unrestricted_Array;
      for Value'Address use Self.Value'Address;

      function ffs (A : Interfaces.Unsigned_32) return Interfaces.Unsigned_32;
      pragma Import (Intrinsic, ffs, "__builtin_ffs");

      function Index_16 return Natural;

      --------------
      -- Index_16 --
      --------------

      function Index_16 return Natural is

         function To_Unsigned_32 is
           new Ada.Unchecked_Conversion (Integer_32, Unsigned_32);

         Pattern        : constant v8hi := (others => Integer_16 (Code));
         Last           : constant Utf16_String_Index := Self.Unused / 8;
         V              : v8hi;
         --  Value of current vector.
         Match          : v8hi;
         --  Result of matching current vector to pattern. Trailing out-of-data
         --  elements are excluded from this result (filled by zero).
         Surrogates     : v8hi;
         --  Marks of high surrogate code points to be excluded from index
         --  computation. Trailing out-of-data elements are also marked here
         --  (filled by one).
         Exclusion_Mask : Unsigned_32;
         --  Index computation exclusion mask. Every two bits represents one
         --  code unit to be excluded from index computation to skip high
         --  surrogates and trailing out-of-data code units.
         Match_Mask     : Unsigned_32;
         --  Pattern match mask.
         N              : Unsigned_32;
         --  Match code units exclusion mask.
         TM             : v2di;
         TN             : v2di;
         Index          : Natural := 1;

      begin
         if Last /= 0 then
            for J in 0 .. Last - 1 loop
               V := Value (J);

               --  Compute suggorage exclusion vector.

               Surrogates :=
                 To_v8hi
                  (mm_and_si128
                    (To_v2di (V), To_v2di (Surrogate_Kind_Mask_x86_64)));
               Surrogates :=
                 mm_cmpeq_epi16 (Surrogates, Masked_High_Surrogate_x86_64);

               --  Compute matching vector.

               Match := mm_cmpeq_epi16 (V, Pattern);

               --  Compute masks.

               Exclusion_Mask :=
                 To_Unsigned_32 (mm_movemask_epi8 (To_v16qi (Surrogates)));
               Match_Mask :=
                 To_Unsigned_32 (mm_movemask_epi8 (To_v16qi (Match)));

               N := ffs (Match_Mask);

               if N /= 0 then
                  N := 16#FFFF# * 2 ** Natural (N - 1);
               end if;

               Exclusion_Mask := Exclusion_Mask or N;

               if (Exclusion_Mask and 2#00000000_00000011#) = 0 then
                  Index := Index + 1;
               end if;

               if (Exclusion_Mask and 2#00000000_00001100#) = 0 then
                  Index := Index + 1;
               end if;

               if (Exclusion_Mask and 2#00000000_00110000#) = 0 then
                  Index := Index + 1;
               end if;

               if (Exclusion_Mask and 2#00000000_11000000#) = 0 then
                  Index := Index + 1;
               end if;

               if (Exclusion_Mask and 2#00000011_00000000#) = 0 then
                  Index := Index + 1;
               end if;

               if (Exclusion_Mask and 2#00001100_00000000#) = 0 then
                  Index := Index + 1;
               end if;

               if (Exclusion_Mask and 2#00110000_00000000#) = 0 then
                  Index := Index + 1;
               end if;

               if (Exclusion_Mask and 2#11000000_00000000#) = 0 then
                  Index := Index + 1;
               end if;

               if Match_Mask /= 0 then
                  return Index;
               end if;
            end loop;
         end if;

         V := Value (Last);

         --  Prepare masks to exclude trailing out-of-data code units.

         TM := To_v2di (Terminator_Mask_x86_64 (Self.Unused mod 8));
         TN := To_v2di (mm_cmpeq_epi16 (V, V));
         --  This operation constructs 'one' vector.
         TN := mm_andnot_si128 (TM, TN);

         --  Compute surrogates exclusion vector and exclude trailing
         --  out-of-data code units.

         Surrogates :=
           To_v8hi
            (mm_and_si128
              (To_v2di (V), To_v2di (Surrogate_Kind_Mask_x86_64)));
         Surrogates :=
           mm_cmpeq_epi16 (Surrogates, Masked_High_Surrogate_x86_64);
         Surrogates := To_v8hi (mm_or_si128 (To_v2di (Surrogates), TN));
         --  Exclude codes outside of actual data from counting.

         --  Compute match vector and exclude trailing out-of-data code units.

         Match := mm_cmpeq_epi16 (V, Pattern);
         Match := To_v8hi (mm_and_si128 (To_v2di (Match), TM));
         --  Hide matching codes outside of actual data.

         --  Compute masks.

         Exclusion_Mask :=
           To_Unsigned_32 (mm_movemask_epi8 (To_v16qi (Surrogates)));
         Match_Mask := To_Unsigned_32 (mm_movemask_epi8 (To_v16qi (Match)));

         N := ffs (Match_Mask);

         if N /= 0 then
            N := 16#FFFF# * 2 ** Natural (N - 1);
         end if;

         Exclusion_Mask := Exclusion_Mask or N;

         if (Exclusion_Mask and 2#00000000_00000011#) = 0 then
            Index := Index + 1;
         end if;

         if (Exclusion_Mask and 2#00000000_00001100#) = 0 then
            Index := Index + 1;
         end if;

         if (Exclusion_Mask and 2#00000000_00110000#) = 0 then
            Index := Index + 1;
         end if;

         if (Exclusion_Mask and 2#00000000_11000000#) = 0 then
            Index := Index + 1;
         end if;

         if (Exclusion_Mask and 2#00000011_00000000#) = 0 then
            Index := Index + 1;
         end if;

         if (Exclusion_Mask and 2#00001100_00000000#) = 0 then
            Index := Index + 1;
         end if;

         if (Exclusion_Mask and 2#00110000_00000000#) = 0 then
            Index := Index + 1;
         end if;

         if (Exclusion_Mask and 2#11000000_00000000#) = 0 then
            Index := Index + 1;
         end if;

         if Match_Mask /= 0 then
            return Index;
         end if;

         return 0;
      end Index_16;

   begin
      if Code <= 16#FFFF# then
         return Index_16;

      else
         declare
            Position : Utf16_String_Index := 0;
            Index    : Natural            := 0;
            C        : Code_Point;

         begin
            while Position < Self.Unused loop
               Unchecked_Next (Self.Value, Position, C);
               Index := Index + 1;

               if C = Code then
                  return Index;
               end if;
            end loop;
         end;
      end if;

      return 0;
   end Index;

end Matreshka.Internals.Strings.Search;
