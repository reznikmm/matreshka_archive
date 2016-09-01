------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2015-2016, Vadim Godunko <vgodunko@gmail.com>                --
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

with League.Calendars.ISO_8601;
with League.String_Vectors;

package body Matreshka.RFC2616_Dates is

   procedure Parse_Time
     (Text   : League.Strings.Universal_String;
      Hour   : out League.Calendars.ISO_8601.Hour_Number;
      Minute : out League.Calendars.ISO_8601.Minute_Number;
      Second : out League.Calendars.ISO_8601.Second_Number);
   
   procedure Parse_ANSI_Date
     (Self    : Format'Class;
      Text    : League.Strings.Universal_String;
      Value   : out League.Calendars.Date_Time;
      Success : out Boolean);

   procedure Parse_RFC_1123_Date
     (Self    : Format'Class;
      Text    : League.Strings.Universal_String;
      Value   : out League.Calendars.Date_Time;
      Success : out Boolean);
   
   procedure Parse_RFC_850_Date
     (Self    : Format'Class;
      Text    : League.Strings.Universal_String;
      Value   : out League.Calendars.Date_Time;
      Success : out Boolean);
   
   
   -----------------
   -- From_String --
   -----------------

   procedure From_String
     (Self    : Format;
      Text    : League.Strings.Universal_String;
      Value   : out League.Calendars.Date_Time;
      Success : out Boolean)
   is
      Char_4 : constant Wide_Wide_Character
        := Text.Element (4).To_Wide_Wide_Character;

   begin
      if Char_4 = ',' then
         Self.Parse_RFC_1123_Date (Text, Value, Success);
      elsif Char_4 = ' ' then
         Self.Parse_ANSI_Date (Text, Value, Success);
      else
         Self.Parse_RFC_850_Date (Text, Value, Success);
      end if;
   end From_String;
   
   ---------------------
   -- Parse_ANSI_Date --
   ---------------------

   procedure Parse_ANSI_Date
     (Self    : Format'Class;
      Text    : League.Strings.Universal_String;
      Value   : out League.Calendars.Date_Time;
      Success : out Boolean)
   is
      use League.Calendars.ISO_8601;

      List : constant League.String_Vectors.Universal_String_Vector :=
        Text.Split (' ', League.Strings.Skip_Empty);

      Year   : Year_Number;
      Month  : Month_Number;
      Day    : Day_Number;
      Hour   : Hour_Number;
      Minute : Minute_Number;
      Second : Second_Number;
   begin
      --  Text example: Sun Nov  6 08:49:37 1994
      Year := Year_Number'Wide_Wide_Value
        (List.Element (5).To_Wide_Wide_String);

      Month := Month_Number
        (Self.Month_List.Index (List.Element (2)) / 3);

      Day := Day_Number'Wide_Wide_Value
        (List.Element (3).To_Wide_Wide_String);

      Parse_Time (List.Element (4), Hour, Minute, Second);

      Value := Create (Year, Month, Day, Hour, Minute, Second, 0);

      Success := True;

   exception
      when Constraint_Error =>
         Success := False;
   end Parse_ANSI_Date;
   
   -------------------------
   -- Parse_RFC_1123_Date --
   -------------------------

   procedure Parse_RFC_1123_Date
     (Self    : Format'Class;
      Text    : League.Strings.Universal_String;
      Value   : out League.Calendars.Date_Time;
      Success : out Boolean)
   is
      use League.Calendars.ISO_8601;
      use type League.Strings.Universal_String;

      List : constant League.String_Vectors.Universal_String_Vector :=
        Text.Split (' ');

      Year   : Year_Number;
      Month  : Month_Number;
      Day    : Day_Number;
      Hour   : Hour_Number;
      Minute : Minute_Number;
      Second : Second_Number;
   begin
      --  Text example: Sun, 06 Nov 1994 08:49:37 GMT
      Year := Year_Number'Wide_Wide_Value
        (List.Element (4).To_Wide_Wide_String);

      Month := Month_Number
        (Self.Month_List.Index (List.Element (3)) / 3);

      Day := Day_Number'Wide_Wide_Value
        (List.Element (2).To_Wide_Wide_String);

      Success := List.Element (6) = Self.GMT;

      Parse_Time (List.Element (5), Hour, Minute, Second);

      Value := Create (Year, Month, Day, Hour, Minute, Second, 0);

   exception
      when Constraint_Error =>
         Success := False;
   end Parse_RFC_1123_Date;

   ------------------------
   -- Parse_RFC_850_Date --
   ------------------------

   procedure Parse_RFC_850_Date
     (Self    : Format'Class;
      Text    : League.Strings.Universal_String;
      Value   : out League.Calendars.Date_Time;
      Success : out Boolean)
   is
      use League.Calendars.ISO_8601;
      use type League.Strings.Universal_String;

      List : constant League.String_Vectors.Universal_String_Vector :=
        Text.Split (' ');

      Date   : League.Strings.Universal_String;
      Year   : Year_Number;
      Month  : Month_Number;
      Day    : Day_Number;
      Hour   : Hour_Number;
      Minute : Minute_Number;
      Second : Second_Number;
   begin
      --  Text example: Sunday, 06-Nov-94 08:49:37 GMT
      Date := List.Element (2);

      Year := Year_Number'Wide_Wide_Value
        (Date.Tail_From (8).To_Wide_Wide_String);

      if Year in 0 .. 49 then
         Year := Year + 2000;
      else
         Year := Year + 1900;
      end if;

      Month := Month_Number
        (Self.Month_List.Index (Date.Slice (4, 6)) / 3);

      Day := Day_Number'Wide_Wide_Value
        (Date.Head_To (2).To_Wide_Wide_String);

      Success := List.Element (4) = Self.GMT;

      Parse_Time (List.Element (3), Hour, Minute, Second);

      Value := Create (Year, Month, Day, Hour, Minute, Second, 0);

   exception
      when Constraint_Error =>
         Success := False;
   end Parse_RFC_850_Date;
   
   
   ----------------
   -- Parse_Time --
   ----------------

   procedure Parse_Time
     (Text   : League.Strings.Universal_String;
      Hour   : out League.Calendars.ISO_8601.Hour_Number;
      Minute : out League.Calendars.ISO_8601.Minute_Number;
      Second : out League.Calendars.ISO_8601.Second_Number)
   is
      use League.Calendars.ISO_8601;

      Time : constant League.String_Vectors.Universal_String_Vector
        := Text.Split (':');
   begin
      Hour := Hour_Number'Wide_Wide_Value
        (Time.Element (1).To_Wide_Wide_String);

      Minute := Minute_Number'Wide_Wide_Value
        (Time.Element (2).To_Wide_Wide_String);

      Second := Second_Number'Wide_Wide_Value
        (Time.Element (3).To_Wide_Wide_String);
   end Parse_Time;
   
   ---------------
   -- To_String --
   ---------------

   function To_String
     (Self  : Format;
      Value : League.Calendars.Date_Time)
        return League.Strings.Universal_String
   is
      Result : League.Strings.Universal_String;
   begin
      Result := League.Calendars.ISO_8601.Image (Self.Pattern, Value);

      Result.Append (Self.GMT);

      return Result;
   end To_String;

end Matreshka.RFC2616_Dates;
