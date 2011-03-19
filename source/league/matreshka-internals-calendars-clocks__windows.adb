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
--  This is implementation of the package for Windows operation system.
------------------------------------------------------------------------------
with Interfaces.C;

with Matreshka.Internals.Calendars.Gregorian;
with Matreshka.Internals.Calendars.Times;

package body Matreshka.Internals.Calendars.Clocks is

   type WORD is new Interfaces.C.unsigned_short;

   type SYSTEMTIME is record
      wYear         : WORD;
      wMonth        : WORD;
      wDayOfWeek    : WORD;
      wDay          : WORD;
      wHour         : WORD;
      wMinute       : WORD;
      wSecond       : WORD;
      wMilliseconds : WORD;
   end record;
   pragma Convention (C, SYSTEMTIME);

   procedure GetSystemTime (lpSystemTime : not null access SYSTEMTIME);
   pragma Import (Stdcall, GetSystemTime, "GetSystemTime");

   -----------
   -- Clock --
   -----------

   function Clock return Absolute_Time is
      Current_Time : aliased SYSTEMTIME;

   begin
      GetSystemTime (Current_Time'Access);

      return
        Times.Create
         (Gregorian.Julian_Day
           (Integer (Current_Time.wYear),
            Integer (Current_Time.wMonth),
            Integer (Current_Time.wDay)),
          Integer (Current_Time.wHour),
          Integer (Current_Time.wMinute),
          Integer (Current_Time.wSecond),
          Integer (Current_Time.wMilliseconds) * 10_000);
   end Clock;

end Matreshka.Internals.Calendars.Clocks;
