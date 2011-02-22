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
--  Implementation of SQL_Database type for SQLite3 database.
------------------------------------------------------------------------------
with Matreshka.Internals.SQLite3;

package Matreshka.Internals.SQL_Databases.SQLite3 is

   pragma Preelaborate;

   ----------------------
   -- SQLite3_Database --
   ----------------------

   type SQLite3_Database is new Abstract_Database with private;

   function Database_Handle
    (Self : not null access constant SQLite3_Database'Class)
       return Matreshka.Internals.SQLite3.sqlite3_Access;
   pragma Inline (Database_Handle);
   --  Returns database handle for SQLite3 library API.

private

   type SQLite3_Database is new Abstract_Database with record
      Handle : aliased Matreshka.Internals.SQLite3.sqlite3_Access;
   end record;

   overriding procedure Close (Self : not null access SQLite3_Database);

   overriding procedure Commit (Self : not null access SQLite3_Database);

   overriding function Query
    (Self : not null access SQLite3_Database)
       return not null Matreshka.Internals.SQL_Queries.Query_Access;

   overriding procedure Finalize (Self : not null access SQLite3_Database);

   overriding procedure Open (Self : not null access SQLite3_Database);

end Matreshka.Internals.SQL_Databases.SQLite3;
