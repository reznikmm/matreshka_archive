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
--with Interfaces.C.Pointers;

with League.Strings.Internals;
with League.Values.Strings;
with Matreshka.Internals.Strings;
with Matreshka.Internals.Unicode;
with Matreshka.Internals.Utf16;
with SQL;

package body Matreshka.Internals.SQL_Queries.SQLite3 is

   use type Interfaces.C.int;
   use type Matreshka.Internals.SQLite3.sqlite3_stmt_Access;

--   procedure puts (Item : String);
--   pragma Import (C, puts);

--   package Utf16_Code_Unit_Pointers is
--     new Interfaces.C.Pointers
--          (Matreshka.Internals.Utf16.Utf16_String_Index,
--           Matreshka.Internals.Utf16.Utf16_Code_Unit,
--           Matreshka.Internals.Utf16.Unaligned_Utf16_String,
--           0);

   -------------
   -- Execute --
   -------------

   overriding procedure Execute (Self : not null access SQLite3_Query) is
   begin
      if Self.Handle /= null then
         case Matreshka.Internals.SQLite3.sqlite3_step (Self.Handle) is
            when Matreshka.Internals.SQLite3.SQLITE_DONE =>
               Self.Has_Row := False;

            when Matreshka.Internals.SQLite3.SQLITE_ROW =>
               Self.Has_Row := True;
               Self.Skip_Step := True;

            when others =>
               raise SQL.SQL_Error;
         end case;
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

   ----------
   -- Next --
   ----------

   overriding function Next
    (Self : not null access SQLite3_Query) return Boolean is
   begin
      if Self.Skip_Step then
         Self.Skip_Step := False;

      elsif Self.Has_Row then
         case Matreshka.Internals.SQLite3.sqlite3_step (Self.Handle) is
            when Matreshka.Internals.SQLite3.SQLITE_DONE =>
               Self.Has_Row := False;

            when Matreshka.Internals.SQLite3.SQLITE_ROW =>
               Self.Has_Row := True;

            when others =>
               raise SQL.SQL_Error;
         end case;
      end if;

      return Self.Has_Row;
   end Next;

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

   -----------
   -- Value --
   -----------

   overriding function Value
    (Self  : not null access SQLite3_Query;
     Index : Positive) return League.Values.Value
   is
      Text   : Matreshka.Internals.SQLite3.Utf16_Code_Unit_Access;
      Length : Matreshka.Internals.Utf16.Utf16_String_Index;
      Value  : League.Values.Value;

      function To_Universal_String return League.Strings.Universal_String;

      -------------------------
      -- To_Universal_String --
      -------------------------

      function To_Universal_String return League.Strings.Universal_String is
         use type Matreshka.Internals.Utf16.Utf16_String_Index;

         Source   : Matreshka.Internals.Utf16.Unaligned_Utf16_String (0 .. Length - 1);
         for Source'Address use Text.all'Address;
         pragma Import (Ada, Source);
         Position : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
         Code     : Matreshka.Internals.Unicode.Code_Point;
         Aux      : Matreshka.Internals.Strings.Shared_String_Access
           := Matreshka.Internals.Strings.Allocate (Length);

      begin
         while Position <= Source'Last loop
            Matreshka.Internals.Utf16.Unchecked_Next (Source, Position, Code);
            Matreshka.Internals.Utf16.Unchecked_Store
             (Aux.Value, Aux.Unused, Code);
            Aux.Length := Aux.Length + 1;
         end loop;

         return League.Strings.Internals.Wrap (Aux);
      end To_Universal_String;

   begin
      Text :=
        Matreshka.Internals.SQLite3.sqlite3_column_text16
         (Self.Handle, Interfaces.C.int (Index - 1));
      Length :=
        Matreshka.Internals.Utf16.Utf16_String_Index
         (Matreshka.Internals.SQLite3.sqlite3_column_bytes16
           (Self.Handle, Interfaces.C.int (Index - 1)));

      League.Values.Strings.Set (Value, To_Universal_String);

      return Value;
   end Value;

end Matreshka.Internals.SQL_Queries.SQLite3;
