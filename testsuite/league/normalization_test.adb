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
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Command_Line;

with Matreshka.Strings;

with Unicode_Data_File_Parsers;
with Unicode_Data_File_Utilities;

procedure Normalization_Test is

   use Matreshka.Strings;
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
      X : Universal_String;

   begin
      if Self.Part_1 then
         for J in Self.Chars'Range loop
            if not Self.Chars (J) then
               --   X == NFC(X) == NFD(X) == NFKC(X) == NFKD(X)

               begin
                  X :=
                    To_Universal_String ((1 => Wide_Wide_Character'Val (J)));

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

               exception
                  when Constraint_Error =>
                     --  XXX Handling of this exception can hide possible
                     --  problem in the implementation, thus it need to be
                     --  replaced by validity check.

                     null;
               end;
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
