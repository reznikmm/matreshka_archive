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

with League.Text_Codecs;
with Matreshka.Internals.SQL_Drivers.PostgreSQL.Queries;

package body Matreshka.Internals.SQL_Drivers.PostgreSQL.Databases is

   ISO_8859_1_Codec : constant League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("ISO-8859-1"));
   --  It is used to convert character endcoding name only.
   UTF8_Codec       : constant League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("UTF-8"));
   --  It is used everywhere to convert text data.

   -----------------------------
   -- Allocate_Statement_Name --
   -----------------------------

   function Allocate_Statement_Name
    (Self : not null access PostgreSQL_Database'Class)
       return Interfaces.C.Strings.chars_ptr is
   begin
      Self.Statement := Self.Statement + 1;

      return
        Interfaces.C.Strings.New_String
         ("Matreshka" & Integer'Image (Self.Statement));
   end Allocate_Statement_Name;

   -----------
   -- Close --
   -----------

   overriding procedure Close (Self : not null access PostgreSQL_Database) is
   begin
      Self.Invalidate_Queries;

      if Self.Handle /= null then
         PQfinish (Self.Handle);
         Self.Handle := null;
      end if;
   end Close;

   ------------
   -- Commit --
   ------------

   overriding procedure Commit (Self : not null access PostgreSQL_Database) is
   begin
      null;
   end Commit;

   -------------------
   -- Error_Message --
   -------------------

   overriding function Error_Message
    (Self : not null access PostgreSQL_Database)
       return League.Strings.Universal_String is
   begin
      return Self.Error;
   end Error_Message;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize
    (Self : not null access PostgreSQL_Database) is
   begin
      if Self.Handle /= null then
         Self.Close;
      end if;
   end Finalize;

   -----------------------
   -- Get_Error_Message --
   -----------------------

   function Get_Error_Message
    (Self : not null access PostgreSQL_Database'Class)
       return League.Strings.Universal_String
   is
      Client_Encoding : constant String
        := Interfaces.C.Strings.Value
            (pg_encoding_to_char (PQclientEncoding (Self.Handle)));
      Encoding_Source :
        Ada.Streams.Stream_Element_Array (1 .. Client_Encoding'Length);
      for Encoding_Source'Address use Client_Encoding'Address;
      pragma Import (Ada, Encoding_Source);
      Encoding        : League.Strings.Universal_String
        := ISO_8859_1_Codec.Decode (Encoding_Source);

      Message         : constant String
        := Interfaces.C.Strings.Value (PQerrorMessage (Self.Handle));
      Source          : Ada.Streams.Stream_Element_Array (1 .. Message'Length);
      for Source'Address use Message'Address;
      pragma Import (Ada, Source);

   begin
      --  pg_encoding_to_char return empty string when encoding is invalid (it
      --  is case when connection can't be established). ISO-8859-1 is used
      --  as fallback encoding.

      if Encoding.Is_Empty then
         Encoding := League.Strings.To_Universal_String ("ISO-8859-1");
      end if;

      --  Set error message.

      return League.Text_Codecs.Codec (Encoding).Decode (Source);
   end Get_Error_Message;


   ------------
   -- Handle --
   ------------

   function Handle
    (Self : not null access PostgreSQL_Database'Class) return PGconn_Access is
   begin
      return Self.Handle;
   end Handle;

   ----------
   -- Open --
   ----------

   overriding function Open
    (Self    : not null access PostgreSQL_Database;
     Options : League.Strings.Universal_String) return Boolean is
   begin
      --  Establish connection.

      Self.Handle := PQconnectdb (Interfaces.C.Strings.New_String (""));

      if Self.Handle = null then
         --  PQconnectdb can return null when it unable to allocate memory.

         return False;
      end if;

      --  Check connection status.

      if PQstatus (Self.Handle) /= CONNECTION_OK then
         --  Sets error message.

         Self.Error := Self.Get_Error_Message;

         --  Cleanup.

         PQfinish (Self.Handle);
         Self.Handle := null;

         return False;
      end if;

      --  Set client encoding to UTF-8.

      declare
         use type Interfaces.C.int;

         Encoding : Interfaces.C.Strings.chars_ptr
           := Interfaces.C.Strings.New_String ("UTF8");

      begin
         if PQsetClientEncoding (Self.Handle, Encoding) /= 0 then
            Interfaces.C.Strings.Free (Encoding);

            --  Set error message.

            Self.Error := Self.Get_Error_Message;

            --  Cleanup.

            PQfinish (Self.Handle);
            Self.Handle := null;

            return False;
         end if;

         Interfaces.C.Strings.Free (Encoding);
      end;

      --  Initialize internal data.

      Self.Statement := 0;

      return True;
   end Open;

   -----------
   -- Query --
   -----------

   overriding function Query
    (Self : not null access PostgreSQL_Database)
       return not null Query_Access is
   begin
      return Aux : constant not null Query_Access
        := new Queries.PostgreSQL_Query
      do
         Queries.Initialize
          (Queries.PostgreSQL_Query'Class (Aux.all)'Access, Self);
      end return;
   end Query;

end Matreshka.Internals.SQL_Drivers.PostgreSQL.Databases;
