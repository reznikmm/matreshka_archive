------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                            Testsuite Component                           --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This test checks whether Ada to League time conversion work properly for
--  the times near to end of day.
------------------------------------------------------------------------------
with Ada.Calendar.Formatting;
with Ada.Calendar.Time_Zones;

with League.Calendars.Ada_Conversions;
with League.Calendars.ISO_8601;

procedure Test_308 is
   use type League.Calendars.ISO_8601.Year_Number;
   use type League.Calendars.ISO_8601.Month_Number;
   use type League.Calendars.ISO_8601.Day_Number;
   use type League.Calendars.ISO_8601.Hour_Number;
   use type League.Calendars.ISO_8601.Minute_Number;
   use type League.Calendars.ISO_8601.Second_Number;
   use type League.Calendars.ISO_8601.Nanosecond_100_Number;

   Ada_Time    : constant Ada.Calendar.Time
     := Ada.Calendar.Formatting.Time_Of (2013, 6, 7, 23, 36, 43, 0.0);
   League_Time : constant League.Calendars.Date_Time
     := League.Calendars.Ada_Conversions.From_Ada_Time (Ada_Time);

   Y  : League.Calendars.ISO_8601.Year_Number;
   M  : League.Calendars.ISO_8601.Month_Number;
   D  : League.Calendars.ISO_8601.Day_Number;
   DH : League.Calendars.ISO_8601.Hour_Number;
   DM : League.Calendars.ISO_8601.Minute_Number;
   DS : League.Calendars.ISO_8601.Second_Number;
   DN : League.Calendars.ISO_8601.Nanosecond_100_Number;

begin
   League.Calendars.ISO_8601.Split (League_Time, Y, M, D, DH, DM, DS, DN);

   if Y /= 2013 then
      raise Program_Error;
   end if;

   if M /= 6 then
      raise Program_Error;
   end if;

   if D /= 7 then
      raise Program_Error;
   end if;

   if DH /= 23 then
      raise Program_Error;
   end if;

   if DM /= 36 then
      raise Program_Error;
   end if;

   if DS /= 43 then
      raise Program_Error;
   end if;

   if DN /= 0 then
      raise Program_Error;
   end if;
end Test_308;
