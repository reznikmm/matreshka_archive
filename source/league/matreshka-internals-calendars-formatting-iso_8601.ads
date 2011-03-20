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

package Matreshka.Internals.Calendars.Formatting.ISO_8601 is

   pragma Preelaborate;

   type ISO_8601_Printer is new Abstract_Printer with null record;

   overriding procedure Append_Abbreviated_Era
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Era_Padding);

   overriding procedure Append_Long_Era
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time);

   overriding procedure Append_Narrow_Era
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time);

   overriding procedure Append_Year
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive);

   overriding procedure Append_Year_Week
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive);

   overriding procedure Append_Extended_Year
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive);

   overriding procedure Append_Numerical_Quarter
    (Self           : ISO_8601_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Padding        : Positive;
     Is_Stand_Alone : Boolean);

   overriding procedure Append_Abbreviated_Quarter
    (Self           : ISO_8601_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean);

   overriding procedure Append_Full_Quarter
    (Self           : ISO_8601_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean);

   overriding procedure Append_Numerical_Month
    (Self           : ISO_8601_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Padding        : Positive;
     Is_Stand_Alone : Boolean);

   overriding procedure Append_Abbreviated_Month
    (Self           : ISO_8601_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean);

   overriding procedure Append_Full_Month
    (Self           : ISO_8601_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean);

   overriding procedure Append_Narrow_Month
    (Self           : ISO_8601_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean);

   overriding procedure Append_Chinese_Leap_Month
    (Self   : ISO_8601_Printer;
     Output : in out League.Strings.Universal_String;
     Stamp  : Absolute_Time);

   overriding procedure Append_Week_Of_Year
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive);

   overriding procedure Append_Week_Of_Month
    (Self   : ISO_8601_Printer;
     Output : in out League.Strings.Universal_String;
     Stamp  : Absolute_Time);

   overriding procedure Append_Day_Of_Month
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive);

   overriding procedure Append_Day_Of_Year
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive);

   overriding procedure Append_Day_Of_Week_In_Month
    (Self   : ISO_8601_Printer;
     Output : in out League.Strings.Universal_String;
     Stamp  : Absolute_Time);

   overriding procedure Append_Julian_Day
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive);

   overriding procedure Append_Numerical_Day_Of_Week
    (Self           : ISO_8601_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Padding        : Positive;
     Is_Stand_Alone : Boolean);

   overriding procedure Append_Short_Day_Of_Week
    (Self           : ISO_8601_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Padding        : Positive;
     Is_Stand_Alone : Boolean);

   overriding procedure Append_Full_Day_Of_Week
    (Self           : ISO_8601_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean);

   overriding procedure Append_Narrow_Day_Of_Week
    (Self           : ISO_8601_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean);

   overriding procedure Append_Period
    (Self   : ISO_8601_Printer;
     Output : in out League.Strings.Universal_String;
     Stamp  : Absolute_Time);

   overriding procedure Append_Half_Day_Hour
    (Self       : ISO_8601_Printer;
     Output     : in out League.Strings.Universal_String;
     Stamp      : Absolute_Time;
     Padding    : Positive;
     Zero_Based : Boolean);

   overriding procedure Append_Full_Day_Hour
    (Self       : ISO_8601_Printer;
     Output     : in out League.Strings.Universal_String;
     Stamp      : Absolute_Time;
     Padding    : Positive;
     Zero_Based : Boolean);

   overriding procedure Append_Minute
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive);

   overriding procedure Append_Second
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive);

   overriding procedure Append_Fractional_Second
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive);

   overriding procedure Append_Milliseconds_In_Day
    (Self    : ISO_8601_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive);

end Matreshka.Internals.Calendars.Formatting.ISO_8601;
