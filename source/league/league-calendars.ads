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
--  This package provides generic types to operate on time and date.
--
--  Type Time represents some period of time.
--
--  Type Date represents day of the calendar.
--
--  Type Date_Time represents day of the calendar and time inside this day.
--
--  Type Time_Zone represents time zone.
--
--  Type Abstract_Calendar supports date/time operations on Date and Date_Time.
--  There are several children packages provides implementations of different
--  calendars. All calendar operations which doesn't have time zone parameter
--  operates in current time zone (specified for thread or for application).
------------------------------------------------------------------------------
private with Ada.Streams;

private with Matreshka.Internals.Calendars;

package League.Calendars is

   pragma Preelaborate;
--   pragma Remote_Types;
   --  XXX GNAT GPL 2010 doesn't contains this extension.
   --  XXX Abstract_Calendar type must be moved outside of this package if it
   --  is remote types package, there is not plan to share it objects across
   --  partitions and there is no such requirement.

   type Time is private;

   type Date is private;

   type Date_Time is private;

   ----------
   -- Time --
   ----------

   function "+" (Right : Time) return Time;
   function "-" (Right : Time) return Time;

   function "+" (Left : Time; Right : Time) return Time;
   function "-" (Left : Time; Right : Time) return Time;

   overriding function "=" (Left : Time; Right : Time) return Boolean;
   function "<"  (Left : Time; Right : Time) return Boolean;
   function "<=" (Left : Time; Right : Time) return Boolean;
   function ">"  (Left : Time; Right : Time) return Boolean;
   function ">=" (Left : Time; Right : Time) return Boolean;

   ----------
   -- Date --
   ----------

   overriding function "=" (Left : Date; Right : Date) return Boolean;
   function "<"  (Left : Date; Right : Date) return Boolean;
   function "<=" (Left : Date; Right : Date) return Boolean;
   function ">"  (Left : Date; Right : Date) return Boolean;
   function ">=" (Left : Date; Right : Date) return Boolean;

   ---------------
   -- Date_Time --
   ---------------

   function Clock return Date_Time;
   --  Returns current date and time.

   function "+" (Left : Date_Time; Right : Time) return Date_Time;
   function "-" (Left : Date_Time; Right : Time) return Date_Time;

   overriding function "="
    (Left : Date_Time; Right : Date_Time) return Boolean;
   function "<"  (Left : Date_Time; Right : Date_Time) return Boolean;
   function "<=" (Left : Date_Time; Right : Date_Time) return Boolean;
   function ">"  (Left : Date_Time; Right : Date_Time) return Boolean;
   function ">=" (Left : Date_Time; Right : Date_Time) return Boolean;

   type Time_Zone is private;

   type Abstract_Calendar is abstract tagged private;

private

   type Time is new Matreshka.Internals.Calendars.Relative_Time;

   type Date is new Matreshka.Internals.Calendars.Julian_Day_Number;

   type Date_Time is new Matreshka.Internals.Calendars.Absolute_Time;

   procedure Read
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : out Time_Zone);

   procedure Write
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : Time_Zone);

   type Time_Zone is record
      Description : Matreshka.Internals.Calendars.Time_Zone_Access;
   end record;
   for Time_Zone'Read use Read;
   for Time_Zone'Write use Write;

   type Abstract_Calendar is abstract tagged null record;

   pragma Inline ("+");
   pragma Inline ("-");
   pragma Inline ("=");
   pragma Inline ("<");
   pragma Inline (">");
   pragma Inline ("<=");
   pragma Inline (">=");

end League.Calendars;
