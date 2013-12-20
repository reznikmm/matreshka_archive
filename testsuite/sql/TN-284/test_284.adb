------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
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
--  This test checks support of integer, floating point, date/time and
--  character data types in MySQL driver.
------------------------------------------------------------------------------
with League.Calendars.ISO_8601;
with League.Holders.Integers;
with League.Holders.Long_Long_Integers;
with League.Holders.Floats;
with League.Holders.Long_Floats;
with League.Strings;
with SQL.Databases;
with SQL.Options;
with SQL.Queries;

with Matreshka.Internals.SQL_Drivers.MySQL.Factory;
pragma Unreferenced (Matreshka.Internals.SQL_Drivers.MySQL.Factory);

procedure Test_284 is
   use type League.Strings.Universal_String;

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   DB_Driver  : constant League.Strings.Universal_String := +"MYSQL";
   DB_Options : SQL.Options.SQL_Options;

   Timestamp_Value : League.Calendars.Date_Time
     := League.Calendars.Clock;
   Datetime_Value  : League.Calendars.Date_Time
     := League.Calendars.Clock;

begin
   --  Remove fractional part of Date_Time, it is not supported by MySQL
   --  server.

   declare
      Year     : League.Calendars.ISO_8601.Year_Number;
      Month    : League.Calendars.ISO_8601.Month_Number;
      Day      : League.Calendars.ISO_8601.Day_Number;
      Hour     : League.Calendars.ISO_8601.Hour_Number;
      Minute   : League.Calendars.ISO_8601.Minute_Number;
      Second   : League.Calendars.ISO_8601.Second_Number;
      Fraction : League.Calendars.ISO_8601.Nanosecond_100_Number;

   begin
      League.Calendars.ISO_8601.Split
       (Timestamp_Value, Year, Month, Day, Hour, Minute, Second, Fraction);
      Timestamp_Value :=
        League.Calendars.ISO_8601.Create
         (Year, Month, Day, Hour, Minute, Second, 0);
      League.Calendars.ISO_8601.Split
       (Datetime_Value, Year, Month, Day, Hour, Minute, Second, Fraction);
      Datetime_Value :=
        League.Calendars.ISO_8601.Create
         (Year, Month, Day, Hour, Minute, Second, 0);
   end;

   DB_Options.Set (+"database", +"test");

   declare
      Database : aliased SQL.Databases.SQL_Database
        := SQL.Databases.Create (DB_Driver, DB_Options);

   begin
      Database.Open;

      declare
         Query : SQL.Queries.SQL_Query := Database.Query;

      begin
         --  Create table for test data.

         Query.Prepare
          (+"CREATE TABLE test_284"
              & " (timestamp TIMESTAMP NOT NULL,"
              & "  datetime  DATETIME NOT NULL,"
              & "  tiny      TINYINT NOT NULL,"
              & "  small     SMALLINT NOT NULL,"
              & "  medium    MEDIUMINT NOT NULL,"
              & "  intv      INTEGER NOT NULL,"
              & "  big       BIGINT NOT NULL,"
              & "  ubig      BIGINT UNSIGNED NOT NULL,"
              & "  floatv    FLOAT NOT NULL,"
              & "  doublev   DOUBLE NOT NULL,"
              & "  c10       CHAR(10) NOT NULL,"
              & "  vchar     VARCHAR (20) NOT NULL)"
              & " CHARACTER SET utf8");
         Query.Execute;

         --  Insert data.

         Query.Prepare
          (+"INSERT INTO test_284"
              & " (timestamp, datetime, tiny, small, medium, intv, big,"
              & "  ubig, floatv, doublev, c10, vchar)"
              & " VALUES"
              & " (:timestamp, :datetime, :tiny, :small, :medium, :int,"
              & " :big, :ubig, :floatv, :doublev, :c10, :vchar)");
         Query.Bind_Value
          (+":datetime", League.Holders.To_Holder (Datetime_Value));
         Query.Bind_Value
          (+":timestamp", League.Holders.To_Holder (Timestamp_Value));
         Query.Bind_Value (+":tiny", League.Holders.Integers.To_Holder (1));
         Query.Bind_Value (+":small", League.Holders.Integers.To_Holder (-2));
         Query.Bind_Value (+":medium", League.Holders.Integers.To_Holder (3));
         Query.Bind_Value (+":int", League.Holders.Integers.To_Holder (-4));
         Query.Bind_Value
          (+":big",
           League.Holders.Long_Long_Integers.To_Holder (-9223372036854775807));
         Query.Bind_Value
          (+":ubig",
           League.Holders.Long_Long_Integers.To_Holder (9223372036854775807));
         Query.Bind_Value (+":floatv", League.Holders.Floats.To_Holder (2.6));
         Query.Bind_Value
          (+":doublev", League.Holders.Long_Floats.To_Holder (-4.3));
         Query.Bind_Value (+":c10", League.Holders.To_Holder (+"abcdefghij"));
         Query.Bind_Value (+":vchar", League.Holders.To_Holder (+"АБВГД"));
         Query.Execute;
      end;

      declare
         use type League.Calendars.Date_Time;

         Query : SQL.Queries.SQL_Query := Database.Query;

      begin
         --  Obtain data and check expected value.

         Query.Prepare
          (+"SELECT timestamp, datetime, tiny, small, medium, intv, big,"
              & " ubig, floatv, doublev, c10, vchar"
              & " FROM test_284");
         Query.Execute;

         if not Query.Next then
            raise Program_Error;
         end if;

         if League.Holders.Element (Query.Value (1)) /= Timestamp_Value then
            raise Program_Error;
         end if;

         if League.Holders.Element (Query.Value (2)) /= Datetime_Value then
            raise Program_Error;
         end if;

         if League.Holders.Integers.Element (Query.Value (3)) /= 1 then
            raise Program_Error;
         end if;

         if League.Holders.Integers.Element (Query.Value (4)) /= -2 then
            raise Program_Error;
         end if;

         if League.Holders.Integers.Element (Query.Value (5)) /= 3 then
            raise Program_Error;
         end if;

         if League.Holders.Integers.Element (Query.Value (6)) /= -4 then
            raise Program_Error;
         end if;

         if League.Holders.Long_Long_Integers.Element (Query.Value (7))
              /= -9223372036854775807
         then
            raise Program_Error;
         end if;

         if League.Holders.Long_Long_Integers.Element (Query.Value (8))
              /= 9223372036854775807
         then
            raise Program_Error;
         end if;

         if League.Holders.Floats.Element (Query.Value (9)) /= 2.6 then
            raise Program_Error;
         end if;

         if League.Holders.Long_Floats.Element (Query.Value (10)) /= -4.3 then
            raise Program_Error;
         end if;

         if League.Holders.Element (Query.Value (11)) /= +"abcdefghij" then
            raise Program_Error;
         end if;

         if League.Holders.Element (Query.Value (12)) /= +"АБВГД" then
            raise Program_Error;
         end if;
      end;

      Database.Close;
   end;
end Test_284;
