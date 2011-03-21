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
   
   package Leap_Seconds is
      
      use Matreshka.Internals.Calendars.Gregorian.Constants;
      
      List : constant array (0 ..  24) of Julian_Day_Number :=
        (Julian_Day_Number'First,
         Year_1972 + Jun_30,
         Year_1972 + Dec_31,
         Year_1973 + Dec_31,
         Year_1974 + Dec_31,
         Year_1975 + Dec_31,
         Year_1976 + Dec_31,
         Year_1977 + Dec_31,
         Year_1978 + Dec_31,
         Year_1979 + Dec_31,
         Year_1981 + Jun_30,
         Year_1982 + Jun_30,
         Year_1983 + Jun_30,
         Year_1985 + Jun_30,
         Year_1987 + Dec_31,
         Year_1989 + Dec_31,
         Year_1990 + Dec_31,
         Year_1992 + Jun_30,
         Year_1993 + Jun_30,
         Year_1994 + Jun_30,
         Year_1995 + Dec_31,
         Year_1997 + Jun_30,
         Year_1998 + Dec_31,
         Year_2005 + Dec_31,
         Year_2008 + Dec_31);
      
      function Find (Value : Julian_Day_Number) return Natural;
      --  Find max index in List less then Value
      
      procedure Remove
        (Time           : Absolute_Time;
         Result         : out Absolute_Time;
         Is_Leap_Second : out Boolean);
      --  Decrease Time by number of leap seconds and return in Result.
      --  Set Is_Leap_Second if Time is leap second
        
   end Leap_Seconds;
   
   ------------------
   -- Leap_Seconds --
   ------------------
   
   package body Leap_Seconds is
      
      function Find (Value : Julian_Day_Number) return Natural is
      begin
         for J in reverse List'Range loop
            if List (J) < Value then
               return J;
            end if;
         end loop;
         
         return 0;
      end Find;
      
      ------------
      -- Remove --
      ------------
      
      procedure Remove
        (Time           : Absolute_Time;
         Result         : out Absolute_Time;
         Is_Leap_Second : out Boolean)
      is
         Second   : constant Absolute_Time := 10_000_000;
         Day      : constant Absolute_Time := 24 * 60 * 60 * Second;
         Midnight : constant := Day - Second;
         X : Absolute_Time;
      begin
         for J in reverse 1 .. List'Last loop
            X := Absolute_Time (List (J) - X_Open_Epoch) * Day +
              Midnight +
              Absolute_Time (J) * Second;
            
            if X <= Time then
               Result := Time - Absolute_Time (J) * Second;
               Is_Leap_Second := (X = Time);
               return;
            end if;
         end loop;
         
         Result := Time;
         Is_Leap_Second := False;
      end Remove;
      
   end Leap_Seconds;
   
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
      Leaps : constant Natural := Leap_Seconds.Find (Julian_Day);
   begin
      if Second = 60 then
         if not (Leaps < Leap_Seconds.List'Last and then
                   Leap_Seconds.List (Leaps + 1) = Julian_Day and then
                   Hour = 23 and then
                   Minute = 59) 
         then
            raise Constraint_Error;
         end if;
      end if;
      
      return
        Absolute_Time (Julian_Day - X_Open_Epoch) * 24 * 60 * 60 * 10_000_000
          + Absolute_Time (Hour) * 60 * 60 * 10_000_000
          + Absolute_Time (Minute) * 60 * 10_000_000
          + Absolute_Time (Second) * 10_000_000
          + Absolute_Time (Leaps) * 10_000_000
          + Absolute_Time (Nano_100);
   end Create;

   ----------
   -- Hour --
   ----------

   function Hour (Time : Absolute_Time) return Hour_Number is
      Value          : Absolute_Time;
      Is_Leap_Second : Boolean;
   begin
      Leap_Seconds.Remove (Time, Value, Is_Leap_Second);
      
      return
        Hour_Number
         (Value mod (24 * 60 * 60 * 10_000_000) / (24 * 60 * 60 * 10_000_000));
   end Hour;

   ----------------
   -- Julian_Day --
   ----------------

   function Julian_Day (Time : Absolute_Time) return Julian_Day_Number is
      Value          : Absolute_Time;
      Is_Leap_Second : Boolean;
   begin
      Leap_Seconds.Remove (Time, Value, Is_Leap_Second);
      
      return
        Julian_Day_Number (Value / (24 * 60 * 60 * 10_000_000)) + X_Open_Epoch;
   end Julian_Day;

   ------------
   -- Minute --
   ------------

   function Minute (Time : Absolute_Time) return Minute_Number is
      Value          : Absolute_Time;
      Is_Leap_Second : Boolean;
   begin
      Leap_Seconds.Remove (Time, Value, Is_Leap_Second);
      
      return
        Minute_Number (Value mod (60 * 60 * 10_000_000) / (60 * 10_000_000));
   end Minute;

   ------------
   -- Second --
   ------------

   function Second (Time : Absolute_Time) return Second_Number is
      Value          : Absolute_Time;
      Is_Leap_Second : Boolean;
   begin
      Leap_Seconds.Remove (Time, Value, Is_Leap_Second);
      
      if Is_Leap_Second then
         return 60;
      else
         return
           Second_Number (Value mod (60 * 10_000_000) / (10_000_000));
      end if;
   end Second;

end Matreshka.Internals.Calendars.Times;
