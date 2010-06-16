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
-- Copyright © 2009, Vadim Godunko <vgodunko@gmail.com>                     --
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
with League.Strings.Cursors.Characters;

procedure Character_Cursor_Test is

   use League.Strings;
   use League.Strings.Cursors.Characters;

   C1 : constant Wide_Wide_String := "123";
   C2 : constant Wide_Wide_String
     := Wide_Wide_Character'Val (16#10000#)
          & "b"
          & Wide_Wide_Character'Val (16#10001#);

   procedure Do_Test (C : Wide_Wide_String);

   procedure Do_Test (C : Wide_Wide_String) is
      S : Universal_String := To_Universal_String (C);
      J : Character_Cursor;
      N : Natural;

   begin
      --  Test forward iterator and backward iterator.

      J.First (S);
      N := C'First;

      while J.Has_Element loop
         if C (N) /= J.Element then
            raise Program_Error;
         end if;

         J.Next;
         N := N + 1;
      end loop;

      J.Previous;
      N := N - 1;

      while J.Has_Element loop
         if C (N) /= J.Element then
            raise Program_Error;
         end if;

         J.Previous;
         N := N - 1;
      end loop;

      --  Test backward iterator and forward iterator.

      J.Last (S);
      N := C'Last;

      while J.Has_Element loop
         if C (N) /= J.Element then
            raise Program_Error;
         end if;

         J.Previous;
         N := N - 1;
      end loop;

      J.Next;
      N := N + 1;

      while J.Has_Element loop
         if C (N) /= J.Element then
            raise Program_Error;
         end if;

         J.Next;
         N := N + 1;
      end loop;
   end Do_Test;

begin
   Do_Test (C1);
   Do_Test (C2);
end Character_Cursor_Test;
