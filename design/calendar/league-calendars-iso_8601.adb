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

package body League.Calendars.ISO_8601 is

   Calendar : ISO_8601_Calendar;
   --  This global object is used in convenient subprograms as calendar.

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
--      Calendar.Add_Days (Stamp, Days);
--  XXX GNAT GPL 2010 unable to resolve procedure
      Add_Days (Calendar, Stamp, Days);
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
--      Calendar.Add_Days (Stamp, Days);
--  XXX GNAT GPL 2010 unable to resolve procedure
      Add_Days (Calendar, Stamp, Days);
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return Stamp;
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
      --  XXX Not yet implemented.

      raise Program_Error;
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
--      Calendar.Add_Months (Stamp, Months);
--  XXX GNAT GPL 2010 unable to resolve procedure
      Add_Months (Calendar, Stamp, Months);
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
--      Calendar.Add_Months (Stamp, Months);
--  XXX GNAT GPL 2010 unable to resolve procedure
      Add_Months (Calendar, Stamp, Months);
   end Add_Months;

   ----------------
   -- Add_Months --
   ----------------

   function Add_Months
    (Self   : ISO_8601_Calendar'Class;
     Stamp  : Date;
     Months : Integer) return Date
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
     Stamp  : in out Date;
     Months : Integer)
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
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
--      Calendar.Add_Years (Stamp, Years);
--  XXX GNAT GPL 2010 unable to resolve procedure
      Add_Years (Calendar, Stamp, Years);
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
--      Calendar.Add_Years (Stamp, Years);
--  XXX GNAT GPL 2010 unable to resolve procedure
      Add_Years (Calendar, Stamp, Years);
   end Add_Years;

   ---------------
   -- Add_Years --
   ---------------

   function Add_Years
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Years : Integer) return Date
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
     Stamp : in out Date;
     Years : Integer)
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
   end Day_Of_Year;

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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 0;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return Aux : Date;
   end From_Julian_Day;

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
      --  XXX Not yet implemented.

      raise Program_Error;
      return False;
   end Is_Leap_Year;

   ------------------
   -- Is_Leap_Year --
   ------------------

   function Is_Leap_Year
    (Self : ISO_8601_Calendar'Class; Stamp : Date_Time) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
      return False;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return False;
   end Is_Leap_Year;

   ------------------
   -- Is_Leap_Year --
   ------------------

   function Is_Leap_Year
    (Self : ISO_8601_Calendar'Class; Year : Year_Number) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      --  XXX Not yet implemented.

      raise Program_Error;
      return False;
   end Is_Leap_Year;

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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
   end Month;

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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 0;
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
--      Calendar.Week_Of_Year (Stamp, Week, Year);
--  XXX GNAT GPL 2010 unable to resolve procedure
      Week_Of_Year (Calendar, Stamp, Week, Year);
   end Week_Of_Year;

   ------------------
   -- Week_Of_Year --
   ------------------

   procedure Week_Of_Year
    (Stamp : Date_Time;
     Week  : out Week_Of_Year_Number;
     Year  : out Year_Number) is
   begin
--      Calendar.Week_Of_Year (Stamp, Week, Year);
--  XXX GNAT GPL 2010 unable to resolve procedure
      Week_Of_Year (Calendar, Stamp, Week, Year);
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
--      Calendar.Week_Of_Year (Stamp, Zone, Week, Year);
--  XXX GNAT GPL 2010 unable to resolve procedure
      Week_Of_Year (Calendar, Stamp, Zone, Week, Year);
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
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
      --  XXX Not yet implemented.

      raise Program_Error;
      return 1;
   end Year;

end League.Calendars.ISO_8601;
