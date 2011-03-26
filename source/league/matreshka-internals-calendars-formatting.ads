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
--  This package provides parser of CLDR Date Format Patterns.
------------------------------------------------------------------------------
with League.Strings;

package Matreshka.Internals.Calendars.Formatting is

   pragma Preelaborate;

   subtype Era_Padding is Integer range 1 .. 3;

   type Abstract_Printer is abstract tagged limited null record;

   not overriding procedure Append_Abbreviated_Era
    (Self    : Abstract_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Era_Padding) is abstract;

   not overriding procedure Append_Long_Era
    (Self    : Abstract_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time) is abstract;

   not overriding procedure Append_Narrow_Era
    (Self    : Abstract_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time) is abstract;

   not overriding procedure Append_Year
    (Self    : Abstract_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive) is abstract;

   not overriding procedure Append_Year_Week
    (Self    : Abstract_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive) is abstract;

   not overriding procedure Append_Extended_Year
    (Self    : Abstract_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive) is abstract;

   not overriding procedure Append_Numerical_Quarter
    (Self           : Abstract_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Padding        : Positive;
     Is_Stand_Alone : Boolean) is abstract;

   not overriding procedure Append_Abbreviated_Quarter
    (Self           : Abstract_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean) is abstract;

   not overriding procedure Append_Full_Quarter
    (Self           : Abstract_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean) is abstract;

   not overriding procedure Append_Numerical_Month
    (Self           : Abstract_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Padding        : Positive;
     Is_Stand_Alone : Boolean) is abstract;

   not overriding procedure Append_Abbreviated_Month
    (Self           : Abstract_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean) is abstract;

   not overriding procedure Append_Full_Month
    (Self           : Abstract_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean) is abstract;

   not overriding procedure Append_Narrow_Month
    (Self           : Abstract_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean) is abstract;

   not overriding procedure Append_Chinese_Leap_Month
    (Self   : Abstract_Printer;
     Output : in out League.Strings.Universal_String;
     Stamp  : Absolute_Time) is abstract;

   not overriding procedure Append_Week_Of_Year
    (Self    : Abstract_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive) is abstract;

   not overriding procedure Append_Week_Of_Month
    (Self   : Abstract_Printer;
     Output : in out League.Strings.Universal_String;
     Stamp  : Absolute_Time) is abstract;

   not overriding procedure Append_Day_Of_Month
    (Self    : Abstract_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive) is abstract;

   not overriding procedure Append_Day_Of_Year
    (Self    : Abstract_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive) is abstract;

   not overriding procedure Append_Day_Of_Week_In_Month
    (Self   : Abstract_Printer;
     Output : in out League.Strings.Universal_String;
     Stamp  : Absolute_Time) is abstract;

   not overriding procedure Append_Julian_Day
    (Self    : Abstract_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Absolute_Time;
     Padding : Positive) is abstract;

   not overriding procedure Append_Numerical_Day_Of_Week
    (Self           : Abstract_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Padding        : Positive;
     Is_Stand_Alone : Boolean) is abstract;

   not overriding procedure Append_Short_Day_Of_Week
    (Self           : Abstract_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Padding        : Positive;
     Is_Stand_Alone : Boolean) is abstract;

   not overriding procedure Append_Full_Day_Of_Week
    (Self           : Abstract_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean) is abstract;

   not overriding procedure Append_Narrow_Day_Of_Week
    (Self           : Abstract_Printer;
     Output         : in out League.Strings.Universal_String;
     Stamp          : Absolute_Time;
     Is_Stand_Alone : Boolean) is abstract;

   type Abstract_Time_Printer is abstract tagged limited null record;

   not overriding procedure Append_Period
    (Self   : Abstract_Time_Printer;
     Output : in out League.Strings.Universal_String;
     Stamp  : Relative_Time) is abstract;

   not overriding procedure Append_Half_Day_Hour
    (Self       : Abstract_Time_Printer;
     Output     : in out League.Strings.Universal_String;
     Stamp      : Relative_Time;
     Padding    : Positive;
     Zero_Based : Boolean) is abstract;

   not overriding procedure Append_Full_Day_Hour
    (Self       : Abstract_Time_Printer;
     Output     : in out League.Strings.Universal_String;
     Stamp      : Relative_Time;
     Padding    : Positive;
     Zero_Based : Boolean) is abstract;

   not overriding procedure Append_Minute
    (Self    : Abstract_Time_Printer;
     Output  : in out League.Strings.Universal_String;
     Stamp   : Relative_Time;
     Padding : Positive) is abstract;

   not overriding procedure Append_Second
    (Self    : Abstract_Time_Printer;
     Output  : in out League.Strings.Universal_String;
     Time    : Relative_Time;
     Leap    : Relative_Time;
     Padding : Positive) is abstract;

   not overriding procedure Append_Fractional_Second
    (Self    : Abstract_Time_Printer;
     Output  : in out League.Strings.Universal_String;
     Time    : Relative_Time;
     Leap    : Relative_Time;
     Padding : Positive) is abstract;

   not overriding procedure Append_Milliseconds_In_Day
    (Self    : Abstract_Time_Printer;
     Output  : in out League.Strings.Universal_String;
     Time    : Relative_Time;
     Leap    : Relative_Time;
     Padding : Positive) is abstract;

   function Image
    (Pattern      : League.Strings.Universal_String;
     Printer      : Abstract_Printer'Class;
     Time_Printer : Abstract_Time_Printer'Class;
     Stamp        : Absolute_Time) return League.Strings.Universal_String;

end Matreshka.Internals.Calendars.Formatting;
