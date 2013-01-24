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
--  This package provides implementation of Query abstraction for MySQL.
------------------------------------------------------------------------------
limited with Matreshka.Internals.SQL_Drivers.MySQL.Databases;
private with Matreshka.Internals.SQL_Parameter_Sets;

package Matreshka.Internals.SQL_Drivers.MySQL.Queries is

   type MySQL_Query is new Abstract_Query with private;

   procedure Initialize
    (Self     : not null access MySQL_Query'Class;
     Database : not null access Databases.MySQL_Database'Class);

private

   type Value_Record is record
      Null_Value      : aliased my_bool;
      Tiny_Value      : aliased Interfaces.C.signed_char;
      Short_Value     : aliased Interfaces.C.short;
      Int_24_Value    : aliased Interfaces.C.int;
      Long_Value      : aliased Interfaces.C.int;
      Long_Long_Value : aliased Interfaces.C.long;
      Float_Value     : aliased Interfaces.C.c_float;
      Double_Value    : aliased Interfaces.C.double;
      Length_Value    : aliased Interfaces.C.unsigned_long;
      Time_Value      : aliased MYSQL_TIME;
   end record;

   type Value_Array is array (Positive range <>) of Value_Record;

   type Value_Array_Access is access all Value_Array;

   type MySQL_Query is new Abstract_Query with record
      Handle     : MYSQL_STMT_Access;
      Error      : League.Strings.Universal_String;
      Parameters : Matreshka.Internals.SQL_Parameter_Sets.Parameter_Set;
      Result     : MYSQL_BIND_Array_Access;
      Buffer     : Value_Array_Access;
      Is_Active  : Boolean := False;
   end record;

   overriding procedure Bind_Value
    (Self      : not null access MySQL_Query;
     Name      : League.Strings.Universal_String;
     Value     : League.Holders.Holder;
     Direction : SQL.Parameter_Directions);

   overriding function Bound_Value
    (Self : not null access MySQL_Query;
     Name : League.Strings.Universal_String)
       return League.Holders.Holder;

   overriding function Error_Message
    (Self : not null access MySQL_Query)
       return League.Strings.Universal_String;

   overriding function Execute
    (Self : not null access MySQL_Query) return Boolean;

   overriding procedure Finish (Self : not null access MySQL_Query);

   overriding procedure Invalidate (Self : not null access MySQL_Query);

   overriding function Is_Active
    (Self : not null access MySQL_Query) return Boolean;

   overriding function Next
    (Self : not null access MySQL_Query) return Boolean;

   overriding function Prepare
    (Self  : not null access MySQL_Query;
     Query : League.Strings.Universal_String) return Boolean;

   overriding function Value
    (Self  : not null access MySQL_Query;
     Index : Positive) return League.Holders.Holder;

end Matreshka.Internals.SQL_Drivers.MySQL.Queries;
