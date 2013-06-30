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
-- Copyright © 2011-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Calendar.Time_Zones;

with League.Calendars.ISO_8601;

package body League.Calendars.Ada_Conversions is

   -------------------
   -- From_Ada_Time --
   -------------------

   function From_Ada_Time (Item : Ada.Calendar.Time) return Date_Time is
      use type Ada.Calendar.Time;

      Offset   : constant Ada.Calendar.Time_Zones.Time_Offset
        := Ada.Calendar.Time_Zones.UTC_Time_Offset (Item);
      UTC      : constant Ada.Calendar.Time := Item - Duration (Offset) * 60.0;
      --  XXX Must be reviewed after implementation of timezone support.
      --  Ada.Calendar.Time is local time and time zone conversion will be
      --  applied automatically by League.Calendars.ISO_8601.Create.

      Year          : Ada.Calendar.Year_Number;
      Month         : Ada.Calendar.Month_Number;
      Day           : Ada.Calendar.Day_Number;
      Seconds       : Ada.Calendar.Day_Duration;
      Whole_Seconds : Integer;
      Hour          : League.Calendars.ISO_8601.Hour_Number;
      Minute        : League.Calendars.ISO_8601.Minute_Number;
      Second        : League.Calendars.ISO_8601.Second_Number;
      Fraction      : League.Calendars.ISO_8601.Nanosecond_100_Number;

   begin
      Ada.Calendar.Split (UTC, Year, Month, Day, Seconds);
      Whole_Seconds := Integer (Seconds - 0.5);
      --  Conversion to integer uses mathematical rounding, so we need to
      --  subtract by 0.5 to extract whole number of seconds.

      Hour :=
        League.Calendars.ISO_8601.Hour_Number (Whole_Seconds / 3_600);
      Minute :=
        League.Calendars.ISO_8601.Minute_Number
         ((Whole_Seconds / 60) mod 60);
      Second :=
        League.Calendars.ISO_8601.Second_Number (Whole_Seconds mod 60);
      Fraction :=
        League.Calendars.ISO_8601.Nanosecond_100_Number
         ((Seconds - Ada.Calendar.Day_Duration (Whole_Seconds))
             * 10_000_000);

      return
        League.Calendars.ISO_8601.Create
         (League.Calendars.ISO_8601.Year_Number (Year),
          League.Calendars.ISO_8601.Month_Number (Month),
          League.Calendars.ISO_8601.Day_Number (Day),
          Hour,
          Minute,
          Second,
          Fraction);
   end From_Ada_Time;

end League.Calendars.Ada_Conversions;
