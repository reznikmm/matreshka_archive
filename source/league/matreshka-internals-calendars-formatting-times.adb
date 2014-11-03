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
-- Copyright © 2011-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.Calendars.Times;

package body Matreshka.Internals.Calendars.Formatting.Times is

   procedure Append
    (Result  : in out League.Strings.Universal_String;
     Value   : Natural;
     Padding : Positive);

   ------------
   -- Append --
   ------------

   procedure Append
    (Result  : in out League.Strings.Universal_String;
     Value   : Natural;
     Padding : Positive)
   is
      Image : constant Wide_Wide_String := Integer'Wide_Wide_Image (Value);

   begin
      for J in 1 .. Padding - Image'Length + 1 loop
         Result.Append ('0');
      end loop;

      Result.Append (Image (Image'First + 1 .. Image'Last));
   end Append;

   ------------------------------
   -- Append_Fractional_Second --
   ------------------------------

   overriding procedure Append_Fractional_Second
    (Self    : Time_Printer;
     Output  : in out League.Strings.Universal_String;
     Time    : Relative_Time;
     Leap    : Relative_Time;
     Padding : Positive)
   is
      Image  : constant Wide_Wide_String
        := Matreshka.Internals.Calendars.Times.Nano_Second_100_Number'
             Wide_Wide_Image
              (Matreshka.Internals.Calendars.Times.Nanosecond_100
                (Time, Leap));
      Buffer : Wide_Wide_String := "0000000";

   begin
      Buffer (Buffer'Last - Image'Length + 2 .. Buffer'Last) :=
        Image (Image'First + 1 .. Image'Last);
      Output.Append (Buffer (1 .. Padding));
   end Append_Fractional_Second;

   --------------------------
   -- Append_Full_Day_Hour --
   --------------------------

   overriding procedure Append_Full_Day_Hour
    (Self       : Time_Printer;
     Output     : in out League.Strings.Universal_String;
     Time       : Relative_Time;
     Padding    : Positive;
     Zero_Based : Boolean) is
   begin
      Append
       (Output,
        Matreshka.Internals.Calendars.Times.Hour (Time),
        Padding);
   end Append_Full_Day_Hour;

   --------------------------
   -- Append_Half_Day_Hour --
   --------------------------

   overriding procedure Append_Half_Day_Hour
    (Self       : Time_Printer;
     Output     : in out League.Strings.Universal_String;
     Time       : Relative_Time;
     Padding    : Positive;
     Zero_Based : Boolean) is
   begin
      --  XXX Not yet implemented.

      null;
   end Append_Half_Day_Hour;

   --------------------------------
   -- Append_Milliseconds_In_Day --
   --------------------------------

   overriding procedure Append_Milliseconds_In_Day
    (Self    : Time_Printer;
     Output  : in out League.Strings.Universal_String;
     Time    : Relative_Time;
     Leap    : Relative_Time;
     Padding : Positive) is
   begin
      --  XXX Not yet implemented.

      null;
   end Append_Milliseconds_In_Day;

   -------------------
   -- Append_Minute --
   -------------------

   overriding procedure Append_Minute
    (Self    : Time_Printer;
     Output  : in out League.Strings.Universal_String;
     Time    : Relative_Time;
     Padding : Positive) is
   begin
      Append
       (Output,
        Matreshka.Internals.Calendars.Times.Minute (Time),
        Padding);
   end Append_Minute;

   -------------------
   -- Append_Period --
   -------------------

   overriding procedure Append_Period
    (Self   : Time_Printer;
     Output : in out League.Strings.Universal_String;
     Time   : Relative_Time) is
   begin
      --  XXX Not yet implemented.

      null;
   end Append_Period;

   -------------------
   -- Append_Second --
   -------------------

   overriding procedure Append_Second
    (Self    : Time_Printer;
     Output  : in out League.Strings.Universal_String;
     Time    : Relative_Time;
     Leap    : Relative_Time;
     Padding : Positive) is
   begin
      Append
       (Output,
        Matreshka.Internals.Calendars.Times.Second (Time, Leap),
        Padding);
   end Append_Second;

end Matreshka.Internals.Calendars.Formatting.Times;
