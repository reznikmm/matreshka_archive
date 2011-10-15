------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
--                                                                          --
--                            Examples Component                            --
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
with Ada.Wide_Wide_Text_IO;

with League.Strings;
with League.Holders.Floats;
with League.Holders.Integers;
--with Matreshka.Internals.SQL_Drivers.OCI.Factory;
--with Matreshka.Internals.SQL_Drivers.PostgreSQL.Factory;
with Matreshka.Internals.SQL_Drivers.SQLite3.Factory;
with SQL.Databases;
with SQL.Queries;

procedure Simple_SQL is

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   --  Oracle

--   DB_Type : constant League.Strings.Universal_String := +"OCI";
--   DB_Name : constant League.Strings.Universal_String := +"scott/tiger@db";

   --  PostgreSQL

--   DB_Driver  : constant League.Strings.Universal_String := +"POSTGRESQL";
--   DB_Options : constant League.Strings.Universal_String := +"";
   --  Example: +"user='me' password='my' dbname='db'"

   --  SQLite3

   DB_Driver  : constant League.Strings.Universal_String := +"SQLITE3";
   DB_Options : constant League.Strings.Universal_String := +"test.db";

   D : aliased SQL.Databases.SQL_Database
     := SQL.Databases.Create (DB_Driver, DB_Options);

begin
   D.Open;

   declare
      Q : SQL.Queries.SQL_Query := D.Query;

   begin
      Q.Prepare
       (+"CREATE TABLE point (x INTEGER, y CHARACTER VARYING, z FLOAT)");
      Q.Execute;
   end;

   declare
      Q : SQL.Queries.SQL_Query := D.Query;

   begin
      Q.Prepare (+"INSERT INTO point (x, y, z) VALUES (:x, :y, :z)");
      Q.Bind_Value (+":z", League.Holders.Floats.To_Holder (4.5));
      Q.Bind_Value (+":y", League.Holders.To_Holder (+"xyz"));
      Q.Bind_Value (+":x", League.Holders.Integers.To_Holder (5));
      Q.Execute;
   end;

   declare
      Q : aliased SQL.Queries.SQL_Query := D.Query;

   begin
      Q.Prepare (+"SELECT x, y, z FROM point");
      Q.Execute;

      while Q.Next loop
         Ada.Wide_Wide_Text_IO.Put_Line
          (Integer'Wide_Wide_Image
            (League.Holders.Integers.Element (Q.Value (1)))
             & ":"
             & League.Holders.Element (Q.Value (2)).To_Wide_Wide_String
             & ":"
             & Float'Wide_Wide_Image
                (League.Holders.Floats.Element (Q.Value (3))));
      end loop;
   end;

   D.Close;
end Simple_SQL;
