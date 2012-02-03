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
--  $Revision: 1793 $ $Date: 2011-06-11 10:40:44 +0300 (Сб, 11 июн 2011) $
------------------------------------------------------------------------------
--  This package provides implementation of Query abstraction for PostgreSQL.
------------------------------------------------------------------------------

with Ada.Unchecked_Deallocation;
with Ada.Streams;
with System.Address_To_Access_Conversions;
with League.Calendars.ISO_8601;

package body Matreshka.Internals.SQL_Drivers.Firebird.Fields is

   procedure Free is new Ada.Unchecked_Deallocation
     (Isc_Short, Isc_Short_Access);

   procedure Free is new Ada.Unchecked_Deallocation
     (Sql_Data_Array, Sql_Data_Array_Access);

   package To_Isc_Date is
     new System.Address_To_Access_Conversions (Isc_Date);

   package To_Isc_Timestamp is
     new System.Address_To_Access_Conversions (Isc_Timestamp);

   package To_Isc_Time is
     new System.Address_To_Access_Conversions (Isc_Time);

   package To_Long_Long_Integer is
     new System.Address_To_Access_Conversions (Long_Long_Integer);

   package To_Short_Float is
     new System.Address_To_Access_Conversions (Short_Float);

   package To_Short_Integer is
     new System.Address_To_Access_Conversions (Short_Integer);

   package To_Long_Integer is
     new System.Address_To_Access_Conversions (Long_Integer);

   package To_Long_Float is
     new System.Address_To_Access_Conversions (Long_Float);

   Calendar : League.Calendars.ISO_8601.ISO_8601_Calendar;

   --------------------
   -- Adjust_Sqldata --
   --------------------

   procedure Adjust_Sqldata (Self : not null access Field) is
      use type Isc_Short;
   begin
      if Self.Sql_Dada_Space /= null
        and then Self.Sql_Dada_Space'Length = Self.Sqlvar.Sqllen
      then
         return;
      end if;

      Self.Free_Sqldata;
      Self.Alloc_Sqldata (Self.Sqlvar.Sqllen);
   end Adjust_Sqldata;

   -------------------
   -- Alloc_Sqldata --
   -------------------

   procedure Alloc_Sqldata
     (Self : not null access Field;
      Size : Isc_Short)
   is
      use type Isc_Short;
   begin
      if Size > 0 then
         Self.Sql_Dada_Space     := new Sql_Data_Array (1 .. Size);
         Self.Sql_Dada_Space.all := (others => 0);
         Self.Sqlvar.Sqldata     := Self.Sql_Dada_Space (1)'Address;
      end if;
   end Alloc_Sqldata;

   ------------------
   -- Alloc_Sqlind --
   ------------------

   procedure Alloc_Sqlind (Self : not null access Field) is
   begin
      if Self.Sqlvar.Sqlind = null then
         Self.Sqlvar.Sqlind := new Isc_Short'(0);
      end if;
   end Alloc_Sqlind;

   -------------------
   -- Adjust_Sqlind --
   -------------------

   procedure Adjust_Sqlind (Self : not null access Field) is
   begin
      if Self.Sqlvar.Sqltype (Isc_Sqlind_Flag) then
         Self.Alloc_Sqlind;
      else
         Free (Self.Sqlvar.Sqlind);
      end if;
   end Adjust_Sqlind;

   ----------------
   -- As_Boolean --
   ----------------

   function As_Boolean
     (Self : not null access Field)
      return Boolean
   is
   begin
      return To_Short_Integer.To_Pointer (Self.Sqlvar.Sqldata).all = Isc_True;
   end As_Boolean;

   -------------
   -- As_Date --
   -------------

   function As_Date
     (Self : not null access Field)
      return League.Calendars.Date
   is
      use League.Calendars.ISO_8601;
      use type Interfaces.C.int;

      C_Date : aliased C_Time;
   begin
      Isc_Decode_Sql_Date
        (To_Isc_Date.To_Pointer (Self.Sqlvar.Sqldata), C_Date'Access);

      return Create
        (Year_Number (C_Date.Tm_Year + 1900),
         Month_Number (C_Date.Tm_Mon + 1),
         Day_Number (C_Date.Tm_Mday));
   end As_Date;

   -------------
   -- As_Date --
   -------------

   procedure As_Date
     (Self  : not null access Field;
      Value : League.Calendars.Date)
   is
      use Interfaces.C;

      C_Date : aliased C_Time;
      Date   : aliased Isc_Date;
   begin
      C_Date.Tm_Year := int (Calendar.Year (Value)) - 1900;
      C_Date.Tm_Mon  := int (Calendar.Month (Value)) - 1;
      C_Date.Tm_Mday := int (Calendar.Day (Value));

      Isc_Encode_Sql_Date (C_Date'Access, Date'Access);

      Self.Set_Value (Isc_Type_Date, Isc_Date'Size / 8, Date'Address);
   end As_Date;

   ------------------
   -- As_Date_Time --
   ------------------

   function As_Date_Time
     (Self  : not null access Field)
      return League.Calendars.Date_Time
   is
      use League.Calendars.ISO_8601;
      use type Interfaces.C.int;

      C_Date : aliased C_Time;
   begin
      Isc_Decode_Timestamp
        (To_Isc_Timestamp.To_Pointer (Self.Sqlvar.Sqldata), C_Date'Access);

      raise Program_Error with "Not Implemented";
--        return Create
--          (Year_Number (C_Date.Tm_Year + 1900),
--           Month_Number (C_Date.Tm_Mon + 1),
--           Day_Number (C_Date.Tm_Mday),
--           Create (Hour_Number (C_Date.Tm_Hour),
--             Minute_Number (C_Date.Tm_Min),
--             Second_Number (C_Date.Tm_Sec)));
      return League.Calendars.Clock;
   end As_Date_Time;

   ------------------
   -- As_Date_Time --
   ------------------

   procedure As_Date_Time
     (Self  : not null access Field;
      Value : League.Calendars.Date_Time)
   is
      use Interfaces.C;

      C_Date    : aliased C_Time;
      Timestamp : aliased Isc_Timestamp;
   begin
      C_Date.Tm_Year := int (Calendar.Year (Value)) - 1900;
      C_Date.Tm_Mon  := int (Calendar.Month (Value)) - 1;
      C_Date.Tm_Mday := int (Calendar.Day (Value));
      C_Date.Tm_Hour := int (Calendar.Hour (Value));
      C_Date.Tm_Min  := int (Calendar.Minute (Value));
      C_Date.Tm_Sec  := int (Calendar.Second (Value));

      Isc_Encode_Timestamp (C_Date'Access, Timestamp'Access);

      Self.Set_Value
        (Isc_Type_Timestamp, Isc_Timestamp'Size / 8, Timestamp'Address);
   end As_Date_Time;

   -------------------
   -- As_Long_Float --
   -------------------

   function As_Long_Float
     (Self : not null access Field)
      return Long_Float
   is
      use type Isc_Short;
   begin
      if Self.Sql_Type = Isc_Type_Double
        or else Self.Sql_Type = Isc_Type_D_Float
      then
         return To_Long_Float.To_Pointer (Self.Sqlvar.Sqldata).all;

      elsif Self.Sql_Type = Isc_Type_Long then
         return Long_Float
           (To_Long_Integer.To_Pointer (Self.Sqlvar.Sqldata).all)
           / Long_Float (10 ** Integer (-Self.Sqlvar.Sqlscale));

      else
         raise Constraint_Error;
      end if;
   end As_Long_Float;

   ---------------------
   -- As_Long_Integer --
   ---------------------

   function As_Long_Integer
     (Self : not null access Field)
      return Long_Integer
   is
   begin
      return To_Long_Integer.To_Pointer (Self.Sqlvar.Sqldata).all;
   end As_Long_Integer;

   --------------------
   -- As_Short_Float --
   --------------------

   function As_Short_Float
     (Self : not null access Field)
      return Short_Float
   is
      use type Isc_Short;
   begin
      if Self.Sql_Type = Isc_Type_Float then
         return To_Short_Float.To_Pointer (Self.Sqlvar.Sqldata).all;

      elsif Self.Sql_Type = Isc_Type_Short then
         return Short_Float
           (To_Short_Integer.To_Pointer (Self.Sqlvar.Sqldata).all)
           / Short_Float (10 ** Integer (-Self.Sqlvar.Sqlscale));

      else
         raise Constraint_Error;
      end if;
   end As_Short_Float;

   ----------------------
   -- As_Short_Integer --
   ----------------------

   function As_Short_Integer
     (Self : not null access Field)
      return Short_Integer
   is
   begin
      return To_Short_Integer.To_Pointer (Self.Sqlvar.Sqldata).all;
   end As_Short_Integer;


   -------------
   -- As_Time --
   -------------

   function As_Time
     (Self : not null access Field)
      return League.Calendars.Time
   is
      use League.Calendars.ISO_8601;

      C_Date : aliased C_Time;
      Dummy  : League.Calendars.Time;
   begin
      Isc_Decode_Sql_Time
        (To_Isc_Time.To_Pointer (Self.Sqlvar.Sqldata), C_Date'Access);

      raise Program_Error with "Not Implemented";

--        return Create
--          (Hour_Number (C_Date.Tm_Hour),
--           Minute_Number (C_Date.Tm_Min),
--           Second_Number (C_Date.Tm_Sec));

      return Dummy;
   end As_Time;

   -------------
   -- As_Time --
   -------------

   procedure As_Time
     (Self  : not null access Field;
      Value : League.Calendars.Time)
   is
      use Interfaces.C;

      C_Date : aliased C_Time;
      Time   : aliased Isc_Time;
   begin
      C_Date.Tm_Hour := int (Calendar.Hour (Value));
      C_Date.Tm_Min  := int (Calendar.Minute (Value));
      C_Date.Tm_Sec  := int (Calendar.Second (Value));

      Isc_Encode_Sql_Time (C_Date'Access, Time'Access);

      Self.Set_Value (Isc_Type_Time, Isc_Time'Size / 8, Time'Address);
   end As_Time;

   ------------------------
   -- As_Universal_Float --
   ------------------------

   function As_Universal_Float
     (Self  : not null access Field)
      return League.Holders.Universal_Float
   is
      use type Isc_Short;

      v : constant Long_Long_Integer :=
        To_Long_Long_Integer.To_Pointer (Self.Sqlvar.Sqldata).all;
   begin
      return League.Holders.Universal_Float
        (Long_Long_Float (v) /
           Long_Long_Float (10 ** Integer (-Self.Sqlvar.Sqlscale)));
   end As_Universal_Float;

   ------------------------
   -- As_Universal_Float --
   ------------------------

   procedure As_Universal_Float
     (Self  : not null access Field;
      Value : League.Holders.Universal_Float)
   is
      use League.Holders;
      use type Universal_Float;
      use type Isc_Short;

      v : constant Universal_Integer := Universal_Integer
        (Universal_Float'Truncation
           (Value * Universal_Float (10 ** Integer (-Self.Srv_Sql_Scale))));
   begin
      Self.As_Universal_Integer (v);
      Self.Sqlvar.Sqlscale := Self.Srv_Sql_Scale;
   end As_Universal_Float;

   --------------------------
   -- As_Universal_Integer --
   --------------------------

   function As_Universal_Integer
     (Self : not null access Field)
      return League.Holders.Universal_Integer
   is
   begin
      return League.Holders.Universal_Integer
        (To_Long_Long_Integer.To_Pointer (Self.Sqlvar.Sqldata).all);
   end As_Universal_Integer;

   --------------------------
   -- As_Universal_Integer --
   --------------------------

   procedure As_Universal_Integer
     (Self  : not null access Field;
      Value : League.Holders.Universal_Integer)
   is
      use type Isc_Short;
      V : Long_Long_Integer := Long_Long_Integer (Value);
   begin
      Self.Set_Value
        (Isc_Type_Int64,
         Long_Long_Integer'Size / 8,
         V'Address);
   end As_Universal_Integer;

   ---------------
   -- As_String --
   ---------------

   function As_String
     (Self : not null access Field)
      return League.Strings.Universal_String
   is
      use Ada.Streams;

      Len : Integer;

      function Get_Length (Addr : Isc_Address) return Integer;

      function Extract
        (Addr : Isc_Address;
         From : Stream_Element_Offset;
         To   : Stream_Element_Offset)
         return Stream_Element_Array;

      ----------------
      -- Get_Length --
      ----------------

      function Get_Length (Addr : Isc_Address) return Integer is
         subtype Header is Isc_String (1 .. 2);

         package To_Header is
           new System.Address_To_Access_Conversions (Header);
      begin
         return Integer
           (Isc_Vax_Integer (To_Header.To_Pointer (Addr) (1 .. 2), 2));
      end Get_Length;

      -------------
      -- Extract --
      -------------

      function Extract
        (Addr : Isc_Address;
         From : Stream_Element_Offset;
         To   : Stream_Element_Offset)
         return Stream_Element_Array
      is
         subtype Constrained is Stream_Element_Array (1 .. To);

         package To_Array is
           new System.Address_To_Access_Conversions (Constrained);
      begin
         return To_Array.To_Pointer (Addr) (From .. To);
      end Extract;

   begin
      if Self.Sql_Type = Isc_Type_Text then
         Len := Integer (Self.Sqlvar.Sqllen);
      else
         Len := Get_Length (Self.Sqlvar.Sqldata);
      end if;

      declare
         Result : Ada.Streams.Stream_Element_Array
           (1 .. Ada.Streams.Stream_Element_Offset (Len));
      begin
         if Self.Sql_Type = Isc_Type_Text then
            Result := Extract
              (Self.Sqlvar.Sqldata, 1, Stream_Element_Offset (Len));
         else
            Result := Extract
              (Self.Sqlvar.Sqldata, 3, Stream_Element_Offset (Len + 2));
         end if;

         return League.Text_Codecs.Decode (Self.Codec.all, Result);
      end;
   end As_String;

   ---------------
   -- As_String --
   ---------------

   procedure As_String
     (Self  : not null access Field;
      Value : League.Strings.Universal_String)
   is
      use type Interfaces.C.char;
      Sql_Type : Isc_Sqltype;
   begin
      Sql_Type := Self.Server_Sql_Type;

      declare
         Item : constant Ada.Streams.Stream_Element_Array :=
           Self.Codec.Encode (Value).To_Stream_Element_Array;
      begin
         if Item'Length > 32767 then
            raise Constraint_Error;
         end if;

         if Self.Utf then
            Self.Sqlvar.Sqlsubtype := 3; -- UNICODE_FSS
         end if;

         if Item'Length > 0 then
            Self.Set_Value
              (Isc_Type_Text, Item'Length, Item (Item'First)'Address);

         else
            if Is_Numeric_Type (Sql_Type)
              or else Is_Datetime_Type (Sql_Type)
            then
               Self.Set_Null (True);
            else
               Self.Set_Value (Isc_Type_Text, 0, Zero);
            end if;
         end if;
      end;
   end As_String;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Field) is
   begin
      if Self.Sqlvar /= null then
         Free (Self.Sqlvar.Sqlind);
      end if;

      Self.Free_Sqldata;
   end Finalize;

   ------------------
   -- Free_Sqldata --
   ------------------

   procedure Free_Sqldata (Self : in out Field) is
   begin
      Free (Self.Sql_Dada_Space);
      Self.Sqlvar.Sqldata := System.Null_Address;
   end Free_Sqldata;

   -------------
   -- Is_Null --
   -------------

   function Is_Null (Self : not null access Field) return Boolean
   is
      use type Isc_Short;
   begin
      return (Self.Is_Nullable and then Self.Sqlvar.Sqlind.all = -1)
        or else Self.Sqlvar.Sqltype = Isc_Type_Empty
        or else Self.Sqlvar.Sqltype = Isc_Type_Empty1;
   end Is_Null;

   -----------------
   -- Is_Nullable --
   -----------------

   function Is_Nullable (Self : not null access Field) return Boolean is
   begin
      if Self.Sqlvar.Sqltype (Isc_Sqlind_Flag) then
         Self.Alloc_Sqlind;
         return True;
      else
         return False;
      end if;
   end Is_Nullable;

   -----------------
   -- Is_Nullable --
   -----------------

   procedure Is_Nullable
     (Self  : not null access Field;
      Value : Boolean)
   is
   begin
      if Value /= Self.Is_Nullable then
         if Value then
            Self.Sqlvar.Sqltype (Isc_Sqlind_Flag) := True;
            Self.Alloc_Sqlind;
         else
            Self.Sqlvar.Sqltype (Isc_Sqlind_Flag) := False;
            Free (Self.Sqlvar.Sqlind);
         end if;
      end if;
   end Is_Nullable;

   --------------------
   -- Reserv_Sqldata --
   --------------------

   procedure Reserv_Sqldata
     (Self : not null access Field;
      Size : Isc_Short)
   is
      use type Isc_Short;
   begin
      if Self.Sql_Dada_Space /= null
        and then Self.Sql_Dada_Space'Length = Size
      then
         return;
      end if;

      Self.Free_Sqldata;
      Self.Alloc_Sqldata (Size);
   end Reserv_Sqldata;

   ---------------------
   -- Server_Sql_Type --
   ---------------------

   function Server_Sql_Type (Self : not null access Field) return Isc_Sqltype
   is
      Result : Isc_Sqltype := Self.Srv_Sql_Type;
   begin
      Result (Isc_Sqlind_Flag) := False;
      return Result;
   end Server_Sql_Type;

   --------------
   -- Set_Null --
   --------------

   procedure Set_Null
     (Self  : not null access Field;
      Value : Boolean)
   is
      use type Isc_Short;
   begin
      if Value then
         if Self.Sqlvar.Sqltype = Isc_Type_Empty
           or else Self.Sqlvar.Sqltype = Isc_Type_Empty1
         then
            Self.Sqlvar.Sqltype := Isc_Type_Text;
            Self.Sqlvar.Sqllen  := 0;
            Self.Free_Sqldata;
         end if;

         if not Self.Is_Nullable then
            Self.Is_Nullable (True);
         end if;

         Self.Sqlvar.Sqlind.all := -1;
      else
         if Self.Is_Nullable then
            Self.Sqlvar.Sqlind.all := 0;
         end if;
      end if;
   end Set_Null;

   ---------------
   -- Set_Value --
   ---------------

   procedure Set_Value
     (Self     : not null access Field;
      Sql_Type : Isc_Sqltype;
      Size     : Isc_Short;
      Value    : Isc_Address)
   is
      use type Isc_Address;
      use type Isc_Short;

      subtype C_Array is Sql_Data_Array (1 .. Size);

      package To_Array_Conv is
        new System.Address_To_Access_Conversions (C_Array);

      Set_Sql_Type : Isc_Sqltype := Sql_Type;
   begin
      if Self.Is_Null then
         Self.Set_Null (False);
      end if;

      Self.Sqlvar.Sqlscale := 0;

      if Value = Zero
        or else Size = 0
      then
         Self.Sqlvar.Sqllen := 0;
         Self.Reserv_Sqldata (1);
      else
         Self.Sqlvar.Sqllen := Size;

         if Self.Sql_Dada_Space /= null
           and then Self.Sql_Dada_Space'Length /= Self.Sqlvar.Sqllen
         then
            Self.Free_Sqldata;
         end if;

         if Self.Sql_Dada_Space = null then
            Self.Alloc_Sqldata (Self.Sqlvar.Sqllen);
         end if;

         Self.Sql_Dada_Space (1 .. Size) :=
           To_Array_Conv.To_Pointer (Value) (1 .. Size);
      end if;

      Set_Sql_Type (Isc_Sqlind_Flag) := Self.Sqlvar.Sqltype (Isc_Sqlind_Flag);
      Self.Sqlvar.Sqltype := Set_Sql_Type;
   end Set_Value;

   --------------
   -- Sql_Type --
   --------------

   function Sql_Type (Self : not null access Field) return Isc_Sqltype
   is
      Result : Isc_Sqltype := Self.Sqlvar.Sqltype;
   begin
      Result (Isc_Sqlind_Flag) := False;
      return Result;
   end Sql_Type;

   -----------
   -- Value --
   -----------

   function Value (Self : not null access Field) return League.Holders.Holder
   is
      use League.Holders;
      use type Isc_Short;

      Sql_Type : Isc_Sqltype;
      Result   : Holder;
   begin
      if Self.Is_Null then
         return Result;
      end if;

      Sql_Type := Self.Sql_Type;

      if Sql_Type = Isc_Type_Text
        or else Sql_Type = Isc_Type_Varying
      then
         Replace_Element (Result, Self.As_String);

      elsif Sql_Type = Isc_Type_Short then
         if Self.Sqlvar.Sqlscale /= 0 then
            Replace_Element (Result, Universal_Float (Self.As_Short_Float));
         else
            Replace_Element
              (Result, Universal_Integer (Self.As_Short_Integer));
         end if;

      elsif Sql_Type = Isc_Type_Long then
         if Self.Sqlvar.Sqlscale /= 0 then
            Replace_Element (Result, Universal_Float (Self.As_Long_Float));
         else
            Replace_Element (Result, Universal_Integer (Self.As_Long_Integer));
         end if;

      elsif Sql_Type = Isc_Type_Float then
         Replace_Element (Result, Universal_Float (Self.As_Short_Float));

      elsif Sql_Type = Isc_Type_Double
        or else Sql_Type = Isc_Type_D_Float
      then
         Replace_Element (Result, Universal_Float (Self.As_Long_Float));

      elsif Sql_Type = Isc_Type_Blob then
         Replace_Element
           (Result, League.Strings.To_Universal_String ("(BLOB)"));

      elsif Sql_Type = Isc_Type_Array then
         Replace_Element
           (Result, League.Strings.To_Universal_String ("(ARRAY)"));

      elsif Sql_Type = Isc_Type_Quad then
         raise Constraint_Error;

      elsif Sql_Type = Isc_Type_Time then
         Replace_Element (Result, Self.As_Time);

      elsif Sql_Type = Isc_Type_Timestamp then
         Replace_Element (Result, Self.As_Date_Time);

      elsif Sql_Type = Isc_Type_Date then
         Replace_Element (Result, Self.As_Date);

      elsif Sql_Type = Isc_Type_Int64 then
         if Self.Sqlvar.Sqlscale /= 0 then
            Replace_Element (Result, Self.As_Universal_Float);
         else
            Replace_Element (Result, Self.As_Universal_Integer);
         end if;

      elsif Sql_Type = Isc_Type_Boolean then
         Replace_Element
           (Result, League.Strings.To_Universal_String
              (Boolean'Wide_Wide_Image (Self.As_Boolean)));

      else
         raise Constraint_Error;
      end if;

      return Result;
   end Value;

   -----------
   -- Value --
   -----------

   procedure Value
     (Self   : not null access Field;
      Holder : League.Holders.Holder)
   is
   begin
      if League.Holders.Is_Empty (Holder) then
         Self.Set_Null (True);

      elsif League.Holders.Is_Universal_String (Holder) then
         Self.As_String (League.Holders.Element (Holder));

      elsif League.Holders.Is_Abstract_Integer (Holder) then
         Self.As_Universal_Integer (League.Holders.Element (Holder));

      elsif League.Holders.Is_Abstract_Float (Holder) then
         Self.As_Universal_Float (League.Holders.Element (Holder));

      elsif League.Holders.Is_Time (Holder) then
        Self.As_Time (League.Holders.Element (Holder));

      elsif League.Holders.Is_Date (Holder) then
        Self.As_Date (League.Holders.Element (Holder));

      elsif League.Holders.Is_Date_Time (Holder) then
         Self.As_Date_Time (League.Holders.Element (Holder));

      else
         raise Constraint_Error;
      end if;
   end Value;

end Matreshka.Internals.SQL_Drivers.Firebird.Fields;
