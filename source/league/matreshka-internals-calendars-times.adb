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

package body Matreshka.Internals.Calendars.Times is

   --  XXX Leap seconds not handled now.

   X_Open_Epoch : constant := 2_299_161;
   --  Julian day number of start of X/Open representation
   --  October, 15, 1582

   ------------
   -- Create --
   ------------

   function Create
    (Julian_Day : Julian_Day_Number;
     Hour       : Hour_Number;
     Minute     : Minute_Number;
     Second     : Second_Number;
     Nano_100   : Nano_Second_100_Number) return Absolute_Time is
   begin
      return
        Absolute_Time (Julian_Day - X_Open_Epoch) * 24 * 60 * 60 * 10_000_000
          + Absolute_Time (Hour) * 60 * 60 * 10_000_000
          + Absolute_Time (Minute) * 60 * 10_000_000
          + Absolute_Time (Second) * 10_000_000
          + Absolute_Time (Nano_100);
   end Create;

   ----------
   -- Hour --
   ----------

   function Hour (Time : Absolute_Time) return Hour_Number is
   begin
      return
        Hour_Number
         (Time mod (24 * 60 * 60 * 10_000_000) / (60 * 60 * 10_000_000));
   end Hour;

   ----------------
   -- Julian_Day --
   ----------------

   function Julian_Day (Time : Absolute_Time) return Julian_Day_Number is
   begin
      return
        Julian_Day_Number (Time / (24 * 60 * 60 * 10_000_000)) + X_Open_Epoch;
   end Julian_Day;

   ------------
   -- Minute --
   ------------

   function Minute (Time : Absolute_Time) return Minute_Number is
   begin
      return
        Minute_Number (Time mod (60 * 60 * 10_000_000) / (60 * 10_000_000));
   end Minute;

   ------------
   -- Second --
   ------------

   function Second (Time : Absolute_Time) return Second_Number is
   begin
      return
        Second_Number (Time mod (60 * 10_000_000) / (10_000_000));
   end Second;

end Matreshka.Internals.Calendars.Times;
