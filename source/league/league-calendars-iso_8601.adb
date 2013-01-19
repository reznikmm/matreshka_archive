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
with Matreshka.Internals.Calendars.Formatting.ISO_8601;
with Matreshka.Internals.Calendars.Formatting.Times;
with Matreshka.Internals.Calendars.Gregorian;
with Matreshka.Internals.Calendars.Times;

package body League.Calendars.ISO_8601 is

   Calendar : ISO_8601_Calendar;
   --  This global object is used in convenient subprograms as calendar.

   function Local_Time_Zone
     return Matreshka.Internals.Calendars.Time_Zone_Access;
   --  XXX Local time zone is not supported now. This function is used to
   --  return dummy time zone to help future transition.

   --------------
   -- Add_Days --
   --------------

   function Add_Days (Stamp : Date; Days : Integer) return Date is
   begin
      return Calendar.Add_Days (Stamp, Days);
   end Add_Days;

   --------------
   -- Add_Days --
   --------------

   procedure Add_Days (Stamp : in out Date; Days : Integer) is
   begin
      Calendar.Add_Days (Stamp, Days);
   end Add_Days;

   --------------
   -- Add_Days --
   --------------

   function Add_Days (Stamp : Date_Time; Days : Integer) return Date_Time is
   begin
      return Calendar.Add_Days (Stamp, Days);
   end Add_Days;

   --------------
   -- Add_Days --
   --------------

   procedure Add_Days (Stamp : in out Date_Time; Days : Integer) is
   begin
      Calendar.Add_Days (Stamp, Days);
   end Add_Days;

   --------------
   -- Add_Days --
   --------------

   function Add_Days
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Days  : Integer) return Date
   is
      pragma Unreferenced (Self);

   begin
      return Stamp + Date (Days);
   end Add_Days;

   --------------
   -- Add_Days --
   --------------

   procedure Add_Days
    (Self  : ISO_8601_Calendar'Class;
     Stamp : in out Date;
     Days  : Integer)
   is
      pragma Unreferenced (Self);

   begin
       Stamp := Stamp + Date (Days);
   end Add_Days;

   --------------
   -- Add_Days --
   --------------

   function Add_Days
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Days  : Integer) return Date_Time
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
      return Stamp;
   end Add_Days;

   --------------
   -- Add_Days --
   --------------

   procedure Add_Days
    (Self  : ISO_8601_Calendar'Class;
     Stamp : in out Date_Time;
     Days  : Integer)
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
   end Add_Days;

   ----------------
   -- Add_Months --
   ----------------

   function Add_Months (Stamp : Date; Months : Integer) return Date is
   begin
      return Calendar.Add_Months (Stamp, Months);
   end Add_Months;

   ----------------
   -- Add_Months --
   ----------------

   procedure Add_Months (Stamp : in out Date; Months : Integer) is
   begin
      Calendar.Add_Months (Stamp, Months);
   end Add_Months;

   ----------------
   -- Add_Months --
   ----------------

   function Add_Months
    (Stamp : Date_Time; Months : Integer) return Date_Time is
   begin
      return Calendar.Add_Months (Stamp, Months);
   end Add_Months;

   ----------------
   -- Add_Months --
   ----------------

   procedure Add_Months (Stamp : in out Date_Time; Months : Integer) is
   begin
      Calendar.Add_Months (Stamp, Months);
   end Add_Months;

   ----------------
   -- Add_Months --
   ----------------

   function Add_Months
    (Self   : ISO_8601_Calendar'Class;
     Stamp  : Date;
     Months : Integer) return Date
   is
      Year  : Year_Number;
      Month : Month_Number;
      Day   : Day_Number;
      Total : Integer;
   begin
      Split (Self, Stamp, Year, Month, Day);

      Total := Integer (Year * 12) + Integer (Month - 1) + Months;
      Year  := Year_Number (Total / 12);
      Month := Month_Number ((Total mod 12) + 1);
      Day   := Day_Number'Min (Day, Days_In_Month (Self, Year, Month));

      return Create (Self, Year, Month, Day);
   end Add_Months;

   ----------------
   -- Add_Months --
   ----------------

   procedure Add_Months
    (Self   : ISO_8601_Calendar'Class;
     Stamp  : in out Date;
     Months : Integer) is
   begin
      Stamp := Add_Months (Self, Stamp, Months);
   end Add_Months;

   ----------------
   -- Add_Months --
   ----------------

   function Add_Months
    (Self   : ISO_8601_Calendar'Class;
     Stamp  : Date_Time;
     Months : Integer) return Date_Time
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
      return Stamp;
   end Add_Months;

   ----------------
   -- Add_Months --
   ----------------

   procedure Add_Months
    (Self   : ISO_8601_Calendar'Class;
     Stamp  : in out Date_Time;
     Months : Integer)
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
   end Add_Months;

   ---------------
   -- Add_Years --
   ---------------

   function Add_Years (Stamp : Date; Years : Integer) return Date is
   begin
      return Calendar.Add_Years (Stamp, Years);
   end Add_Years;

   ---------------
   -- Add_Years --
   ---------------

   procedure Add_Years (Stamp : in out Date; Years : Integer) is
   begin
      Calendar.Add_Years (Stamp, Years);
   end Add_Years;

   ---------------
   -- Add_Years --
   ---------------

   function Add_Years (Stamp : Date_Time; Years : Integer) return Date_Time is
   begin
      return Calendar.Add_Years (Stamp, Years);
   end Add_Years;

   ---------------
   -- Add_Years --
   ---------------

   procedure Add_Years (Stamp : in out Date_Time; Years : Integer) is
   begin
      Calendar.Add_Years (Stamp, Years);
   end Add_Years;

   ---------------
   -- Add_Years --
   ---------------

   function Add_Years
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Years : Integer) return Date is
   begin
      return Add_Months (Self, Stamp, Years * 12);
   end Add_Years;

   ---------------
   -- Add_Years --
   ---------------

   procedure Add_Years
    (Self  : ISO_8601_Calendar'Class;
     Stamp : in out Date;
     Years : Integer) is
   begin
      Add_Months (Self, Stamp, Years * 12);
   end Add_Years;

   ---------------
   -- Add_Years --
   ---------------

   function Add_Years
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Years : Integer) return Date_Time
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
      return Stamp;
   end Add_Years;

   ---------------
   -- Add_Years --
   ---------------

   procedure Add_Years
    (Self  : ISO_8601_Calendar'Class;
     Stamp : in out Date_Time;
     Years : Integer)
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
   end Add_Years;

   ------------
   -- Create --
   ------------

   function Create
    (Year  : Year_Number;
     Month : Month_Number;
     Day   : Day_Number) return Date is
   begin
      return Calendar.Create (Year, Month, Day);
   end Create;

   ------------
   -- Create --
   ------------

   function Create
    (Year           : Year_Number;
     Month          : Month_Number;
     Day            : Day_Number;
     Hour           : Hour_Number;
     Minute         : Minute_Number;
     Second         : Second_Number;
     Nanosecond_100 : Nanosecond_100_Number) return Date_Time is
   begin
      return
        Calendar.Create
         (Year, Month, Day, Hour, Minute, Second, Nanosecond_100);
   end Create;

   ------------
   -- Create --
   ------------

   function Create
    (Year           : Year_Number;
     Zone           : Time_Zone;
     Month          : Month_Number;
     Day            : Day_Number;
     Hour           : Hour_Number;
     Minute         : Minute_Number;
     Second         : Second_Number;
     Nanosecond_100 : Nanosecond_100_Number) return Date_Time is
   begin
      return
        Calendar.Create
         (Zone, Year, Month, Day, Hour, Minute, Second, Nanosecond_100);
   end Create;

   ------------
   -- Create --
   ------------

   function Create
    (Self  : ISO_8601_Calendar'Class;
     Year  : Year_Number;
     Month : Month_Number;
     Day   : Day_Number) return Date
   is
      pragma Unreferenced (Self);

   begin
      return
        Date
         (Matreshka.Internals.Calendars.Gregorian.Julian_Day
           (Matreshka.Internals.Calendars.Gregorian.Year_Number (Year),
            Matreshka.Internals.Calendars.Gregorian.Month_Number (Month),
            Matreshka.Internals.Calendars.Gregorian.Day_Number (Day)));
   end Create;

   ------------
   -- Create --
   ------------

   function Create
    (Self           : ISO_8601_Calendar'Class;
     Year           : Year_Number;
     Month          : Month_Number;
     Day            : Day_Number;
     Hour           : Hour_Number;
     Minute         : Minute_Number;
     Second         : Second_Number;
     Nanosecond_100 : Nanosecond_100_Number) return Date_Time
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Time zone is not yet implemented.

      return
        Date_Time
         (Matreshka.Internals.Calendars.Times.Create
           (Matreshka.Internals.Calendars.UTC_Time_Zone'Access,
            Matreshka.Internals.Calendars.Gregorian.Julian_Day
             (Matreshka.Internals.Calendars.Gregorian.Year_Number (Year),
              Matreshka.Internals.Calendars.Gregorian.Month_Number (Month),
              Matreshka.Internals.Calendars.Gregorian.Day_Number (Day)),
            Matreshka.Internals.Calendars.Times.Hour_Number (Hour),
            Matreshka.Internals.Calendars.Times.Minute_Number (Minute),
            Matreshka.Internals.Calendars.Times.Second_Number (Second),
            Matreshka.Internals.Calendars.Times.Nano_Second_100_Number
             (Nanosecond_100)));
   end Create;

   ------------
   -- Create --
   ------------

   function Create
    (Self           : ISO_8601_Calendar'Class;
     Zone           : Time_Zone;
     Year           : Year_Number;
     Month          : Month_Number;
     Day            : Day_Number;
     Hour           : Hour_Number;
     Minute         : Minute_Number;
     Second         : Second_Number;
     Nanosecond_100 : Nanosecond_100_Number) return Date_Time
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
      return Dummy : Date_Time;
   end Create;

   ---------
   -- Day --
   ---------

   function Day (Stamp : Date) return Day_Number is
   begin
      return Calendar.Day (Stamp);
   end Day;

   ---------
   -- Day --
   ---------

   function Day (Stamp : Date_Time) return Day_Number is
   begin
      return Calendar.Day (Stamp);
   end Day;

   ---------
   -- Day --
   ---------

   function Day (Stamp : Date_Time; Zone : Time_Zone) return Day_Number is
   begin
      return Calendar.Day (Stamp, Zone);
   end Day;

   ---------
   -- Day --
   ---------

   function Day
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date) return Day_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Number
         (Matreshka.Internals.Calendars.Gregorian.Day
           (Matreshka.Internals.Calendars.Julian_Day_Number (Stamp)));
   end Day;

   ---------
   -- Day --
   ---------

   function Day
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Day_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Number
         (Matreshka.Internals.Calendars.Gregorian.Day
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Local_Time_Zone)));
   end Day;

   ---------
   -- Day --
   ---------

   function Day
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Day_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Number
         (Matreshka.Internals.Calendars.Gregorian.Day
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Zone.Description)));
   end Day;

   -----------------
   -- Day_Of_Week --
   -----------------

   function Day_Of_Week (Stamp : Date) return Day_Of_Week_Number is
   begin
      return Calendar.Day_Of_Week (Stamp);
   end Day_Of_Week;

   -----------------
   -- Day_Of_Week --
   -----------------

   function Day_Of_Week (Stamp : Date_Time) return Day_Of_Week_Number is
   begin
      return Calendar.Day_Of_Week (Stamp);
   end Day_Of_Week;

   -----------------
   -- Day_Of_Week --
   -----------------

   function Day_Of_Week
    (Stamp : Date_Time; Zone : Time_Zone) return Day_Of_Week_Number is
   begin
      return Calendar.Day_Of_Week (Stamp, Zone);
   end Day_Of_Week;

   -----------------
   -- Day_Of_Week --
   -----------------

   function Day_Of_Week
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date) return Day_Of_Week_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Of_Week_Number
         (Matreshka.Internals.Calendars.Gregorian.Day_Of_Week
           (Matreshka.Internals.Calendars.Julian_Day_Number (Stamp)));
   end Day_Of_Week;

   -----------------
   -- Day_Of_Week --
   -----------------

   function Day_Of_Week
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Day_Of_Week_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Of_Week_Number
         (Matreshka.Internals.Calendars.Gregorian.Day_Of_Week
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Local_Time_Zone)));
   end Day_Of_Week;

   -----------------
   -- Day_Of_Week --
   -----------------

   function Day_Of_Week
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Day_Of_Week_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Of_Week_Number
         (Matreshka.Internals.Calendars.Gregorian.Day_Of_Week
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Zone.Description)));
   end Day_Of_Week;

   -----------------
   -- Day_Of_Year --
   -----------------

   function Day_Of_Year (Stamp : Date) return Day_Of_Year_Number is
   begin
      return Calendar.Day_Of_Year (Stamp);
   end Day_Of_Year;

   -----------------
   -- Day_Of_Year --
   -----------------

   function Day_Of_Year (Stamp : Date_Time) return Day_Of_Year_Number is
   begin
      return Calendar.Day_Of_Year (Stamp);
   end Day_Of_Year;

   -----------------
   -- Day_Of_Year --
   -----------------

   function Day_Of_Year
    (Stamp : Date_Time; Zone : Time_Zone) return Day_Of_Year_Number is
   begin
      return Calendar.Day_Of_Year (Stamp, Zone);
   end Day_Of_Year;

   -----------------
   -- Day_Of_Year --
   -----------------

   function Day_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date) return Day_Of_Year_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Of_Year_Number
         (Matreshka.Internals.Calendars.Gregorian.Day_Of_Year
           (Matreshka.Internals.Calendars.Julian_Day_Number (Stamp)));
   end Day_Of_Year;

   -----------------
   -- Day_Of_Year --
   -----------------

   function Day_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Day_Of_Year_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Of_Year_Number
         (Matreshka.Internals.Calendars.Gregorian.Day_Of_Year
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Local_Time_Zone)));
   end Day_Of_Year;

   -----------------
   -- Day_Of_Year --
   -----------------

   function Day_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Day_Of_Year_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Of_Year_Number
         (Matreshka.Internals.Calendars.Gregorian.Day_Of_Year
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Zone.Description)));
   end Day_Of_Year;

   -------------------
   -- Days_In_Month --
   -------------------

   function Days_In_Month (Stamp : Date) return Day_Number is
   begin
      return Calendar.Days_In_Month (Stamp);
   end Days_In_Month;

   -------------------
   -- Days_In_Month --
   -------------------

   function Days_In_Month (Stamp : Date_Time) return Day_Number is
   begin
      return Calendar.Days_In_Month (Stamp);
   end Days_In_Month;

   -------------------
   -- Days_In_Month --
   -------------------

   function Days_In_Month
    (Stamp : Date_Time; Zone : Time_Zone) return Day_Number is
   begin
      return Calendar.Days_In_Month (Stamp, Zone);
   end Days_In_Month;

   -------------------
   -- Days_In_Month --
   -------------------

   function Days_In_Month
    (Year : Year_Number; Month : Month_Number) return Day_Number is
   begin
      return Calendar.Days_In_Month (Year, Month);
   end Days_In_Month;

   -------------------
   -- Days_In_Month --
   -------------------

   function Days_In_Month
    (Self : ISO_8601_Calendar'Class; Stamp : Date) return Day_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Number
         (Matreshka.Internals.Calendars.Gregorian.Days_In_Month
           (Matreshka.Internals.Calendars.Julian_Day_Number (Stamp)));
   end Days_In_Month;

   -------------------
   -- Days_In_Month --
   -------------------

   function Days_In_Month
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Day_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Number
         (Matreshka.Internals.Calendars.Gregorian.Days_In_Month
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Local_Time_Zone)));
   end Days_In_Month;

   -------------------
   -- Days_In_Month --
   -------------------

   function Days_In_Month
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Day_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Number
         (Matreshka.Internals.Calendars.Gregorian.Days_In_Month
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Zone.Description)));
   end Days_In_Month;

   -------------------
   -- Days_In_Month --
   -------------------

   function Days_In_Month
    (Self  : ISO_8601_Calendar'Class;
     Year  : Year_Number;
     Month : Month_Number) return Day_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Number
         (Matreshka.Internals.Calendars.Gregorian.Days_In_Month
           (Matreshka.Internals.Calendars.Gregorian.Year_Number (Year),
            Matreshka.Internals.Calendars.Gregorian.Month_Number (Month)));
   end Days_In_Month;

   ------------------
   -- Days_In_Year --
   ------------------

   function Days_In_Year (Stamp : Date) return Day_Of_Year_Number is
   begin
      return Calendar.Days_In_Year (Stamp);
   end Days_In_Year;

   ------------------
   -- Days_In_Year --
   ------------------

   function Days_In_Year (Stamp : Date_Time) return Day_Of_Year_Number is
   begin
      return Calendar.Days_In_Year (Stamp);
   end Days_In_Year;

   ------------------
   -- Days_In_Year --
   ------------------

   function Days_In_Year
    (Stamp : Date_Time; Zone : Time_Zone) return Day_Of_Year_Number is
   begin
      return Calendar.Days_In_Year (Stamp, Zone);
   end Days_In_Year;

   ------------------
   -- Days_In_Year --
   ------------------

   function Days_In_Year (Year : Year_Number) return Day_Of_Year_Number is
   begin
      return Calendar.Days_In_Year (Year);
   end Days_In_Year;

   ------------------
   -- Days_In_Year --
   ------------------

   function Days_In_Year
    (Self : ISO_8601_Calendar'Class; Stamp : Date) return Day_Of_Year_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Of_Year_Number
         (Matreshka.Internals.Calendars.Gregorian.Days_In_Year
           (Matreshka.Internals.Calendars.Julian_Day_Number (Stamp)));
   end Days_In_Year;

   ------------------
   -- Days_In_Year --
   ------------------

   function Days_In_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Day_Of_Year_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Of_Year_Number
         (Matreshka.Internals.Calendars.Gregorian.Days_In_Year
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Local_Time_Zone)));
   end Days_In_Year;

   ------------------
   -- Days_In_Year --
   ------------------

   function Days_In_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Day_Of_Year_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Day_Of_Year_Number
         (Matreshka.Internals.Calendars.Gregorian.Days_In_Year
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Zone.Description)));
   end Days_In_Year;

   ------------------
   -- Days_In_Year --
   ------------------

   function Days_In_Year
    (Self : ISO_8601_Calendar'Class;
     Year : Year_Number) return Day_Of_Year_Number is
   begin
      return
        Day_Of_Year_Number
         (Matreshka.Internals.Calendars.Gregorian.Days_In_Year
           (Matreshka.Internals.Calendars.Gregorian.Day_Of_Year_Number
             (Year)));
   end Days_In_Year;

   -------------
   -- Days_To --
   -------------

   function Days_To (From : Date; To : Date) return Integer is
   begin
      return Calendar.Days_To (From, To);
   end Days_To;

   -------------
   -- Days_To --
   -------------

   function Days_To
    (Self  : ISO_8601_Calendar'Class;
     From  : Date;
     To    : Date) return Integer is
   begin
      return Integer (To - From);
   end Days_To;

   ---------------------
   -- From_Julian_Day --
   ---------------------

   function From_Julian_Day (Day : Integer) return Date is
   begin
      return Calendar.From_Julian_Day (Day);
   end From_Julian_Day;

   ---------------------
   -- From_Julian_Day --
   ---------------------

   function From_Julian_Day
    (Self : ISO_8601_Calendar'Class;
     Day  : Integer) return Date
   is
      pragma Unreferenced (Self);

   begin
      return Date (Day);
   end From_Julian_Day;

   ----------
   -- Hour --
   ----------

   function Hour (Stamp : Time) return Hour_Number is
   begin
      return Calendar.Hour (Stamp);
   end Hour;

   ----------
   -- Hour --
   ----------

   function Hour (Stamp : Date_Time) return Hour_Number is
   begin
      return Calendar.Hour (Stamp);
   end Hour;

   ----------
   -- Hour --
   ----------

   function Hour (Stamp : Date_Time; Zone : Time_Zone) return Hour_Number is
   begin
      return Calendar.Hour (Stamp, Zone);
   end Hour;

   ----------
   -- Hour --
   ----------

   function Hour
    (Self : ISO_8601_Calendar'Class; Stamp : Time) return Hour_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Hour_Number
         (Matreshka.Internals.Calendars.Times.Hour
           (Matreshka.Internals.Calendars.Relative_Time (Stamp)));
   end Hour;

   ----------
   -- Hour --
   ----------

   function Hour
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Hour_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Hour_Number
         (Matreshka.Internals.Calendars.Times.Hour
           (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
            Local_Time_Zone));
   end Hour;

   ----------
   -- Hour --
   ----------

   function Hour
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Hour_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Hour_Number
         (Matreshka.Internals.Calendars.Times.Hour
           (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
            Zone.Description));
   end Hour;

   -----------
   -- Image --
   -----------

   function Image
    (Pattern : League.Strings.Universal_String;
     Stamp   : Date_Time) return League.Strings.Universal_String is
   begin
      return Calendar.Image (Pattern, Stamp);
   end Image;

   -----------
   -- Image --
   -----------

   function Image
    (Pattern : League.Strings.Universal_String;
     Stamp   : Date_Time;
     Zone    : Time_Zone) return League.Strings.Universal_String is
   begin
      return Calendar.Image (Pattern, Stamp, Zone);
   end Image;

   -----------
   -- Image --
   -----------

   function Image
    (Self    : ISO_8601_Calendar'Class;
     Pattern : League.Strings.Universal_String;
     Stamp   : Date_Time) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

      Printer      :
        Matreshka.Internals.Calendars.Formatting.ISO_8601.ISO_8601_Printer;
      Time_Printer :
        Matreshka.Internals.Calendars.Formatting.Times.Time_Printer;

   begin
      return
        Matreshka.Internals.Calendars.Formatting.Image
         (Pattern,
          Printer,
          Time_Printer,
          Matreshka.Internals.Calendars.Absolute_Time (Stamp),
          Local_Time_Zone);
   end Image;

   -----------
   -- Image --
   -----------

   function Image
    (Self    : ISO_8601_Calendar'Class;
     Pattern : League.Strings.Universal_String;
     Stamp   : Date_Time;
     Zone    : Time_Zone) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

      Printer      :
        Matreshka.Internals.Calendars.Formatting.ISO_8601.ISO_8601_Printer;
      Time_Printer :
        Matreshka.Internals.Calendars.Formatting.Times.Time_Printer;

   begin
      return
        Matreshka.Internals.Calendars.Formatting.Image
         (Pattern,
          Printer,
          Time_Printer,
          Matreshka.Internals.Calendars.Absolute_Time (Stamp),
          Zone.Description);
   end Image;

   ------------------
   -- Is_Leap_Year --
   ------------------

   function Is_Leap_Year (Year : Year_Number) return Boolean is
   begin
      return Calendar.Is_Leap_Year (Year);
   end Is_Leap_Year;

   ------------------
   -- Is_Leap_Year --
   ------------------

   function Is_Leap_Year (Stamp : Date) return Boolean is
   begin
      return Calendar.Is_Leap_Year (Stamp);
   end Is_Leap_Year;

   ------------------
   -- Is_Leap_Year --
   ------------------

   function Is_Leap_Year (Stamp : Date_Time) return Boolean is
   begin
      return Calendar.Is_Leap_Year (Stamp);
   end Is_Leap_Year;

   ------------------
   -- Is_Leap_Year --
   ------------------

   function Is_Leap_Year
    (Stamp : Date_Time; Zone : Time_Zone) return Boolean is
   begin
      return Calendar.Is_Leap_Year (Stamp, Zone);
   end Is_Leap_Year;

   ------------------
   -- Is_Leap_Year --
   ------------------

   function Is_Leap_Year
    (Self : ISO_8601_Calendar'Class; Stamp : Date) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      return
        Matreshka.Internals.Calendars.Gregorian.Is_Leap_Year
         (Matreshka.Internals.Calendars.Julian_Day_Number (Stamp));
   end Is_Leap_Year;

   ------------------
   -- Is_Leap_Year --
   ------------------

   function Is_Leap_Year
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      return
        Matreshka.Internals.Calendars.Gregorian.Is_Leap_Year
         (Matreshka.Internals.Calendars.Times.Julian_Day
           (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
            Local_Time_Zone));
   end Is_Leap_Year;

   ------------------
   -- Is_Leap_Year --
   ------------------

   function Is_Leap_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      return
        Matreshka.Internals.Calendars.Gregorian.Is_Leap_Year
         (Matreshka.Internals.Calendars.Times.Julian_Day
           (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
            Zone.Description));
   end Is_Leap_Year;

   ------------------
   -- Is_Leap_Year --
   ------------------

   function Is_Leap_Year
    (Self : ISO_8601_Calendar'Class; Year : Year_Number) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      return
        Matreshka.Internals.Calendars.Gregorian.Is_Leap_Year
         (Matreshka.Internals.Calendars.Gregorian.Year_Number (Year));
   end Is_Leap_Year;

   --------------
   -- Is_Valid --
   --------------

   function Is_Valid
    (Year  : Year_Number;
     Month : Month_Number;
     Day   : Day_Number) return Boolean is
   begin
      return Calendar.Is_Valid (Year, Month, Day);
   end Is_Valid;

   --------------
   -- Is_Valid --
   --------------

   function Is_Valid
    (Self  : ISO_8601_Calendar'Class;
     Year  : Year_Number;
     Month : Month_Number;
     Day   : Day_Number) return Boolean is
   begin
      return Day <= Days_In_Month (Self, Year, Month);
   end Is_Valid;

   ---------------------
   -- Local_Time_Zone --
   ---------------------

   function Local_Time_Zone
     return Matreshka.Internals.Calendars.Time_Zone_Access is
   begin
      return Matreshka.Internals.Calendars.UTC_Time_Zone'Access;
   end Local_Time_Zone;

   ------------
   -- Minute --
   ------------

   function Minute (Stamp : Time) return Minute_Number is
   begin
      return Calendar.Minute (Stamp);
   end Minute;

   ------------
   -- Minute --
   ------------

   function Minute (Stamp : Date_Time) return Minute_Number is
   begin
      return Calendar.Minute (Stamp);
   end Minute;

   ------------
   -- Minute --
   ------------

   function Minute
    (Stamp : Date_Time; Zone : Time_Zone) return Minute_Number is
   begin
      return Calendar.Minute (Stamp, Zone);
   end Minute;

   ------------
   -- Minute --
   ------------

   function Minute
    (Self : ISO_8601_Calendar'Class; Stamp : Time) return Minute_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Minute_Number
         (Matreshka.Internals.Calendars.Times.Minute
           (Matreshka.Internals.Calendars.Relative_Time (Stamp)));
   end Minute;

   ------------
   -- Minute --
   ------------

   function Minute
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Minute_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Minute_Number
         (Matreshka.Internals.Calendars.Times.Minute
           (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
            Local_Time_Zone));
   end Minute;

   ------------
   -- Minute --
   ------------

   function Minute
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Minute_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Minute_Number
         (Matreshka.Internals.Calendars.Times.Minute
           (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
            Zone.Description));
   end Minute;

   -----------
   -- Month --
   -----------

   function Month (Stamp : Date) return Month_Number is
   begin
      return Calendar.Month (Stamp);
   end Month;

   -----------
   -- Month --
   -----------

   function Month (Stamp : Date_Time) return Month_Number is
   begin
      return Calendar.Month (Stamp);
   end Month;

   -----------
   -- Month --
   -----------

   function Month (Stamp : Date_Time; Zone : Time_Zone) return Month_Number is
   begin
      return Calendar.Month (Stamp, Zone);
   end Month;

   -----------
   -- Month --
   -----------

   function Month
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date) return Month_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Month_Number
         (Matreshka.Internals.Calendars.Gregorian.Month
           (Matreshka.Internals.Calendars.Julian_Day_Number (Stamp)));
   end Month;

   -----------
   -- Month --
   -----------

   function Month
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Month_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Month_Number
         (Matreshka.Internals.Calendars.Gregorian.Month
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Local_Time_Zone)));
   end Month;

   -----------
   -- Month --
   -----------

   function Month
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Month_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Month_Number
         (Matreshka.Internals.Calendars.Gregorian.Month
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Zone.Description)));
   end Month;

   --------------------
   -- Nanosecond_100 --
   --------------------

   function Nanosecond_100 (Stamp : Time) return Nanosecond_100_Number is
   begin
      return Calendar.Nanosecond_100 (Stamp);
   end Nanosecond_100;

   --------------------
   -- Nanosecond_100 --
   --------------------

   function Nanosecond_100 (Stamp : Date_Time) return Nanosecond_100_Number is
   begin
      return Calendar.Nanosecond_100 (Stamp);
   end Nanosecond_100;

   --------------------
   -- Nanosecond_100 --
   --------------------

   function Nanosecond_100
    (Stamp : Date_Time; Zone : Time_Zone) return Nanosecond_100_Number is
   begin
      return Calendar.Nanosecond_100 (Stamp, Zone);
   end Nanosecond_100;

   --------------------
   -- Nanosecond_100 --
   --------------------

   function Nanosecond_100
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Time) return Nanosecond_100_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Nanosecond_100_Number
         (Matreshka.Internals.Calendars.Times.Nanosecond_100
           (Matreshka.Internals.Calendars.Relative_Time (Stamp), 0));
      --  XXX Doesn't support leap second, should be reviewed.
   end Nanosecond_100;

   --------------------
   -- Nanosecond_100 --
   --------------------

   function Nanosecond_100
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Nanosecond_100_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Nanosecond_100_Number
         (Matreshka.Internals.Calendars.Times.Nanosecond_100
           (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
            Local_Time_Zone));
   end Nanosecond_100;

   --------------------
   -- Nanosecond_100 --
   --------------------

   function Nanosecond_100
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Nanosecond_100_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Nanosecond_100_Number
         (Matreshka.Internals.Calendars.Times.Nanosecond_100
           (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
            Zone.Description));
   end Nanosecond_100;

   ------------
   -- Second --
   ------------

   function Second (Stamp : Time) return Second_Number is
   begin
      return Calendar.Second (Stamp);
   end Second;

   ------------
   -- Second --
   ------------

   function Second (Stamp : Date_Time) return Second_Number is
   begin
      return Calendar.Second (Stamp);
   end Second;

   ------------
   -- Second --
   ------------

   function Second
    (Stamp : Date_Time; Zone : Time_Zone) return Second_Number is
   begin
      return Calendar.Second (Stamp, Zone);
   end Second;

   ------------
   -- Second --
   ------------

   function Second
    (Self : ISO_8601_Calendar'Class; Stamp : Time) return Second_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Second_Number
         (Matreshka.Internals.Calendars.Times.Second
           (Matreshka.Internals.Calendars.Relative_Time (Stamp), 0));
      --  XXX Doesn't handle leap seconds, must be reviewed.
   end Second;

   ------------
   -- Second --
   ------------

   function Second
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Second_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Second_Number
         (Matreshka.Internals.Calendars.Times.Second
           (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
            Local_Time_Zone));
   end Second;

   ------------
   -- Second --
   ------------

   function Second
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Second_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Second_Number
         (Matreshka.Internals.Calendars.Times.Second
           (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
            Zone.Description));
   end Second;

   -----------
   -- Split --
   -----------

   procedure Split
    (Stamp : Date;
     Year  : out Year_Number;
     Month : out Month_Number;
     Day   : out Day_Number) is
   begin
      Calendar.Split (Stamp, Year, Month, Day);
   end Split;

   -----------
   -- Split --
   -----------

   procedure Split
    (Stamp          : Date_Time;
     Year           : out Year_Number;
     Month          : out Month_Number;
     Day            : out Day_Number;
     Hour           : out Hour_Number;
     Minute         : out Minute_Number;
     Second         : out Second_Number;
     Nanosecond_100 : out Nanosecond_100_Number) is
   begin
      Calendar.Split
       (Stamp, Year, Month, Day, Hour, Minute, Second, Nanosecond_100);
   end Split;

   -----------
   -- Split --
   -----------

   procedure Split
    (Stamp          : Date_Time;
     Zone           : Time_Zone;
     Year           : out Year_Number;
     Month          : out Month_Number;
     Day            : out Day_Number;
     Hour           : out Hour_Number;
     Minute         : out Minute_Number;
     Second         : out Second_Number;
     Nanosecond_100 : out Nanosecond_100_Number) is
   begin
      Calendar.Split
       (Zone, Stamp, Year, Month, Day, Hour, Minute, Second, Nanosecond_100);
   end Split;

   -----------
   -- Split --
   -----------

   procedure Split
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Year  : out Year_Number;
     Month : out Month_Number;
     Day   : out Day_Number)
   is
      pragma Unreferenced (Self);

      X : constant Matreshka.Internals.Calendars.Julian_Day_Number
        := Matreshka.Internals.Calendars.Julian_Day_Number (Stamp);

   begin
      --  XXX Can use Split from Grerorian package to retrieve components in
      --  one pass.

      Year  := Year_Number (Matreshka.Internals.Calendars.Gregorian.Year (X));
      Month := Month_Number (Matreshka.Internals.Calendars.Gregorian.Month (X));
      Day   := Day_Number (Matreshka.Internals.Calendars.Gregorian.Day (X));
   end Split;

   -----------
   -- Split --
   -----------

   procedure Split
    (Self           : ISO_8601_Calendar'Class;
     Stamp          : Date_Time;
     Year           : out Year_Number;
     Month          : out Month_Number;
     Day            : out Day_Number;
     Hour           : out Hour_Number;
     Minute         : out Minute_Number;
     Second         : out Second_Number;
     Nanosecond_100 : out Nanosecond_100_Number)
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
   end Split;

   -----------
   -- Split --
   -----------

   procedure Split
    (Self           : ISO_8601_Calendar'Class;
     Zone           : Time_Zone;
     Stamp          : Date_Time;
     Year           : out Year_Number;
     Month          : out Month_Number;
     Day            : out Day_Number;
     Hour           : out Hour_Number;
     Minute         : out Minute_Number;
     Second         : out Second_Number;
     Nanosecond_100 : out Nanosecond_100_Number)
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
   end Split;

   -------------------
   -- To_Julian_Day --
   -------------------

   function To_Julian_Day (Stamp : Date) return Integer is
   begin
      return Calendar.To_Julian_Day (Stamp);
   end To_Julian_Day;

   -------------------
   -- To_Julian_Day --
   -------------------

   function To_Julian_Day (Stamp : Date_Time) return Integer is
   begin
      return Calendar.To_Julian_Day (Stamp);
   end To_Julian_Day;

   -------------------
   -- To_Julian_Day --
   -------------------

   function To_Julian_Day
    (Stamp : Date_Time; Zone : Time_Zone) return Integer is
   begin
      return Calendar.To_Julian_Day (Stamp, Zone);
   end To_Julian_Day;

   -------------------
   -- To_Julian_Day --
   -------------------

   function To_Julian_Day
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date) return Integer
   is
      pragma Unreferenced (Self);

   begin
      return Integer (Stamp);
   end To_Julian_Day;

   -------------------
   -- To_Julian_Day --
   -------------------

   function To_Julian_Day
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Integer
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
      return 0;
   end To_Julian_Day;

   -------------------
   -- To_Julian_Day --
   -------------------

   function To_Julian_Day
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Integer
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
      return 0;
   end To_Julian_Day;

   ------------------
   -- Week_Of_Year --
   ------------------

   function Week_Of_Year (Stamp : Date) return Week_Of_Year_Number is
   begin
      return Calendar.Week_Of_Year (Stamp);
   end Week_Of_Year;

   ------------------
   -- Week_Of_Year --
   ------------------

   procedure Week_Of_Year
    (Stamp : Date;
     Week  : out Week_Of_Year_Number;
     Year  : out Year_Number) is
   begin
      Calendar.Week_Of_Year (Stamp, Week, Year);
   end Week_Of_Year;

   ------------------
   -- Week_Of_Year --
   ------------------

   procedure Week_Of_Year
    (Stamp : Date_Time;
     Week  : out Week_Of_Year_Number;
     Year  : out Year_Number) is
   begin
      Calendar.Week_Of_Year (Stamp, Week, Year);
   end Week_Of_Year;

   ------------------
   -- Week_Of_Year --
   ------------------

   procedure Week_Of_Year
    (Stamp : Date_Time;
     Zone  : Time_Zone;
     Week  : out Week_Of_Year_Number;
     Year  : out Year_Number) is
   begin
      Calendar.Week_Of_Year (Stamp, Zone, Week, Year);
   end Week_Of_Year;

   ------------------
   -- Week_Of_Year --
   ------------------

   function Week_Of_Year (Stamp : Date_Time) return Week_Of_Year_Number is
   begin
      return Calendar.Week_Of_Year (Stamp);
   end Week_Of_Year;

   ------------------
   -- Week_Of_Year --
   ------------------

   function Week_Of_Year
    (Stamp : Date_Time; Zone : Time_Zone) return Week_Of_Year_Number is
   begin
      return Calendar.Week_Of_Year (Stamp, Zone);
   end Week_Of_Year;

   ------------------
   -- Week_Of_Year --
   ------------------

   function Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date) return Week_Of_Year_Number
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
   end Week_Of_Year;

   ------------------
   -- Week_Of_Year --
   ------------------

   procedure Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Week  : out Week_Of_Year_Number;
     Year  : out Year_Number)
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
   end Week_Of_Year;

   ------------------
   -- Week_Of_Year --
   ------------------

   function Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Week_Of_Year_Number
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
   end Week_Of_Year;

   ------------------
   -- Week_Of_Year --
   ------------------

   procedure Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Week  : out Week_Of_Year_Number;
     Year  : out Year_Number)
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
   end Week_Of_Year;

   ------------------
   -- Week_Of_Year --
   ------------------

   function Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Week_Of_Year_Number
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
   end Week_Of_Year;

   ------------------
   -- Week_Of_Year --
   ------------------

   procedure Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone;
     Week  : out Week_Of_Year_Number;
     Year  : out Year_Number)
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
   end Week_Of_Year;

   ----------
   -- Year --
   ----------

   function Year (Stamp : Date) return Year_Number is
   begin
      return Calendar.Year (Stamp);
   end Year;

   ----------
   -- Year --
   ----------

   function Year (Stamp : Date_Time) return Year_Number is
   begin
      return Calendar.Year (Stamp);
   end Year;

   ----------
   -- Year --
   ----------

   function Year (Stamp : Date_Time; Zone : Time_Zone) return Year_Number is
   begin
      return Calendar.Year (Stamp, Zone);
   end Year;

   ----------
   -- Year --
   ----------

   function Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date) return Year_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Year_Number
         (Matreshka.Internals.Calendars.Gregorian.Year
           (Matreshka.Internals.Calendars.Julian_Day_Number (Stamp)));
   end Year;

   ----------
   -- Year --
   ----------

   function Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Year_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Year_Number
         (Matreshka.Internals.Calendars.Gregorian.Year
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Local_Time_Zone)));
   end Year;

   ----------
   -- Year --
   ----------

   function Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Year_Number
   is
      pragma Unreferenced (Self);

   begin
      return
        Year_Number
         (Matreshka.Internals.Calendars.Gregorian.Year
           (Matreshka.Internals.Calendars.Times.Julian_Day
             (Matreshka.Internals.Calendars.Absolute_Time (Stamp),
              Zone.Description)));
   end Year;

end League.Calendars.ISO_8601;
