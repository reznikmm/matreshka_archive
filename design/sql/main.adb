with Ada.Wide_Wide_Text_IO;

with League.Strings;
with League.Values;
with Matreshka.Internals.SQL_Drivers.SQLite3.Factory;
with SQL.Databases;
with SQL.Queries;

procedure Main is

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   DB_Type : constant League.Strings.Universal_String := +"SQLITE3";
   DB_Name : constant League.Strings.Universal_String := +"test.db";

   D : aliased SQL.Databases.SQL_Database
     := SQL.Databases.Create (DB_Type, DB_Name);

begin
   D.Open;

   declare
      Q : SQL.Queries.SQL_Query := D.Query;

   begin
      Q.Prepare
       (+"CREATE TABLE point (x CHARACTER VARYING, y CHARACTER VARYING)");
      Q.Execute;
   end;

   declare
      Q : SQL.Queries.SQL_Query := D.Query;

   begin
      Q.Prepare (+"INSERT INTO point (x, y) VALUES (:x, :y)");
      Q.Bind_Value (+":y", League.Values.To_Value (+"xyz"));
      Q.Bind_Value (+":x", League.Values.To_Value (+"abc"));
      Q.Execute;
   end;

   declare
      Q : aliased SQL.Queries.SQL_Query := D.Query;

   begin
      Q.Prepare (+"SELECT x, y FROM point");
      Q.Execute;

      while Q.Next loop
         Ada.Wide_Wide_Text_IO.Put_Line
          (League.Values.Get (Q.Value (1)).To_Wide_Wide_String
             & ":"
             & League.Values.Get (Q.Value (2)).To_Wide_Wide_String
             & Integer'Wide_Wide_Image (League.Values.Get (Q.Value (1)).Length)
             & Integer'Wide_Wide_Image
                (League.Values.Get (Q.Value (2)).Length));
      end loop;
   end;

   D.Close;
end Main;
