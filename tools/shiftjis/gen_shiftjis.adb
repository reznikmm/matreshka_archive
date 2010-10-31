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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This program generates tables for Shift JIS codec.
with Ada.Command_Line;
with Ada.Strings.Fixed;
with Ada.Text_IO;

procedure Gen_SHIFTJIS is

   type Code_Unit_32 is mod 2**32;
   type Code_Unit_16 is mod 2**16;
   type Code_Unit_8 is mod 2**8;

   type Code_Unit_32_Array is array (Code_Unit_8) of Code_Unit_32;
   type Code_Unit_32_Array_Access is access all Code_Unit_32_Array;

   type Expansion is record
      First  : Code_Unit_32;
      Second : Code_Unit_32;
   end record;

   function Image (Item : Code_Unit_8) return String;
   function Image (Item : Code_Unit_32) return String;

   -----------
   -- Image --
   -----------

   function Image (Item : Code_Unit_8) return String is
      Hex : constant array (Code_Unit_8 range 0 .. 15) of Character
        := "0123456789ABCDEF";

   begin
      return Result : String (1 .. 2) do
         Result (1) := Hex (Item / 16);
         Result (2) := Hex (Item mod 16);
      end return;
   end Image;

   -----------
   -- Image --
   -----------

   function Image (Item : Code_Unit_32) return String is
      Hex : constant array (Code_Unit_32 range 0 .. 15) of Character
        := "0123456789ABCDEF";

   begin
      if Item <= 16#FFFF# then
         return Result : String (1 .. 4) do
            Result (1) := Hex (Item / 16 ** 3);
            Result (2) := Hex ((Item / 16 ** 2) mod 16);
            Result (3) := Hex ((Item / 16) mod 16);
            Result (4) := Hex (Item mod 16);
         end return;

      else
         return Result : String (1 .. 7) do
            Result (1) := Hex (Item / 16 ** 5);
            Result (2) := Hex ((Item / 16 ** 4) mod 16);
            Result (3) := '_';
            Result (4) := Hex ((Item / 16 ** 3) mod 16);
            Result (5) := Hex ((Item / 16 ** 2) mod 16);
            Result (6) := Hex ((Item / 16) mod 16);
            Result (7) := Hex (Item mod 16);
         end return;
      end if;
   end Image;

   Undefined       : constant Code_Unit_32 := 16#FFFF_FFFF#;
   Reserved        : constant Code_Unit_32 := 16#FFFF_FFFE#;
   Double_Bytes    : constant Code_Unit_32 := 16#FFFF_FFFD#;
   First_Expansion : constant Code_Unit_32 := 16#FFFF_FF00#;

   File         : Ada.Text_IO.File_Type;
   Buffer       : String (1 .. 256);
   Last         : Natural;
   First        : Positive;
   Tab          : Natural;
   Plus         : Natural;
   Encoded_Code : Code_Unit_16;
   Low_Code     : Code_Unit_8;
   High_Code    : Code_Unit_8;
   Unicode_Code : Code_Unit_32;

   Single_Map     : array (Code_Unit_8) of Code_Unit_32
     := (others => Undefined);
   Double_Map     : array (Code_Unit_8) of Code_Unit_32_Array_Access;
   Expansion_List :
     array (First_Expansion .. First_Expansion + 32) of Expansion;
   Last_Expansion : Code_Unit_32 := First_Expansion - 1;
   Valid_Second   : array (Code_Unit_8) of Boolean := (others => False);

