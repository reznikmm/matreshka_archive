with League.Strings;
with SQL.Databases;
with SQL.Queries;

procedure Main is

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   D : SQL.Databases.SQL_Database;

begin
   D.Open;

   declare
      Q : SQL.Queries.SQL_Query := SQL.Queries.Create (D);

   begin
      Q.Prepare (+"CREATE TABLE point (x INTEGER, y INTEGER)");
      Q.Execute;
   end;

--   D.Commit;
end Main;
