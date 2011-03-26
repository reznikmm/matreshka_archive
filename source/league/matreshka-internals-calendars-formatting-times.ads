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
--  This package provides time printer.
------------------------------------------------------------------------------

package Matreshka.Internals.Calendars.Formatting.Times is

   pragma Preelaborate;

   type Time_Printer is new Abstract_Time_Printer with null record;

   overriding procedure Append_Period
    (Self   : Time_Printer;
     Output : in out League.Strings.Universal_String;
     Time   : Relative_Time);

   overriding procedure Append_Half_Day_Hour
    (Self       : Time_Printer;
     Output     : in out League.Strings.Universal_String;
     Time       : Relative_Time;
     Padding    : Positive;
     Zero_Based : Boolean);

   overriding procedure Append_Full_Day_Hour
    (Self       : Time_Printer;
     Output     : in out League.Strings.Universal_String;
     Time       : Relative_Time;
     Padding    : Positive;
     Zero_Based : Boolean);

   overriding procedure Append_Minute
    (Self    : Time_Printer;
     Output  : in out League.Strings.Universal_String;
     Time    : Relative_Time;
     Padding : Positive);

   overriding procedure Append_Second
    (Self    : Time_Printer;
     Output  : in out League.Strings.Universal_String;
     Time    : Relative_Time;
     Leap    : Relative_Time;
     Padding : Positive);

   overriding procedure Append_Fractional_Second
    (Self    : Time_Printer;
     Output  : in out League.Strings.Universal_String;
     Time    : Relative_Time;
     Leap    : Relative_Time;
     Padding : Positive);

   overriding procedure Append_Milliseconds_In_Day
    (Self    : Time_Printer;
     Output  : in out League.Strings.Universal_String;
     Time    : Relative_Time;
     Leap    : Relative_Time;
     Padding : Positive);

end Matreshka.Internals.Calendars.Formatting.Times;
