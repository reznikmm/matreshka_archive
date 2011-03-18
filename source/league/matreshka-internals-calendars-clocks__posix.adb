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
--  This is implementation for POSIX operation systems.
------------------------------------------------------------------------------
with Interfaces.C;

with Matreshka.Internals.Calendars.Gregorian;

package body Matreshka.Internals.Calendars.Clocks is

   type time_t is new Interfaces.C.long;

   type suseconds_t is new Interfaces.C.long;

   type timeval is record
      tv_sec  : aliased time_t;
      tv_usec : suseconds_t;
   end record;
   pragma Convention (C, timeval);

   type timezone is record
      tz_minuteswest : Interfaces.C.int;
      tz_dsttime     : Interfaces.C.int;
   end record;
   pragma Convention (C, timezone);

   type tm is record
      tm_sec   : Interfaces.C.int;
      tm_min   : Interfaces.C.int;
      tm_hour  : Interfaces.C.int;
      tm_mday  : Interfaces.C.int;
      tm_mon   : Interfaces.C.int;
      tm_year  : Interfaces.C.int;
      tm_wday  : Interfaces.C.int;
      tm_yday  : Interfaces.C.int;
      tm_isdst : Interfaces.C.int;
   end record;
   pragma Convention (C, tm);

   function gettimeofday
    (tv : not null access timeval;
     tz : access timezone) return Interfaces.C.int;
   pragma Import (C, gettimeofday);

   function gmtime_r
    (timep  : not null access constant time_t;
     result : not null access tm) return access tm;
   pragma Import (C, gmtime_r);

   -----------
   -- Clock --
   -----------

   function Clock return X_Open_Time is
      use type Interfaces.C.int;

      Current_Time : aliased timeval;
      Break_Down   : aliased tm;

   begin
      if gettimeofday (Current_Time'Access, null) /= 0 then
         return 0;
      end if;

      if gmtime_r (Current_Time.tv_sec'Access, Break_Down'Access) = null then
         return 0;
      end if;

      return
        Gregorian.Create
         (Integer (Break_Down.tm_year) + 1_900,
          Integer (Break_Down.tm_mon) + 1,
          Integer (Break_Down.tm_mday),
          Integer (Break_Down.tm_hour),
          Integer (Break_Down.tm_min),
          Integer (Break_Down.tm_sec),
          Integer (Current_Time.tv_usec) * 10);
   end Clock;

end Matreshka.Internals.Calendars.Clocks;
