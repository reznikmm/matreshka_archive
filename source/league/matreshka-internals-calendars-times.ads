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
--  This package provides subprograms to extract julian day number and time
--  inside day from X/Open representation and to construct X/Open
--  representation from julian day number and time inside day.
--
--  Subprograms in this package handles leap seconds also.
--
--  Note: for convenience, julian day starts at midnight, not noon.
------------------------------------------------------------------------------

package Matreshka.Internals.Calendars.Times is

   pragma Preelaborate;

   subtype Hour_Number is Integer range 0 .. 23;
   subtype Minute_Number is Integer range 0 .. 59;
   subtype Second_Number is Integer range 0 .. 60;
   subtype Nano_Second_100_Number is Integer range 0 .. 9_999_999;

   function Create
    (Julian_Day : Julian_Day_Number;
     Hour       : Hour_Number;
     Minute     : Minute_Number;
     Second     : Second_Number;
     Nano_100   : Nano_Second_100_Number) return Absolute_Time;
   --  Creates absolute time from giving components.

   function Julian_Day (Time : Absolute_Time) return Julian_Day_Number;
   --  Returns julian day number of the specified X/Open time.

   function Hour (Time : Absolute_Time) return Hour_Number;
   --  Returns the hour part (0 to 23) of the time.

   function Minute (Time : Absolute_Time) return Minute_Number;
   --  Returns the minute part (0 to 59) of the time.

   function Second (Time : Absolute_Time) return Second_Number;
   --  Returns the second part (0 to 60) of the time.

end Matreshka.Internals.Calendars.Times;
