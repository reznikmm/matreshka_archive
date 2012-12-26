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
--  Check whether string value returned by SQLite3 database driver is
--  terminated properly.
------------------------------------------------------------------------------
with League.Holders.Integers;
with League.Strings;
with SQL.Databases;
with SQL.Options;
with SQL.Queries;

with Matreshka.Internals.SQL_Drivers.SQLite3.Factory;
pragma Unreferenced (Matreshka.Internals.SQL_Drivers.SQLite3.Factory);

procedure Main is

   use type League.Strings.Universal_String;

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   DB_Driver  : constant League.Strings.Universal_String := +"SQLITE3";
   DB_Options : SQL.Options.SQL_Options;

   S1 : constant League.Strings.Universal_String := +"01234567890123456789";
   S2 : constant League.Strings.Universal_String := +"0123456789";

   Database : aliased SQL.Databases.SQL_Database
     := SQL.Databases.Create (DB_Driver, DB_Options);

begin
   Database.Open;

   declare
      Query : SQL.Queries.SQL_Query := Database.Query;

   begin
      Query.Prepare
       (+"CREATE TABLE test_data (id INTEGER, text CHARACTER VARYING (255))");
      Query.Execute;

      Query.Prepare
       (+"INSERT INTO test_data (id, text) VALUES (:id, :text)");
      Query.Bind_Value (+":id", League.Holders.Integers.To_Holder (1));
      Query.Bind_Value (+":text", League.Holders.To_Holder (S1));
      Query.Execute;

      Query.Prepare
       (+"INSERT INTO test_data (id, text) VALUES (:id, :text)");
      Query.Bind_Value (+":id", League.Holders.Integers.To_Holder (2));
      Query.Bind_Value (+":text", League.Holders.To_Holder (S2));
      Query.Execute;
   end;

   declare
      Query : SQL.Queries.SQL_Query := Database.Query;
      R1    : League.Strings.Universal_String;

   begin
      Query.Prepare
       (+"SELECT text FROM test_data WHERE id = :id");
      Query.Bind_Value (+":id", League.Holders.Integers.To_Holder (1));
      Query.Execute;

      if not Query.Next then
         raise Program_Error;
      end if;

      R1 := League.Holders.Element (Query.Value (1));

      if R1 /= S1 then
         raise Program_Error;
      end if;
   end;

   declare
      Query : SQL.Queries.SQL_Query := Database.Query;
      R2    : League.Strings.Universal_String;

   begin
      Query.Prepare
       (+"SELECT text FROM test_data WHERE id = :id");
      Query.Bind_Value (+":id", League.Holders.Integers.To_Holder (2));
      Query.Execute;

      if not Query.Next then
         raise Program_Error;
      end if;

      R2 := League.Holders.Element (Query.Value (1));

      if R2 /= S2 then
         raise Program_Error;
      end if;
   end;

   Database.Close;
end Main;
