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
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This package provides low level binding to MySQL client library or embedded
--  server functions.
------------------------------------------------------------------------------
with System;

with Interfaces.C.Strings;

package Matreshka.Internals.SQL_Drivers.MySQL is

   pragma Preelaborate;

   -----------
   -- Types --
   -----------

   type MYSQL is limited private;

   type MYSQL_Access is access all MYSQL;
   pragma Convention (C, MYSQL_Access);

   type MYSQL_STMT is limited private;

   type MYSQL_STMT_Access is access all MYSQL_STMT;
   pragma Convention (C, MYSQL_STMT_Access);

   type MYSQL_RES is limited private;

   type MYSQL_RES_Access is access all MYSQL_RES;
   pragma Convention (C, MYSQL_RES_Access);

   type my_bool is new Interfaces.C.signed_char;

   type mysql_option is
    (MYSQL_OPT_CONNECT_TIMEOUT,
     MYSQL_OPT_COMPRESS,
     MYSQL_OPT_NAMED_PIPE,
     MYSQL_INIT_COMMAND,
     MYSQL_READ_DEFAULT_FILE,
     MYSQL_READ_DEFAULT_GROUP,
     MYSQL_SET_CHARSET_DIR,
     MYSQL_SET_CHARSET_NAME,
     MYSQL_OPT_LOCAL_INFILE,
     MYSQL_OPT_PROTOCOL,
     MYSQL_SHARED_MEMORY_BASE_NAME,
     MYSQL_OPT_READ_TIMEOUT,
     MYSQL_OPT_WRITE_TIMEOUT,
     MYSQL_OPT_USE_RESULT,
     MYSQL_OPT_USE_REMOTE_CONNECTION,
     MYSQL_OPT_USE_EMBEDDED_CONNECTION,
     MYSQL_OPT_GUESS_CONNECTION,
     MYSQL_SET_CLIENT_IP,
     MYSQL_SECURE_AUTH,
     MYSQL_REPORT_DATA_TRUNCATION,
     MYSQL_OPT_RECONNECT,
     MYSQL_OPT_SSL_VERIFY_SERVER_CERT,
     MYSQL_PLUGIN_DIR,
     MYSQL_DEFAULT_AUTH);
   pragma Convention (C, mysql_option);

   type enum_field_types is
    (MYSQL_TYPE_DECIMAL,
     MYSQL_TYPE_TINY,
     MYSQL_TYPE_SHORT,
     MYSQL_TYPE_LONG,
     MYSQL_TYPE_FLOAT,
     MYSQL_TYPE_DOUBLE,
     MYSQL_TYPE_NULL,
     MYSQL_TYPE_TIMESTAMP,
     MYSQL_TYPE_LONGLONG,
     MYSQL_TYPE_INT24,
     MYSQL_TYPE_DATE,
     MYSQL_TYPE_TIME,
     MYSQL_TYPE_DATETIME,
     MYSQL_TYPE_YEAR,
     MYSQL_TYPE_NEWDATE,
     MYSQL_TYPE_VARCHAR,
     MYSQL_TYPE_BIT,
     MYSQL_TYPE_NEWDECIMAL,
     MYSQL_TYPE_ENUM,
     MYSQL_TYPE_SET,
     MYSQL_TYPE_TINY_BLOB,
     MYSQL_TYPE_MEDIUM_BLOB,
     MYSQL_TYPE_LONG_BLOB,
     MYSQL_TYPE_BLOB,
     MYSQL_TYPE_VAR_STRING,
     MYSQL_TYPE_STRING,
     MYSQL_TYPE_GEOMETRY);
   pragma Convention (C, enum_field_types);
   for enum_field_types use
    (MYSQL_TYPE_DECIMAL     => 0,
     MYSQL_TYPE_TINY        => 1,
     MYSQL_TYPE_SHORT       => 2,
     MYSQL_TYPE_LONG        => 3,
     MYSQL_TYPE_FLOAT       => 4,
     MYSQL_TYPE_DOUBLE      => 5,
     MYSQL_TYPE_NULL        => 6,
     MYSQL_TYPE_TIMESTAMP   => 7,
     MYSQL_TYPE_LONGLONG    => 8,
     MYSQL_TYPE_INT24       => 9,
     MYSQL_TYPE_DATE        => 10,
     MYSQL_TYPE_TIME        => 11,
     MYSQL_TYPE_DATETIME    => 12,
     MYSQL_TYPE_YEAR        => 13,
     MYSQL_TYPE_NEWDATE     => 14,
     MYSQL_TYPE_VARCHAR     => 15,
     MYSQL_TYPE_BIT         => 16,
     MYSQL_TYPE_NEWDECIMAL  => 246,
     MYSQL_TYPE_ENUM        => 247,
     MYSQL_TYPE_SET         => 248,
     MYSQL_TYPE_TINY_BLOB   => 249,
     MYSQL_TYPE_MEDIUM_BLOB => 250,
     MYSQL_TYPE_LONG_BLOB   => 251,
     MYSQL_TYPE_BLOB        => 252,
     MYSQL_TYPE_VAR_STRING  => 253,
     MYSQL_TYPE_STRING      => 254,
     MYSQL_TYPE_GEOMETRY    => 255);

   type MYSQL_BIND is limited record
      length           : access Interfaces.C.unsigned_long;
      is_null          : access my_bool;
      buffer           : System.Address;
      error            : access my_bool;
      row_ptr          : access Interfaces.C.unsigned_char;
      store_param_func : System.Address;
      fetch_result     : System.Address;
      skip_result      : System.Address;
      buffer_length    : Interfaces.C.unsigned_long;
      offset           : Interfaces.C.unsigned_long;
      length_value     : Interfaces.C.unsigned_long;
      param_number     : Interfaces.C.unsigned;
      pack_length      : Interfaces.C.unsigned;
      buffer_type      : enum_field_types;
      error_value      : my_bool;
      is_unsigned      : my_bool;
      long_data_used   : my_bool;
      is_null_value    : my_bool;
      extension        : System.Address;
   end record;
   pragma Convention (C, MYSQL_BIND);

   type MYSQL_BIND_Array is array (Positive range <>) of aliased MYSQL_BIND;
   pragma Convention (C, MYSQL_BIND_Array);

   type MYSQL_BIND_Array_Access is access all MYSQL_BIND_Array;

   type MYSQL_FIELD is record
      name             : Interfaces.C.Strings.chars_ptr;
      org_name         : Interfaces.C.Strings.chars_ptr;
      table            : Interfaces.C.Strings.chars_ptr;
      org_table        : Interfaces.C.Strings.chars_ptr;
      db               : Interfaces.C.Strings.chars_ptr;
      catalog          : Interfaces.C.Strings.chars_ptr;
      def              : Interfaces.C.Strings.chars_ptr;
      length           : Interfaces.C.unsigned_long;
      max_length       : Interfaces.C.unsigned_long;
      name_length      : Interfaces.C.unsigned;
      org_name_length  : Interfaces.C.unsigned;
      table_length     : Interfaces.C.unsigned;
      org_table_length : Interfaces.C.unsigned;
      db_length        : Interfaces.C.unsigned;
      catalog_length   : Interfaces.C.unsigned;
      def_length       : Interfaces.C.unsigned;
      flags            : Interfaces.C.unsigned;
      decimals         : Interfaces.C.unsigned;
      charsetnr        : Interfaces.C.unsigned;
      field_type       : enum_field_types;
      extension        : System.Address;
   end record;
   pragma Convention (C, MYSQL_FIELD);

   type MYSQL_FIELD_Access is access all MYSQL_FIELD;
   pragma Convention (C, MYSQL_FIELD_Access);

   MYSQL_NO_DATA        : constant := 100;
   MYSQL_DATA_TRUNCATED : constant := 101;

   type enum_mysql_timestamp_type is
    (MYSQL_TIMESTAMP_NONE,
     MYSQL_TIMESTAMP_ERROR,
     MYSQL_TIMESTAMP_DATE,
     MYSQL_TIMESTAMP_DATETIME,
     MYSQL_TIMESTAMP_TIME);
   for enum_mysql_timestamp_type use
    (MYSQL_TIMESTAMP_NONE     => -2,
     MYSQL_TIMESTAMP_ERROR    => -1,
     MYSQL_TIMESTAMP_DATE     => 0,
     MYSQL_TIMESTAMP_DATETIME => 1,
     MYSQL_TIMESTAMP_TIME     => 2);
   pragma Convention (C, enum_mysql_timestamp_type);

   type MYSQL_TIME is record
      year        : Interfaces.C.unsigned;
      month       : Interfaces.C.unsigned;
      day         : Interfaces.C.unsigned;
      hour        : Interfaces.C.unsigned;
      minute      : Interfaces.C.unsigned;
      second      : Interfaces.C.unsigned;
      second_part : Interfaces.C.unsigned_long;
      neg         : my_bool;
      time_type   : enum_mysql_timestamp_type;
   end record;
   pragma Convention (C, MYSQL_TIME);

   -----------------
   -- Subprograms --
   -----------------

   procedure mysql_close (handle : not null access MYSQL);
   pragma Import (C, mysql_close, "mysql_close");

   function mysql_error
    (handle : not null access MYSQL) return Interfaces.C.Strings.chars_ptr;
   pragma Import (C, mysql_error, "mysql_error");

   procedure mysql_free_result (handle : not null access MYSQL_RES);
   pragma Import (C, mysql_free_result, "mysql_free_result");

   function mysql_fetch_field
    (handle : not null access MYSQL_RES) return MYSQL_FIELD_Access;
   pragma Import (C, mysql_fetch_field, "mysql_fetch_field");

   function mysql_init (handle : access MYSQL) return MYSQL_Access;
   pragma Import (C, mysql_init, "mysql_init");

   function mysql_library_init
    (argc   : Interfaces.C.int;
     argv   : access Interfaces.C.Strings.chars_ptr;
     groups : access Interfaces.C.Strings.chars_ptr) return Interfaces.C.int;
   pragma Import (C, mysql_library_init, "mysql_server_init");
   --  MySQL defines mysql_library_init as alias of mysql_server_init.

   function mysql_num_fields
    (handle : not null access MYSQL_RES) return Interfaces.C.unsigned;
   pragma Import (C, mysql_num_fields, "mysql_num_fields");

   function mysql_options
    (handle : not null access MYSQL;
     option : mysql_option;
     arg    : Interfaces.C.char_array) return Interfaces.C.int;
   pragma Import (C, mysql_options, "mysql_options");

   function mysql_real_connect
    (handle : not null access MYSQL;
     host   : Interfaces.C.Strings.chars_ptr;
     user   : Interfaces.C.Strings.chars_ptr;
     passwd : Interfaces.C.Strings.chars_ptr;
     db     : Interfaces.C.Strings.chars_ptr;
     port   : Interfaces.C.unsigned;
     unix_socket : Interfaces.C.Strings.chars_ptr;
     client_flag : Interfaces.C.unsigned_long) return MYSQL_Access;
   pragma Import (C, mysql_real_connect, "mysql_real_connect");

   function mysql_stmt_bind_param
    (handle : not null access MYSQL_STMT;
     bind   : access MYSQL_BIND) return my_bool;
   pragma Import (C, mysql_stmt_bind_param, "mysql_stmt_bind_param");

   function mysql_stmt_bind_result
    (handle : not null access MYSQL_STMT;
     bind   : access MYSQL_BIND) return my_bool;
   pragma Import (C, mysql_stmt_bind_result, "mysql_stmt_bind_result");

   function mysql_stmt_close
    (handle : not null access MYSQL_STMT) return my_bool;
   pragma Import (C, mysql_stmt_close, "mysql_stmt_close");

   function mysql_stmt_error
    (handle : not null access MYSQL_STMT)
       return Interfaces.C.Strings.chars_ptr;
   pragma Import (C, mysql_stmt_error, "mysql_stmt_error");

   function mysql_stmt_execute
    (handle   : not null access MYSQL_STMT) return Interfaces.C.int;
   pragma Import (C, mysql_stmt_execute, "mysql_stmt_execute");

   function mysql_stmt_fetch
    (handle : not null access MYSQL_STMT) return Interfaces.C.int;
   pragma Import (C, mysql_stmt_fetch, "mysql_stmt_fetch");

   function mysql_stmt_init
    (handle : not null access MYSQL) return MYSQL_STMT_Access;
   pragma Import (C, mysql_stmt_init, "mysql_stmt_init");

   function mysql_stmt_param_count
    (handle : not null access MYSQL_STMT) return Interfaces.C.unsigned_long;
   pragma Import (C, mysql_stmt_param_count, "mysql_stmt_param_count");

   function mysql_stmt_prepare
    (handle   : not null access MYSQL_STMT;
     stmt_str : Interfaces.C.Strings.chars_ptr;
     length   : Interfaces.C.unsigned_long) return Interfaces.C.int;
   pragma Import (C, mysql_stmt_prepare, "mysql_stmt_prepare");

   function mysql_stmt_result_metadata
    (handle : not null access MYSQL_STMT) return MYSQL_RES_Access;
   pragma Import (C, mysql_stmt_result_metadata, "mysql_stmt_result_metadata");

   ---------------
   -- Utilities --
   ---------------

   procedure Initialize (Item : in out MYSQL_BIND_Array);
   --  Fills memory by zero.

private

   type MYSQL is limited null record;

   type MYSQL_STMT is limited null record;

   type MYSQL_RES is limited null record;

end Matreshka.Internals.SQL_Drivers.MySQL;
