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
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
with System.Machine_Code;

package body Matreshka.SIMD.Intel.CPUID is

   use Ada.Characters.Latin_1;

   LFHT : constant String := LF & HT;

   type Features_ECX is record
      SSE3         : Boolean;
      PCLMULQDQ    : Boolean;
      DTES64       : Boolean;
      MONITOR      : Boolean;
      DS_CPL       : Boolean;
      VMX          : Boolean;
      SMX          : Boolean;
      EIST         : Boolean;
      TM2          : Boolean;
      SSSE3        : Boolean;
      CNXT_ID      : Boolean;
      Reserved_11  : Boolean;
      FMA          : Boolean;
      CX16         : Boolean;
      XTPR         : Boolean;
      PDCM         : Boolean;
      Reserved_16  : Boolean;
      PCID         : Boolean;
      DCA          : Boolean;
      SSE4_1       : Boolean;
      SSE4_2       : Boolean;
      X2APIC       : Boolean;
      MOVBE        : Boolean;
      POPCNT       : Boolean;
      TSC_DEADLINE : Boolean;
      AES          : Boolean;
      XSAVE        : Boolean;
      OSXSAVE      : Boolean;
      AVX          : Boolean;
      F16C         : Boolean;
      RDRAND       : Boolean;
      Not_Used     : Boolean;
   end record;
   pragma Pack (Features_ECX);
   for Features_ECX'Size use 32;

   type Features_EDX is record
      FPU         : Boolean;
      VME         : Boolean;
      DE          : Boolean;
      PSE         : Boolean;
      TSC         : Boolean;
      MSR         : Boolean;
      PAE         : Boolean;
      MCE         : Boolean;
      CX8         : Boolean;
      APIC        : Boolean;
      Reserved_10 : Boolean;
      SEP         : Boolean;
      MTRR        : Boolean;
      PGE         : Boolean;
      MCA         : Boolean;
      CMOV        : Boolean;
      PAT         : Boolean;
      PSE_36      : Boolean;
      PSN         : Boolean;
      CLFSH       : Boolean;
      Reserved_20 : Boolean;
      DS          : Boolean;
      ACPI        : Boolean;
      MMX         : Boolean;
      FXSR        : Boolean;
      SSE         : Boolean;
      SSE2        : Boolean;
      SS          : Boolean;
      HTT         : Boolean;
      TM          : Boolean;
      Reserved_30 : Boolean;
      PBE         : Boolean;
   end record;
   pragma Pack (Features_EDX);
   for Features_EDX'Size use 32;

   function To_Features_ECX is
     new Ada.Unchecked_Conversion (Interfaces.Unsigned_32, Features_ECX);
   function To_Features_EDX is
     new Ada.Unchecked_Conversion (Interfaces.Unsigned_32, Features_EDX);

   procedure CPUID
    (level : Interfaces.Unsigned_32;
     eax   : out Interfaces.Unsigned_32;
     ebx   : out Interfaces.Unsigned_32;
     ecx   : out Interfaces.Unsigned_32;
     edx   : out Interfaces.Unsigned_32);

   -----------
   -- CPUID --
   -----------

   procedure CPUID
    (level : Interfaces.Unsigned_32;
     eax   : out Interfaces.Unsigned_32;
     ebx   : out Interfaces.Unsigned_32;
     ecx   : out Interfaces.Unsigned_32;
     edx   : out Interfaces.Unsigned_32) is
   begin
      --  This code is copied from GCC's cpuid.h file.

      System.Machine_Code.Asm
       (Template =>
          "xchg{l}" & HT & "{%%}ebx, %1" & LFHT
            & "cpuid" & LFHT
            & "xchg{l}" & HT & "{%%}ebx, %1" & LFHT,
        Outputs =>
         (Interfaces.Unsigned_32'Asm_Output ("=a", eax),
          Interfaces.Unsigned_32'Asm_Output ("=r", ebx),
          Interfaces.Unsigned_32'Asm_Output ("=c", ecx),
          Interfaces.Unsigned_32'Asm_Output ("=d", edx)),
        Inputs =>
          Interfaces.Unsigned_32'Asm_Input ("0", level));
   end CPUID;

   -------------
   -- Has_AVX --
   -------------

   function Has_AVX return Boolean is
      eax : Interfaces.Unsigned_32;
      ebx : Interfaces.Unsigned_32;
      ecx : Interfaces.Unsigned_32;
      edx : Interfaces.Unsigned_32;

   begin
      CPUID (16#0000_0001#, eax, ebx, ecx, edx);

      return To_Features_ECX (ecx).AVX;
   end Has_AVX;

   ----------------
   -- Has_POPCNT --
   ----------------

   function Has_POPCNT return Boolean is
      eax : Interfaces.Unsigned_32;
      ebx : Interfaces.Unsigned_32;
      ecx : Interfaces.Unsigned_32;
      edx : Interfaces.Unsigned_32;

   begin
      CPUID (16#0000_0001#, eax, ebx, ecx, edx);

      return To_Features_ECX (ecx).POPCNT;
   end Has_POPCNT;

   --------------
   -- Has_SSE2 --
   --------------

   function Has_SSE2 return Boolean is
      eax : Interfaces.Unsigned_32;
      ebx : Interfaces.Unsigned_32;
      ecx : Interfaces.Unsigned_32;
      edx : Interfaces.Unsigned_32;

   begin
      CPUID (16#0000_0001#, eax, ebx, ecx, edx);

      return To_Features_EDX (edx).SSE2;
   end Has_SSE2;

   -------------------
   -- Highest_CPUID --
   -------------------

   function Highest_CPUID
    (Extended : Boolean := False) return Interfaces.Unsigned_32
   is
      level : Interfaces.Unsigned_32 := 16#0000_0000#;
      eax   : Interfaces.Unsigned_32;
      ebx   : Interfaces.Unsigned_32;
      ecx   : Interfaces.Unsigned_32;
      edx   : Interfaces.Unsigned_32;

   begin
      if Extended then
         level := 16#8000_0000#;
      end if;

      CPUID (level, eax, ebx, ecx, edx);

      return eax;
   end Highest_CPUID;

end Matreshka.SIMD.Intel.CPUID;
