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
-- Copyright © 2009-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Command_Line;

with League.Application;
with League.Strings;

with Unicode_Data_File_Parsers;
with Unicode_Data_File_Utilities;

procedure Normalization_Test is

   use League.Strings;
   use Unicode_Data_File_Utilities;

   Unidata_Directory      : constant String
     := Ada.Command_Line.Argument (1);
   NormalizationTest_Name : constant String := "NormalizationTest.txt";

   type Boolean_Array is array (Natural range <>) of Boolean;
   for Boolean_Array'Component_Size use Boolean'Size;

   type Parser is
     new Unicode_Data_File_Parsers.Unicode_Data_File_Parser with
   record
      Chars  : Boolean_Array (1 .. 16#10_FFFF#) := (others => False);
      Part_1 : Boolean := False;
   end record;

   overriding procedure Start_Section
    (Self : in out Parser;
     Name : String);

   overriding procedure End_Section (Self : in out Parser);

   overriding procedure Data
    (Self   : in out Parser;
     Fields : Unicode_Data_File_Parsers.String_Vectors.Vector);

   ----------
   -- Data --
   ----------

   overriding procedure Data
    (Self   : in out Parser;
     Fields : Unicode_Data_File_Parsers.String_Vectors.Vector)
   is
      C1 : Universal_String;
      C2 : Universal_String;
      C3 : Universal_String;
      C4 : Universal_String;
      C5 : Universal_String;

   begin
      C1 := To_Universal_String (Parse (Fields.Element (1)));
      C2 := To_Universal_String (Parse (Fields.Element (2)));
      C3 := To_Universal_String (Parse (Fields.Element (3)));
      C4 := To_Universal_String (Parse (Fields.Element (4)));
      C5 := To_Universal_String (Parse (Fields.Element (5)));

      --  NFC
      --    c2 ==  NFC(c1) ==  NFC(c2) ==  NFC(c3)
      --    c4 ==  NFC(c4) ==  NFC(c5)

      if C2.To_Wide_Wide_String /= C1.To_NFC.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C2.To_Wide_Wide_String /= C2.To_NFC.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C2.To_Wide_Wide_String /= C3.To_NFC.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C4.To_Wide_Wide_String /= C4.To_NFC.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C4.To_Wide_Wide_String /= C5.To_NFC.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      -- NFD
      --   c3 ==  NFD(c1) ==  NFD(c2) ==  NFD(c3)
      --   c5 ==  NFD(c4) ==  NFD(c5)

      if C3.To_Wide_Wide_String /= C1.To_NFD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C3.To_Wide_Wide_String /= C2.To_NFD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C3.To_Wide_Wide_String /= C3.To_NFD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C5.To_Wide_Wide_String /= C4.To_NFD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C5.To_Wide_Wide_String /= C5.To_NFD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      --  NFKC
      --    c4 == NFKC(c1) == NFKC(c2) == NFKC(c3) == NFKC(c4) == NFKC(c5)

      if C4.To_Wide_Wide_String /= C1.To_NFKC.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C4.To_Wide_Wide_String /= C2.To_NFKC.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C4.To_Wide_Wide_String /= C3.To_NFKC.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C4.To_Wide_Wide_String /= C4.To_NFKC.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C4.To_Wide_Wide_String /= C5.To_NFKC.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      --  NFKD
      --    c5 == NFKD(c1) == NFKD(c2) == NFKD(c3) == NFKD(c4) == NFKD(c5)

      if C5.To_Wide_Wide_String /= C1.To_NFKD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C5.To_Wide_Wide_String /= C2.To_NFKD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C5.To_Wide_Wide_String /= C3.To_NFKD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C5.To_Wide_Wide_String /= C4.To_NFKD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C5.To_Wide_Wide_String /= C5.To_NFKD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C1.Length = 0 or C2.Length = 0 or C3.Length = 0 then
         raise Program_Error;
      end if;

      if Self.Part_1 then
         if C1.Length /= 1 then
            raise Program_Error;
         end if;

         Self.Chars (Wide_Wide_Character'Pos (C1.Element (1))) := True;
      end if;
   end Data;

   -----------------
   -- End_Section --
   -----------------

   overriding procedure End_Section (Self : in out Parser) is
      X    : Universal_String;
      Skip : Boolean;

   begin
      if Self.Part_1 then
         for J in Self.Chars'Range loop
            if not Self.Chars (J) then
               --   X == NFC(X) == NFD(X) == NFKC(X) == NFKD(X)

               begin
                  X :=
                    To_Universal_String ((1 => Wide_Wide_Character'Val (J)));
                  Skip := False;

               exception
                  when Constraint_Error =>
                     Skip := True;
               end;

               if not Skip then
                  if X.To_Wide_Wide_String /= X.To_NFC.To_Wide_Wide_String then
                     raise Program_Error;
                  end if;

                  if X.To_Wide_Wide_String /= X.To_NFD.To_Wide_Wide_String then
                     raise Program_Error;
                  end if;

                  if X.To_Wide_Wide_String /= X.To_NFKC.To_Wide_Wide_String then
                     raise Program_Error;
                  end if;

                  if X.To_Wide_Wide_String /= X.To_NFKD.To_Wide_Wide_String then
                     raise Program_Error;
                  end if;
               end if;
            end if;
         end loop;

         Self.Part_1 := False;
      end if;
   end End_Section;

   -------------------
   -- Start_Section --
   -------------------

   overriding procedure Start_Section
    (Self : in out Parser;
     Name : String)
   is
   begin
      if Name = "Part1" then
         Self.Part_1 := True;
      end if;
   end Start_Section;

   Test : Parser;

begin
   Test.Open (Unidata_Directory & '/' & NormalizationTest_Name);
   Test.Parse;
   Test.Close;
end Normalization_Test;
