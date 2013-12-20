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
--  $Revision: 3927 $ $Date: 2013-05-02 22:43:26 +0300 (Чт., 02 мая 2013) $
------------------------------------------------------------------------------
--  Checks whether wheter reopen connection hangs the driver.
------------------------------------------------------------------------------
with League.Strings;
with League.Application;
with SQL.Databases;
with SQL.Options;
with SQL.Queries;

with Matreshka.Internals.SQL_Drivers.Oracle.Factory;

procedure Test_337 is

   function "+"
     (Text : Wide_Wide_String)
      return League.Strings.Universal_String renames
        League.Strings.To_Universal_String;

   Driver   : constant League.Strings.Universal_String := +"ORACLE";
   Options  : SQL.Options.SQL_Options;

begin
   Options.Set
     (Matreshka.Internals.SQL_Drivers.Oracle.User_Option,
      League.Application.Environment.Value (+"ORACLE_TEST_USER"));
   Options.Set
     (Matreshka.Internals.SQL_Drivers.Oracle.Password_Option,
      League.Application.Environment.Value (+"ORACLE_TEST_PASSWORD"));
   Options.Set
     (Matreshka.Internals.SQL_Drivers.Oracle.Database_Option, +"TEST");

   declare
      Database : SQL.Databases.SQL_Database :=
        SQL.Databases.Create (Driver, Options);
        Query    : SQL.Queries.SQL_Query;
   begin
      Database.Open;
      Query := Database.Query (+"select * from dual");

      Query.Execute;
      Database.Close;
      Database.Open;
   end;

end Test_337;
