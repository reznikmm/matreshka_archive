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
--  Calendar operations according to ISO-8601 standard. It is based on
--  proleptic Gregorian calendar with astronomical year numbering.
------------------------------------------------------------------------------

package League.Calendars.ISO_8601 is

   pragma Preelaborate;

   type Year_Number is range -9_999 .. 9_999;
   type Month_Number is range 1 .. 12;
   type Day_Number is range 1 .. 31;
   type Hour_Number is range 0 .. 23;
   type Minute_Number is range 0 .. 59;
   type Second_Number is range 0 .. 60;
   type Nano_Second_100_Number is range 0 .. 9_999_999;
   type Day_Of_Week_Number is range 1 .. 7;  -- XXX Does it depend from locale?
   type Day_Of_Year_Number is range 1 .. 366;
   type Week_Of_Year_Number is range 1 .. 53;

   type ISO_8601_Calendar is new Abstract_Calendar with private;

   function Year
    (Self : ISO_8601_Calendar'Class; Stamp : Date) return Year_Number;
   function Year
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Year_Number;
   function Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Year_Number;
   --  Returns the year of this date. Negative numbers indicate years before
   --  1 A.D.

   function Month
    (Self : ISO_8601_Calendar'Class; Stamp : Date) return Month_Number;
   function Month
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Month_Number;
   function Month
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Month_Number;
   --  Returns the number corresponding to the month of this date.

   function Day
    (Self : ISO_8601_Calendar'Class; Stamp : Date) return Day_Number;
   function Day
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Day_Number;
   function Day
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Day_Number;
   --  Returns the day of the month of this date.

   function Hour
    (Self : ISO_8601_Calendar'Class; Stamp : Time) return Hour_Number;
   function Hour
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Hour_Number;
   function Hour
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Hour_Number;
   --  Returns the hour part (0 to 23) of the time.

   function Minute
    (Self : ISO_8601_Calendar'Class; Stamp : Time) return Minute_Number;
   function Minute
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Minute_Number;
   function Minute
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Minute_Number;
   --  Returns the minute part (0 to 59) of the time.

   function Second
    (Self : ISO_8601_Calendar'Class; Stamp : Time) return Second_Number;
   function Second
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Second_Number;
   function Second
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Second_Number;
   --  Returns the second part (0 to 60) of the time.

   function Day_Of_Week
    (Self : ISO_8601_Calendar'Class; Stamp : Date) return Day_Of_Week_Number;
   function Day_Of_Week
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Day_Of_Week_Number;
   function Day_Of_Week
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Day_Of_Week_Number;
   --  Returns the weekday for this date.

   function Day_Of_Year
    (Self : ISO_8601_Calendar'Class; Stamp : Date) return Day_Of_Year_Number;
   function Day_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Day_Of_Year_Number;
   function Day_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Day_Of_Year_Number;
   --  Returns the day of the year (1 to 365 or 366 on leap years) for this
   --  date.

   function Week_Of_Year
    (Self : ISO_8601_Calendar'Class; Stamp : Date) return Week_Of_Year_Number;
   function Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Week_Of_Year_Number;
   function Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Week_Of_Year_Number;
   --  Returns the week number (1 to 53).
   --
   --  In accordance with ISO 8601, weeks start on Monday and the first
   --  Thursday of a year is always in week 1 of that year. Most years have 52
   --  weeks, but some have 53.

   procedure Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Week  : out Week_Of_Year_Number;
     Year  : out Year_Number);
   procedure Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Week  : out Week_Of_Year_Number;
     Year  : out Year_Number);
   procedure Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone;
     Week  : out Week_Of_Year_Number;
     Year  : out Year_Number);
   --  Sets Week to the week number (1 to 53) and Year to year number.
   --
   --  In accordance with ISO 8601, weeks start on Monday and the first
   --  Thursday of a year is always in week 1 of that year. Most years have 52
   --  weeks, but some have 53.
   --
   --  Year is not always the same as Calendar.Year. For example, 1 January
   --  2000 has week number 52 in the year 1999, and 31 December 2002 has week
   --  number 1 in the year 2003.

   function Days_In_Year
    (Self : ISO_8601_Calendar'Class; Stamp : Date) return Day_Of_Year_Number;
   function Days_In_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Day_Of_Year_Number;
   function Days_In_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Day_Of_Year_Number;
   function Days_In_Year
    (Self : ISO_8601_Calendar'Class;
     Year : Year_Number) return Day_Of_Year_Number;
   --  Returns the number of days in the year (365 or 366) for this date.

   function Days_In_Month
    (Self : ISO_8601_Calendar'Class; Stamp : Date) return Day_Number;
   function Days_In_Month
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Day_Number;
   function Days_In_Month
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Day_Number;
   function Days_In_Month
    (Self  : ISO_8601_Calendar'Class;
     Year  : Year_Number;
     Month : Month_Number) return Day_Number;
   --  Returns the number of days in the month (28 to 31) for this date.

   function Days_To
    (Self : ISO_8601_Calendar'Class; From : Date; To : Date) return Integer;
   --  Returns the number of days from date From to date To (which is negative
   --  if To is earlier than From date).

   function Is_Leap_Year
    (Self : ISO_8601_Calendar'Class; Year : Year_Number) return Boolean;
   function Is_Leap_Year
    (Self : ISO_8601_Calendar'Class; Stamp : Date) return Boolean;
   function Is_Leap_Year
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Boolean;
   function Is_Leap_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Boolean;
   --  Returns True if the specified year is a leap year; otherwise returns
   --  False.

   function Add_Days
    (Self : ISO_8601_Calendar'Class; Stamp : Date; Days : Integer) return Date;
   function Add_Days
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Days  : Integer) return Date_Time;
   --  Returns a date containing a date Days later than the date of Stamp (or
   --  earlier if Days is negative).

   procedure Add_Days
    (Self : ISO_8601_Calendar'Class; Stamp : in out Date; Days : Integer);
   procedure Add_Days
    (Self  : ISO_8601_Calendar'Class;
     Stamp : in out Date_Time;
     Days  : Integer);
   --  Sets Stamp to a date Days later than the date of Stamp (or earlier if
   --  Days is negative).

   function Add_Months
    (Self   : ISO_8601_Calendar'Class;
     Stamp  : Date;
     Months : Integer) return Date;
   function Add_Months
    (Self   : ISO_8601_Calendar'Class;
     Stamp  : Date_Time;
     Months : Integer) return Date_Time;
   --  Returns a date containing a date Months later than the date of Stamp (or
   --  earlier if Months is negative).
   --
   --  Note: If the ending day/month combination does not exist in the
   --  resulting month/year, this function will return a date that is the
   --  latest valid date.

   procedure Add_Months
    (Self : ISO_8601_Calendar'Class; Stamp : in out Date; Months : Integer);
   procedure Add_Months
    (Self   : ISO_8601_Calendar'Class;
     Stamp  : in out Date_Time;
     Months : Integer);
   --  Sets Stamp to a date Months later than the date of Stamp (or earlier if
   --  Months is negative).
   --
   --  Note: If the ending day/month combination does not exist in the
   --  resulting month/year, this function will return a date that is the
   --  latest valid date.

   function Add_Years
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Years : Integer) return Date;
   function Add_Years
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Years : Integer) return Date_Time;
   --  Returns a date Years later than the date of Stamp (or earlier if Years
   --  is negative).
   --
   --  Note: If the ending day/month combination does not exist in the
   --  resulting year (i.e., if the date was Feb 29 and the final year is not
   --  a leap year), this function will return a date that is the latest valid
   --  date (that is, Feb 28).

   procedure Add_Years
    (Self  : ISO_8601_Calendar'Class;
     Stamp : in out Date;
     Years : Integer);
   procedure Add_Years
    (Self  : ISO_8601_Calendar'Class;
     Stamp : in out Date_Time;
     Years : Integer);
   --  Sets Stamp to a date Years later than the date of Stamp (or earlier if
   --  Years is negative).
   --
   --  Note: If the ending day/month combination does not exist in the
   --  resulting year (i.e., if the date was Feb 29 and the final year is not
   --  a leap year), this function will return a date that is the latest valid
   --  date (that is, Feb 28).

   function Is_Valid
    (Self  : ISO_8601_Calendar'Class;
     Year  : Year_Number;
     Month : Month_Number;
     Day   : Day_Number) return Boolean;
   --  Returns True if the specified date (Year, Month, and Day) is valid;
   --  otherwise returns False.

   procedure Split
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Year  : out Year_Number;
     Month : out Month_Number;
     Day   : out Day_Number);
   procedure Split
    (Self    : ISO_8601_Calendar'Class;
     Stamp   : Date_Time;
     Year    : out Year_Number;
     Month   : out Month_Number;
     Day     : out Day_Number;
     Seconds : out Time);
   procedure Split
    (Self    : ISO_8601_Calendar'Class;
     Stamp   : Date_Time;
     Zone    : Time_Zone;
     Year    : out Year_Number;
     Month   : out Month_Number;
     Day     : out Day_Number;
     Seconds : out Time);
   --  Extracts the date's year, month, day, and time, and assigns them to
   --  Year, Month, Day, and Seconds.

   function Create
    (Self  : ISO_8601_Calendar'Class;
     Year  : Year_Number;
     Month : Month_Number;
     Day   : Day_Number) return Date;
   function Create
    (Self    : ISO_8601_Calendar'Class;
     Year    : Year_Number;
     Month   : Month_Number;
     Day     : Day_Number;
     Seconds : Time) return Date_Time;
   function Create
    (Self    : ISO_8601_Calendar'Class;
     Year    : Year_Number;
     Month   : Month_Number;
     Day     : Day_Number;
     Seconds : Time;
     Zone    : Time_Zone) return Date_Time;
   --  Constructs a date with Year, Month, Day and time Seconds.
   --
   --  If the specified date is invalid, Constraint_Error is raised.

   function To_Julian_Day
    (Self : ISO_8601_Calendar'Class; Stamp : Date) return Integer;
   function To_Julian_Day
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Integer;
   function To_Julian_Day
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Integer;
   --  Converts the date to a Julian day.

   function From_Julian_Day
    (Self : ISO_8601_Calendar'Class;
     Day  : Integer) return Date;
   --  Converts the Julian day Day to a date.

   -----------------------------------------------------------------------
   --  Subprograms below don't have calendar parameter for convenience. --
   -----------------------------------------------------------------------

   function Year (Stamp : Date) return Year_Number;
   function Year (Stamp : Date_Time) return Year_Number;
   function Year (Stamp : Date_Time; Zone : Time_Zone) return Year_Number;
   --  Returns the year of this date. Negative numbers indicate years before
   --  1 A.D.

   function Month (Stamp : Date) return Month_Number;
   function Month (Stamp : Date_Time) return Month_Number;
   function Month (Stamp : Date_Time; Zone : Time_Zone) return Month_Number;
   --  Returns the number corresponding to the month of this date.

   function Day (Stamp : Date) return Day_Number;
   function Day (Stamp : Date_Time) return Day_Number;
   function Day (Stamp : Date_Time; Zone : Time_Zone) return Day_Number;
   --  Returns the day of the month of this date.

   function Hour (Stamp : Time) return Hour_Number;
   function Hour (Stamp : Date_Time) return Hour_Number;
   function Hour (Stamp : Date_Time; Zone : Time_Zone) return Hour_Number;
   --  Returns the hour part (0 to 23) of the time.

   function Minute (Stamp : Time) return Minute_Number;
   function Minute (Stamp : Date_Time) return Minute_Number;
   function Minute (Stamp : Date_Time; Zone : Time_Zone) return Minute_Number;
   --  Returns the minute part (0 to 59) of the time.

   function Second (Stamp : Time) return Second_Number;
   function Second (Stamp : Date_Time) return Second_Number;
   function Second (Stamp : Date_Time; Zone : Time_Zone) return Second_Number;
   --  Returns the second part (0 to 60) of the time.

   function Day_Of_Week (Stamp : Date) return Day_Of_Week_Number;
   function Day_Of_Week (Stamp : Date_Time) return Day_Of_Week_Number;
   function Day_Of_Week
    (Stamp : Date_Time; Zone : Time_Zone) return Day_Of_Week_Number;
   --  Returns the day of the year (1 to 365 or 366 on leap years) for this
   --  date.

   function Day_Of_Year (Stamp : Date) return Day_Of_Year_Number;
   function Day_Of_Year (Stamp : Date_Time) return Day_Of_Year_Number;
   function Day_Of_Year
    (Stamp : Date_Time; Zone : Time_Zone) return Day_Of_Year_Number;
   --  Returns the day of the year (1 to 365 or 366 on leap years) for this
   --  date.

   function Week_Of_Year (Stamp : Date) return Week_Of_Year_Number;
   function Week_Of_Year (Stamp : Date_Time) return Week_Of_Year_Number;
   function Week_Of_Year
    (Stamp : Date_Time; Zone  : Time_Zone) return Week_Of_Year_Number;
   --  Returns the week number (1 to 53).
   --
   --  In accordance with ISO 8601, weeks start on Monday and the first
   --  Thursday of a year is always in week 1 of that year. Most years have 52
   --  weeks, but some have 53.

   procedure Week_Of_Year
    (Stamp : Date;
     Week  : out Week_Of_Year_Number;
     Year  : out Year_Number);
   procedure Week_Of_Year
    (Stamp : Date_Time;
     Week  : out Week_Of_Year_Number;
     Year  : out Year_Number);
   procedure Week_Of_Year
    (Stamp : Date_Time;
     Zone  : Time_Zone;
     Week  : out Week_Of_Year_Number;
     Year  : out Year_Number);
   --  Sets Week to the week number (1 to 53) and Year to year number.
   --
   --  In accordance with ISO 8601, weeks start on Monday and the first
   --  Thursday of a year is always in week 1 of that year. Most years have 52
   --  weeks, but some have 53.
   --
   --  Year is not always the same as Calendar.Year. For example, 1 January
   --  2000 has week number 52 in the year 1999, and 31 December 2002 has week
   --  number 1 in the year 2003.

   function Days_To (From : Date; To : Date) return Integer;
   --  Returns the number of days from date From to date To (which is negative
   --  if To is earlier than From date).

   function Days_In_Year (Stamp : Date) return Day_Of_Year_Number;
   function Days_In_Year (Stamp : Date_Time) return Day_Of_Year_Number;
   function Days_In_Year
    (Stamp : Date_Time; Zone : Time_Zone) return Day_Of_Year_Number;
   function Days_In_Year (Year : Year_Number) return Day_Of_Year_Number;
   --  Returns the number of days in the year (365 or 366) for this date.

   function Days_In_Month (Stamp : Date) return Day_Number;
   function Days_In_Month (Stamp : Date_Time) return Day_Number;
   function Days_In_Month
    (Stamp : Date_Time; Zone : Time_Zone) return Day_Number;
   function Days_In_Month
    (Year : Year_Number; Month : Month_Number) return Day_Number;
   --  Returns the number of days in the month (28 to 31) for this date.

   function Is_Leap_Year (Year : Year_Number) return Boolean;
   function Is_Leap_Year (Stamp : Date) return Boolean;
   function Is_Leap_Year (Stamp : Date_Time) return Boolean;
   function Is_Leap_Year (Stamp : Date_Time; Zone : Time_Zone) return Boolean;
   --  Returns True if the specified year is a leap year; otherwise returns
   --  False.

   function Add_Days (Stamp : Date; Days : Integer) return Date;
   function Add_Days (Stamp : Date_Time; Days : Integer) return Date_Time;
   --  Returns a date containing a date Days later than the date of Stamp (or
   --  earlier if Days is negative).

   procedure Add_Days (Stamp : in out Date; Days : Integer);
   procedure Add_Days (Stamp : in out Date_Time; Days : Integer);
   --  Sets Stamp to a date Days later than the date of Stamp (or earlier if
   --  Days is negative).

   function Add_Months (Stamp : Date; Months : Integer) return Date;
   function Add_Months (Stamp : Date_Time; Months : Integer) return Date_Time;
   --  Returns a date containing a date Months later than the date of Stamp (or
   --  earlier if Months is negative).
   --
   --  Note: If the ending day/month combination does not exist in the
   --  resulting month/year, this function will return a date that is the
   --  latest valid date.

   procedure Add_Months (Stamp : in out Date; Months : Integer);
   procedure Add_Months (Stamp : in out Date_Time; Months : Integer);
   --  Sets Stamp to a date Months later than the date of Stamp (or earlier if
   --  Months is negative).
   --
   --  Note: If the ending day/month combination does not exist in the
   --  resulting month/year, this function will return a date that is the
   --  latest valid date.

   function Add_Years (Stamp : Date; Years : Integer) return Date;
   function Add_Years (Stamp : Date_Time; Years : Integer) return Date_Time;
   --  Returns a date Years later than the date of Stamp (or earlier if Years
   --  is negative).
   --
   --  Note: If the ending day/month combination does not exist in the
   --  resulting year (i.e., if the date was Feb 29 and the final year is not
   --  a leap year), this function will return a date that is the latest valid
   --  date (that is, Feb 28).

   procedure Add_Years (Stamp : in out Date; Years : Integer);
   procedure Add_Years (Stamp : in out Date_Time; Years : Integer);
   --  Sets Stamp to a date Years later than the date of Stamp (or earlier if
   --  Years is negative).
   --
   --  Note: If the ending day/month combination does not exist in the
   --  resulting year (i.e., if the date was Feb 29 and the final year is not
   --  a leap year), this function will return a date that is the latest valid
   --  date (that is, Feb 28).

   function Is_Valid
    (Year  : Year_Number;
     Month : Month_Number;
     Day   : Day_Number) return Boolean;
   --  Returns True if the specified date (Year, Month, and Day) is valid;
   --  otherwise returns False.

   procedure Split
    (Stamp : Date;
     Year  : out Year_Number;
     Month : out Month_Number;
     Day   : out Day_Number);
   procedure Split
    (Stamp   : Date_Time;
     Year    : out Year_Number;
     Month   : out Month_Number;
     Day     : out Day_Number;
     Seconds : out Time);
   procedure Split
    (Stamp   : Date_Time;
     Zone    : Time_Zone;
     Year    : out Year_Number;
     Month   : out Month_Number;
     Day     : out Day_Number;
     Seconds : out Time);
   --  Extracts the date's year, month, day, and time, and assigns them to
   --  Year, Month, Day, and Seconds.

   function Create
    (Year  : Year_Number;
     Month : Month_Number;
     Day   : Day_Number) return Date;
   function Create
    (Year    : Year_Number;
     Month   : Month_Number;
     Day     : Day_Number;
     Seconds : Time) return Date_Time;
   function Create
    (Year    : Year_Number;
     Month   : Month_Number;
     Day     : Day_Number;
     Seconds : Time;
     Zone    : Time_Zone) return Date_Time;
   --  Constructs a date with Year, Month, Day and time Seconds.
   --
   --  If the specified date is invalid, Constraint_Error is raised.

   function To_Julian_Day (Stamp : Date) return Integer;
   function To_Julian_Day (Stamp : Date_Time) return Integer;
   function To_Julian_Day (Stamp : Date_Time; Zone : Time_Zone) return Integer;
   --  Converts the date to a Julian day.

   function From_Julian_Day (Day : Integer) return Date;
   --  Converts the Julian day Day to a date.

private

   type ISO_8601_Calendar is new Abstract_Calendar with null record;

end League.Calendars.ISO_8601;
