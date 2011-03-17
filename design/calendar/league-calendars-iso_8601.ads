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
   type Day_Of_Week_Number is range 1 .. 7;  -- XXX Does it depend from locale?
   type Day_Of_Year_Number is range 1 .. 366;
   type Week_Of_Year_Number is range 1 .. 53;

   type ISO_8601_Calendar is new Abstract_Calendar with private;

   ----------
   -- Date --
   ----------

   function Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date) return Year_Number;

   function Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Zone  : Time_Zone) return Year_Number;

   function Month
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date) return Month_Number;

   function Month
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Zone  : Time_Zone) return Month_Number;

   function Day
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date) return Day_Number;

   function Day
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Zone  : Time_Zone) return Day_Number;

   function Day_Of_Week
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date) return Day_Of_Week_Number;

   function Day_Of_Week
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Zone  : Time_Zone) return Day_Of_Week_Number;

   function Day_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date) return Day_Of_Year_Number;

   function Day_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Zone  : Time_Zone) return Day_Of_Year_Number;

   function Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date) return Week_Of_Year_Number;

   function Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Zone  : Time_Zone) return Week_Of_Year_Number;

   function Add_Days
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Days  : Integer) return Date;

   procedure Add_Days
    (Self  : ISO_8601_Calendar'Class;
     Stamp : in out Date;
     Days  : Integer);

   function Add_Months
    (Self   : ISO_8601_Calendar'Class;
     Stamp  : Date;
     Months : Integer) return Date;

   procedure Add_Months
    (Self   : ISO_8601_Calendar'Class;
     Stamp  : in out Date;
     Months : Integer);

   function Add_Years
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date;
     Years : Integer) return Date;

   procedure Add_Years
    (Self  : ISO_8601_Calendar'Class;
     Stamp : in out Date;
     Years : Integer);

   ---------------
   -- Date_Time --
   ---------------

   function Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Year_Number;

   function Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Year_Number;

   function Month
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Month_Number;

   function Month
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Month_Number;

   function Day
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Day_Number;

   function Day
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Day_Number;

   function Day_Of_Week
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Day_Of_Week_Number;

   function Day_Of_Week
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Day_Of_Week_Number;

   function Day_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Day_Of_Year_Number;

   function Day_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Day_Of_Year_Number;

   function Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time) return Week_Of_Year_Number;

   function Week_Of_Year
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Zone  : Time_Zone) return Week_Of_Year_Number;

   function Add_Days
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Days  : Integer) return Date_Time;

   procedure Add_Days
    (Self  : ISO_8601_Calendar'Class;
     Stamp : in out Date_Time;
     Days  : Integer);

   function Add_Months
    (Self   : ISO_8601_Calendar'Class;
     Stamp  : Date_Time;
     Months : Integer) return Date;

   procedure Add_Months
    (Self   : ISO_8601_Calendar'Class;
     Stamp  : in out Date_Time;
     Months : Integer);

   function Add_Years
    (Self  : ISO_8601_Calendar'Class;
     Stamp : Date_Time;
     Years : Integer) return Date_Time;

   procedure Add_Years
    (Self  : ISO_8601_Calendar'Class;
     Stamp : in out Date_Time;
     Years : Integer);

   --  Subprograms below don't have calendar parameter for convenience.

   function Year (Stamp : Date) return Year_Number;

   function Year (Stamp : Date_Time) return Year_Number;

   function Month (Stamp : Date) return Month_Number;

   function Month (Stamp : Date_Time) return Month_Number;

   function Day (Stamp : Date) return Day_Number;

   function Day (Stamp : Date_Time) return Day_Number;

   function Day_Of_Week (Stamp : Date) return Day_Of_Week_Number;

   function Day_Of_Week (Stamp : Date_Time) return Day_Of_Week_Number;

   function Day_Of_Year (Stamp : Date) return Day_Of_Year_Number;

   function Day_Of_Year (Stamp : Date_Time) return Day_Of_Year_Number;

   function Week_Of_Year (Stamp : Date) return Week_Of_Year_Number;

   function Week_Of_Year
    (Stamp : Date; Zone  : Time_Zone) return Week_Of_Year_Number;

   function Week_Of_Year (Stamp : Date_Time) return Week_Of_Year_Number;

   function Week_Of_Year
    (Stamp : Date_Time; Zone  : Time_Zone) return Week_Of_Year_Number;

   function Add_Days (Stamp : Date; Days : Integer) return Date_Time;

   procedure Add_Days (Stamp : in out Date; Days : Integer);

   function Add_Days (Stamp : Date_Time; Days : Integer) return Date_Time;

   procedure Add_Days (Stamp : in out Date_Time; Days : Integer);

   function Add_Months (Stamp : Date_Time; Months : Integer) return Date;

   procedure Add_Months (Stamp : in out Date_Time; Months : Integer);

   function Add_Years (Stamp : Date_Time; Years : Integer) return Date_Time;

   procedure Add_Years (Stamp : in out Date_Time; Years : Integer);

private

   type ISO_8601_Calendar is new Abstract_Calendar with null record;

end League.Calendars.ISO_8601;
