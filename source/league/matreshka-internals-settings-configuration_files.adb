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

with League.Stream_Element_Vectors.Internals;
with League.Text_Codecs;
with League.Values.Strings;
with Matreshka.Internals.Stream_Element_Vectors;
with Matreshka.Internals.Unicode.Characters.Latin;

package body Matreshka.Internals.Settings.Configuration_Files is

   use Ada.Streams;
   use League.Stream_Element_Vectors;
   use League.Strings;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Characters.Latin;

   package Section_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           Maps.Map,
           League.Strings.Hash,
           League.Strings."=",
           Maps."=");
   --  This map is used to group key/value pairs in sections for serialization.

   Line_Delimiter : constant Stream_Element_Array := (0 => Line_Feed);
--   Line_Delimiter : constant Stream_Element_Array
--     := (0 => Carriage_Return, 1 => Line_Feed);
   --  Operating system dependent delimiter of lines in the text file.

   function To_Locale_String
    (Item : League.Strings.Universal_String) return String;
   --  Converts Universal_String to locale 8-bit string to use as file name for
   --  standard Ada library subprograms.

   procedure Parse
    (Self : in out Configuration_File_Settings;
     Data : League.Stream_Element_Vectors.Stream_Element_Vector);
   --  Parses data.

   function Serialize
    (Self : Configuration_File_Settings)
       return League.Stream_Element_Vectors.Stream_Element_Vector;
   --  Serializes data.

   function Decode_Key
    (Data : Ada.Streams.Stream_Element_Array)
       return League.Strings.Universal_String;
   --  Decodes key representation in the file into Universal_String.

   function Decode_Value
    (Data : Ada.Streams.Stream_Element_Array)
       return League.Strings.Universal_String renames Decode_Key;
   --  Decodes value representation in the file into Universal_String.

   function Encode_Key
    (Key : League.Strings.Universal_String)
       return League.Stream_Element_Vectors.Stream_Element_Vector;
   --  Encodes key to representation in the file.

   function Encode_Value
    (Key : League.Strings.Universal_String)
       return League.Stream_Element_Vectors.Stream_Element_Vector
         renames Encode_Key;
   --  Encodes value to representation in the file.

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

   ----------------
   -- Encode_Key --
   ----------------

   function Encode_Key
    (Key : League.Strings.Universal_String)
       return League.Stream_Element_Vectors.Stream_Element_Vector
   is
      Aux  : Stream_Element_Vector;
      Code : Code_Point;

      To_Hex : constant array (Code_Unit_32 range 0 .. 15) of Stream_Element
        := (Digit_Zero, Digit_One, Digit_Two, Digit_Three,
            Digit_Four, Digit_Five, Digit_Six, Digit_Seven,
            Digit_Eight, Digit_Nine, Latin_Capital_Letter_A,
            Latin_Capital_Letter_B, Latin_Capital_Letter_C,
            Latin_Capital_Letter_D, Latin_Capital_Letter_E,
            Latin_Capital_Letter_F);

   begin
      for J in 1 .. Key.Length loop
         Code := Wide_Wide_Character'Pos (Key.Element (J));

         if Code in Space .. Tilde then
            Aux.Append (Stream_Element (Code));

         elsif Code <= 16#FF# then
            --  Two digits format.

            Aux.Append (Percent_Sign);
            Aux.Append (To_Hex ((Code / 16) mod 16));
            Aux.Append (To_Hex (Code mod 16));

         elsif Code <= 16#FFFF# then
            --  Short Unicode form.

            Aux.Append (Percent_Sign);
            Aux.Append (Latin_Small_Letter_U);
            Aux.Append (To_Hex ((Code / 4096) mod 16));
            Aux.Append (To_Hex ((Code / 256) mod 16));
            Aux.Append (To_Hex ((Code / 16) mod 16));
            Aux.Append (To_Hex (Code mod 16));

         else
            --  Long Unicode form.

            Aux.Append (Percent_Sign);
            Aux.Append (Latin_Capital_Letter_U);
            Aux.Append (To_Hex ((Code / 1048576) mod 16));
            Aux.Append (To_Hex ((Code / 65536) mod 16));
            Aux.Append (To_Hex ((Code / 4096) mod 16));
            Aux.Append (To_Hex ((Code / 256) mod 16));
            Aux.Append (To_Hex ((Code / 16) mod 16));
            Aux.Append (To_Hex (Code mod 16));
         end if;
      end loop;

      return Aux;
   end Encode_Key;

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
     File_Name : League.Strings.Universal_String)
   is
      use Ada.Streams.Stream_IO;

      File   : File_Type;
      Buffer : Stream_Element_Array (1 .. 1024);
      Data   : Stream_Element_Vector;
      Last   : Stream_Element_Offset;

   begin
      --  Load content of the file.

      Open (File, In_File, To_Locale_String (File_Name));

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

   ----------
   -- Save --
   ----------

   procedure Save
    (Self      : in out Configuration_File_Settings;
     File_Name : League.Strings.Universal_String)
   is
      use Ada.Streams.Stream_IO;
      use League.Stream_Element_Vectors.Internals;

      File : File_Type;
      Data : Stream_Element_Vector;

   begin
      --  Serialize data.

      Data := Serialize (Self);

      --  Writes data into file.

      Create (File, Out_File, To_Locale_String (File_Name));
      Write (File, Internal (Data).Value (0 .. Internal (Data).Length - 1));
      Close (File);
   end Save;

   ---------------
   -- Serialize --
   ---------------

   function Serialize
    (Self : Configuration_File_Settings)
       return League.Stream_Element_Vectors.Stream_Element_Vector
   is
      procedure Group_Pair (Position : Maps.Cursor);
      --  Add pair into sections map.

      procedure Serialize_Section (Position : Section_Maps.Cursor);
      --  Serialize specified section and its key/value pairs.

      procedure Serialize_Pair (Position : Maps.Cursor);
      --  Serialize specified key/value pair.

      Aux      : League.Stream_Element_Vectors.Stream_Element_Vector;
      Sections : Section_Maps.Map;

      ----------------
      -- Group_Pair --
      ----------------

      procedure Group_Pair (Position : Maps.Cursor) is

         procedure Insert_Pair
          (Section_Key    : Universal_String;
           Section_Values : in out Maps.Map);
         --  Insert current key/value pair into the specified section. It
         --  removes first component of key name.

         Key              : constant Universal_String := Maps.Key (Position);
         Value            : constant Stream_Element_Vector
           := Maps.Element (Position);
         Index            : constant Natural          := Key.Index ('/');
         Section_Position : Section_Maps.Cursor;

         -----------------
         -- Insert_Pair --
         -----------------

         procedure Insert_Pair
          (Section_Key    : Universal_String;
           Section_Values : in out Maps.Map) is
         begin
            if Index = 0 then
               Section_Values.Insert (Key, Value);

            else
               Section_Values.Insert
                (Key.Slice (Index + 1, Key.Length), Value);
            end if;
         end Insert_Pair;

      begin
         if Index = 0 then
            Section_Position := Sections.Find (Empty_Universal_String);

            if not Section_Maps.Has_Element (Section_Position) then
               Sections.Insert (Empty_Universal_String, Maps.Empty_Map);
               Section_Position := Sections.Find (Empty_Universal_String);
            end if;

         else
            Section_Position := Sections.Find (Key.Slice (1, Index - 1));

            if not Section_Maps.Has_Element (Section_Position) then
               Sections.Insert (Key.Slice (1, Index - 1), Maps.Empty_Map);
               Section_Position := Sections.Find (Key.Slice (1, Index - 1));
            end if;
         end if;

         Sections.Update_Element (Section_Position, Insert_Pair'Access);
      end Group_Pair;

      --------------------
      -- Serialize_Pair --
      --------------------

      procedure Serialize_Pair (Position : Maps.Cursor) is
         Key   : constant Universal_String      := Maps.Key (Position);
         Value : constant Stream_Element_Vector := Maps.Element (Position);

      begin
         Aux.Append (Encode_Key (Key));
         Aux.Append (Equals_Sign);
         Aux.Append (Value);
         Aux.Append (Line_Delimiter);
      end Serialize_Pair;

      -----------------------
      -- Serialize_Section --
      -----------------------

      procedure Serialize_Section (Position : Section_Maps.Cursor) is
         Section : constant Universal_String := Section_Maps.Key (Position);
         Values  : constant Maps.Map := Section_Maps.Element (Position);

      begin
         Aux.Append (Left_Square_Bracket);
         Aux.Append (Encode_Key (Section));
         Aux.Append (Right_Square_Bracket);
         Aux.Append (Line_Delimiter);

         Values.Iterate (Serialize_Pair'Access);

         Aux.Append (Line_Delimiter);
      end Serialize_Section;

   begin
      --  Group key/value pair into sections.

      Self.Values.Iterate (Group_Pair'Access);

      --  Serialize sections and their key/value pairs.

      Sections.Iterate (Serialize_Section'Access);

      return Aux;
   end Serialize;

   ---------------
   -- Set_Value --
   ---------------

   overriding procedure Set_Value
    (Self  : in out Configuration_File_Settings;
     Key   : League.Strings.Universal_String;
     Value : League.Values.Value) is
   begin
      Self.Values.Include
       (Key, Encode_Value (League.Values.Strings.Get (Value)));
   end Set_Value;

   ----------------------
   -- To_Locale_String --
   ----------------------

   function To_Locale_String
    (Item : League.Strings.Universal_String) return String
   is
      Aux : constant Stream_Element_Array
       := League.Text_Codecs.Codec_For_Application_Locale.Encode
           (Item).To_Stream_Element_Array;
      Str : String (1 .. Aux'Length);
      for Str'Address use Aux'Address;
      pragma Import (Ada, Str);

   begin
      return Str;
   end To_Locale_String;

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
