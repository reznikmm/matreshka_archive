with Ada.Wide_Wide_Text_IO;

with League.Strings;
with League.Holders.Floats;
with League.Holders.Integers;
--with Matreshka.Internals.SQL_Drivers.PostgreSQL.Factory;
with Matreshka.Internals.SQL_Drivers.SQLite3.Factory;
with SQL.Databases;
with SQL.Queries;

procedure Main is

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

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
                (League.Holders.Floats.Element (Q.Value (3)))
             & " (string length =>"
             & Integer'Wide_Wide_Image
                (League.Holders.Element (Q.Value (2)).Length)
             & ")");
      end loop;
   end;

   D.Close;
end Main;
