------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                            Testsuite Component                           --
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
with Ada.Calendar;
with Ada.Text_IO;

with Matreshka.Internals.Strings.Configuration;
with Matreshka.Internals.Strings.Operations;

procedure Fill_Null_Terminator_Performance is

   use Ada.Calendar;
   use Ada.Text_IO;
   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Strings.Configuration;
   use Matreshka.Internals.Strings.Operations;

   S     : array (1 .. 1_000_000) of Shared_String_Access;
   Start : Time;

begin
   for J in S'Range loop
      S (J) := Allocate (16);
   end loop;

   Start := Clock;

   for J in 1 .. 250 loop
      for K in S'Range loop
         String_Handler.Fill_Null_Terminator (S (K));
      end loop;
   end loop;

   Put_Line (Duration'Image (Clock - Start));

--   Append (S, 16#0020#);
--
--   Start := Clock;
--
--   for J in 1 .. 250_000_000 loop
--      Fill_Null_Terminator (S);
--   end loop;
--
--   Put_Line (Duration'Image (Clock - Start));
--
--   Append (S, 16#0020#);
--
--   Start := Clock;
--
--   for J in 1 .. 250_000_000 loop
--      Fill_Null_Terminator (S);
--   end loop;
--
--   Put_Line (Duration'Image (Clock - Start));
--
--   Append (S, 16#0020#);
--
--   Start := Clock;
--
--   for J in 1 .. 250_000_000 loop
--      Fill_Null_Terminator (S);
--   end loop;
--
--   Put_Line (Duration'Image (Clock - Start));
--
--   Append (S, 16#0020#);
--
--   Start := Clock;
--
--   for J in 1 .. 250_000_000 loop
--      Fill_Null_Terminator (S);
--   end loop;
--
--   Put_Line (Duration'Image (Clock - Start));
--
--   Append (S, 16#0020#);
--
--   Start := Clock;
--
--   for J in 1 .. 250_000_000 loop
--      Fill_Null_Terminator (S);
--   end loop;
--
--   Put_Line (Duration'Image (Clock - Start));
--
--   Append (S, 16#0020#);
--
--   Start := Clock;
--
--   for J in 1 .. 250_000_000 loop
--      Fill_Null_Terminator (S);
--   end loop;
--
--   Put_Line (Duration'Image (Clock - Start));
--
--   Append (S, 16#0020#);
--
--   Start := Clock;
--
--   for J in 1 .. 250_000_000 loop
--      Fill_Null_Terminator (S);
--   end loop;
--
--   Put_Line (Duration'Image (Clock - Start));
end Fill_Null_Terminator_Performance;
