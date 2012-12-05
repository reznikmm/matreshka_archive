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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Matreshka.Internals.SQL_Drivers.MySQL.Queries;

package body Matreshka.Internals.SQL_Drivers.MySQL.Databases is

   use type Interfaces.C.char_array;

   UTF8_Encoding : constant Interfaces.C.char_array
     := "utf8" & Interfaces.C.nul;

   procedure Set_MySQL_Error (Self : not null access MySQL_Database'Class);
   --  Sets error message to reported by database.

   -----------
   -- Close --
   -----------

   overriding procedure Close (Self : not null access MySQL_Database) is
   begin
      if Self.Handle /= null then
         mysql_close (Self.Handle);
         Self.Handle := null;
      end if;
   end Close;

   ------------
   -- Commit --
   ------------

   overriding procedure Commit (Self : not null access MySQL_Database) is
   begin
      raise Program_Error;
   end Commit;

   ---------------------
   -- Database_Handle --
   ---------------------

   function Database_Handle
    (Self : not null access constant MySQL_Database'Class)
       return MYSQL_Access is
   begin
      return Self.Handle;
   end Database_Handle;

   -------------------
   -- Error_Message --
   -------------------

   overriding function Error_Message
    (Self : not null access MySQL_Database)
       return League.Strings.Universal_String is
   begin
      return Self.Error;
   end Error_Message;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : not null access MySQL_Database) is
   begin
      if Self.Handle /= null then
         Self.Close;
      end if;
   end Finalize;

   ----------
   -- Open --
   ----------

   overriding function Open
    (Self    : not null access MySQL_Database;
     Options : League.Strings.Universal_String) return Boolean
   is
      use type Interfaces.C.int;

   begin
      --  Initialize handle.

      Self.Handle := mysql_init (null);

      if Self.Handle = null then
         Self.Error :=
           League.Strings.To_Universal_String
            ("insufficient memory to allocate a new object");

         return False;
      end if;

      --  Set client character encoding to 'utf-8'.

      if mysql_options
          (Self.Handle, MYSQL_SET_CHARSET_NAME, UTF8_Encoding) /= 0
      then
         Self.Error :=
           League.Strings.To_Universal_String ("unknown option");

         return False;
      end if;

      --  Connect to database.

      if mysql_real_connect
          (Self.Handle,
           Interfaces.C.Strings.Null_Ptr,
           Interfaces.C.Strings.Null_Ptr,
           Interfaces.C.Strings.Null_Ptr,
           Interfaces.C.Strings.New_String ("test"),
--           Interfaces.C.Strings.Null_Ptr,
           0,
           Interfaces.C.Strings.Null_Ptr,
           0) = null
      then
         Self.Set_MySQL_Error;

         return False;
      end if;

      return True;
   end Open;

   -----------
   -- Query --
   -----------

   overriding function Query
    (Self : not null access MySQL_Database) return not null Query_Access is
   begin
      return Result : constant not null Query_Access
        := new Queries.MySQL_Query
      do
         Queries.Initialize
          (Queries.MySQL_Query'Class (Result.all)'Access, Self);
      end return;
   end Query;

   ---------------------
   -- Set_MySQL_Error --
   ---------------------

   procedure Set_MySQL_Error (Self : not null access MySQL_Database'Class) is
      Error : constant String
        := Interfaces.C.Strings.Value (mysql_error (Self.Handle));

   begin
      Self.Error := League.Strings.From_UTF_8_String (Error);
   end Set_MySQL_Error;

end Matreshka.Internals.SQL_Drivers.MySQL.Databases;
