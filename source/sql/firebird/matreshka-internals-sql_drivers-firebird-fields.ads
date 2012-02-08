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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Finalization;

with League.Calendars;
with League.Text_Codecs;

package Matreshka.Internals.SQL_Drivers.Firebird.Fields is

   type Isc_Sqlvar_Access is access all Isc_Sqlvar;

   type Byte is mod 2 ** 8;
   type Sql_Data_Array is array (Isc_Short range <>) of Byte;
   for Sql_Data_Array'Component_Size use 8;
   pragma Convention (C, Sql_Data_Array);

   type Sql_Data_Array_Access is access all Sql_Data_Array;

   type Field is new Ada.Finalization.Controlled with record
      Srv_Sql_Type    : Isc_Sqltype := Isc_Type_Empty;
      Srv_Sql_Subtype : Isc_Short   := 0;
      Srv_Sql_Scale   : Isc_Short   := 0;
      Srv_Sql_Len     : Isc_Short   := 0;

      --  Point to the sqlvar in the owner object
      Sqlvar          : Isc_Sqlvar_Access     := null;
      Sql_Dada_Space  : Sql_Data_Array_Access := null;
      Codec           : access League.Text_Codecs.Text_Codec;
      Utf             : Boolean;
   end record;

   type Field_Access is access all Field;

   overriding procedure Finalize (Self : in out Field);
   procedure Free_Sqldata (Self : in out Field);
   procedure Adjust_Sqldata (Self : not null access Field);
   procedure Adjust_Sqlind (Self : not null access Field);
   procedure Alloc_Sqlind (Self : not null access Field);
   function Is_Nullable (Self : not null access Field) return Boolean;

   procedure Is_Nullable (Self : not null access Field; Value : Boolean);

   procedure Reserv_Sqldata (Self : not null access Field; Size : Isc_Short);

   procedure Alloc_Sqldata (Self : not null access Field; Size : Isc_Short);

   procedure Set_Null (Self : not null access Field; Value : Boolean);

   function Value (Self : not null access Field) return League.Holders.Holder;

   procedure Value
    (Self : not null access Field; Holder : League.Holders.Holder);

   procedure As_String
    (Self  : not null access Field;
     Value : League.Strings.Universal_String);

   function As_String
    (Self : not null access Field) return League.Strings.Universal_String;

   function Server_Sql_Type (Self : not null access Field) return Isc_Sqltype;

   function As_Date
    (Self : not null access Field) return League.Calendars.Date;

   procedure As_Date
    (Self  : not null access Field;
     Value : League.Calendars.Date);

   function As_Time
    (Self : not null access Field) return League.Calendars.Time;

   procedure As_Time
    (Self : not null access Field; Value : League.Calendars.Time);

   function As_Date_Time
    (Self : not null access Field) return League.Calendars.Date_Time;

   procedure As_Date_Time
    (Self  : not null access Field; Value : League.Calendars.Date_Time);

   function As_Universal_Integer
    (Self : not null access Field) return League.Holders.Universal_Integer;

   procedure As_Universal_Integer
    (Self : not null access Field; Value : League.Holders.Universal_Integer);

   function As_Universal_Float
    (Self : not null access Field) return League.Holders.Universal_Float;

   procedure As_Universal_Float
    (Self : not null access Field; Value : League.Holders.Universal_Float);

   function As_Short_Float (Self : not null access Field) return Short_Float;

   function As_Long_Float (Self : not null access Field) return Long_Float;

   function As_Short_Integer
    (Self : not null access Field) return Short_Integer;

   function As_Long_Integer
    (Self : not null access Field) return Long_Integer;

   function As_Boolean (Self : not null access Field) return Boolean;

   procedure Set_Value
    (Self     : not null access Field;
     Sql_Type : Isc_Sqltype;
     Size     : Isc_Short;
     Value    : Isc_Address);

   function Is_Null (Self : not null access Field) return Boolean;

   function Sql_Type (Self : not null access Field) return Isc_Sqltype;

end Matreshka.Internals.SQL_Drivers.Firebird.Fields;
