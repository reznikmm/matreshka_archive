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
--  Some initial tests of Index subprogram.
------------------------------------------------------------------------------
with League.Application;
pragma Unreferenced (League.Application);
with League.Strings; use League.Strings;

procedure Test_333 is
   S1 : Universal_String := To_Universal_String ("ABCDEFGHIJKLMNO");
   P1 : Universal_String := To_Universal_String ("ABC");
   P2 : Universal_String := To_Universal_String ("DEF");
   P3 : Universal_String := To_Universal_String ("NO");
   P4 : Universal_String := To_Universal_String ("YES");

begin
   if S1.Index (P1) /= 1 then
      raise Program_Error;
   end if;

   if S1.Index (P2) /= 4 then
      raise Program_Error;
   end if;

   if S1.Index (P3) /= 14 then
      raise Program_Error;
   end if;

   if S1.Index (P4) /= 0 then
      raise Program_Error;
   end if;

   if S1.Index (Empty_Universal_String) /= 0 then
      raise Program_Error;
   end if;

   if Empty_Universal_String.Index (P1) /= 0 then
      raise Program_Error;
   end if;

   if Empty_Universal_String.Index (Empty_Universal_String) /= 0 then
      raise Program_Error;
   end if;
end Test_333;
