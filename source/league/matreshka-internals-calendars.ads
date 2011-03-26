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
with Interfaces;

package Matreshka.Internals.Calendars is

   pragma Preelaborate;

   --  Universal Time Coordinated (UTC) representation from the X/Open DCE Time
   --  Service is used as internal representation. It is defined as follows:
   --
   --     Time units          100 nanoseconds (10-7 seconds)
   --
   --     Base time           15 October 1582 00:00:00.
   --
   --     Approximate range   AD 30,000
   --
   --  UTC time in this implementation always refers to time in Greenwich Time
   --  Zone.

   type Absolute_Time is new Interfaces.Integer_64;

   --  The corresponding internal representations of relative time is the same
   --  one as for absolute time, and hence with similar characteristics:
   --
   --     Time units          100 nanoseconds (10-7 seconds)
   --
   --     Approximate range   +/- 30,000 years

   type Relative_Time is new Interfaces.Integer_64;

   type Julian_Day_Number is new Interfaces.Integer_32;

   type Internal_Time_Zone is null record;

   type Time_Zone_Access is access all Internal_Time_Zone;
   for Time_Zone_Access'Storage_Size use 0;

   UTC_Time_Zone : aliased Internal_Time_Zone;

end Matreshka.Internals.Calendars;
