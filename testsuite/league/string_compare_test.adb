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
with Ada.Characters.Wide_Wide_Latin_1;

with League.Application;
with League.Strings;

procedure String_Compare_Test is

   use Ada.Characters.Wide_Wide_Latin_1;
   use League.Strings;

   procedure Test_1;
   procedure Test_2;

   ------------
   -- Test_1 --
   ------------

   procedure Test_1 is
      --  Checks whether string with different length compared correctly.

      S1 : Universal_String := To_Universal_String ("1");
      S2 : Universal_String := To_Universal_String ("12");

   begin
      if S1 = S2 then
         raise Program_Error;
      end if;

      if S1 > S2 then
         raise Program_Error;
      end if;

      if S1 >= S2 then
         raise Program_Error;
      end if;

      if not (S1 < S2) then
         raise Program_Error;
      end if;

      if not (S1 <= S2) then
         raise Program_Error;
      end if;
   end Test_1;

   ------------
   -- Test_2 --
   ------------

   procedure Test_2 is
      --  This test checks correct handling case when early characters is not
      --  equal and had reverse relationship than later characters.

      S1 : Universal_String := To_Universal_String ("03");
      S2 : Universal_String := To_Universal_String ("12");

   begin
      if S1 = S2 then
         raise Program_Error;
      end if;

      if S1 > S2 then
         raise Program_Error;
      end if;

      if S1 >= S2 then
         raise Program_Error;
      end if;

      if not (S1 < S2) then
         raise Program_Error;
      end if;

      if not (S1 <= S2) then
         raise Program_Error;
      end if;
   end Test_2;

begin
   Test_1;
   Test_2;
end String_Compare_Test;
