------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Demos Component                             --
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
with League.Values.Integers;
with Matreshka.Internals.SQL_Drivers.SQLite3.Factory;
with SQL.Databases;
with SQL.Queries;

package body Paste_Bin.Operations is

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   function Decode (Item : League.Strings.Universal_String) return Natural;
   --  Decodes string to the number.

   DB_Driver  : constant League.Strings.Universal_String := +"SQLITE3";
   DB_Options : constant League.Strings.Universal_String
     := +"/home1/qtadacom/pastebin.db";
--     := +"/tmp/pastebin.db";

   ------------
   -- Decode --
   ------------

   function Decode (Item : League.Strings.Universal_String) return Natural is
   begin
      return
        Integer'Wide_Wide_Value
         (Item.Slice (2, Item.Length).To_Wide_Wide_String);

   exception
      when Constraint_Error =>
         return 0;
   end Decode;

   --------------
   -- Get_Page --
   --------------

   function Get_Page
    (Path : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      use type League.Strings.Universal_String;

      Page     : constant Natural := Decode (Path);
      Database : aliased SQL.Databases.SQL_Database
        := SQL.Databases.Create (DB_Driver, DB_Options);
      Query    : aliased SQL.Queries.SQL_Query := Database.Query;
      Result   : League.Strings.Universal_String;

   begin
      Database.Open;
      Query.Prepare (+"SELECT text FROM text WHERE id = :id");
      Query.Bind_Value (+":id", League.Values.Integers.To_Value (Page));
      Query.Execute;

      Result.Append
       ("<?xml version='1.1' encoding='utf-8'?>"
          & "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Strict//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'>"
          & "<html xmlns='http://www.w3.org/1999/xhtml'>"
          & "<head>"
          & "<title>Matreshka's Paste Bin Demo</title>"
          & "</head>"
          & "<body>");

      if Query.Next then
         Result.Append (League.Values.Get (Query.Value (1)));
      end if;

      Result.Append
       ("</body>"
          & "</html>");

      return Result;
   end Get_Page;

end Paste_Bin.Operations;
