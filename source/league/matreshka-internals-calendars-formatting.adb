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
with Matreshka.Internals.Calendars.Times;

package body Matreshka.Internals.Calendars.Formatting is

   -----------
   -- Image --
   -----------

   function Image
    (Pattern      : League.Strings.Universal_String;
     Printer      : Abstract_Printer'Class;
     Time_Printer : Abstract_Time_Printer'Class;
     Stamp        : Absolute_Time) return League.Strings.Universal_String
   is
      use type League.Strings.Universal_Character;

      procedure Parse_Field
       (Max_Length : Positive;
        Index      : in out Positive;
        Count      : out Positive);

      procedure Parse_Field
       (Index : in out Positive;
        Count : out Positive);

      -----------------
      -- Parse_Field --
      -----------------

      procedure Parse_Field
       (Index : in out Positive;
        Count : out Positive)
      is
         Delimiter : constant League.Strings.Universal_Character
           := Pattern.Element (Index);

      begin
         Count := 1;
         Index := Index + 1;

         while Index <= Pattern.Length loop
            exit when Pattern.Element (Index) /= Delimiter;

            Count := Count + 1;
            Index := Index + 1;
         end loop;

         Index := Index - 1;
      end Parse_Field;

      -----------------
      -- Parse_Field --
      -----------------

      procedure Parse_Field
       (Max_Length : Positive;
        Index      : in out Positive;
        Count      : out Positive)
      is
         Delimiter : constant League.Strings.Universal_Character
           := Pattern.Element (Index);

      begin
         Count := 1;
         Index := Index + 1;

         while Index <= Pattern.Length and Count < Max_Length loop
            exit when Pattern.Element (Index) /= Delimiter;

            Count := Count + 1;
            Index := Index + 1;
         end loop;

         Index := Index - 1;
      end Parse_Field;

      Index  : Positive := 1;
      Count  : Positive;
      Result : League.Strings.Universal_String;
      Date   : Julian_Day_Number;
      Time   : Relative_Time;
      Leap   : Relative_Time;

   begin
      Times.Split (Stamp, Date, Time, Leap);

      while Index <= Pattern.Length loop
         case Pattern.Element (Index).To_Wide_Wide_Character is
            when 'G' =>
               --  G  1..3
               --  G  4
               --  G  5
               --
               --  Era - Replaced with the Era string for the current date. One
               --  to three letters for the abbreviated form, four letters for
               --  the long form, five for the narrow form.

               Parse_Field (5, Index, Count);

               case Count is
                  when 1 .. 3 =>
                     Printer.Append_Abbreviated_Era (Result, Date, Count);

                  when 4 =>
                     Printer.Append_Long_Era (Result, Date);

                  when 5 =>
                     Printer.Append_Narrow_Era (Result, Date);

                  when others =>
                     --  Must never be happen.

                     raise Program_Error;
               end case;

            when 'y' =>
               --  y  1..n
               --
               --  Year. Normally the length specifies the padding, but for two
               --  letters it also specifies the maximum length.

               Parse_Field (Index, Count);
               Printer.Append_Year (Result, Date, Count);

            when 'Y' =>
               --  Y  1..n
               --
               --  Year (in "Week of Year" based calendars). This year
               --  designation is used in ISO year-week calendar as defined by
               --  ISO 8601, but can be used in non-Gregorian based calendar
               --  systems where week date processing is desired. May not
               --  always be the same value as calendar year.

               Parse_Field (Index, Count);
               Printer.Append_Year_Week (Result, Date, Count);

            when 'u' =>
               --  u  1..n
               --
               --  Extended year. This is a single number designating the year
               --  of this calendar system, encompassing all supra-year fields.
               --  For example, for the Julian calendar system, year numbers
               --  are positive, with an era of BCE or CE. An extended year
               --  value for the Julian calendar system assigns positive values
               --  to CE years and negative values to BCE years, with 1 BCE
               --  being year 0.

               Parse_Field (Index, Count);
               Printer.Append_Extended_Year (Result, Date, Count);

            when 'Q' =>
               --  Q  1..2
               --  Q  3
               --  Q  4
               --
               --  Quarter - Use one or two for the numerical quarter, three
               --  for the abbreviation, or four for the full name.

               Parse_Field (4, Index, Count);

               case Count is
                  when 1 .. 2 =>
                     Printer.Append_Numerical_Quarter
                      (Result, Date, Count, False);

                  when 3 =>
                     Printer.Append_Abbreviated_Quarter (Result, Date, False);

                  when 4 =>
                     Printer.Append_Full_Quarter (Result, Date, False);

                  when others =>
                     --  Must never be happen.

                     raise Program_Error;
               end case;

            when 'q' =>
               --  q  1..2
               --  q  3
               --  q  4
               --
               --  Stand-Alone Quarter - Use one or two for the numerical
               --  quarter, three for the abbreviation, or four for the full
               --  name.

               Parse_Field (4, Index, Count);

               case Count is
                  when 1 .. 2 =>
                     Printer.Append_Numerical_Quarter
                      (Result, Date, Count, True);

                  when 3 =>
                     Printer.Append_Abbreviated_Quarter (Result, Date, True);

                  when 4 =>
                     Printer.Append_Full_Quarter (Result, Date, True);

                  when others =>
                     --  Must never be happen.

                     raise Program_Error;
               end case;

            when 'M' =>
               --  M  1..2
               --  M  3
               --  M  4
               --  M  5
               --
               --  Month - Use one or two for the numerical month, three for
               --  the abbreviation, or four for the full name, or five for the
               --  narrow name.

               Parse_Field (5, Index, Count);

               case Count is
                  when 1 .. 2 =>
                     Printer.Append_Numerical_Month
                      (Result, Date, Count, False);

                  when 3 =>
                     Printer.Append_Abbreviated_Month (Result, Date, False);

                  when 4 =>
                     Printer.Append_Full_Month (Result, Date, False);

                  when 5 =>
                     Printer.Append_Narrow_Month (Result, Date, False);

                  when others =>
                     --  Must never be happen.

                     raise Program_Error;
               end case;

            when 'L' =>
               --  L  1..2
               --  L  3
               --  L  4
               --  L  5
               --
               --  Stand-Alone Month - Use one or two for the numerical month,
               --  three for the abbreviation, or four for the full name, or 5
               --  for the narrow name.

               Parse_Field (5, Index, Count);

               case Count is
                  when 1 .. 2 =>
                     Printer.Append_Numerical_Month
                      (Result, Date, Count, True);

                  when 3 =>
                     Printer.Append_Abbreviated_Month (Result, Date, True);

                  when 4 =>
                     Printer.Append_Full_Month (Result, Date, True);

                  when 5 =>
                     Printer.Append_Narrow_Month (Result, Date, True);

                  when others =>
                     --  Must never be happen.

                     raise Program_Error;
               end case;

            when 'l' =>
               --  l  1
               --
               --  Special symbol for Chinese leap month, used in combination
               --  with M. Only used with the Chinese calendar.

               Printer.Append_Chinese_Leap_Month (Result, Date);

            when 'w' =>
               --  w  1..2
               --
               --  Week of Year.

               Parse_Field (2, Index, Count);
               Printer.Append_Week_Of_Year (Result, Date, Count);

            when 'W' =>
               --  W  1
               --
               --  Week of Month.

               Printer.Append_Week_Of_Month (Result, Date);

            when 'd' =>
               --  d  1..2
               --
               --  Date - Day of the month.

               Parse_Field (2, Index, Count);
               Printer.Append_Day_Of_Month (Result, Date, Count);

            when 'D' =>
               --  D  1..3
               --
               --  Day of year.

               Parse_Field (3, Index, Count);
               Printer.Append_Day_Of_Year (Result, Date, Count);

            when 'F' =>
               --  F  1
               --
               --  Day of Week in Month.

               Printer.Append_Day_Of_Week_In_Month (Result, Date);

            when 'g' =>
               --  g  1..n
               --
               --  Modified Julian day. This is different from the conventional
               --  Julian day number in two regards. First, it demarcates days
               --  at local zone midnight, rather than noon GMT. Second, it is
               --  a local number; that is, it depends on the local time zone.
               --  It can be thought of as a single number that encompasses all
               --  the date-related fields.

               Parse_Field (Index, Count);
               Printer.Append_Julian_Day (Result, Date, Count);

            when 'E' =>
               --  E  1..3
               --  E  4
               --  E  5
               --
               --  Day of week - Use one through three letters for the short
               --  day, or four for the full name, or five for the narrow name.

               Parse_Field (5, Index, Count);

               case Count is
                  when 1 .. 3 =>
                     Printer.Append_Short_Day_Of_Week
                      (Result, Date, Count, False);

                  when 4 =>
                     Printer.Append_Full_Day_Of_Week (Result, Date, False);

                  when 5 =>
                     Printer.Append_Narrow_Day_Of_Week (Result, Date, False);

                  when others =>
                     --  Must never be happen.

                     raise Program_Error;
               end case;

            when 'e' =>
               --  e  1..2
               --  e  3
               --  e  4
               --  e  5
               --
               --  Local day of week. Same as E except adds a numeric value
               --  that will depend on the local starting day of the week,
               --  using one or two letters.

               Parse_Field (5, Index, Count);

               case Count is
                  when 1 .. 2 =>
                     Printer.Append_Numerical_Day_Of_Week
                      (Result, Date, Count, False);

                  when 3 =>
                     Printer.Append_Short_Day_Of_Week (Result, Date, 3, False);

                  when 4 =>
                     Printer.Append_Full_Day_Of_Week (Result, Date, False);

                  when 5 =>
                     Printer.Append_Narrow_Day_Of_Week (Result, Date, False);

                  when others =>
                     --  Must never be happen.

                     raise Program_Error;
               end case;

            when 'c' =>
               --  c  1
               --  c  3
               --  c  4
               --  c  5
               --
               --  Stand-Alone local day of week - Use one letter for the local
               --  numeric value (same as 'e'), three for the short day, or
               --  four for the full name, or five for the narrow name.

               Parse_Field (5, Index, Count);

               case Count is
                  when 1 =>
                     Printer.Append_Numerical_Day_Of_Week
                      (Result, Date, Count, True);

                  when 3 =>
                     Printer.Append_Short_Day_Of_Week (Result, Date, 3, True);

                  when 4 =>
                     Printer.Append_Full_Day_Of_Week (Result, Date, True);

                  when 5 =>
                     Printer.Append_Narrow_Day_Of_Week (Result, Date, True);

                  when others =>
                     --  Must never be happen.

                     raise Program_Error;
               end case;

            when 'a' =>
               --  a  1
               --
               --  AM or PM

               Time_Printer.Append_Period (Result, Time);

            when 'h' =>
               --  h  1..2
               --
               --  Hour [1-12].

               Parse_Field (2, Index, Count);
               Time_Printer.Append_Half_Day_Hour (Result, Time, Count, False);

            when 'H' =>
               --  H  1..2
               --
               --  Hour [0-23].

               Parse_Field (2, Index, Count);
               Time_Printer.Append_Full_Day_Hour (Result, Time, Count, True);

            when 'K' =>
               --  K  1..2
               --
               --  Hour [0-11].

               Parse_Field (2, Index, Count);
               Time_Printer.Append_Half_Day_Hour (Result, Time, Count, True);

            when 'k' =>
               --  k  1..2
               --
               --  Hour [1-24].

               Parse_Field (2, Index, Count);
               Time_Printer.Append_Full_Day_Hour (Result, Time, Count, False);

            when 'j' =>
               --  j  1..2
               --
               --  This is a special-purpose symbol. It must not occur in
               --  pattern or skeleton data. Instead, it is reserved for use in
               --  APIs doing flexible date pattern generation. In such a
               --  context, it requests the preferred format (12 versus 24
               --  hour) for the language in question, as determined by whether
               --  h, H, K, or k is used in the standard short time format for
               --  the locale, and should be replaced by h, H, K, or k before
               --  beginning a match against availableFormats data.

               Parse_Field (2, Index, Count);
               --  XXX Not supported.

            when 'm' =>
               --  m  1..2
               --
               --  Minute. Use one or two for zero padding.

               Parse_Field (2, Index, Count);
               Time_Printer.Append_Minute (Result, Time, Count);

            when 's' =>
               --  s  1..2
               --
               --  Second. Use one or two for zero padding.

               Parse_Field (2, Index, Count);
               Time_Printer.Append_Second (Result, Time, Leap, Count);

            when 'S' =>
               --  S  1..n
               --
               --  Fractional Second - truncates (like other time fields) to
               --  the count of letters.

               Parse_Field (2, Index, Count);
               Time_Printer.Append_Fractional_Second
                (Result, Time, Leap, Count);

            when 'A' =>
               --  A  1..n
               --
               --  Milliseconds in day. This field behaves exactly like a
               --  composite of all time-related fields, not including the zone
               --  fields. As such, it also reflects discontinuities of those
               --  fields on DST transition days. On a day of DST onset, it
               --  will jump forward. On a day of DST cessation, it will jump
               --  backward. This reflects the fact that is must be combined
               --  with the offset field to obtain a unique local time value.

               Parse_Field (Index, Count);
               Time_Printer.Append_Milliseconds_In_Day
                (Result, Time, Leap, Count);

            when 'z' =>
               null;

            when 'Z' =>
               null;

            when 'v' =>
               null;

            when 'V' =>
               null;

            when ''' =>
               null;

            when others =>
               Result.Append (Pattern.Element (Index));
         end case;

         Index := Index + 1;
      end loop;

      return Result;
   end Image;

end Matreshka.Internals.Calendars.Formatting;
