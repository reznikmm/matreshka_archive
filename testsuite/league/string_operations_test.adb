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
-- Copyright © 2010-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This test incorporates tests for known problems of Universal_String
--  manipulation subprograms.
------------------------------------------------------------------------------
with League.Application;
with League.String_Vectors;
with League.Strings;

procedure String_Operations_Test is
   use League.String_Vectors;
   use League.Strings;

   procedure Test_TN_219;
   procedure Test_TN_319;

   --------------
   -- Test_219 --
   --------------

   procedure Test_TN_219 is
      --  Initial implementation of prepend character operation crash with
      --  internal exception when source string is empty.

      S : Universal_String;
      E : Universal_String := To_Universal_String (" ");

   begin
      S.Prepend (' ');

      if S /= E then
         raise Program_Error;
      end if;
   end Test_TN_219;

   -----------------
   -- Test_TN_319 --
   -----------------

   procedure Test_TN_319 is
      S : constant Universal_String := To_Universal_String ("file:///test_226_0.xmi#test");

   begin
      if S.Index ('#') /= 23 then
         raise Program_Error;
      end if;
   end Test_TN_319;

begin
   --  Initial implementation of concatenation of character with empty string
   --  raises exception and incorrectly compute size of the internal data
   --  representation.

   declare
      S : Universal_String;
      E : Universal_String := To_Universal_String ("A");

   begin
      S := 'A' & S;

      if S /= E then
         raise Program_Error;
      end if;
   end;

   --  Initial implementation of concatenation of character with empty string
   --  raises exception and incorrectly compute size of the internal data
   --  representation.

   declare
      S : Universal_String;
      E : Universal_String := To_Universal_String ("A");

   begin
      S := S & 'A';

      if S /= E then
         raise Program_Error;
      end if;
   end;

   --  Initial implementation of slice replace operation uses incorrect length
   --  to allocate new shared string.

   declare
      S : Universal_String := To_Universal_String ("A0Z");
      R : Universal_String
        := To_Universal_String ("abcdefghigklmnopqrstuvwxyz");
      E : Universal_String
        := To_Universal_String ("AabcdefghigklmnopqrstuvwxyzZ");

   begin
      S.Replace (2, 2, R);

      if S /= E then
         raise Program_Error;
      end if;
   end;

   --  Initial implementation of slice replace operation unable to insert
   --  string into the first position.

   declare
      S : Universal_String := To_Universal_String ("Z");
      R : Universal_String
        := To_Universal_String ("abcdefghigklmnopqrstuvwxyz");
      E : Universal_String
        := To_Universal_String ("abcdefghigklmnopqrstuvwxyzZ");

   begin
      S.Replace (1, 0, R);

      if S /= E then
         raise Program_Error;
      end if;
   end;

   --  Initial implementation of replace operation computed indices incorrectly
   --  when string has mixed one/two code unit character.

   declare
      S : Universal_String :=
        To_Universal_String
         ("_20- _D7FF-퟿_6c0f-氏_E000-"
            & Wide_Wide_Character'Val (16#E000#)
            & "_FFFD-�_effe-"
            & Wide_Wide_Character'Val (16#EFFE#)
            & "_010000-𐀀_10FFFF-"
            & Wide_Wide_Character'Val (16#10FFFD#)
            & "_08ffff-"
            & Wide_Wide_Character'Val (16#8FFFD#)
            & " This is a PI target ");
      R : Universal_String := To_Universal_String ("&#x20;");
      E : Universal_String
        := To_Universal_String
         ("_20- _D7FF-퟿_6c0f-氏_E000-"
            & Wide_Wide_Character'Val (16#E000#)
            & "_FFFD-�_effe-"
            & Wide_Wide_Character'Val (16#EFFE#)
            & "_010000-𐀀_10FFFF-"
            & Wide_Wide_Character'Val (16#10FFFD#)
            & "_08ffff-"
            & Wide_Wide_Character'Val (16#8FFFD#)
            & " This is a PI target&#x20;");

   begin
      S.Replace (S.Length, S.Length, R);

      if S /= E then
         raise Program_Error;
      end if;
   end;

   --  Initial implementation of Split operation doesn't create last element
   --  when it is empty.

   declare
      S : Universal_String := To_Universal_String ("a,,c,");
      V : Universal_String_Vector := S.Split (',');

   begin
      if V.Element (1) /= To_Universal_String ("a") then
         raise Program_Error;
      end if;

      if V.Element (2) /= Empty_Universal_String then
         raise Program_Error;
      end if;

      if V.Element (3) /= To_Universal_String ("c") then
         raise Program_Error;
      end if;

      if V.Element (4) /= Empty_Universal_String then
         raise Program_Error;
      end if;
   end;

   Test_TN_219;
   Test_TN_319;
end String_Operations_Test;
