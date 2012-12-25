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
     Options : SQL.Options.SQL_Options) return Boolean
   is
      use type Interfaces.C.int;

      Database_Name : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String ("database");
      Host_Name     : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String ("host");
      Password_Name : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String ("password");
      Port_Name     : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String ("port");
      Socket_Name   : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String ("socket");
      User_Name     : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String ("user");

      Host_Option     : Interfaces.C.Strings.chars_ptr
        := Interfaces.C.Strings.Null_Ptr;
      User_Option     : Interfaces.C.Strings.chars_ptr
        := Interfaces.C.Strings.Null_Ptr;
      Password_Option : Interfaces.C.Strings.chars_ptr
        := Interfaces.C.Strings.Null_Ptr;
      Database_Option : Interfaces.C.Strings.chars_ptr
        := Interfaces.C.Strings.Null_Ptr;
      Port_Option     : Interfaces.C.unsigned := 0;
      Socket_Option   : Interfaces.C.Strings.chars_ptr
        := Interfaces.C.Strings.Null_Ptr;
      Result          : MYSQL_Access;

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

      --  Prepare options.

      if Options.Is_Set (Host_Name) then
         Host_Option :=
           Interfaces.C.Strings.New_String
            (Options.Get (Host_Name).To_UTF_8_String);
      end if;

      if Options.Is_Set (User_Name) then
         User_Option :=
           Interfaces.C.Strings.New_String
            (Options.Get (User_Name).To_UTF_8_String);
      end if;

      if Options.Is_Set (Password_Name) then
         Password_Option :=
           Interfaces.C.Strings.New_String
            (Options.Get (Password_Name).To_UTF_8_String);
      end if;

      if Options.Is_Set (Database_Name) then
         Database_Option :=
           Interfaces.C.Strings.New_String
            (Options.Get (Database_Name).To_UTF_8_String);
      end if;

      if Options.Is_Set (Port_Name) then
         Port_Option :=
           Interfaces.C.unsigned'Wide_Wide_Value
            (Options.Get (Port_Name).To_Wide_Wide_String);
      end if;

      if Options.Is_Set (Socket_Name) then
         Socket_Option :=
           Interfaces.C.Strings.New_String
            (Options.Get (Socket_Name).To_UTF_8_String);
      end if;

      --  Connect to database.

      Result :=
        mysql_real_connect
         (Self.Handle,
          Host_Option,
          User_Option,
          Password_Option,
          Database_Option,
          Port_Option,
          Socket_Option,
          0);

      --  Cleanup options.

      Interfaces.C.Strings.Free (Host_Option);
      Interfaces.C.Strings.Free (User_Option);
      Interfaces.C.Strings.Free (Password_Option);
      Interfaces.C.Strings.Free (Database_Option);
      Interfaces.C.Strings.Free (Socket_Option);

      --  Check result of operation.

      if Result = null then
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
