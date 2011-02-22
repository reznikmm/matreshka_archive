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
with Interfaces.C;

with League.Strings.Internals;
with Matreshka.Internals.Utf16;
with SQL;

package body Matreshka.Internals.SQL_Queries.SQLite3 is

   use type Interfaces.C.int;
   use type Matreshka.Internals.SQLite3.sqlite3_stmt_Access;

--   procedure puts (Item : String);
--   pragma Import (C, puts);

   -------------
   -- Execute --
   -------------

   overriding procedure Execute (Self : not null access SQLite3_Query) is
   begin
      if Self.Handle /= null then
         if Matreshka.Internals.SQLite3.sqlite3_step (Self.Handle)
              /= Matreshka.Internals.SQLite3.SQLITE_DONE
         then
            raise SQL.SQL_Error;
         end if;
      end if;
   end Execute;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : not null access SQLite3_Query) is
   begin
      if Self.Handle /= null then
         if Matreshka.Internals.SQLite3.sqlite3_finalize (Self.Handle)
              /= 0
         then
            raise SQL.SQL_Error;
         end if;

         Self.Handle := null;
      end if;
   end Finalize;

   -------------
   -- Prepare --
   -------------

   overriding procedure Prepare
    (Self  : not null access SQLite3_Query;
     Query : League.Strings.Universal_String)
   is
      use type Matreshka.Internals.Utf16.Utf16_String_Index;

      Aux : aliased Matreshka.Internals.SQLite3.Utf16_Code_Unit_Access;

   begin
      if Self.Handle = null then
         --  Note: http://www.sqlite.org/c3ref/prepare.html
         --
         --  "If the caller knows that the supplied string is nul-terminated,
         --  then there is a small performance advantage to be gained by
         --  passing an nByte parameter that is equal to the number of bytes in
         --  the input string including the nul-terminator bytes."
         --
         --  And it's exactly our case.

         if Matreshka.Internals.SQLite3.sqlite3_prepare16_v2
             (Self.Database.Database_Handle,
              League.Strings.Internals.Internal (Query).Value,
              Interfaces.C.int
               ((League.Strings.Internals.Internal (Query).Unused + 1) * 2),
              Self.Handle'Unchecked_Access,
              Aux'Unchecked_Access) /= 0
         then
            raise SQL.SQL_Error;
         end if;
      end if;
   end Prepare;

end Matreshka.Internals.SQL_Queries.SQLite3;
