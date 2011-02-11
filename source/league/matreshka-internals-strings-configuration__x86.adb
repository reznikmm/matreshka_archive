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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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

with Matreshka.Internals.Strings.Handlers.Portable;
with Matreshka.Internals.Strings.Handlers.X86.SSE2;

package body Matreshka.Internals.Strings.Configuration is

   use Ada.Characters.Latin_1;

   LFHT : constant String := LF & HT;

   type Features_ECX is record
      SSE3                : Boolean;
      PCLMULQDQ           : Boolean;
      DTES64              : Boolean;
      MONITOR             : Boolean;
      DS_CPL              : Boolean;
      VMX                 : Boolean;
      SMX                 : Boolean;
      EST                 : Boolean;
      TM2                 : Boolean;
      SSSE3               : Boolean;
      CNXT_ID             : Boolean;
      Reserved_11         : Boolean;
      Reserved_12         : Boolean;
      CMPXCHG16B          : Boolean;
      XTPR_Update_Control : Boolean;
      PDCM                : Boolean;
      Reserved_16         : Boolean;
      Reserved_17         : Boolean;
      DCA                 : Boolean;
      SSE4_1              : Boolean;
      SSE4_2              : Boolean;
      X2APIC              : Boolean;
      MOVBE               : Boolean;
      POPCNT              : Boolean;
      Reserved_24         : Boolean;
      AES                 : Boolean;
      XSAVE               : Boolean;
      OSXSAVE             : Boolean;
      Reserved_28         : Boolean;
      Reserved_29         : Boolean;
      Reserved_30         : Boolean;
      Not_Used            : Boolean;
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

   function Has_CPUID return Boolean;

   function Maximum_Value return Interfaces.Unsigned_32;

   function Has_SSE2 return Boolean;

   function Has_POPCNT return Boolean;

   ---------------
   -- Has_CPUID --
   ---------------

   function Has_CPUID return Boolean is
      Aux : Boolean;

   begin
      --  This code is taken from Intel's Application Note 485: Intel Processor
      --  Identification and the CPUID Instruction.

      System.Machine_Code.Asm
       (Template =>
          "pushfl" & LFHT
            & "pop" & HT & "%%eax" & LFHT
            & "movl" & HT & "%%eax, %%ecx" & LFHT
            & "xor" & HT &"$0x200000, %%eax" & LFHT
            & "push" & HT & "%%eax" & LFHT
            & "popfl" & LFHT
            & "pushfl" & LFHT
            & "pop" & HT & "%%eax" & LFHT
            & "xor" & HT & "%%eax, %%ecx" & LFHT
            & "setne" & HT & "%0",
        Outputs  => Boolean'Asm_Output ("=g", Aux),
        Clobber  => "eax, ecx",
        Volatile => True);

      return Aux;
   end Has_CPUID;

   ----------------
   -- Has_POPCNT --
   ----------------

   function Has_POPCNT return Boolean is
      Aux : Features_ECX;

   begin
      System.Machine_Code.Asm
       (Template =>
          "movl" & HT & "$1, %%eax" & LFHT
            & "cpuid" & LFHT
            & "movl" & HT & "%%ecx, %0",
        Outputs  => Features_ECX'Asm_Output ("=g", Aux),
        Clobber  => "eax, ebx, ecx, edx",
        Volatile => True);

      return Aux.POPCNT;
   end Has_POPCNT;

   --------------
   -- Has_SSE2 --
   --------------

   function Has_SSE2 return Boolean is
      Aux : Features_EDX;

   begin
      --  Note: ebx is used for PIC, so save and restore it.

      System.Machine_Code.Asm
       (Template =>
          "push" & HT & "%%ebx" & LFHT
            & "movl" & HT & "$1, %%eax" & LFHT
            & "cpuid" & LFHT
            & "movl" & HT & "%%edx, %0" & LFHT
            & "pop" & HT & "%%ebx",
        Outputs  => Features_EDX'Asm_Output ("=g", Aux),
        Clobber  => "eax, ecx, edx",
        Volatile => True);

      return Aux.SSE2;
   end Has_SSE2;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
      use type Interfaces.Unsigned_32;

   begin
      if not Has_CPUID or else Maximum_Value < 1 then
         --  CPU doesn't has CPUID instruction or doesn't support getting of
         --  features sets.

         String_Handler := Handlers.Portable.Handler'Access;

      elsif Has_SSE2 then
         --  CPU supports SSE2 instructions set.

         String_Handler := Handlers.X86.SSE2.Handler'Access;

      else
         --  CPU doesn't supports SSE2 instructions set.

         String_Handler := Handlers.Portable.Handler'Access;
      end if;
   end Initialize;

   -------------------
   -- Maximum_Value --
   -------------------

   function Maximum_Value return Interfaces.Unsigned_32 is
      Aux : Interfaces.Unsigned_32;

   begin
      --  Note: ebx is used for PIC, so save and restore it.

      System.Machine_Code.Asm
       (Template =>
          "push" & HT & "%%ebx" & LFHT
            & "movl" & HT & "$0, %%eax" & LFHT
            & "cpuid" & LFHT
            & "movl" & HT & "%%eax, %0" & LFHT
            & "pop" & HT & "%%ebx",
        Outputs  => Interfaces.Unsigned_32'Asm_Output ("=g", Aux),
        Clobber  => "eax, ecx, edx",
        Volatile => True);

      return Aux;
   end Maximum_Value;

end Matreshka.Internals.Strings.Configuration;
