------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;

with League.Calendars.ISO_8601;
with Matreshka.Internals.SQL_Drivers.MySQL.Databases;
with Matreshka.Internals.SQL_Parameter_Rewriters.MySQL;

package body Matreshka.Internals.SQL_Drivers.MySQL.Queries is

   use type Interfaces.C.int;
   use type League.Calendars.ISO_8601.Nanosecond_100_Number;

   procedure Set_MySQL_Stmt_Error (Self : not null access MySQL_Query'Class);
   --  Sets error message to reported by database.

   function To_Address is
     new Ada.Unchecked_Conversion
          (Interfaces.C.Strings.chars_ptr, System.Address);
   function To_chars_ptr is
     new Ada.Unchecked_Conversion
          (System.Address, Interfaces.C.Strings.chars_ptr);

   procedure Free is
     new Ada.Unchecked_Deallocation
          (MYSQL_BIND_Array, MYSQL_BIND_Array_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation (Value_Array, Value_Array_Access);

   Rewriter : SQL_Parameter_Rewriters.MySQL.MySQL_Parameter_Rewriter;
   --  SQL statement parameter rewriter.

   ----------------
   -- Bind_Value --
   ----------------

   overriding procedure Bind_Value
    (Self      : not null access MySQL_Query;
     Name      : League.Strings.Universal_String;
     Value     : League.Holders.Holder;
     Direction : SQL.Parameter_Directions)
   is
      pragma Unreferenced (Direction);
      --  Only 'in' parameters are supported now.

   begin
      Self.Parameters.Set_Value (Name, Value);
   end Bind_Value;

   -----------------
   -- Bound_Value --
   -----------------

   overriding function Bound_Value
    (Self : not null access MySQL_Query;
     Name : League.Strings.Universal_String)
       return League.Holders.Holder is
   begin
      raise Program_Error;
      return League.Holders.Empty_Holder;
   end Bound_Value;

   -------------------
   -- Error_Message --
   -------------------

   overriding function Error_Message
    (Self : not null access MySQL_Query)
       return League.Strings.Universal_String is
   begin
      return Self.Error;
   end Error_Message;

   -------------
   -- Execute --
   -------------

   overriding function Execute
    (Self : not null access MySQL_Query) return Boolean
   is
      Value  : League.Holders.Holder;
      Binds  : MYSQL_BIND_Array (1 .. Self.Parameters.Number_Of_Positional);
      Values : Value_Array (1 .. Self.Parameters.Number_Of_Positional);
      Aux    : Interfaces.C.Strings.chars_ptr;
      Result : Interfaces.C.int;

   begin
      --  Prepare data for parameters when necessary.

      for J in Binds'Range loop
         Value := Self.Parameters.Value (J);

         if League.Holders.Is_Empty (Value) then
            Binds (J).buffer_type := MYSQL_TYPE_NULL;

         elsif League.Holders.Is_Universal_String (Value) then
            Aux :=
              Interfaces.C.Strings.New_String
               (League.Holders.Element (Value).To_UTF_8_String);
            Values (J).Length_Value :=
              Interfaces.C.unsigned_long
               (Interfaces.C.Strings.Strlen (Aux));
            Binds (J).buffer_type := MYSQL_TYPE_STRING;
            Binds (J).buffer := To_Address (Aux);
            Binds (J).length := Values (J).Length_Value'Unchecked_Access;

         elsif League.Holders.Is_Abstract_Integer (Value) then
            Values (J).Long_Long_Value :=
              Interfaces.C.long
               (League.Holders.Universal_Integer'
                 (League.Holders.Element (Value)));
            Binds (J).buffer_type := MYSQL_TYPE_LONGLONG;
            Binds (J).is_unsigned := 0;
            Binds (J).buffer := Values (J).Long_Long_Value'Address;

         elsif League.Holders.Is_Abstract_Float (Value) then
            Values (J).Double_Value :=
              Interfaces.C.double
               (League.Holders.Universal_Float'
                 (League.Holders.Element (Value)));
            Binds (J).buffer_type := MYSQL_TYPE_DOUBLE;
            Binds (J).buffer := Values (J).Double_Value'Address;

         elsif League.Holders.Is_Date (Value) then
            declare
               Aux   : constant League.Calendars.Date
                 := League.Holders.Element (Value);
               Year  : League.Calendars.ISO_8601.Year_Number;
               Month : League.Calendars.ISO_8601.Month_Number;
               Day   : League.Calendars.ISO_8601.Day_Number;

            begin
               League.Calendars.ISO_8601.Split (Aux, Year, Month, Day);
               Values (J).Time_Value :=
                (year        => Interfaces.C.unsigned (Year),
                 month       => Interfaces.C.unsigned (Month),
                 day         => Interfaces.C.unsigned (Day),
                 hour        => 0,
                 minute      => 0,
                 second      => 0,
                 second_part => 0,
                 neg         => 0,
                 time_type   => MYSQL_TIMESTAMP_DATE);
               Binds (J).buffer_type := MYSQL_TYPE_DATE;
               Binds (J).buffer := Values (J).Time_Value'Address;
            end;

         elsif League.Holders.Is_Date_Time (Value) then
            declare
               Aux      : constant League.Calendars.Date_Time
                 := League.Holders.Element (Value);
               Year     : League.Calendars.ISO_8601.Year_Number;
               Month    : League.Calendars.ISO_8601.Month_Number;
               Day      : League.Calendars.ISO_8601.Day_Number;
               Hour     : League.Calendars.ISO_8601.Hour_Number;
               Minute   : League.Calendars.ISO_8601.Minute_Number;
               Second   : League.Calendars.ISO_8601.Second_Number;
               Fraction : League.Calendars.ISO_8601.Nanosecond_100_Number;

            begin
               --  XXX UTC time zone must be specified here.

               League.Calendars.ISO_8601.Split
                (Aux, Year, Month, Day, Hour, Minute, Second, Fraction);
               Values (J).Time_Value :=
                (year        => Interfaces.C.unsigned (Year),
                 month       => Interfaces.C.unsigned (Month),
                 day         => Interfaces.C.unsigned (Day),
                 hour        => Interfaces.C.unsigned (Hour),
                 minute      => Interfaces.C.unsigned (Minute),
                 second      => Interfaces.C.unsigned (Second),
                 second_part => Interfaces.C.unsigned_long (Fraction / 10),
                 neg         => 0,
                 time_type   => MYSQL_TIMESTAMP_DATETIME);
               Binds (J).buffer_type := MYSQL_TYPE_DATETIME;
               Binds (J).buffer := Values (J).Time_Value'Address;
            end;

         elsif League.Holders.Is_Time (Value) then
            declare
               Aux : constant League.Calendars.Time
                 := League.Holders.Element (Value);

            begin
               Values (J).Time_Value :=
                (year        => 0,
                 month       => 0,
                 day         => 0,
                 hour        =>
                   Interfaces.C.unsigned
                    (League.Calendars.ISO_8601.Hour (Aux)),
                 minute      =>
                   Interfaces.C.unsigned
                    (League.Calendars.ISO_8601.Minute (Aux)),
                 second      =>
                   Interfaces.C.unsigned
                    (League.Calendars.ISO_8601.Second (Aux)),
                 second_part =>
                   Interfaces.C.unsigned_long
                    (League.Calendars.ISO_8601.Nanosecond_100 (Aux) / 10),
                 neg         => 0,
                 time_type   => MYSQL_TIMESTAMP_TIME);
               Binds (J).buffer_type := MYSQL_TYPE_TIME;
               Binds (J).buffer := Values (J).Time_Value'Address;
            end;
         end if;
      end loop;

      --  Bind data for parameters when necessary

      if Binds'Length /= 0 then
         if mysql_stmt_bind_param (Self.Handle, Binds (1)'Access) /= 0 then
            Self.Set_MySQL_Stmt_Error;

            return False;
         end if;
      end if;

      Result := mysql_stmt_execute (Self.Handle);

      --  Cleanup data for parameters.

      for J in Binds'Range loop
         --  Actual data is allocated dynamically for string only, release all
         --  used memory.

         if Binds (J).buffer_type = MYSQL_TYPE_STRING then
            Aux := To_chars_ptr (Binds (J).buffer);
            Interfaces.C.Strings.Free (Aux);
         end if;
      end loop;

      if Result /= 0 then
         Self.Set_MySQL_Stmt_Error;

         return False;
      end if;

      Self.Is_Active := True;
      Self.Is_Valid := False;

      return True;
   end Execute;

   ------------
   -- Finish --
   ------------

   overriding procedure Finish (Self : not null access MySQL_Query) is
   begin
      raise Program_Error;
   end Finish;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Self     : not null access MySQL_Query'Class;
     Database : not null access Databases.MySQL_Database'Class) is
   begin
      SQL_Drivers.Initialize (Self, Database_Access (Database));

      Self.Is_Active := False;
      Self.Is_Valid  := False;
   end Initialize;

   ----------------
   -- Invalidate --
   ----------------

   overriding procedure Invalidate (Self : not null access MySQL_Query) is
      Aux : Interfaces.C.Strings.chars_ptr;

   begin
      if Self.Database /= null and Self.Handle /= null then
         if mysql_stmt_close (Self.Handle) /= 0 then
            Self.Set_MySQL_Stmt_Error;
            Self.Handle := null;
         end if;

         Self.Parameters.Clear;

         if Self.Result /= null then
            for J in Self.Result'Range loop
               if Self.Result (J).buffer_type = MYSQL_TYPE_VAR_STRING then
                  Aux := To_chars_ptr (Self.Result (J).buffer);
                  Interfaces.C.Strings.Free (Aux);
               end if;
            end loop;

            Free (Self.Result);
         end if;

         Free (Self.Buffer);
      end if;

      --  Call Invalidate of parent tagged type.

      Abstract_Query (Self.all).Invalidate;
   end Invalidate;

   ---------------
   -- Is_Active --
   ---------------

   overriding function Is_Active
    (Self : not null access MySQL_Query) return Boolean is
   begin
      return Self.Is_Active;
   end Is_Active;

   --------------
   -- Is_Valid --
   --------------

   overriding function Is_Valid
    (Self : not null access MySQL_Query) return Boolean is
   begin
      return Self.Is_Valid;
   end Is_Valid;

   ----------
   -- Next --
   ----------

   overriding function Next
    (Self : not null access MySQL_Query) return Boolean
   is
      Result : Interfaces.C.int;

   begin
      if Self.Result = null then
         return False;
      end if;

      Result := mysql_stmt_fetch (Self.Handle);

      if Result = 0 then
         Self.Is_Valid := True;
         return True;

      elsif Result = MYSQL_NO_Data then
         Self.Is_Valid := False;
         return False;

      else
         Self.Is_Valid := False;
         Self.Set_MySQL_Stmt_Error;

         return False;
      end if;
   end Next;

   -------------
   -- Prepare --
   -------------

   overriding function Prepare
    (Self  : not null access MySQL_Query;
     Query : League.Strings.Universal_String) return Boolean
   is
      Rewritten : League.Strings.Universal_String;
      C_Query   : Interfaces.C.Strings.chars_ptr;
      Count     : Natural;
      Result    : MYSQL_RES_Access;
      Field     : MYSQL_FIELD_Access;

   begin
      --  Rewrite statement and prepare set of parameters.

      Rewriter.Rewrite (Query, Rewritten, Self.Parameters);

      --  Convert rewritten statement into string in client library format.

      C_Query := Interfaces.C.Strings.New_String (Rewritten.To_UTF_8_String);

      --  Allocate statement.

      Self.Handle :=
        mysql_stmt_init
         (Databases.MySQL_Database'Class (Self.Database.all).Database_Handle);

      if Self.Handle = null then
         Self.Error := League.Strings.To_Universal_String ("out of memory");

         return False;
      end if;

      --  Prepare statement.

      if mysql_stmt_prepare
          (Self.Handle,
           C_Query,
           Interfaces.C.unsigned_long
            (Interfaces.C.Strings.Strlen (C_Query))) /= 0
      then
         Interfaces.C.Strings.Free (C_Query);
         Self.Set_MySQL_Stmt_Error;

         return False;
      end if;

      Interfaces.C.Strings.Free (C_Query);

      --  Check number of parameters.

      Count := Natural (mysql_stmt_param_count (Self.Handle));

      if Count /= Self.Parameters.Number_Of_Positional then
         Self.Error :=
           League.Strings.To_Universal_String
            ("invalid use of parameter placeholder");

         return False;
      end if;

      --  Prepare storage for result.

      Result := mysql_stmt_result_metadata (Self.Handle);

      if Result /= null then
         Count := Natural (mysql_num_fields (Result));

         Self.Result := new MYSQL_BIND_Array (1 .. Count);
         Initialize (Self.Result.all);
         Self.Buffer := new Value_Array (1 .. Count);

         for J in Self.Result'Range loop
            Field := mysql_fetch_field (Result);

            case Field.field_type is
               when MYSQL_TYPE_DECIMAL =>
                  raise Program_Error;

               when MYSQL_TYPE_TINY =>
                  Self.Result (J).is_null :=
                    Self.Buffer (J).Null_Value'Access;
                  Self.Result (J).buffer_type := MYSQL_TYPE_TINY;
                  Self.Result (J).is_unsigned := 0;
                  Self.Result (J).buffer :=
                    Self.Buffer (J).Tiny_Value'Address;
                  Self.Result (J).buffer_length := 0;

               when MYSQL_TYPE_SHORT =>
                  Self.Result (J).is_null :=
                    Self.Buffer (J).Null_Value'Access;
                  Self.Result (J).buffer_type := MYSQL_TYPE_SHORT;
                  Self.Result (J).is_unsigned := 0;
                  Self.Result (J).buffer :=
                    Self.Buffer (J).Short_Value'Address;
                  Self.Result (J).buffer_length := 0;

               when MYSQL_TYPE_LONG =>
                  Self.Result (J).is_null :=
                    Self.Buffer (J).Null_Value'Access;
                  Self.Result (J).buffer_type := MYSQL_TYPE_LONG;
                  Self.Result (J).is_unsigned := 0;
                  Self.Result (J).buffer :=
                    Self.Buffer (J).Long_Value'Address;
                  Self.Result (J).buffer_length := 0;

               when MYSQL_TYPE_FLOAT =>
                  Self.Result (J).is_null :=
                    Self.Buffer (J).Null_Value'Access;
                  Self.Result (J).buffer_type := MYSQL_TYPE_FLOAT;
                  Self.Result (J).buffer :=
                    Self.Buffer (J).Float_Value'Address;
                  Self.Result (J).buffer_length := 0;

               when MYSQL_TYPE_DOUBLE =>
                  Self.Result (J).is_null :=
                    Self.Buffer (J).Null_Value'Access;
                  Self.Result (J).buffer_type := MYSQL_TYPE_DOUBLE;
                  Self.Result (J).buffer :=
                    Self.Buffer (J).Double_Value'Address;
                  Self.Result (J).buffer_length := 0;

               when MYSQL_TYPE_NULL =>
                  raise Program_Error;

               when MYSQL_TYPE_TIMESTAMP =>
                  Self.Result (J).is_null :=
                    Self.Buffer (J).Null_Value'Access;
                  Self.Result (J).buffer_type := MYSQL_TYPE_TIMESTAMP;
                  Self.Result (J).buffer :=
                    Self.Buffer (J).Time_Value'Address;
                  Self.Result (J).buffer_length := 0;

               when MYSQL_TYPE_LONGLONG =>
                  Self.Result (J).is_null :=
                    Self.Buffer (J).Null_Value'Access;
                  Self.Result (J).buffer_type := MYSQL_TYPE_LONGLONG;
                  Self.Result (J).is_unsigned := 0;
                  Self.Result (J).buffer :=
                    Self.Buffer (J).Long_Long_Value'Address;
                  Self.Result (J).buffer_length := 0;

               when MYSQL_TYPE_INT24 =>
                  Self.Result (J).is_null :=
                    Self.Buffer (J).Null_Value'Access;
                  Self.Result (J).buffer_type := MYSQL_TYPE_INT24;
                  Self.Result (J).is_unsigned := 0;
                  Self.Result (J).buffer :=
                    Self.Buffer (J).Int_24_Value'Address;
                  Self.Result (J).buffer_length := 0;

               when MYSQL_TYPE_DATE =>
                  Self.Result (J).is_null :=
                    Self.Buffer (J).Null_Value'Access;
                  Self.Result (J).buffer_type := MYSQL_TYPE_DATE;
                  Self.Result (J).buffer :=
                    Self.Buffer (J).Time_Value'Address;
                  Self.Result (J).buffer_length := 0;

               when MYSQL_TYPE_TIME =>
                  Self.Result (J).is_null :=
                    Self.Buffer (J).Null_Value'Access;
                  Self.Result (J).buffer_type := MYSQL_TYPE_TIME;
                  Self.Result (J).buffer :=
                    Self.Buffer (J).Time_Value'Address;
                  Self.Result (J).buffer_length := 0;

               when MYSQL_TYPE_DATETIME =>
                  Self.Result (J).is_null :=
                    Self.Buffer (J).Null_Value'Access;
                  Self.Result (J).buffer_type := MYSQL_TYPE_DATETIME;
                  Self.Result (J).buffer :=
                    Self.Buffer (J).Time_Value'Address;
                  Self.Result (J).buffer_length := 0;

               when MYSQL_TYPE_YEAR =>
                  raise Program_Error;

               when MYSQL_TYPE_NEWDATE =>
                  raise Program_Error;

               when MYSQL_TYPE_VARCHAR =>
                  raise Program_Error;

               when MYSQL_TYPE_BIT =>
                  raise Program_Error;

               when MYSQL_TYPE_NEWDECIMAL =>
                  raise Program_Error;

               when MYSQL_TYPE_ENUM =>
                  raise Program_Error;

               when MYSQL_TYPE_SET =>
                  raise Program_Error;

               when MYSQL_TYPE_TINY_BLOB =>
                  raise Program_Error;

               when MYSQL_TYPE_MEDIUM_BLOB =>
                  raise Program_Error;

               when MYSQL_TYPE_LONG_BLOB =>
                  raise Program_Error;

               when MYSQL_TYPE_BLOB =>
                  raise Program_Error;

               when MYSQL_TYPE_VAR_STRING =>
                  Self.Result (J).is_null :=
                    Self.Buffer (J).Null_Value'Access;
                  Self.Result (J).buffer_type := MYSQL_TYPE_VAR_STRING;
                  Self.Result (J).buffer :=
                    To_Address
                     (Interfaces.C.Strings.New_String
                       ((1 .. Natural (Field.length) => ' ')));
                  Self.Result (J).buffer_length := Field.length;
                  Self.Result (J).length :=
                    Self.Buffer (J).Length_Value'Unchecked_Access;

               when MYSQL_TYPE_STRING =>
                  Self.Result (J).is_null :=
                    Self.Buffer (J).Null_Value'Access;
                  Self.Result (J).buffer_type := MYSQL_TYPE_STRING;
                  Self.Result (J).buffer :=
                    To_Address
                     (Interfaces.C.Strings.New_String
                       ((1 .. Natural (Field.length) => ' ')));
                  Self.Result (J).buffer_length := Field.length;
                  Self.Result (J).length :=
                    Self.Buffer (J).Length_Value'Unchecked_Access;

               when MYSQL_TYPE_GEOMETRY =>
                  raise Program_Error;
            end case;
         end loop;

         mysql_free_result (Result);

         --  Bind buffers.

         if mysql_stmt_bind_result
             (Self.Handle, Self.Result (1)'Access) /= 0
         then
            Self.Set_MySQL_Stmt_Error;

            return False;
         end if;
      end if;

      return True;
   end Prepare;

   --------------------------
   -- Set_MySQL_Stmt_Error --
   --------------------------

   procedure Set_MySQL_Stmt_Error (Self : not null access MySQL_Query'Class) is
      Error : constant String
        := Interfaces.C.Strings.Value (mysql_stmt_error (Self.Handle));

   begin
      Self.Error := League.Strings.From_UTF_8_String (Error);
   end Set_MySQL_Stmt_Error;

   -----------
   -- Value --
   -----------

   overriding function Value
    (Self  : not null access MySQL_Query;
     Index : Positive) return League.Holders.Holder
   is
      Value : League.Holders.Holder;

   begin
      --  Return empty holder when there is not data or index is out of range.

      if Self.Result = null
        or Index > Self.Result'Last
      then
         return League.Holders.Empty_Holder;
      end if;

      --  Extract requested value.

      case Self.Result (Index).buffer_type is
         when MYSQL_TYPE_DECIMAL =>
            raise Program_Error;

         when MYSQL_TYPE_TINY =>
            --  Process integer (TINY) data.

            League.Holders.Set_Tag
             (Value, League.Holders.Universal_Integer_Tag);

            if Self.Buffer (Index).Null_Value = 0 then
               League.Holders.Replace_Element
                (Value,
                 League.Holders.Universal_Integer
                  (Self.Buffer (Index).Tiny_Value));
            end if;

         when MYSQL_TYPE_SHORT =>
            --  Process integer (SHORT) data.

            League.Holders.Set_Tag
             (Value, League.Holders.Universal_Integer_Tag);

            if Self.Buffer (Index).Null_Value = 0 then
               League.Holders.Replace_Element
                (Value,
                 League.Holders.Universal_Integer
                  (Self.Buffer (Index).Short_Value));
            end if;

         when MYSQL_TYPE_LONG =>
            --  Process integer (LONG) data.

            League.Holders.Set_Tag
             (Value, League.Holders.Universal_Integer_Tag);

            if Self.Buffer (Index).Null_Value = 0 then
               League.Holders.Replace_Element
                (Value,
                 League.Holders.Universal_Integer
                  (Self.Buffer (Index).Long_Value));
            end if;

         when MYSQL_TYPE_FLOAT =>
            --  Process float (FLOAT) data.

            League.Holders.Set_Tag
             (Value, League.Holders.Universal_Float_Tag);

            if Self.Buffer (Index).Null_Value = 0 then
               League.Holders.Replace_Element
                (Value,
                 League.Holders.Universal_Float
                  (Self.Buffer (Index).Float_Value));
            end if;

         when MYSQL_TYPE_DOUBLE =>
            --  Process float (DOUBLE) data.

            League.Holders.Set_Tag
             (Value, League.Holders.Universal_Float_Tag);

            if Self.Buffer (Index).Null_Value = 0 then
               League.Holders.Replace_Element
                (Value,
                 League.Holders.Universal_Float
                  (Self.Buffer (Index).Double_Value));
            end if;

         when MYSQL_TYPE_NULL =>
            raise Program_Error;

         when MYSQL_TYPE_TIMESTAMP =>
            --  Process TIMESTAMP.

            League.Holders.Set_Tag (Value, League.Holders.Date_Time_Tag);

            if Self.Buffer (Index).Null_Value = 0 then
               --  XXX UTC time zone must be specified here.

               League.Holders.Replace_Element
                (Value,
                 League.Calendars.ISO_8601.Create
                  (League.Calendars.ISO_8601.Year_Number
                    (Self.Buffer (Index).Time_Value.year),
                   League.Calendars.ISO_8601.Month_Number
                    (Self.Buffer (Index).Time_Value.month),
                   League.Calendars.ISO_8601.Day_Number
                    (Self.Buffer (Index).Time_Value.day),
                   League.Calendars.ISO_8601.Hour_Number
                    (Self.Buffer (Index).Time_Value.hour),
                   League.Calendars.ISO_8601.Minute_Number
                    (Self.Buffer (Index).Time_Value.minute),
                   League.Calendars.ISO_8601.Second_Number
                    (Self.Buffer (Index).Time_Value.second),
                   League.Calendars.ISO_8601.Nanosecond_100_Number
                    (Self.Buffer (Index).Time_Value.second_part) * 10));
            end if;

         when MYSQL_TYPE_LONGLONG =>
            --  Process integer (LONGLONG) data.

            League.Holders.Set_Tag
             (Value, League.Holders.Universal_Integer_Tag);

            if Self.Buffer (Index).Null_Value = 0 then
               League.Holders.Replace_Element
                (Value,
                 League.Holders.Universal_Integer
                  (Self.Buffer (Index).Long_Long_Value));
            end if;

         when MYSQL_TYPE_INT24 =>
            --  Process integer (INT24) data.

            League.Holders.Set_Tag
             (Value, League.Holders.Universal_Integer_Tag);

            if Self.Buffer (Index).Null_Value = 0 then
               League.Holders.Replace_Element
                (Value,
                 League.Holders.Universal_Integer
                  (Self.Buffer (Index).Int_24_Value));
            end if;

         when MYSQL_TYPE_DATE =>
            --  Process DATE.

            League.Holders.Set_Tag (Value, League.Holders.Date_Tag);

            if Self.Buffer (Index).Null_Value = 0 then
               League.Holders.Replace_Element
                (Value,
                 League.Calendars.ISO_8601.Create
                  (League.Calendars.ISO_8601.Year_Number
                    (Self.Buffer (Index).Time_Value.year),
                   League.Calendars.ISO_8601.Month_Number
                    (Self.Buffer (Index).Time_Value.month),
                   League.Calendars.ISO_8601.Day_Number
                    (Self.Buffer (Index).Time_Value.day)));
            end if;

         when MYSQL_TYPE_TIME =>
            --  Process TIME.

            League.Holders.Set_Tag (Value, League.Holders.Time_Tag);

            --  XXX TIME is not supported.

         when MYSQL_TYPE_DATETIME =>
            --  Process DATETIME.

            League.Holders.Set_Tag (Value, League.Holders.Date_Time_Tag);

            if Self.Buffer (Index).Null_Value = 0 then
               League.Holders.Replace_Element
                (Value,
                 League.Calendars.ISO_8601.Create
                  (League.Calendars.ISO_8601.Year_Number
                    (Self.Buffer (Index).Time_Value.year),
                   League.Calendars.ISO_8601.Month_Number
                    (Self.Buffer (Index).Time_Value.month),
                   League.Calendars.ISO_8601.Day_Number
                    (Self.Buffer (Index).Time_Value.day),
                   League.Calendars.ISO_8601.Hour_Number
                    (Self.Buffer (Index).Time_Value.hour),
                   League.Calendars.ISO_8601.Minute_Number
                    (Self.Buffer (Index).Time_Value.minute),
                   League.Calendars.ISO_8601.Second_Number
                    (Self.Buffer (Index).Time_Value.second),
                   League.Calendars.ISO_8601.Nanosecond_100_Number
                    (Self.Buffer (Index).Time_Value.second_part) * 10));
            end if;

         when MYSQL_TYPE_YEAR =>
            raise Program_Error;

         when MYSQL_TYPE_NEWDATE =>
            raise Program_Error;

         when MYSQL_TYPE_VARCHAR =>
            raise Program_Error;

         when MYSQL_TYPE_BIT =>
            raise Program_Error;

         when MYSQL_TYPE_NEWDECIMAL =>
            raise Program_Error;

         when MYSQL_TYPE_ENUM =>
            raise Program_Error;

         when MYSQL_TYPE_SET =>
            raise Program_Error;

         when MYSQL_TYPE_TINY_BLOB =>
            raise Program_Error;

         when MYSQL_TYPE_MEDIUM_BLOB =>
            raise Program_Error;

         when MYSQL_TYPE_LONG_BLOB =>
            raise Program_Error;

         when MYSQL_TYPE_BLOB =>
            raise Program_Error;

         when MYSQL_TYPE_VAR_STRING =>
            --  Process text data.

            League.Holders.Set_Tag
             (Value, League.Holders.Universal_String_Tag);

            if Self.Buffer (Index).Null_Value = 0 then
               League.Holders.Replace_Element
                (Value,
                 League.Strings.From_UTF_8_String
                  (Interfaces.C.Strings.Value
                    (To_chars_ptr (Self.Result (Index).buffer),
                     Interfaces.C.size_t (Self.Buffer (Index).Length_Value))));
            end if;

         when MYSQL_TYPE_STRING =>
            --  Process text data.

            League.Holders.Set_Tag
             (Value, League.Holders.Universal_String_Tag);

            if Self.Buffer (Index).Null_Value = 0 then
               League.Holders.Replace_Element
                (Value,
                 League.Strings.From_UTF_8_String
                  (Interfaces.C.Strings.Value
                    (To_chars_ptr (Self.Result (Index).buffer),
                     Interfaces.C.size_t (Self.Buffer (Index).Length_Value))));
            end if;

         when MYSQL_TYPE_GEOMETRY =>
            raise Program_Error;
      end case;

      return Value;
   end Value;

end Matreshka.Internals.SQL_Drivers.MySQL.Queries;
