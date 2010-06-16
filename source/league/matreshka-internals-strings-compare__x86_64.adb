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
--  This implementation of the package intended to be used on all x86_64
--  platforms. It utilizes 128-bit instructions from SSE and SSE2 instructions
--  sets which is known to be available on all x86_64 processors.
------------------------------------------------------------------------------
with Interfaces;

with Matreshka.Internals.SIMD.Intel;

package body Matreshka.Internals.Strings.Compare is

   use Interfaces;
   use Matreshka.Internals.SIMD.Intel;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

   function ffs (A : Interfaces.Unsigned_32) return Interfaces.Unsigned_32;
   pragma Import (Intrinsic, ffs, "__builtin_ffs");

   type v8hi_Unrestricted_Array is array (Utf16_String_Index) of v8hi;

   type Unsigned_64_Unrestricted_Array is
     array (Utf16_String_Index) of Unsigned_64;

   SSE_Criteria : constant := 16;
   --  For strings with small length use of SSE2 instructions set is not
   --  efficient, and ordinary 64-bit optimized algorithm is used.

   --------------
   -- Is_Equal --
   --------------

   function Is_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean is
   begin
      if Left = Right then
         return True;
      end if;

      if Left.Unused /= Right.Unused then
         return False;
      end if;

      if Left.Unused < SSE_Criteria then
         declare
            LV   : Unsigned_64_Unrestricted_Array;
            for LV'Address use Left.Value'Address;
            RV   : Unsigned_64_Unrestricted_Array;
            for RV'Address use Right.Value'Address;

         begin
            for J in 0 .. Left.Unused / 4 loop
               if LV (J) /= RV (J) then
                  return False;
               end if;
            end loop;
         end;

      else
         declare
            LV   : v8hi_Unrestricted_Array;
            for LV'Address use Left.Value'Address;
            RV   : v8hi_Unrestricted_Array;
            for RV'Address use Right.Value'Address;

         begin
            for J in 0 .. Left.Unused / 8 loop
               if mm_movemask_epi8 (To_v16qi (mm_cmpeq_epi16 (LV (J), RV (J))))
                    /= 16#0000_FFFF#
               then
                  return False;
               end if;
            end loop;
         end;
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
      Min : constant Utf16_String_Index
        := Utf16_String_Index'Min (Left.Unused, Right.Unused);

   begin
      if Left = Right then
         return False;
      end if;

      if Min < SSE_Criteria then
         declare
            LV   : Unsigned_64_Unrestricted_Array;
            for LV'Address use Left.Value'Address;
            RV   : Unsigned_64_Unrestricted_Array;
            for RV'Address use Right.Value'Address;

         begin
            for J in 0 .. Min / 8 loop
               if LV (J) /= RV (J) then
                  for K in J * 4 .. J * 4 + 3 loop
                     if Left.Value (K) /= Right.Value (K) then
                        return Is_Greater (Left.Value (K), Right.Value (K));
                     end if;
                  end loop;
               end if;
            end loop;
         end;

      else
         declare
            LV    : v8hi_Unrestricted_Array;
            for LV'Address use Left.Value'Address;
            RV    : v8hi_Unrestricted_Array;
            for RV'Address use Right.Value'Address;
            M     : Unsigned_32;
            Index : Utf16_String_Index;

         begin
            for J in 0 .. Min / 8 loop
               M :=
                 mm_movemask_epi8 (To_v16qi (mm_cmpeq_epi16 (LV (J), RV (J))));

               if M /= 16#0000_FFFF# then
                  Index := J * 8 + Utf16_String_Index (ffs (not M) / 2);

                  return Is_Greater (Left.Value (Index), Right.Value (Index));
               end if;
            end loop;
         end;
      end if;

      return Left.Unused > Right.Unused;
   end Is_Greater;

   -------------------------
   -- Is_Greater_Or_Equal --
   -------------------------

   function Is_Greater_Or_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      Min : constant Utf16_String_Index
        := Utf16_String_Index'Min (Left.Unused, Right.Unused);

   begin
      if Left = Right then
         return True;
      end if;

      if Min < SSE_Criteria then
         declare
            LV   : Unsigned_64_Unrestricted_Array;
            for LV'Address use Left.Value'Address;
            RV   : Unsigned_64_Unrestricted_Array;
            for RV'Address use Right.Value'Address;

         begin
            for J in 0 .. Min / 4 loop
               if LV (J) /= RV (J) then
                  for K in J * 4 .. J * 4 + 3 loop
                     if Left.Value (K) /= Right.Value (K) then
                        return Is_Greater (Left.Value (K), Right.Value (K));
                     end if;
                  end loop;
               end if;
            end loop;
         end;

      else
         declare
            LV    : v8hi_Unrestricted_Array;
            for LV'Address use Left.Value'Address;
            RV    : v8hi_Unrestricted_Array;
            for RV'Address use Right.Value'Address;
            M     : Unsigned_32;
            Index : Utf16_String_Index;

         begin
            for J in 0 .. Min / 8 loop
               M :=
                 mm_movemask_epi8 (To_v16qi (mm_cmpeq_epi16 (LV (J), RV (J))));

               if M /= 16#0000_FFFF# then
                  Index := J * 8 + Utf16_String_Index (ffs (not M) / 2);

                  return Is_Greater (Left.Value (Index), Right.Value (Index));
               end if;
            end loop;
         end;
      end if;

      return Left.Unused >= Right.Unused;
   end Is_Greater_Or_Equal;

   -------------
   -- Is_Less --
   -------------

   function Is_Less
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      Min : constant Utf16_String_Index
        := Utf16_String_Index'Min (Left.Unused, Right.Unused);

   begin
      if Left = Right then
         return False;
      end if;

      if Min < SSE_Criteria then
         declare
            LV   : Unsigned_64_Unrestricted_Array;
            for LV'Address use Left.Value'Address;
            RV   : Unsigned_64_Unrestricted_Array;
            for RV'Address use Right.Value'Address;

         begin
            for J in 0 .. Min / 4 loop
               if LV (J) /= RV (J) then
                  for K in J * 4 .. J * 4 + 3 loop
                     if Left.Value (K) /= Right.Value (K) then
                        return Is_Less (Left.Value (K), Right.Value (K));
                     end if;
                  end loop;
               end if;
            end loop;
         end;

      else
         declare
            LV    : v8hi_Unrestricted_Array;
            for LV'Address use Left.Value'Address;
            RV    : v8hi_Unrestricted_Array;
            for RV'Address use Right.Value'Address;
            M     : Unsigned_32;
            Index : Utf16_String_Index;

         begin
            for J in 0 .. Min / 8 loop
               M :=
                 mm_movemask_epi8 (To_v16qi (mm_cmpeq_epi16 (LV (J), RV (J))));

               if M /= 16#0000_FFFF# then
                  Index := J * 8 + Utf16_String_Index (ffs (not M) / 2);

                  return Is_Less (Left.Value (Index), Right.Value (Index));
               end if;
            end loop;
         end;
      end if;

      return Left.Unused < Right.Unused;
   end Is_Less;

   ----------------------
   -- Is_Less_Or_Equal --
   ----------------------

   function Is_Less_Or_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      Min : constant Utf16_String_Index
        := Utf16_String_Index'Min (Left.Unused, Right.Unused);

   begin
      if Left = Right then
         return True;
      end if;

      if Min < SSE_Criteria then
         declare
            LV   : Unsigned_64_Unrestricted_Array;
            for LV'Address use Left.Value'Address;
            RV   : Unsigned_64_Unrestricted_Array;
            for RV'Address use Right.Value'Address;

         begin
            for J in 0 .. Min / 4 loop
               if LV (J) /= RV (J) then
                  for K in J * 4 .. J * 4 + 3 loop
                     if Left.Value (K) /= Right.Value (K) then
                        return Is_Less (Left.Value (K), Right.Value (K));
                     end if;
                  end loop;
               end if;
            end loop;
         end;

      else
         declare
            LV    : v8hi_Unrestricted_Array;
            for LV'Address use Left.Value'Address;
            RV    : v8hi_Unrestricted_Array;
            for RV'Address use Right.Value'Address;
            M     : Unsigned_32;
            Index : Utf16_String_Index;

         begin
            for J in 0 .. Min / 8 loop
               M :=
                 mm_movemask_epi8 (To_v16qi (mm_cmpeq_epi16 (LV (J), RV (J))));

               if M /= 16#0000_FFFF# then
                  Index := J * 8 + Utf16_String_Index (ffs (not M) / 2);

                  return Is_Less (Left.Value (Index), Right.Value (Index));
               end if;
            end loop;
         end;
      end if;

      return Left.Unused <= Right.Unused;
   end Is_Less_Or_Equal;

end Matreshka.Internals.Strings.Compare;
