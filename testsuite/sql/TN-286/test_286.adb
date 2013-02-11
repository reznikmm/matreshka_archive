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
--  Check whether Value returns empty holder when results of executed statement
--  wasn't retrieved.
------------------------------------------------------------------------------
with League.Holders;
with League.Strings;
with SQL.Databases;
with SQL.Options;
with SQL.Queries;

with Matreshka.Internals.SQL_Drivers.MySQL.Factory;
pragma Unreferenced (Matreshka.Internals.SQL_Drivers.MySQL.Factory);

procedure Test_286 is

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   DB_Driver  : constant League.Strings.Universal_String := +"MYSQL";
   DB_Options : SQL.Options.SQL_Options;

begin
   DB_Options.Set (+"database", +"test");

   declare
      Database : aliased SQL.Databases.SQL_Database
        := SQL.Databases.Create (DB_Driver, DB_Options);

   begin
      Database.Open;

      declare
         Query : SQL.Queries.SQL_Query := Database.Query;
         Value : League.Holders.Holder;

      begin
         --  Prepare and execute statement.

         Query.Prepare (+"SELECT 3 + 5 AS value");
         Query.Execute;

         --  Don't obtain row by calling Next, but retrieve value immidiately.

         Value := Query.Value (1);

         if not League.Holders.Is_Empty (Value) then
            raise Program_Error;
         end if;
      end;

      Database.Close;
   end;
end Test_286;
