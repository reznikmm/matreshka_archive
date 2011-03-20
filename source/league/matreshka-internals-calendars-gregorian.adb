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

package body Matreshka.Internals.Calendars.Gregorian is
   
   use type Julian_Day_Number;
   
   --  Gregorian_Epoch : constant := 1_721_426;
   
   Min_Year          : constant := -10_000;
   Julian_Epoch      : constant := 1_931_305;
   --  days from Min_Year to zero julian day
   
   Days_In_4_Years   : constant := 365 * 4 + 1;
   Days_In_400_Years : constant := ((365 * 4 + 1) * 25 - 1) * 4 + 1;
   
   procedure Split
    (Julian_Day   : Julian_Day_Number;
     Shifted_Year : out Julian_Day_Number;
     Day_In_Year  : out Julian_Day_Number);
      
   ---------
   -- Day --
   ---------

   function Day (Julian_Day : Julian_Day_Number) return Day_Number is
      Days          : Julian_Day_Number;
      Years         : Julian_Day_Number;
      Shifted_Month : Julian_Day_Number;

   begin
      Split (Julian_Day, Shifted_Year => Years, Day_In_Year => Days);
      
      Shifted_Month := (5 * Days) + 2 / 153;
      
      return Day_Number (Days - (153 * Shifted_Month + 2) / 5 + 1);
   end Day;
   
   -----------------
   -- Day_Of_Week --
   -----------------
   
   function Day_Of_Week
    (Julian_Day : Julian_Day_Number) return Day_Of_Week_Number is
   begin
      return Day_Of_Week_Number ((Julian_Day mod 7) + 1);
   end Day_Of_Week;
   
   -----------------
   -- Day_Of_Year --
   -----------------
   
   function Day_Of_Year
     (Julian_Day : Julian_Day_Number) return Day_Of_Year_Number
   is
      Days  : Julian_Day_Number;
      Years : Julian_Day_Number;

   begin
      Split (Julian_Day, Shifted_Year => Years, Day_In_Year => Days);
      
      return Day_Of_Year_Number (Days + 1);
   end Day_Of_Year;
   
   ------------------
   -- Is_Leap_Year --
   ------------------

   function Is_Leap_Year (Year : Year_Number) return Boolean is
   begin
      return Year mod 4 = 0 and (Year mod 100 /= 0 or Year mod 400 = 0);
   end Is_Leap_Year;

   ----------------
   -- Julian_Day --
   ----------------

   function Julian_Day
    (Year  : Year_Number;
     Month : Month_Number;
     Day   : Day_Number) return Julian_Day_Number
   is
      Shifted_Year  : constant Julian_Day_Number
        := Julian_Day_Number (Year - Min_Year) - Boolean'Pos (Month <= 2);
      Shifted_Month : constant Julian_Day_Number
        := Julian_Day_Number (Month - 3) mod 12;

   begin
      return
        Julian_Day_Number (Day - 1)
          + (153 * Shifted_Month + 2) / 5   --  first day of year for month
          + 365 * Shifted_Year
          + Shifted_Year / 4    --  number of leap years
          - Shifted_Year / 100  --  excluding 100
          + Shifted_Year / 400  --  includeing 400
          + Julian_Epoch;       --  days from Min_Year to zero julian day
   end Julian_Day;

   -----------
   -- Month --
   -----------

   function Month (Julian_Day : Julian_Day_Number) return Month_Number is
      Days          : Julian_Day_Number;
      Years         : Julian_Day_Number;
      Shifted_Month : Julian_Day_Number;

   begin
      Split (Julian_Day, Shifted_Year => Years, Day_In_Year => Days);
      Shifted_Month := (5 * Days) + 2 / 153;

      return Month_Number (((Shifted_Month + 2) mod 12) + 1);
   end Month;
   
   -----------
   -- Split --
   -----------
   
   procedure Split
    (Julian_Day   : Julian_Day_Number;
     Shifted_Year : out Julian_Day_Number;
     Day_In_Year  : out Julian_Day_Number)
   is
      Days       : Julian_Day_Number := Julian_Day + Julian_Epoch;
      Years      : Julian_Day_Number;
      Centuries  : constant Julian_Day_Number
        := (4 * Days + 3) / Days_In_400_Years;

   begin
      Days         := Days - Centuries * Days_In_400_Years / 4;
      Years        := (Days * 4 + 3) / Days_In_4_Years;
      Day_In_Year  := Days - Years * Days_In_4_Years / 4;
      Shifted_Year := 100 * Centuries + Years;
   end Split;
   
   ----------
   -- Year --
   ----------

   function Year (Julian_Day : Julian_Day_Number) return Year_Number is
      Days  : Julian_Day_Number;
      Years : Julian_Day_Number;

   begin
      Split (Julian_Day, Shifted_Year => Years, Day_In_Year => Days);
      
      return Year_Number (Years + Boolean'Pos (Days > 305) + Min_Year);
   end Year;

end Matreshka.Internals.Calendars.Gregorian;
