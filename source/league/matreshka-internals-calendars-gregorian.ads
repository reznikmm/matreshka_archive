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
   
   package Constants is
      --  Constants for leap seconds table
      
      Jun_30 : constant Julian_Day_Number := (153 * (6 - 3) + 2) / 5 + 30 - 1;
      Dec_31 : constant Julian_Day_Number := (153 * (12 - 3) + 2) / 5 + 31 - 1;
      
      AD : constant Julian_Day_Number := 1_721_060 + 60;
      
      Year_1972 : constant Julian_Day_Number :=
        365 * 1972 + 1972 / 4 - 1972 / 100 + 1972 / 400 + AD;
      
      Year_1973 : constant Julian_Day_Number :=
        365 * 1973 + 1973 / 4 - 1973 / 100 + 1973 / 400 + AD;

      Year_1974 : constant Julian_Day_Number :=
        365 * 1974 + 1974 / 4 - 1974 / 100 + 1974 / 400 + AD;

      Year_1975 : constant Julian_Day_Number :=
        365 * 1975 + 1975 / 4 - 1975 / 100 + 1975 / 400 + AD;

      Year_1976 : constant Julian_Day_Number :=
        365 * 1976 + 1976 / 4 - 1976 / 100 + 1976 / 400 + AD;

      Year_1977 : constant Julian_Day_Number :=
        365 * 1977 + 1977 / 4 - 1977 / 100 + 1977 / 400 + AD;

      Year_1978 : constant Julian_Day_Number :=
        365 * 1978 + 1978 / 4 - 1978 / 100 + 1978 / 400 + AD;

      Year_1979 : constant Julian_Day_Number :=
        365 * 1979 + 1979 / 4 - 1979 / 100 + 1979 / 400 + AD;

      Year_1981 : constant Julian_Day_Number :=
        365 * 1981 + 1981 / 4 - 1981 / 100 + 1981 / 400 + AD;

      Year_1982 : constant Julian_Day_Number :=
        365 * 1982 + 1982 / 4 - 1982 / 100 + 1982 / 400 + AD;

      Year_1983 : constant Julian_Day_Number :=
        365 * 1983 + 1983 / 4 - 1983 / 100 + 1983 / 400 + AD;

      Year_1985 : constant Julian_Day_Number :=
        365 * 1985 + 1985 / 4 - 1985 / 100 + 1985 / 400 + AD;

      Year_1987 : constant Julian_Day_Number :=
        365 * 1987 + 1987 / 4 - 1987 / 100 + 1987 / 400 + AD;

      Year_1989 : constant Julian_Day_Number :=
        365 * 1989 + 1989 / 4 - 1989 / 100 + 1989 / 400 + AD;

      Year_1990 : constant Julian_Day_Number :=
        365 * 1990 + 1990 / 4 - 1990 / 100 + 1990 / 400 + AD;

      Year_1992 : constant Julian_Day_Number :=
        365 * 1992 + 1992 / 4 - 1992 / 100 + 1992 / 400 + AD;

      Year_1993 : constant Julian_Day_Number :=
        365 * 1993 + 1993 / 4 - 1993 / 100 + 1993 / 400 + AD;

      Year_1994 : constant Julian_Day_Number :=
        365 * 1994 + 1994 / 4 - 1994 / 100 + 1994 / 400 + AD;

      Year_1995 : constant Julian_Day_Number :=
        365 * 1995 + 1995 / 4 - 1995 / 100 + 1995 / 400 + AD;

      Year_1997 : constant Julian_Day_Number :=
        365 * 1997 + 1997 / 4 - 1997 / 100 + 1997 / 400 + AD;

      Year_1998 : constant Julian_Day_Number :=
        365 * 1998 + 1998 / 4 - 1998 / 100 + 1998 / 400 + AD;

      Year_2005 : constant Julian_Day_Number :=
        365 * 2005 + 2005 / 4 - 2005 / 100 + 2005 / 400 + AD;

      Year_2008 : constant Julian_Day_Number :=
        365 * 2008 + 2008 / 4 - 2008 / 100 + 2008 / 400 + AD;
      
   end Constants;
   
end Matreshka.Internals.Calendars.Gregorian;