begin
   Ada.Text_IO.Open
    (File, Ada.Text_IO.In_File, Ada.Command_Line.Argument (1));

   while not Ada.Text_IO.End_Of_File (File) loop
      Ada.Text_IO.Get_Line (File, Buffer, Last);

      if Last /= 0 and Buffer (1) /= '#' then
         First := Buffer'First;

         Tab :=
           Ada.Strings.Fixed.Index (Buffer (First .. Last), "" & ASCII.HT);
         Encoded_Code :=
           Code_Unit_16'Value ("16#" & Buffer (First + 2 .. Tab - 1) & '#');
         Low_Code := Code_Unit_8 (Encoded_Code mod 256);
         High_Code := Code_Unit_8 (Encoded_Code / 256);
         First := Tab + 1;

         Tab :=
           Ada.Strings.Fixed.Index
            (Buffer (First .. Last), "" & ASCII.HT);

         if High_Code = 0 then
            if First = Tab then
               Single_Map (Low_Code) := Reserved;

            else
               Unicode_Code :=
                 Code_Unit_32'Value
                  ("16#" & Buffer (First + 2 .. Tab - 1) & '#');
               Single_Map (Low_Code) := Unicode_Code;
            end if;

         else
            if Double_Map (High_Code) = null then
               Double_Map (High_Code) :=
                 new Code_Unit_32_Array'(others => Undefined);
               Single_Map (High_Code) := Double_Bytes;
            end if;

            if First = Tab then
               Double_Map (High_Code) (Low_Code) := Reserved;

            else
               Plus :=
                 Ada.Strings.Fixed.Index (Buffer (First + 2 .. Tab - 1), "+");

               if Plus = 0 then
                  Unicode_Code :=
                    Code_Unit_32'Value
                     ("16#" & Buffer (First + 2 .. Tab - 1) & '#');
                  Double_Map (High_Code) (Low_Code) := Unicode_Code;

               else
                  Last_Expansion := Last_Expansion + 1;
                  Expansion_List (Last_Expansion) :=
                    (Code_Unit_32'Value
                      ("16#" & Buffer (First + 2 .. Plus - 1) & '#'),
                     Code_Unit_32'Value
                      ("16#" & Buffer (Plus + 1 .. Tab - 1) & '#'));
                  Double_Map (High_Code) (Low_Code) := Last_Expansion;
               end if;
            end if;
         end if;
      end if;
   end loop;

   Ada.Text_IO.Close (File);

   --  Analysis

   for J in Double_Map'Range loop
      if Double_Map (J) /= null then
         for K in Double_Map (J)'Range loop
            if Double_Map (J) (K) /= Undefined then
               Valid_Second (K) := True;
            end if;
         end loop;
      end if;
   end loop;

   --  Generation

   Ada.Text_IO.Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                            Matreshka Project                        "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--         Localization, Internationalization, Globalization for Ada   "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                        Runtime Library Component                    "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- All rights reserved.                                                "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- Redistribution and use in source and binary forms, with or without  "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- modification, are permitted provided that the following conditions  "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- are met:                                                            "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--  * Redistributions of source code must retain the above copyright   "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--    notice, this list of conditions and the following disclaimer.    "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--  * Redistributions in binary form must reproduce the above copyright"
       & "     --");
   Ada.Text_IO.Put_Line
    ("--    notice, this list of conditions and the following disclaimer in t"
       & "he   --");
   Ada.Text_IO.Put_Line
    ("--    documentation and/or other materials provided with the distributi"
       & "on.  --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--  * Neither the name of the Vadim Godunko, IE nor the names of its   "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--    contributors may be used to endorse or promote products derived f"
       & "rom  --");
   Ada.Text_IO.Put_Line
    ("--    this software without specific prior written permission.         "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- ""AS IS"" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT "
       & "       --");
   Ada.Text_IO.Put_Line
    ("-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FO"
       & "R    --");
   Ada.Text_IO.Put_Line
    ("-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT"
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTA"
       & "L,   --");
   Ada.Text_IO.Put_Line
    ("-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIM"
       & "ITED --");
   Ada.Text_IO.Put_Line
    ("-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, "
       & "OR   --");
   Ada.Text_IO.Put_Line
    ("-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY "
       & "OF   --");
   Ada.Text_IO.Put_Line
    ("-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING"
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS  "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.        "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    ("--  $Revision$ $Date$");
   Ada.Text_IO.Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line
    ("private package Matreshka.Internals.Text_Codecs.SHIFTJIS.Tables is");
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("   pragma Preelaborate;");

   --  Generate meta class table
   --
   --  0 - Single/Valid
   --  1 - Single/Invalid
   --  2 - First/Valid
   --  3 - First/Invalid
   --  4 - Invalid/Valid
   --  5 - Invalid/Invalid

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("   Meta_Class :");
   Ada.Text_IO.Put_Line ("     constant array (Ada.Streams.Stream_Element_Array)");
   Ada.Text_IO.Put_Line ("       of SHIFTJIS_Meta_Class");
   Ada.Text_IO.Put ("         := (");

   for J in Single_Map'Range loop
      if Single_Map (J) = Undefined or Single_Map (J) = Reserved then
         if Valid_Second (J) then
            Ada.Text_IO.Put ("4");

         else
            Ada.Text_IO.Put ("5");
         end if;

      elsif Single_Map (J) = Double_Bytes then
         if Valid_Second (J) then
            Ada.Text_IO.Put ("2");

         else
            Ada.Text_IO.Put ("3");
         end if;

      else
         if Valid_Second (J) then
            Ada.Text_IO.Put ("0");

         else
            Ada.Text_IO.Put ("1");
         end if;
      end if;

      if J = 255 then
         Ada.Text_IO.Put_Line (");");

      elsif J mod 16 = 15 then
         Ada.Text_IO.Put_Line (",");
         Ada.Text_IO.Put ("             ");

      else
         Ada.Text_IO.Put (", ");
      end if;
   end loop;

   --  Generate single byte conversion table

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("   Encode_Single :");
   Ada.Text_IO.Put_Line ("     constant array (Ada.Streams.Stream_Element_Array)");
   Ada.Text_IO.Put_Line ("       of Matreshka.Internals.Unicode.Code_Point");
   Ada.Text_IO.Put ("         := (");

   for J in Single_Map'Range loop
      if Single_Map (J) = Undefined
        or Single_Map (J) = Reserved
        or Single_Map (J) = Double_Bytes
      then
         Ada.Text_IO.Put ("16#0000#");

      else
         Ada.Text_IO.Put ("16#" & Image (Single_Map (J)) & '#');
      end if;

      if J = 255 then
         Ada.Text_IO.Put_Line (");");

      elsif J mod 4 = 3 then
         Ada.Text_IO.Put_Line (",");
         Ada.Text_IO.Put ("             ");

      else
         Ada.Text_IO.Put (", ");
      end if;
   end loop;

   --  Generate secondary tables for double byte conversion

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("   Encode_Double_Invalid : aliased constant SHIFTJIS_Code_Point_Array");
   Ada.Text_IO.Put_Line ("     := (16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#,");
   Ada.Text_IO.Put_Line ("         16#0000#, 16#0000#, 16#0000#, 16#0000#);");

   for J in Double_Map'Range loop
      if Double_Map (J) /= null then
         Ada.Text_IO.New_Line;
         Ada.Text_IO.Put_Line
          ("   Encode_Double_"
             & Image (J)
             & " : aliased constant SHIFTJIS_Code_Point_Array");
         Ada.Text_IO.Put ("     := (");

         for K in Double_Map (J)'Range loop
            if Double_Map (J) (K) = Undefined
              or Double_Map (J) (K) = Reserved
            then
               Ada.Text_IO.Put ("16#0000#");

            elsif Double_Map (J) (K) >= First_Expansion then
               Ada.Text_IO.Put
                ("16#"
                   & Image (Double_Map (J) (K) - First_Expansion + 1)
                   & '#');

            else
               Ada.Text_IO.Put ("16#" & Image (Double_Map (J) (K)) & '#');
            end if;

            if K = 255 then
               Ada.Text_IO.Put_Line (");");

            elsif K mod 4 = 3 then
               Ada.Text_IO.Put_Line (",");
               Ada.Text_IO.Put ("         ");

            else
               Ada.Text_IO.Put (", ");
            end if;
         end loop;
      end if;
   end loop;

   --  Generate double byte encoding table

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("   Encode_Double :");
   Ada.Text_IO.Put_Line ("     constant array (Ada.Streams.Stream_Element)");
   Ada.Text_IO.Put_Line ("       of not null SHIFTJIS_Code_Point_Array_Access");
   Ada.Text_IO.Put ("         := (");

   for J in Double_Map'Range loop
      if Double_Map (J) /= null then
          Ada.Text_IO.Put ("Encode_Double_" & Image (J) & "'Access");

      else
          Ada.Text_IO.Put ("Encode_Double_Invalid'Access");
      end if;

      if J = 255 then
         Ada.Text_IO.Put_Line (");");

      elsif J mod 2 = 1 then
         Ada.Text_IO.Put_Line (",");
         Ada.Text_IO.Put ("             ");

      else
         Ada.Text_IO.Put (", ");
      end if;
   end loop;

   --  Generate expansion table

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("   Expansion :");
   Ada.Text_IO.Put_Line
    ("     constant array (Matreshka.Internals.Unicode.Code_Unit_32 range 1 .."
       & Code_Unit_32'Image (Last_Expansion - First_Expansion + 1)
       & ")");
   Ada.Text_IO.Put_Line ("       of SHIFTJIS_Expansion_Pair");
   Ada.Text_IO.Put ("         := (");

   for J in First_Expansion .. Last_Expansion loop
      Ada.Text_IO.Put
       ("(16#"
          & Image (Expansion_List (J).First)
          & "#, 16#"
          & Image (Expansion_List (J).Second)
          & "#)");

      if J = Last_Expansion then
         Ada.Text_IO.Put_Line (");");

      elsif J mod 2 = 1 then
         Ada.Text_IO.Put_Line (",");
         Ada.Text_IO.Put ("             ");

      else
         Ada.Text_IO.Put (", ");
      end if;
   end loop;

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line
    ("end Matreshka.Internals.Text_Codecs.SHIFTJIS.Tables;");
end Gen_SHIFTJIS;
