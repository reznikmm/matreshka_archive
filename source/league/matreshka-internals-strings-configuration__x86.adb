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
with Ada.Characters.Latin_1;
with Interfaces;
with System.Machine_Code;

with Matreshka.Internals.SIMD.Intel.CPUID;
with Matreshka.Internals.Strings.Handlers.Portable;
with Matreshka.Internals.Strings.Handlers.X86.SSE2;
with Matreshka.Internals.Strings.Handlers.X86.SSE2_POPCNT;

package body Matreshka.Internals.Strings.Configuration is

   use Ada.Characters.Latin_1;
   use type Interfaces.Unsigned_32;

   LFHT : constant String := LF & HT;

   function Has_CPUID return Boolean;
   --  Returns True when CPU supports 'cpuid' instruction.

   ---------------
   -- Has_CPUID --
   ---------------

   function Has_CPUID return Boolean is
      use type Interfaces.Unsigned_32;

      eax : Interfaces.Unsigned_32;
      ebx : Interfaces.Unsigned_32;

   begin
      --  This code is copied from GCC's cpuid.h file.

      System.Machine_Code.Asm
       (Template =>
          "pushf{l|d}" & LFHT
            & "pushf{l|d}" & LFHT
            & "pop{l}" & HT & "%0" & LFHT
            & "mov{l}" & HT & "{%0, %1|%1, %0}" & LFHT
            & "xor{l}" & HT & "{%2, %0|%0, %2}" & LFHT
            & "push{l}" & HT & "%0" & LFHT
            & "popf{l|d}" & LFHT
            & "pushf{l|d}" & LFHT
            & "pop{l}" & HT & "%0" & LFHT
            & "popf{l|d}" & LFHT,
        Outputs =>
         (Interfaces.Unsigned_32'Asm_Output ("=&r", eax),
          Interfaces.Unsigned_32'Asm_Output ("=&r", ebx)),
        Inputs =>
          Interfaces.Unsigned_32'Asm_Input ("i", 16#0020_0000#));

      return ((eax xor ebx) and 16#0020_0000#) /= 0;
   end Has_CPUID;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      if not Has_CPUID
        or else Matreshka.Internals.SIMD.Intel.CPUID.Highest_CPUID < 1
      then
         --  CPU doesn't has CPUID instruction or doesn't support getting of
         --  features sets.

         String_Handler := Handlers.Portable.Handler'Access;

      elsif Matreshka.Internals.SIMD.Intel.CPUID.Has_SSE2 then
         if Matreshka.Internals.SIMD.Intel.CPUID.Has_POPCNT then
            --  CPU supports SSE instruction set and POPCNT instruction.

            String_Handler := Handlers.X86.SSE2_POPCNT.Handler'Access;

         else
            --  CPU supports SSE2 instructions set.

            String_Handler := Handlers.X86.SSE2.Handler'Access;
         end if;

      else
         --  CPU doesn't supports SSE2 instructions set.

         String_Handler := Handlers.Portable.Handler'Access;
      end if;
   end Initialize;

end Matreshka.Internals.Strings.Configuration;
