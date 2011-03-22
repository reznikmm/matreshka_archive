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
with Matreshka.Internals.Calendars.Gregorian;

package body Matreshka.Internals.Calendars.Times is

   X_Open_Epoch : constant := 2_299_161;
   --  Julian day number of start of X/Open representation
   --  October, 15, 1582
   
   Ticks_In_Day    : constant := 24 * 60 * 60 * 10_000_000;
   Ticks_In_Hour   : constant :=      60 * 60 * 10_000_000;
   Ticks_In_Minute : constant :=           60 * 10_000_000;
   Ticks_In_Second : constant :=                10_000_000;

   type Leap_Second_Information is record
      Julian_Day : Julian_Day_Number;
      Stamp      : Absolute_Time;
      Correction : Absolute_Time;
   end record;

   Leaps : array (Positive range <>) of Leap_Second_Information
     := ((2454832, 134500608230000000, 240000000),   --  2008-12-31
         (2453736, 133553664220000000, 230000000),   --  2005-12-31
         (2451179, 131344416210000000, 220000000),   --  1998-12-31
         (2450630, 130870080200000000, 210000000),   --  1997-06-30
         (2450083, 130397472190000000, 200000000),   --  1995-12-31
         (2449534, 129923136180000000, 190000000),   --  1994-06-30
         (2449169, 129607776170000000, 180000000),   --  1993-06-30
         (2448804, 129292416160000000, 170000000),   --  1992-06-30
         (2448257, 128819808150000000, 160000000),   --  1990-12-31
         (2447892, 128504448140000000, 150000000),   --  1989-12-31
         (2447161, 127872864130000000, 140000000),   --  1987-12-31
         (2446247, 127083168120000000, 130000000),   --  1985-06-30
         (2445516, 126451584110000000, 120000000),   --  1983-06-30
         (2445151, 126136224100000000, 110000000),   --  1982-06-30
         (2444786, 125820864090000000, 100000000),   --  1981-06-30
         (2444239, 125348256080000000,  90000000),   --  1979-12-31
         (2443874, 125032896070000000,  80000000),   --  1978-12-31
         (2443509, 124717536060000000,  70000000),   --  1977-12-31
         (2443144, 124402176050000000,  60000000),   --  1976-12-31
         (2442778, 124085952040000000,  50000000),   --  1975-12-31
         (2442413, 123770592030000000,  40000000),   --  1974-12-31
         (2442048, 123455232020000000,  30000000),   --  1973-12-31
         (2441683, 123139872010000000,  20000000),   --  1972-12-31
         (2441499, 122980896000000000,  10000000));  --  1972-06-30

   procedure Split
    (Stamp      : Absolute_Time;
     Julian_Day : out Julian_Day_Number;
     Time       : out Relative_Time;
     Leap       : out Relative_Time);
   --  Splits stamp onto juliad day number, relative time and leap second
   --  fraction.

   ------------
   -- Create --
   ------------

   function Create
    (Julian_Day : Julian_Day_Number;
     Hour       : Hour_Number;
     Minute     : Minute_Number;
     Second     : Second_Number;
     Nano_100   : Nano_Second_100_Number) return Absolute_Time
   is
      Stamp : Absolute_Time;
      Row   : Natural := 0;
      --  Number of row in correction table to obtain nearset next leap second
      --  day.

   begin
      --  Construct absolute time from all components except second and its
      --  fraction. Resulted absolute time will never be inside nearest next
      --  leap second.

      Stamp :=
        Absolute_Time (Julian_Day - X_Open_Epoch) * Ticks_In_Day
          + Absolute_Time (Hour) * Ticks_In_Hour
          + Absolute_Time (Minute) * Ticks_In_Minute;

      --  Looking for leap second correction and correct absolute time when
      --  necessary.

      for J in Leaps'Range loop
         if Stamp > Leaps (J).Stamp - Leaps (J).Correction + 10_000_000 then
            Stamp := Stamp + Leaps (J).Correction;
            Row := J - 1;

            exit;
         end if;
      end loop;

      --  Check whether leap second can be used.

      if Second = 60
        and then (Row not in Leaps'Range
                    or else Leaps (Row).Julian_Day /= Julian_Day)
      then
         raise Constraint_Error;
      end if;

      --  Add second and its fraction components.

      return
        Stamp
          + Absolute_Time (Second) * Ticks_In_Second
          + Absolute_Time (Nano_100);
   end Create;

   ----------
   -- Hour --
   ----------

   function Hour (Stamp : Absolute_Time) return Hour_Number is
      Julian_Day : Julian_Day_Number;
      Time       : Relative_Time;
      Leap       : Relative_Time;

   begin
      Split (Stamp, Julian_Day, Time, Leap);

      return Hour_Number (Time / Ticks_In_Hour);
   end Hour;

   ----------------
   -- Julian_Day --
   ----------------

   function Julian_Day (Stamp : Absolute_Time) return Julian_Day_Number is
      Julian_Day : Julian_Day_Number;
      Time       : Relative_Time;
      Leap       : Relative_Time;

   begin
      Split (Stamp, Julian_Day, Time, Leap);

      return Julian_Day;
   end Julian_Day;

   ------------
   -- Minute --
   ------------

   function Minute (Stamp : Absolute_Time) return Minute_Number is
      Julian_Day : Julian_Day_Number;
      Time       : Relative_Time;
      Leap       : Relative_Time;

   begin
      Split (Stamp, Julian_Day, Time, Leap);

      return Minute_Number ((Time mod Ticks_In_Hour) / Ticks_In_Minute);
   end Minute;

   --------------------
   -- Nanosecond_100 --
   --------------------

   function Nanosecond_100
    (Stamp : Absolute_Time) return Nano_Second_100_Number
   is
      Julian_Day : Julian_Day_Number;
      Time       : Relative_Time;
      Leap       : Relative_Time;

   begin
      Split (Stamp, Julian_Day, Time, Leap);

      return
        Nano_Second_100_Number
         ((Time mod Ticks_In_Minute + Leap mod Ticks_In_Minute)
            mod Ticks_In_Second);
   end Nanosecond_100;

   ------------
   -- Second --
   ------------

   function Second (Stamp : Absolute_Time) return Second_Number is
      Julian_Day : Julian_Day_Number;
      Time       : Relative_Time;
      Leap       : Relative_Time;

   begin
      Split (Stamp, Julian_Day, Time, Leap);

      return
        Second_Number
         ((Time mod Ticks_In_Minute + Leap mod Ticks_In_Minute)
            / Ticks_In_Second);
   end Second;

   -----------
   -- Split --
   -----------

   procedure Split
    (Stamp      : Absolute_Time;
     Julian_Day : out Julian_Day_Number;
     Time       : out Relative_Time;
     Leap       : out Relative_Time)
   is
      Corrected_Stamp : Absolute_Time := Stamp;

   begin
      --  Compensate leap seconds and extract leap second duration when
      --  necessary.

      Leap := 0;

      --  Going through list of leap seconds.

      for J in Leaps'Range loop
         if Stamp >= Leaps (J).Stamp + 10_000_000 then
            --  Stamp is larger than current leap second and outside of leap
            --  second range.

            Corrected_Stamp := Stamp - Leaps (J).Correction;

            exit;

         elsif Stamp >= Leaps (J).Stamp then
            --  Stamp is inside leap second range.

            Corrected_Stamp :=
              Leaps (J).Stamp - Leaps (J).Correction + 10_000_000 - 1;
            Leap := Relative_Time (Stamp - Leaps (J).Stamp + 1);

            exit;
         end if;
      end loop;

      --  Compute julian day number and relative time.

      Julian_Day :=
        Julian_Day_Number (Corrected_Stamp / (Ticks_In_Day)) + X_Open_Epoch;
      Time := Relative_Time (Corrected_Stamp mod (Ticks_In_Day));
   end Split;

end Matreshka.Internals.Calendars.Times;
