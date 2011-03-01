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
with Ada.Streams;
with Ada.Wide_Wide_Text_IO;

with League.Text_Codecs;

package body Matreshka.Internals.SQL_Drivers.PostgreSQL.Queries is

   Codec : constant League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("UTF-8"));
   --  It is used everywhere to convert text data, PostgreSQL_Database is
   --  responsible to set client encodings to UTF-8.

   ----------------
   -- Bind_Value --
   ----------------

   overriding procedure Bind_Value
    (Self      : not null access PostgreSQL_Query;
     Name      : League.Strings.Universal_String;
     Value     : League.Values.Value;
     Direction : SQL.Parameter_Directions) is
   begin
      raise Program_Error;
   end Bind_Value;

   -------------------
   -- Error_Message --
   -------------------

   overriding function Error_Message
    (Self : not null access PostgreSQL_Query)
       return League.Strings.Universal_String is
   begin
      return Self.Error;
   end Error_Message;

   -------------
   -- Execute --
   -------------

   overriding function Execute
    (Self : not null access PostgreSQL_Query) return Boolean
   is
      Result : PGresult_Access;

   begin
      Result :=
        PQexecPrepared
         (Databases.PostgreSQL_Database'Class (Self.Database.all).Handle,
          Self.Name,
          0,
          null,
          null,
          null,
          0);

      --  "The result is a PGresult pointer or possibly a null pointer. A
      --  non-null pointer will generally be returned except in out-of-memory
      --  conditions or serious errors such as inability to send the command to
      --  the server. If a null pointer is returned, it should be treated like
      --  a PGRES_FATAL_ERROR result. Use PQerrorMessage to get more
      --  information about such errors."

      --  Handle fatal error.

      if Result = null then
         --  Obtain current error message.

         Self.Error :=
           Databases.PostgreSQL_Database'Class
            (Self.Database.all).Get_Error_Message;

         return False;
      end if;

      --  Handle non-fatal errors.

      if PQresultStatus (Result) /= PGRES_COMMAND_OK then
         --  Obtain error message.

         Self.Error :=
           Databases.PostgreSQL_Database'Class
            (Self.Database.all).Get_Error_Message;

         --  Cleanup.

         PQclear (Result);

         return False;
      end if;

      return True;
   end Execute;

   ------------
   -- Finish --
   ------------

   overriding procedure Finish (Self : not null access PostgreSQL_Query) is
   begin
      raise Program_Error;
   end Finish;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Self     : not null access PostgreSQL_Query'Class;
     Database : not null access Databases.PostgreSQL_Database'Class) is
   begin
      SQL_Drivers.Initialize (Self, Database_Access (Database));
   end Initialize;

   ----------------
   -- Invalidate --
   ----------------

   overriding procedure Invalidate (Self : not null access PostgreSQL_Query) is
   begin
      if Self.Database /= null then
         Interfaces.C.Strings.Free (Self.Name);
      end if;

      --  Call Invalidate of parent tagged type.

      Abstract_Query (Self.all).Invalidate;
   end Invalidate;

   ---------------
   -- Is_Active --
   ---------------

   overriding function Is_Active
    (Self : not null access PostgreSQL_Query) return Boolean is
   begin
      return False;
   end Is_Active;

   ----------
   -- Next --
   ----------

   overriding function Next
    (Self : not null access PostgreSQL_Query) return Boolean is
   begin
      return False;
   end Next;

   -------------
   -- Prepare --
   -------------

   overriding function Prepare
    (Self  : not null access PostgreSQL_Query;
     Query : League.Strings.Universal_String) return Boolean
   is
      V_Query : constant Ada.Streams.Stream_Element_Array
        := Codec.Encode (Query).To_Stream_Element_Array;
      S_Query : String (1 .. V_Query'Length);
      for S_Query'Address use V_Query'Address;
      pragma Import (Ada, S_Query);
      C_Query : Interfaces.C.Strings.chars_ptr
        := Interfaces.C.Strings.New_String (S_Query);

      Result : PGresult_Access;

   begin
      Self.Name :=
        Databases.PostgreSQL_Database'Class
         (Self.Database.all).Allocate_Statement_Name;

      --  Prepare statement and let server to handle parameters' types.

      Result :=
        PQprepare
         (Databases.PostgreSQL_Database'Class (Self.Database.all).Handle,
          Self.Name,
          C_Query,
          0,
          null);

      --  "The result is normally a PGresult object whose contents indicate
      --  server-side success or failure. A null result indicates out-of-memory
      --  or inability to send the command at all. Use PQerrorMessage to get
      --  more information about such errors."

      --  Handle fatal error.

      if Result = null then
         --  Obtain error message.

         Self.Error :=
           Databases.PostgreSQL_Database'Class
            (Self.Database.all).Get_Error_Message;

         --  Cleanup.

         Interfaces.C.Strings.Free (Self.Name);

         return False;
      end if;

      --  Handle non-fatal errors.

      if PQresultStatus (Result) /= PGRES_COMMAND_OK then
         --  Obtain error message.

         Self.Error :=
           Databases.PostgreSQL_Database'Class
            (Self.Database.all).Get_Error_Message;

         --  Cleanup.

         Interfaces.C.Strings.Free (Self.Name);
         PQclear (Result);

         return False;
      end if;

      --  Local cleanup.

      PQclear (Result);

      return True;
   end Prepare;

   -----------
   -- Value --
   -----------

   overriding function Value
    (Self  : not null access PostgreSQL_Query;
     Index : Positive) return League.Values.Value is
   begin
      return X : League.Values.Value;
   end Value;

end Matreshka.Internals.SQL_Drivers.PostgreSQL.Queries;
