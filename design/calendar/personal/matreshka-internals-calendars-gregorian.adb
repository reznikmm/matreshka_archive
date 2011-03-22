------------------------------------------------------------------------------
--  This code is based on work:
--
--  Calendrical calculations / Nachum Dershowitz, Edward M Reingold - 3rd ed.
--
--  Due to copyright issues you can't use it.
------------------------------------------------------------------------------

package body Matreshka.Internals.Calendars.Gregorian is

   use type Interfaces.Integer_32;

   function Floor_Of_Division
    (Divident : Interfaces.Integer_32;
     Divisor  : Interfaces.Integer_32) return Interfaces.Integer_32;
   --  Returns floor of division.

   Gregorian_Epoch : constant := 1_721_426;

   procedure Split
    (Julian_Day : Julian_Day_Number;
     Year       : out Year_Number;
     Month      : out Month_Number;
     Day        : out Day_Number);

   ---------
   -- Day --
   ---------

   function Day (Julian_Day : Julian_Day_Number) return Day_Number is
      Y : Year_Number;
      M : Month_Number;
      D : Day_Number;

   begin
      Split (Julian_Day, Y, M, D);

      return D;
   end Day;

   -----------------
   -- Day_Of_Week --
   -----------------

   function Day_Of_Week
    (Julian_Day : Julian_Day_Number) return Day_Of_Week_Number is
   begin
      return Day_Of_Week_Number (Julian_Day mod 7 + 1);
   end Day_Of_Week;

   -----------------
   -- Day_Of_Year --
   -----------------

   function Day_Of_Year
    (Julian_Day : Julian_Day_Number) return Day_Of_Year_Number is
   begin
      return
        Day_Of_Year_Number
         (Julian_Day - Gregorian.Julian_Day (Year (Julian_Day) - 1, 12, 31));
   end Day_Of_Year;

   -----------------------
   -- Floor_Of_Division --
   -----------------------

   function Floor_Of_Division
    (Divident : Interfaces.Integer_32;
     Divisor  : Interfaces.Integer_32) return Interfaces.Integer_32
   is
      pragma Assert (Divisor > 0);

   begin
      if Divident >= 0 then
         return Divident / Divisor;

      else
         return (Divident - Divisor + 1) / Divisor;
      end if;
   end Floor_Of_Division;

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
      Year_1 : constant Interfaces.Integer_32
        := Interfaces.Integer_32 (Year) - 1;
      Base   : constant Interfaces.Integer_32
        := Gregorian_Epoch - 1
             + 365 * Year_1
             + Floor_Of_Division (Year_1, 4)
             - Floor_Of_Division (Year_1, 100)
             + Floor_Of_Division (Year_1, 400)
             + Floor_Of_Division
                (367 * Interfaces.Integer_32 (Month) - 362, 12)
             + Interfaces.Integer_32 (Day);

   begin
      if Month <= 2 then
         return Julian_Day_Number (Base);

      elsif Is_Leap_Year (Year) then
         return Julian_Day_Number (Base - 1);

      else
         return Julian_Day_Number (Base - 2);
      end if;
   end Julian_Day;

   -----------
   -- Month --
   -----------

   function Month (Julian_Day : Julian_Day_Number) return Month_Number is
      Y : Year_Number;
      M : Month_Number;
      D : Day_Number;

   begin
      Split (Julian_Day, Y, M, D);

      return M;
   end Month;

   -----------
   -- Split --
   -----------

   procedure Split
    (Julian_Day : Julian_Day_Number;
     Year       : out Year_Number;
     Month      : out Month_Number;
     Day        : out Day_Number)
   is
      Prior_Days : Interfaces.Integer_32;
      Correction : Interfaces.Integer_32;

   begin
      Year := Gregorian.Year (Julian_Day);

      Prior_Days :=
        Interfaces.Integer_32
         (Julian_Day - Gregorian.Julian_Day (Year, 1, 1));

      if Julian_Day < Gregorian.Julian_Day (Year, 3, 1) then
         Correction := 0;

      elsif Is_Leap_Year (Year) then
         Correction := 1;

      else
         Correction := 2;
      end if;

      Month :=
        Month_Number
         (Floor_Of_Division (12 * (Prior_Days + Correction) + 373, 367));
      Day :=
        Day_Number (1 + Julian_Day - Gregorian.Julian_Day (Year, Month, 1));
   end Split;

   ----------
   -- Year --
   ----------

   function Year (Julian_Day : Julian_Day_Number) return Year_Number is
      D_0   : constant Interfaces.Integer_32
        := Interfaces.Integer_32 (Julian_Day) - Gregorian_Epoch;
      D_1   : constant Interfaces.Integer_32 := D_0 mod 146_097;
      D_2   : constant Interfaces.Integer_32 := D_1 mod 36_524;
      D_3   : constant Interfaces.Integer_32 := D_2 mod 1_461;
      N_400 : constant Interfaces.Integer_32
        := Floor_Of_Division (D_0, 146_097);
      N_100 : constant Interfaces.Integer_32
        := Floor_Of_Division (D_1, 36_524);
      N_4   : constant Interfaces.Integer_32 := Floor_Of_Division (D_2, 1_461);
      N_1   : constant Interfaces.Integer_32 := Floor_Of_Division (D_3, 365);
      Y     : constant Interfaces.Integer_32
        := 400 * N_400 + 100 * N_100 + 4 * N_4 + N_1;

   begin
      if N_100 = 4 or N_1 = 4 then
         return Year_Number (Y);

      else
         return Year_Number (Y + 1);
      end if;
   end Year;

end Matreshka.Internals.Calendars.Gregorian;
