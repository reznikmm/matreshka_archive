------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This procedure detects architecture.
------------------------------------------------------------------------------
with System;

with GNAT.Expect;
with GNAT.Regexp;
with GNAT.Regpat;

with Configure.Builder;

procedure Configure.Architecture is

   use Ada.Strings.Unbounded;
   use GNAT.Expect;
   use GNAT.Regexp;
   use GNAT.Regpat;
   use System;

   function "+" (Item : String) return Unbounded_String
     renames To_Unbounded_String;

   function "+" (Item : Unbounded_String) return String renames To_String;

   procedure Detect_Portable;
   --  Detects "portable" architecture.

   procedure Detect_GCC;
   --  Detects architecture by analizing output of gcc -v and doing additional
   --  checks for capabilities.

   ----------------
   -- Detect_GCC --
   ----------------

   procedure Detect_Gcc is
      GCC_Process : Process_Descriptor;
      Result      : Expect_Match;
      Matches     : Match_Array (0 .. 1);
      Arch        : Unbounded_String;

   begin
      Non_Blocking_Spawn
       (GCC_Process, "gcc", (1 => new String'("-dumpmachine")), 4096, True);
      Expect (GCC_Process, Result, "([-a-zA-Z0-9_]*)", Matches);
      Target_Triplet :=
        +Expect_Out (GCC_Process) (Matches (1).First .. Matches (1).Last);
      Close (GCC_Process);

      Match ("([a-zA-Z0-9_]*)-.*", +Target_Triplet, Matches);
      Arch :=
        Unbounded_Slice (Target_Triplet, Matches (1).First, Matches (1).Last);

      if Match (+Arch, Compile ("i[3456]86")) then
         if Configure.Builder.Build ("config.tests/sse_builtins/") then
            Substitutions.Replace (Architecture_Name, +"x86");

         else
            --  On x86 when compiler doesn't support SSE builtins there is no
            --  way to build project, because special switch is needed to
            --  enable use of i486 instructions to generate code for atomic
            --  increment/decrement operations.

            Fatal_Error ("compiler doesn't support SSE builtins");
         end if;

      elsif Arch = "x86_64" or else Arch = "amd64" then
         --  For most BSDs, the x86_64 is identified as amd64.

         if Configure.Builder.Build ("config.tests/sse_builtins/") then
            Substitutions.Replace (Architecture_Name, +"x86_64");
         end if;
      end if;
   end Detect_GCC;

   ---------------------
   -- Detect_Portable --
   ---------------------

   procedure Detect_Portable is
   begin
      if Address'Size = 32 then
         if Default_Bit_Order = High_Order_First then
            Substitutions.Insert (Architecture_Name, +"portable_32_be");

         else
            Substitutions.Insert (Architecture_Name, +"portable_32_le");
         end if;

      elsif Address'Size = 64 then
         if Default_Bit_Order = High_Order_First then
            Substitutions.Insert (Architecture_Name, +"portable_64_be");

         else
            Substitutions.Insert (Architecture_Name, +"portable_64_le");
         end if;

      else
         raise Program_Error;
      end if;
   end Detect_Portable;

begin
   --  Detect "portable" architecture first, it is suitable default value.
   --  This value can be overwritten later by another detection methods.

   Detect_Portable;
   Detect_GCC;
end Configure.Architecture;
