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
--  Checks whether obtain of LAST_INSERT_ROWID pseudo-parameter works for
--  SQLite3 driver.
------------------------------------------------------------------------------
with League.Holders;
with League.Strings;
with SQL.Databases;
with SQL.Options;
with SQL.Queries;

with Matreshka.Internals.SQL_Drivers.SQLite3.Factory;

procedure Test_303 is
   Last_Insert_Rowid : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("LAST_INSERT_ROWID");
   Driver   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("SQLITE3");
   Options  : SQL.Options.SQL_Options;
   Database : SQL.Databases.SQL_Database
     := SQL.Databases.Create (Driver, Options);
   Query    : SQL.Queries.SQL_Query := Database.Query;

begin
   Database.Open;

   Query.Prepare
    (League.Strings.To_Universal_String
      ("CREATE TABLE test"
         & " (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,"
         & " value CHARACTER VARYING NOT NULL)"));
   Query.Execute;

   Query.Prepare
    (League.Strings.To_Universal_String
      ("INSERT INTO test (value) VALUES ('dummy')"));

   for J in 1 .. 10 loop
      Query.Execute;

      if Integer
          (League.Holders.Universal_Integer'
            (League.Holders.Element (Query.Bound_Value (Last_Insert_Rowid))))
           /= J
      then
         raise Program_Error;
      end if;
   end loop;
end Test_303;
