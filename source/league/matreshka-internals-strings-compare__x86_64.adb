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
with Ada.Unchecked_Conversion;
with Interfaces;
with System.Address_To_Access_Conversions;
with System.Storage_Elements;

with Matreshka.Internals.SIMD.Intel.SSE2;

package body Matreshka.Internals.Strings.Compare is

   use Interfaces;
   use Matreshka.Internals.SIMD.Intel;
   use Matreshka.Internals.SIMD.Intel.SSE2;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;
   use type System.Storage_Elements.Storage_Offset;

   function ffs (A : Interfaces.Unsigned_32) return Interfaces.Unsigned_32;
   pragma Import (Intrinsic, ffs, "__builtin_ffs");

   package v8hi_Conversions is new System.Address_To_Access_Conversions (v8hi);
   use v8hi_Conversions;

   function To_Unsigned_32 is
     new Ada.Unchecked_Conversion
          (Interfaces.Integer_32, Interfaces.Unsigned_32);

   --------------
   -- Is_Equal --
   --------------

   function Is_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      pragma Suppress (Access_Check);

   begin
      if Left = Right then
         return True;
      end if;

      if Left.Unused /= Right.Unused then
         return False;
      end if;

      declare
         LV : System.Address := Left.Value'Address;
         RV : System.Address := Right.Value'Address;
         J  : Utf16_String_Index := Left.Unused / 8;

      begin
         loop
            if mm_movemask_epi8
                (To_v16qi
                  (mm_cmpeq_epi16 (To_Pointer (LV).all, To_Pointer (RV).all)))
                 /= 16#0000_FFFF#
            then
               return False;
            end if;

            exit when J = 0;

            J := J - 1;
            LV := LV + 16;
            RV := RV + 16;
         end loop;
      end;

      return True;
   end Is_Equal;

   ----------------
   -- Is_Greater --
   ----------------

   function Is_Greater
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      pragma Suppress (Access_Check);
      pragma Suppress (Index_Check);

   begin
      if Left = Right then
         return False;
      end if;

      declare
         Min   : constant Utf16_String_Index
           := Utf16_String_Index'Min (Left.Unused, Right.Unused);
         LV    : System.Address := Left.Value'Address;
         RV    : System.Address := Right.Value'Address;
         J     : Utf16_String_Index := 0;
         M     : Unsigned_32;
         Index : Utf16_String_Index;

      begin
         loop
            M :=
              To_Unsigned_32
               (mm_movemask_epi8
                 (To_v16qi
                   (mm_cmpeq_epi16
                     (To_Pointer (LV).all, To_Pointer (RV).all))));

            if M /= 16#0000_FFFF# then
               Index := J * 8 + Utf16_String_Index (ffs (not M) / 2);

               return Is_Greater (Left.Value (Index), Right.Value (Index));
            end if;

            exit when J = Min / 8;

            J := J + 1;
            LV := LV + 16;
            RV := RV + 16;
         end loop;
      end;

      return Left.Unused > Right.Unused;
   end Is_Greater;

   -------------------------
   -- Is_Greater_Or_Equal --
   -------------------------

   function Is_Greater_Or_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      pragma Suppress (Access_Check);
      pragma Suppress (Index_Check);

   begin
      if Left = Right then
         return True;
      end if;

      declare
         Min   : constant Utf16_String_Index
           := Utf16_String_Index'Min (Left.Unused, Right.Unused);
         LV    : System.Address := Left.Value'Address;
         RV    : System.Address := Right.Value'Address;
         J     : Utf16_String_Index := 0;
         M     : Unsigned_32;
         Index : Utf16_String_Index;

      begin
         loop
            M :=
              To_Unsigned_32
               (mm_movemask_epi8
                 (To_v16qi
                   (mm_cmpeq_epi16
                     (To_Pointer (LV).all, To_Pointer (RV).all))));

            if M /= 16#0000_FFFF# then
               Index := J * 8 + Utf16_String_Index (ffs (not M) / 2);

               return Is_Greater (Left.Value (Index), Right.Value (Index));
            end if;

            exit when J = Min / 8;

            J := J + 1;
            LV := LV + 16;
            RV := RV + 16;
         end loop;
      end;

      return Left.Unused >= Right.Unused;
   end Is_Greater_Or_Equal;

   -------------
   -- Is_Less --
   -------------

   function Is_Less
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      pragma Suppress (Access_Check);
      pragma Suppress (Index_Check);

   begin
      if Left = Right then
         return False;
      end if;

      declare
         Min   : constant Utf16_String_Index
           := Utf16_String_Index'Min (Left.Unused, Right.Unused);
         LV    : System.Address := Left.Value'Address;
         RV    : System.Address := Right.Value'Address;
         J     : Utf16_String_Index := 0;
         M     : Unsigned_32;
         Index : Utf16_String_Index;

      begin
         loop
            M :=
              To_Unsigned_32
               (mm_movemask_epi8
                 (To_v16qi
                   (mm_cmpeq_epi16
                     (To_Pointer (LV).all, To_Pointer (RV).all))));

            if M /= 16#0000_FFFF# then
               Index := J * 8 + Utf16_String_Index (ffs (not M) / 2);

               return Is_Less (Left.Value (Index), Right.Value (Index));
            end if;

            exit when J = Min / 8;

            J := J + 1;
            LV := LV + 16;
            RV := RV + 16;
         end loop;
      end;

      return Left.Unused < Right.Unused;
   end Is_Less;

   ----------------------
   -- Is_Less_Or_Equal --
   ----------------------

   function Is_Less_Or_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      pragma Suppress (Access_Check);
      pragma Suppress (Index_Check);

   begin
      if Left = Right then
         return True;
      end if;

      declare
         Min   : constant Utf16_String_Index
           := Utf16_String_Index'Min (Left.Unused, Right.Unused);
         LV    : System.Address := Left.Value'Address;
         RV    : System.Address := Right.Value'Address;
         J     : Utf16_String_Index := 0;
         M     : Unsigned_32;
         Index : Utf16_String_Index;

      begin
         loop
            M :=
              To_Unsigned_32
               (mm_movemask_epi8
                 (To_v16qi
                   (mm_cmpeq_epi16
                     (To_Pointer (LV).all, To_Pointer (RV).all))));

            if M /= 16#0000_FFFF# then
               Index := J * 8 + Utf16_String_Index (ffs (not M) / 2);

               return Is_Less (Left.Value (Index), Right.Value (Index));
            end if;

            exit when J = Min / 8;

            J := J + 1;
            LV := LV + 16;
            RV := RV + 16;
         end loop;
      end;

      return Left.Unused <= Right.Unused;
   end Is_Less_Or_Equal;

end Matreshka.Internals.Strings.Compare;
