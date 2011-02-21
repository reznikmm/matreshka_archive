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
with Matreshka.Internals.SQL_Databases.SQLite3;

package body SQL.Databases is

--   ------------
--   -- Adjust --
--   ------------
--
--   overriding procedure Adjust (Self : in out SQL_Database) is
--   begin
--      Matreshka.Internals.SQL_Databases.Reference (Self.Data);
--   end Adjust;

   -----------
   -- Close --
   -----------

   procedure Close (Self : in out SQL_Database) is
   begin
      null;
   end Close;

   ------------
   -- Commit --
   ------------

   procedure Commit (Self : in out SQL_Database) is
   begin
      Self.Data.Commit;
   end Commit;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out SQL_Database) is
      use type Matreshka.Internals.SQL_Databases.Database_Access;

   begin
      --  Finalize must be idempotent according to language rules.

      if Self.Data /= null then
         Matreshka.Internals.SQL_Databases.Dereference (Self.Data);
      end if;
   end Finalize;

   ----------
   -- Open --
   ----------

   procedure Open (Self : in out SQL_Database) is
   begin
      Matreshka.Internals.SQL_Databases.Dereference (Self.Data);

      Self.Data :=
        new Matreshka.Internals.SQL_Databases.SQLite3.SQLite3_Database;
      Self.Data.Open;
   end Open;

   --------------
   -- Rollback --
   --------------

   procedure Rollback (Self : in out SQL_Database) is
   begin
      null;
   end Rollback;

   -----------------
   -- Transaction --
   -----------------

   procedure Transaction (Self : in out SQL_Database) is
   begin
      null;
   end Transaction;

end SQL.Databases;
