------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
--                                                                          --
--                           Testsuite Component                            --
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
--  $Revision$ $Date$
------------------------------------------------------------------------------
with League.Strings;
with League.Holders.Integers;
with SQL.Databases;
with SQL.Options;
with SQL.Queries;

with Matreshka.Internals.SQL_Drivers.SQLite3.Factory;
pragma Unreferenced (Matreshka.Internals.SQL_Drivers.SQLite3.Factory);

procedure Test_138 is

   use type League.Strings.Universal_String;

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   DB_Driver  : constant League.Strings.Universal_String := +"SQLITE3";
   DB_Options : SQL.Options.SQL_Options;

   DB         : SQL.Databases.SQL_Database
     := SQL.Databases.Create (DB_Driver, DB_Options);
   Query      : SQL.Queries.SQL_Query := DB.Query;

   Result_1   : League.Strings.Universal_String;
   Result_2   : League.Strings.Universal_String;

begin
   DB.Open;

   --  Create database schema.

   Query.Prepare
    (+"CREATE TABLE test138 (x INTEGER, y CHARACTER VARYING)");
   Query.Execute;

   --  Fill initial data.

   Query.Prepare (+"INSERT INTO test138 (x, y) VALUES (:x, :y)");
   Query.Bind_Value (+":y", League.Holders.To_Holder (+"xyz"));
   Query.Bind_Value (+":x", League.Holders.Integers.To_Holder (5));
   Query.Execute;
   Query.Bind_Value (+":y", League.Holders.To_Holder (+"abc"));
   Query.Bind_Value (+":x", League.Holders.Integers.To_Holder (6));
   Query.Execute;

   --  Retrieve first value.

   Query.Prepare (+"SELECT y FROM test138 WHERE x=:x");
   Query.Bind_Value (+":x", League.Holders.Integers.To_Holder (5));
   Query.Execute;

   if Query.Next then
      Result_1 := League.Holders.Element (Query.Value (1));

   else
      raise Program_Error;
   end if;
      
   --  Retrieve second value.

   Query.Bind_Value (+":x", League.Holders.Integers.To_Holder (6));
   Query.Execute;

   if Query.Next then
      Result_2 := League.Holders.Element (Query.Value (1));

   else
      raise Program_Error;
   end if;

   --  Compare values was retrieved, they should be different.

   if Result_1 = Result_2 then
      raise Program_Error;
   end if;

   DB.Close;
end Test_138;
