with Ada.Wide_Wide_Text_IO;

with League.Strings;
with League.Values.Strings;
with SQL.Databases;
with SQL.Queries;

procedure Main is

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   D : aliased SQL.Databases.SQL_Database;

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
      Q.Prepare (+"INSERT INTO point (x, y) VALUES ('abc', 'xyz')");
      Q.Execute;
   end;

   declare
      Q : aliased SQL.Queries.SQL_Query := D.Query;

   begin
      Q.Prepare (+"SELECT x, y FROM point");
      Q.Execute;

      while Q.Next loop
         Ada.Wide_Wide_Text_IO.Put_Line
          (League.Values.Strings.To_Universal_String
            (Q.Value (1)).To_Wide_Wide_String
             & ":"
             & League.Values.Strings.To_Universal_String
                (Q.Value (2)).To_Wide_Wide_String
             & Integer'Wide_Wide_Image
                (League.Values.Strings.To_Universal_String
                  (Q.Value (1)).Length)
             & Integer'Wide_Wide_Image
                (League.Values.Strings.To_Universal_String
                  (Q.Value (2)).Length));
      end loop;
   end;

   D.Close;
end Main;
