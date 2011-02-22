------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
--                                                                          --
--                        Runtime Library Component                         --
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
private with Ada.Finalization;

with League.Strings;
private with Matreshka.Internals.SQL_Databases.Dummy;
with SQL.Queries;

package SQL.Databases is

--   pragma Preelaborate;

   type SQL_Database is tagged limited private;

   procedure Open (Self : in out SQL_Database'Class);

   procedure Close (Self : in out SQL_Database'Class);
   --  Closes the database connection, freeing any resources acquired, and
   --  invalidating any existing QSqlQuery objects that are used with the
   --  database.

   procedure Commit (Self : in out SQL_Database'Class);

   procedure Rollback (Self : in out SQL_Database'Class);

   procedure Transaction (Self : in out SQL_Database'Class);

   function Error_Message
    (Self : SQL_Database'Class) return League.Strings.Universal_String;

   function Query
    (Self : in out SQL_Database'Class) return SQL.Queries.SQL_Query;
   --  Creates SQL_Query object to execute statements in the specified
   --  database.

   function Query
    (Self  : in out SQL_Database'Class;
     Query : League.Strings.Universal_String) return SQL.Queries.SQL_Query;
   --  Creates SQL_Query object to execute statements in the specified
   --  database and prepare specified statement for execution.

private

   type SQL_Database is new Ada.Finalization.Limited_Controlled with record
      Data : Matreshka.Internals.SQL_Databases.Database_Access
        := Matreshka.Internals.SQL_Databases.Dummy.Empty_Database'Access;
   end record;

--   overriding procedure Adjust (Self : in out SQL_Database);
   --  Increments reference counter of shared object.

   overriding procedure Finalize (Self : in out SQL_Database);
   --  Decrements reference counter of shared object.

end SQL.Databases;
