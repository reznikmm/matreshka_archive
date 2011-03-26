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
--  Implementation of proleptic Gregorian calendar with astronomical year
--  numbering.
------------------------------------------------------------------------------

package Matreshka.Internals.Calendars.Gregorian is

   pragma Preelaborate;

   subtype Year_Number is Integer range -9_999 .. 9_999;
   subtype Month_Number is Integer range 1 .. 12;
   subtype Day_Number is Integer range 1 .. 31;
   subtype Day_Of_Week_Number is Integer range 1 .. 7;
   subtype Day_Of_Year_Number is Integer range 1 .. 366;
   subtype Week_Of_Year_Number is Integer range 1 .. 53;

   function Is_Leap_Year (Date : Julian_Day_Number) return Boolean;
   function Is_Leap_Year (Year : Year_Number) return Boolean;
   --  Returns True when year is a leap year.

   function Julian_Day
    (Year  : Year_Number;
     Month : Month_Number;
     Day   : Day_Number) return Julian_Day_Number;
   --  Returns Juliad Day of the specified date.

   function Year (Julian_Day : Julian_Day_Number) return Year_Number;
   --  Returns year of the specified julian day.

   function Month (Julian_Day : Julian_Day_Number) return Month_Number;
   --  Returns month of the specified julian day.

   function Day (Julian_Day : Julian_Day_Number) return Day_Number;
   --  Returns day of the specified julian day.

   function Day_Of_Week
    (Julian_Day : Julian_Day_Number) return Day_Of_Week_Number;
   --  Returns the weekday for this julian day. First day is Monday.

   function Day_Of_Year
    (Julian_Day : Julian_Day_Number) return Day_Of_Year_Number;
   --  Returns the day of the year (1 to 365 or 366 on leap years) for this
   --  julian day.

   function Days_In_Month (Date : Julian_Day_Number) return Day_Number;
   function Days_In_Month
    (Year : Year_Number; Month : Year_Number) return Day_Number;
   --  Returns number of days in the specified month of the specified year.

   function Days_In_Year (Date : Julian_Day_Number) return Day_Number;
   function Days_In_Year (Year : Year_Number) return Day_Number;
   --  Returns number of days in the specified year.

end Matreshka.Internals.Calendars.Gregorian;
