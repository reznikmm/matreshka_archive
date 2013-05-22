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
--  This program generates timezone information from TZDATA.
------------------------------------------------------------------------------
with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Containers.Vectors;
with Ada.Strings.Wide_Wide_Fixed;
with Ada.Unchecked_Deallocation;
with Ada.Wide_Wide_Text_IO;

with League.Application;
with League.Strings;
with Matreshka.Internals.Calendars.Gregorian;
with Matreshka.Internals.Calendars.Times;

procedure Gen_TZ is

   use Matreshka.Internals.Calendars;
   use Matreshka.Internals.Calendars.Gregorian;
   use Matreshka.Internals.Calendars.Times;

   type Time_Kinds is (Wall, Standard, UTC);

   type Day_Kinds is (Number, Last_Sunday, Last_Saturday);

   type TZ_Zone_Record is record
      GMT_Offset : Relative_Time;
      Rules      : League.Strings.Universal_String;
      Year       : Year_Number;
      Month      : Month_Number  := 1;
      Day_Kind   : Day_Kinds     := Number;
      Day        : Day_Number    := 1;
      Hour       : Hour_Number   := 0;
      Minute     : Minute_Number := 0;
      Second     : Second_Number := 0;
      Time_Kind  : Time_Kinds    := Wall;
   end record;

   type Time_Zone_Access is access all Internal_Time_Zone;

   package TZ_Zone_Vectors is
     new Ada.Containers.Vectors (Positive, TZ_Zone_Record);

   type TZ_Zone_Info is record
     Name    : League.Strings.Universal_String;
     Records : TZ_Zone_Vectors.Vector;
   end record;

   X_Open_Epoch    : constant := 2_299_161;
   Ticks_In_Day    : constant := 24 * 60 * 60 * 10_000_000;
   Ticks_In_Hour   : constant :=      60 * 60 * 10_000_000;
   Ticks_In_Minute : constant :=           60 * 10_000_000;
   Ticks_In_Second : constant :=                10_000_000;

   procedure Load_TZ_File (File_Name : League.Strings.Universal_String);

   function To_Absolute_Time
    (Year   : Year_Number;
     Month  : Month_Number;
     Day    : Day_Number;
     Hour   : Hour_Number;
     Minute : Minute_Number;
     Second : Second_Number) return Absolute_Time;

   function To_Relative_Time
    (Hour   : Hour_Number;
     Minute : Minute_Number;
     Second : Second_Number) return Relative_Time;

   function Image (Item : Absolute_Time) return Wide_Wide_String;
   function Image (Item : Relative_Time) return Wide_Wide_String;

   TZ : TZ_Zone_Info;

   procedure Prepend
    (Item  : in out Time_Zone_Access;
     Value : Zone_Record);

   -----------
   -- Image --
   -----------

   function Image (Item : Absolute_Time) return Wide_Wide_String is
      Digit : constant
        array (Absolute_Time range 0 .. 9) of Wide_Wide_Character
          := "0123456789";
      Image : Wide_Wide_String := "000_000_000_000_0000000";
      First : Natural := Image'Last + 1;
      Aux   : Absolute_Time := Item;

   begin
      while Aux /= 0 loop
         First := First - 1;

         if Image (First) = '_' then
            First := First - 1;
         end if;

         Image (First) := Digit (Aux mod 10);
         Aux := Aux / 10;
      end loop;

      return Image;
   end Image;

   -----------
   -- Image --
   -----------

   function Image (Item : Relative_Time) return Wide_Wide_String is
      Digit : constant
        array (Relative_Time range 0 .. 9) of Wide_Wide_Character
          := "0123456789";
      Image : Wide_Wide_String := "000_000_000_000_0000000";
      First : Natural := Image'Last + 1;
      Aux   : Relative_Time := Item;

   begin
      while Aux /= 0 loop
         First := First - 1;

         if Image (First) = '_' then
            First := First - 1;
         end if;

         Image (First) := Digit (Aux mod 10);
         Aux := Aux / 10;
      end loop;

      return Image;
   end Image;

   ------------------
   -- Load_TZ_File --
   ------------------

   procedure Load_TZ_File (File_Name : League.Strings.Universal_String) is
      File        : Ada.Wide_Wide_Text_IO.File_Type;
      Buffer      : Wide_Wide_String (1 .. 1024);
      First       : Positive;
      Last        : Natural;
      Field_First : Positive;
      Field_Last  : Natural;

      procedure Parse_Field;
      --  Parses field. Sets Field_First and Field_Last to the first and last
      --  characters of the field, excluding heading and traling spaces. Update
      --  First to track current position.

      procedure Parse_GMTOFF (Value : out Relative_Time);
      --  Parses GMTOFF field of Zone record.

      procedure Parse_Month (Value : out Month_Number);
      --  Parses month name.

      procedure Parse_Time
       (Hour   : out Hour_Number;
        Minute : out Minute_Number;
        Second : out Second_Number;
        Kind   : out Time_Kinds);
      --  Parses time component with modifiers ('s').

      procedure Parse_Zone_Common (Value : in out TZ_Zone_Record);
      --  Parses common fields of Zone record.

      -----------------
      -- Parse_Field --
      -----------------

      procedure Parse_Field is
      begin
         --  Skip leading whitespaces.

         for J in First .. Last loop
            First := J;

            exit when Buffer (J) /= ' '
              and Buffer (J) /= Ada.Characters.Wide_Wide_Latin_1.HT;
         end loop;

         Field_First := First;

         if Buffer (Field_First) = '"' then
            --  Use of quatation mark is not supported.

            raise Program_Error;
         end if;

         for J in First .. Last loop
            if Buffer (J) = ' '
              or Buffer (J) = Ada.Characters.Wide_Wide_Latin_1.HT
            then
               Field_Last := J - 1;
               First := J + 1;

               exit;

            elsif J = Last then
               Field_Last := Last;
               First := Last + 1;
            end if;
         end loop;

         Ada.Wide_Wide_Text_IO.Put_Line
          (''' & Buffer (Field_First .. Field_Last) & ''');
      end Parse_Field;

      ------------------
      -- Parse_GMTOFF --
      ------------------

      procedure Parse_GMTOFF (Value : out Relative_Time) is
         Hour   : Hour_Number   := 0;
         Minute : Minute_Number := 0;
         Second : Second_Number := 0;
         First  : Positive      := Field_First;
         Last   : Natural       := Field_Last;
         Minus  : Boolean       := False;

      begin
         --  Look for minus sign.

         if Buffer (First) = '-' then
            Minus := True;
            First := First + 1;
         end if;

         --  Lookup for hour separator.

         for J in First .. Field_Last loop
            if Buffer (J) = ':' then
               Last := J - 1;

               exit;
            end if;
         end loop;

         if First <= Last then
            Hour := Hour_Number'Wide_Wide_Value (Buffer (First .. Last));
            First := Last + 2;
            Last := Field_Last;
         end if;

         --  Lookup for minute separator.

         for J in First .. Field_Last loop
            if Buffer (J) = ':' then
               Last := J - 1;

               exit;
            end if;
         end loop;

         if First <= Last then
            Minute := Minute_Number'Wide_Wide_Value (Buffer (First .. Last));
            First := Last + 2;
            Last := Field_Last;
         end if;

         --  Process second if any.

         if First <= Last then
            Second := Second_Number'Wide_Wide_Value (Buffer (First .. Last));
         end if;

         Value := To_Relative_Time (Hour, Minute, Second);

         if Minus then
            Value := -Value;
         end if;
      end Parse_GMTOFF;

      -----------------
      -- Parse_Month --
      -----------------

      procedure Parse_Month (Value : out Month_Number) is
         Image : constant Wide_Wide_String
           := Buffer (Field_First .. Field_Last);

      begin
         if Image = "Jan" then
            Value := 1;

         elsif Image = "Feb" then
            Value := 2;

         elsif Image = "Mar" then
            Value := 3;

         elsif Image = "Apr" then
            Value := 4;

         elsif Image = "May" then
            Value := 5;

         elsif Image = "Jun" then
            Value := 6;

         elsif Image = "Jul" then
            Value := 7;

         elsif Image = "Aug" then
            Value := 8;

         elsif Image = "Sep" then
            Value := 9;

         elsif Image = "Oct" then
            Value := 10;

         elsif Image = "Nov" then
            Value := 11;

         elsif Image = "Dec" then
            Value := 12;

         else
            raise Constraint_Error;
         end if;
      end Parse_Month;

      ----------------
      -- Parse_Time --
      ----------------

      procedure Parse_Time
       (Hour   : out Hour_Number;
        Minute : out Minute_Number;
        Second : out Second_Number;
        Kind   : out Time_Kinds)
      is
         First : Positive := Field_First;
         Last  : Natural := Field_Last;

      begin
         --  Set default values.

         Hour   := 0;
         Minute := 0;
         Second := 0;
         Kind   := Wall;

         --  Lookup for hour separator.

         for J in First .. Last loop
            if Buffer (J) not in '0' .. '9' then
               Last := J - 1;

               exit;
            end if;
         end loop;

         if First <= Last then
            Hour := Hour_Number'Wide_Wide_Value (Buffer (First .. Last));

            if Last = Field_Last then
               First := Field_Last + 1;

            elsif Buffer (Last + 1) = ':' then
               First := Last + 2;

            else
               First := Last + 1;
            end if;
         end if;

         --  Lookup for minute separator.

         Last := Field_Last;

         for J in First .. Field_Last loop
            if Buffer (J) not in '0' .. '9' then
               Last := J - 1;

               exit;
            end if;
         end loop;

         if First <= Last then
            Minute := Minute_Number'Wide_Wide_Value (Buffer (First .. Last));

            if Last = Field_Last then
               First := Field_Last + 1;

            elsif Buffer (Last + 1) = ':' then
               First := Last + 2;

            else
               First := Last + 1;
            end if;
         end if;

         --  Lookup for second separator.

         Last := Field_Last;

         for J in First .. Field_Last loop
            if Buffer (J) not in '0' .. '9' then
               Last := J - 1;

               exit;
            end if;
         end loop;

         if First <= Last then
            Second := Second_Number'Wide_Wide_Value (Buffer (First .. Last));

            if Last = Field_Last then
               First := Field_Last + 1;

            elsif Buffer (Last + 1) = ':' then
               First := Last + 2;

            else
               First := Last + 1;
            end if;
         end if;

         Last := Field_Last;

         --  Parse modifier if any.

         if First <= Last then
            if Buffer (First .. Last) = "s" then
               Kind := Standard;

            elsif Buffer (First .. Last) = "u" then
               Kind := UTC;

            else
               raise Constraint_Error;
            end if;
         end if;
      end Parse_Time;

      ------------------------
      -- Parse_Zone_Commmon --
      ------------------------

      procedure Parse_Zone_Common (Value : in out TZ_Zone_Record) is
      begin
         --  Parse GMTOFF field.

         Parse_Field;
         Parse_GMTOFF (Value.GMT_Offset);

         --  Process RULES field.

         Parse_Field;

         if Buffer (Field_First .. Field_Last) /= "-" then
            Value.Rules :=
              League.Strings.To_Universal_String
               (Buffer (Field_First .. Field_Last));
         end if;

         --  Skip FORMAT field.

         Parse_Field;

         --  Process components of [UNTIL] field.

         --  Year component.

         Parse_Field;

         if Field_First <= Field_Last then
            Value.Year :=
              Year_Number'Wide_Wide_Value
               (Buffer (Field_First .. Field_Last));

         else
            Ada.Wide_Wide_Text_IO.Put_Line (">>> END OF TIME <<<");

            Value.Year := Year_Number'Last;
         end if;

         --  Month component.

         Parse_Field;

         if Field_First <= Field_Last then
            Parse_Month (Value.Month);
         end if;

         --  Day component.

         Parse_Field;

         if Field_First <= Field_Last then
            --  Special values.

            if Buffer (Field_First .. Field_Last) = "lastSun" then
               Value.Day_Kind := Last_Sunday;

            elsif Buffer (Field_First .. Field_Last) = "lastSat" then
               Value.Day_Kind := Last_Saturday;

            --  Simple numeric value.

            else
               Value.Day :=
                 Day_Number'Wide_Wide_Value
                  (Buffer (Field_First .. Field_Last));
            end if;
         end if;

         --  Time component.

         Parse_Field;

         if Field_First <= Field_Last then
            Parse_Time
             (Value.Hour, Value.Minute, Value.Second, Value.Time_Kind);
         end if;
      end Parse_Zone_Common;

   begin
      Ada.Wide_Wide_Text_IO.Open
       (File,
        Ada.Wide_Wide_Text_IO.In_File,
        File_Name.To_UTF_8_String,
        "wcem=8");

      while not Ada.Wide_Wide_Text_IO.End_Of_File (File) loop
         Ada.Wide_Wide_Text_IO.Get_Line (File, Buffer, Last);

         --  Remove comments

         for J in Buffer'First .. Last loop
            if Buffer (J) = '#' then
               Last := J - 1;

               --  Remove trailing spaces and horizontal tabulations.

               for J in reverse Buffer'First .. Last loop
                  exit when Buffer (J) /= ' '
                    and Buffer (J) /= Ada.Characters.Wide_Wide_Latin_1.HT;

                  Last := J - 1;
               end loop;

               exit;
            end if;
         end loop;

         --  Process non-empty line.

         if Last >= Buffer'First then
            First := Buffer'First;

            if Buffer (1 .. 4) = "Rule" then
               --  Rule line.

               null;

            elsif Buffer (1 .. 4) = "Link" then
               Ada.Wide_Wide_Text_IO.Put_Line (Buffer (First .. Last));

            elsif Buffer (1 .. 4) = "Zone" then
               Ada.Wide_Wide_Text_IO.Put_Line (Buffer (First .. Last));

               --  Zone primary line.

               declare
                  D : TZ_Zone_Record;

               begin
                  --  Skip record kind.

                  Parse_Field;

                  --  Parse name of timezone.

                  Parse_Field;
                  TZ.Name :=
                    League.Strings.To_Universal_String
                     (Buffer (Field_First .. Field_Last));

                  --  Parse common fields.

                  Parse_Zone_Common (D);
                  TZ.Records.Append (D);
               end;

            else
               Ada.Wide_Wide_Text_IO.Put_Line (Buffer (First .. Last));

               --  Zone continuation line.

               declare
                  D : TZ_Zone_Record;

               begin
                  --  Parse common fields.

                  Parse_Zone_Common (D);
                  TZ.Records.Append (D);
               end;
            end if;
         end if;
      end loop;

      Ada.Wide_Wide_Text_IO.Close (File);
   end Load_TZ_File;

   -------------
   -- Prepend --
   -------------

   procedure Prepend
    (Item  : in out Time_Zone_Access;
     Value : Zone_Record)
   is
      procedure Free is
        new Ada.Unchecked_Deallocation (Internal_Time_Zone, Time_Zone_Access);

      Aux : Time_Zone_Access := Item;

   begin
      if Aux = null then
         Item := new Internal_Time_Zone (1);

      else
         Item := new Internal_Time_Zone (Aux.Length + 1);
         Item.Data (Aux.Data'First + 1 .. Aux.Data'Last + 1) := Aux.Data;
      end if;

      Item.Data (Item.Data'First) := Value;

      Free (Aux);
   end Prepend;

   ----------------------
   -- To_Absolute_Time --
   ----------------------

   function To_Absolute_Time
    (Year   : Year_Number;
     Month  : Month_Number;
     Day    : Day_Number;
     Hour   : Hour_Number;
     Minute : Minute_Number;
     Second : Second_Number) return Absolute_Time is
   begin
      return
        Absolute_Time (Julian_Day (Year, Month, Day) - X_Open_Epoch)
            * Ticks_In_Day
          + Absolute_Time (Hour) * Ticks_In_Hour
          + Absolute_Time (Minute) * Ticks_In_Minute
          + Absolute_Time (Second) * Ticks_In_Second;
   end To_Absolute_Time;

   ----------------------
   -- To_Relative_Time --
   ----------------------

   function To_Relative_Time
    (Hour   : Hour_Number;
     Minute : Minute_Number;
     Second : Second_Number) return Relative_Time is
   begin
      return
        Relative_Time (Hour) * Ticks_In_Hour
          + Relative_Time (Minute) * Ticks_In_Minute
          + Relative_Time (Second) * Ticks_In_Second;
   end To_Relative_Time;

   procedure Test
    (Z : not null Time_Zone_Access;
     Y : Year_Number;
     M : Month_Number;
     D : Day_Number;
     H : Hour_Number;
     N : Minute_Number;
     S : Second_Number)
   is
      Year     : Year_Number;
      Month    : Month_Number;
      Day      : Day_Number;
      Hour     : Hour_Number;
      Minute   : Minute_Number;
      Second   : Second_Number;
      Fraction : Nano_Second_100_Number;
      JDay     : Julian_Day_Number;
      Stamp    : Absolute_Time;

   begin
      Stamp := Create (UTC_Time_Zone'Access, Julian_Day (Y, M, D), H, N, S, 0);
      Split (UTC_Time_Zone'Access, Stamp, JDay, Hour, Minute, Second, Fraction);
      Split (JDay, Year, Month, Day);

      Ada.Wide_Wide_Text_IO.Put
       (Ada.Strings.Wide_Wide_Fixed.Trim
         (Year_Number'Wide_Wide_Image (Year), Ada.Strings.Both)
         & "-"
         & Ada.Strings.Wide_Wide_Fixed.Trim
            (Month_Number'Wide_Wide_Image (Month), Ada.Strings.Both)
         & "-"
         & Ada.Strings.Wide_Wide_Fixed.Trim
            (Day_Number'Wide_Wide_Image (Day), Ada.Strings.Both)
         & " "
         & Ada.Strings.Wide_Wide_Fixed.Trim
            (Hour_Number'Wide_Wide_Image (Hour), Ada.Strings.Both)
         & ":"
         & Ada.Strings.Wide_Wide_Fixed.Trim
            (Minute_Number'Wide_Wide_Image (Minute), Ada.Strings.Both)
         & ":"
         & Ada.Strings.Wide_Wide_Fixed.Trim
            (Second_Number'Wide_Wide_Image (Second), Ada.Strings.Both)
         & " => ");

      Split (Z.all'Unchecked_Access, Stamp, JDay, Hour, Minute, Second, Fraction);
      Split (JDay, Year, Month, Day);

      Ada.Wide_Wide_Text_IO.Put_Line
       (Ada.Strings.Wide_Wide_Fixed.Trim
         (Year_Number'Wide_Wide_Image (Year), Ada.Strings.Both)
         & "-"
         & Ada.Strings.Wide_Wide_Fixed.Trim
            (Month_Number'Wide_Wide_Image (Month), Ada.Strings.Both)
         & "-"
         & Ada.Strings.Wide_Wide_Fixed.Trim
            (Day_Number'Wide_Wide_Image (Day), Ada.Strings.Both)
         & " "
         & Ada.Strings.Wide_Wide_Fixed.Trim
            (Hour_Number'Wide_Wide_Image (Hour), Ada.Strings.Both)
         & ":"
         & Ada.Strings.Wide_Wide_Fixed.Trim
            (Minute_Number'Wide_Wide_Image (Minute), Ada.Strings.Both)
         & ":"
         & Ada.Strings.Wide_Wide_Fixed.Trim
            (Second_Number'Wide_Wide_Image (Second), Ada.Strings.Both));
   end Test;

   From : Absolute_Time := 0;

   Z : Time_Zone_Access;

begin
   Load_TZ_File (League.Application.Arguments.Element (1));

   --  Generate zone information.

   for R of TZ.Records loop
      Prepend (Z, (From, R.GMT_Offset));
      Ada.Wide_Wide_Text_IO.Put_Line
       (Image (From)
          & ", "
          & Image (R.GMT_Offset));

      if R.Year /= Year_Number'Last then
         From :=
           To_Absolute_Time
            (R.Year, R.Month, R.Day, R.Hour, R.Minute, R.Second);

         case R.Time_Kind is
            when Wall =>
               From := From - Absolute_Time (R.GMT_Offset);
               --  XXX Note: this time must be corrected according to modifier.

            when Standard =>
               From := From - Absolute_Time (R.GMT_Offset);

            when UTC =>
               null;
         end case;

      else
         From := Absolute_Time'Last;
      end if;
   end loop;

   --  Some tests.

   Test (Z, 1879, 12, 31, 21, 29, 39);
   Test (Z, 1879, 12, 31, 21, 29, 40);
   Test (Z, 1916,  7,  2, 21, 29, 59);
   Test (Z, 1916,  7,  2, 21, 30, 00);
   Test (Z, 1917,  7,  1, 20, 29, 11);
   Test (Z, 1917,  7,  1, 20, 29, 12);

   Test (Z, 2011,  3, 26, 22, 59, 59);
   Test (Z, 2011,  3, 26, 23,  0,  0);
end Gen_TZ;
