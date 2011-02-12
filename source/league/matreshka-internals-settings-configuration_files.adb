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
with Ada.Streams.Stream_IO;
with Ada.Wide_Wide_Text_IO;

with League.Stream_Element_Vectors.Internals;
with League.Values.Strings;
with Matreshka.Internals.Stream_Element_Vectors;
with Matreshka.Internals.Unicode.Characters.Latin;

package body Matreshka.Internals.Settings.Configuration_Files is

   use Ada.Streams;
   use League.Stream_Element_Vectors;
   use League.Strings;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Characters.Latin;

   procedure Parse
    (Self : in out Configuration_File_Settings;
     Data : League.Stream_Element_Vectors.Stream_Element_Vector);
   --  Parses data.

   function Decode_Key
    (Data : Ada.Streams.Stream_Element_Array)
       return League.Strings.Universal_String;
   --  Decodes key representation in the file into Universal_String.

   function Decode_Value
    (Data : Ada.Streams.Stream_Element_Array)
       return League.Strings.Universal_String renames Decode_Key;
   --  Decodes value representation in the file into Universal_String.

   function From_Hex
    (Image : Ada.Streams.Stream_Element_Array)
       return Matreshka.Internals.Unicode.Code_Unit_32;
   --  Constructs Unicode code point from hexadecimal image. Returns
   --  Code_Unit_32'Last when conversion failed.

   ----------------
   -- Decode_Key --
   ----------------

   function Decode_Key
    (Data : Ada.Streams.Stream_Element_Array)
       return League.Strings.Universal_String
   is
      Key   : League.Strings.Universal_String;
      Index : Stream_Element_Offset := Data'First;
      Code  : Code_Unit_32;

   begin
      while Index <= Data'Last loop
         Code := Code_Unit_32'Last;

         if Data (Index) = Percent_Sign then
            if Data (Index + 1) = Latin_Capital_Letter_U then
               --  Unicode long format.

               if Index + 7 <= Data'Last then
                  Code := From_Hex (Data (Index + 2 .. Index + 7));
               end if;

               Index := Index + 8;

            elsif Data (Index + 1) = Latin_Small_Letter_U then
               --  Unicode short format.

               if Index + 5 <= Data'Last then
                  Code := From_Hex (Data (Index + 2 .. Index + 5));
               end if;

               Index := Index + 6;

            else
               --  Two digits format.

               if Index + 2 <= Data'Last then
                  Code := From_Hex (Data (Index + 1 .. Index + 2));
               end if;

               Index := Index + 3;
            end if;

         else
            Code := Code_Unit_32 (Data (Index));
            Index := Index + 1;
         end if;

         if Is_Valid (Code) then
            Key.Append (Wide_Wide_Character'Val (Code));
         end if;
      end loop;

      return Key;
   end Decode_Key;

   --------------
   -- From_Hex --
   --------------

   function From_Hex
    (Image : Ada.Streams.Stream_Element_Array)
       return Matreshka.Internals.Unicode.Code_Unit_32
   is
      Code  : Code_Unit_32 := 0;
      Index : Stream_Element_Offset := Image'First;

   begin
      while Index <= Image'Last loop
         Code := Code * 16;

         if Image (Index) in Digit_Zero .. Digit_Nine then
            Code := Code + Code_Unit_32 (Image (Index)) - Digit_Zero;

         elsif Image (Index)
                 in Latin_Capital_Letter_A .. Latin_Capital_Letter_F
         then
            Code :=
              Code
                + Code_Unit_32 (Image (Index)) - Latin_Capital_Letter_A + 10;

         elsif Image (Index)
                 in Latin_Small_Letter_A .. Latin_Small_Letter_F
         then
            Code :=
              Code + Code_Unit_32 (Image (Index)) - Latin_Small_Letter_A + 10;

         else
            return Code_Unit_32'Last;
         end if;

         if Code not in Code_Point then
            return Code_Unit_32'Last;
         end if;

         Index := Index + 1;
      end loop;

      return Code;
   end From_Hex;

   ----------
   -- Load --
   ----------

   procedure Load
    (Self      : in out Configuration_File_Settings;
     File_Name : String)
   is
      use Ada.Streams.Stream_IO;

      File   : File_Type;
      Buffer : Stream_Element_Array (1 .. 1024);
      Data   : Stream_Element_Vector;
      Last   : Stream_Element_Offset;

   begin
      --  Load content of the file.

      Open (File, In_File, File_Name);

      loop
         Read (File, Buffer, Last);

         exit when Last < Buffer'First;

         Data.Append (Buffer (Buffer'First .. Last));
      end loop;

      Close (File);

      Parse (Self, Data);
   end Load;

   -----------
   -- Parse --
   -----------

   procedure Parse
    (Self : in out Configuration_File_Settings;
     Data : League.Stream_Element_Vectors.Stream_Element_Vector)
   is
      use Matreshka.Internals.Stream_Element_Vectors;

      procedure Parse_Line;
      --  Determine boundary of the next line.

      Buffer          : constant Shared_Stream_Element_Vector_Access
        := League.Stream_Element_Vectors.Internals.Internal (Data);
      Line_First      : Stream_Element_Offset;
      Line_Last       : Stream_Element_Offset;
      Equal_Index     : Stream_Element_Offset;
      Key_Last        : Stream_Element_Offset;
      Value_First     : Stream_Element_Offset;
      Current_Section : Universal_String;
      Key             : Universal_String;

      ----------------
      -- Parse_Line --
      ----------------

      procedure Parse_Line is
      begin
         Line_First := Line_Last + 1;

         --  Skip leading whitespaces.

         while Line_First < Buffer.Length loop
            exit when
              Buffer.Value (Line_First) /= Space
                and Buffer.Value (Line_First) /= Character_Tabulation
                and Buffer.Value (Line_First) /= Carriage_Return
                and Buffer.Value (Line_First) /= Line_Feed;

            Line_First := Line_First + 1;
         end loop;

         Line_Last   := Line_First;
         Equal_Index := Line_First - 1;

         --  Scan line.

         while Line_Last < Buffer.Length loop
            --  Exit when end of line is reached.

            exit when
              Buffer.Value (Line_Last) = Carriage_Return
                or Buffer.Value (Line_Last) = Line_Feed;

            --  Save position of first occurrence of equal sign.

            if Buffer.Value (Line_Last) = Equals_Sign
              and Equal_Index < Line_First
            then
               Equal_Index := Line_Last;
            end if;

            Line_Last := Line_Last + 1;
         end loop;

         Line_Last := Line_Last - 1;

         -- Remove trailing whitespaces.

         loop
            exit when
              Buffer.Value (Line_Last) /= Character_Tabulation
                and Buffer.Value (Line_Last) /= Space;

            Line_Last := Line_Last - 1;
         end loop;

         --  Determine key and value boundary.

         if Equal_Index >= Line_First then
            Key_Last := Equal_Index - 1;

            while Key_Last >= Line_First loop
               exit when
                 Buffer.Value (Key_Last) /= Character_Tabulation
                   and Buffer.Value (Key_Last) /= Space;

               Key_Last := Key_Last - 1;
            end loop;

            Value_First := Equal_Index + 1;

            while Value_First <= Line_Last loop
               exit when
                 Buffer.Value (Value_First) /= Character_Tabulation
                   and Buffer.Value (Value_First) /= Space;

               Value_First := Value_First + 1;
            end loop;
         end if;
      end Parse_Line;

   begin
      Line_Last := -1;

      loop
         Parse_Line;

         exit when Line_Last < Line_First;

         if Buffer.Value (Line_First) = Semicolon then
            --  This is a comment line.

            null;

         elsif Buffer.Value (Line_First) = Left_Square_Bracket then
            --  Section.

            Line_First := Line_First + 1;

            if Buffer.Value (Line_Last) = Right_Square_Bracket then
               Key_Last := Line_Last - 1;

            else
               Key_Last := Line_Last;
            end if;

            --  Strip leading whitespaces.

            while Line_First <= Key_Last loop
               exit when
                 Buffer.Value (Line_First) /= Character_Tabulation
                   and Buffer.Value (Line_First) /= Space;

               Line_First := Line_First + 1;
            end loop;

            --  Strip trailing whitespaces.

            while Key_Last >= Line_First loop
               exit when
                 Buffer.Value (Key_Last) /= Character_Tabulation
                   and Buffer.Value (Key_Last) /= Space;

               Key_Last := Key_Last - 1;
            end loop;

            Current_Section :=
              Decode_Key (Buffer.Value (Line_First .. Key_Last));

         elsif Equal_Index >= Line_First then
            --  Key/value pair.

            Key := Current_Section;

            if not Key.Is_Empty then
               Key.Append ('/');
            end if;

            Key.Append (Decode_Key (Buffer.Value (Line_First .. Key_Last)));

            if not Self.Values.Contains (Key) then
               Ada.Wide_Wide_Text_IO.Put_Line (Key.To_Wide_Wide_String);
               Self.Values.Insert
                (Key,
                 To_Stream_Element_Vector
                  (Buffer.Value (Value_First .. Line_Last)));
            end if;

         else
            --  Incorrect line.

            null;
         end if;
      end loop;
   end Parse;

   -----------
   -- Value --
   -----------

   overriding function Value
    (Self : Configuration_File_Settings;
     Key  : League.Strings.Universal_String)
       return League.Values.Value is
   begin
      return Aux : League.Values.Value do
         if Self.Values.Contains (Key) then
            League.Values.Strings.Set
             (Aux,
              Decode_Value
               (Self.Values.Element (Key).To_Stream_Element_Array));
         end if;
      end return;
   end Value;

end Matreshka.Internals.Settings.Configuration_Files;
