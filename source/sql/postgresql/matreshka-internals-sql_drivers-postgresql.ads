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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This package provides low level binding to PostgreSQL database client
--  library.
------------------------------------------------------------------------------
with Interfaces.C.Strings;

package Matreshka.Internals.SQL_Drivers.PostgreSQL is

   pragma Preelaborate;

   -----------
   -- Types --
   -----------

   type PGconn is limited private;

   type PGconn_Access is access all PGconn;
   pragma Convention (C, PGconn_Access);

   type PGresult is limited private;

   type PGresult_Access is access all PGresult;
   pragma Convention (C, PGresult_Access);

   type Oid is new Interfaces.C.int;

   type Oid_Access is access all oid;
   pragma Convention (C, Oid_Access);

   type ConnStatusType is
    (CONNECTION_OK,
     CONNECTION_BAD,
     CONNECTION_STARTED,
     CONNECTION_MADE,
     CONNECTION_AWAITING_RESPONSE,
     CONNECTION_AUTH_OK,
     CONNECTION_SETENV,
     CONNECTION_SSL_STARTUP,
     CONNECTION_NEEDED);
   pragma Convention (C, ConnStatusType);

   type ExecStatusType is
    (PGRES_EMPTY_QUERY,
     PGRES_COMMAND_OK,
     PGRES_TUPLES_OK,
     PGRES_COPY_OUT,
     PGRES_COPY_IN,
     PGRES_BAD_RESPONSE,
     PGRES_NONFATAL_ERROR,
     PGRES_FATAL_ERROR);
   pragma Convention (C, ExecStatusType);

   type chars_ptr_Access is access all Interfaces.C.Strings.chars_ptr;
   pragma Convention (C, chars_ptr_Access);

   type int_Access is access all Interfaces.C.int;
   pragma Convention (C, int_Access);

   -----------------
   -- Subprograms --
   -----------------

   function pg_encoding_to_char
    (encoding_id : Interfaces.C.int) return Interfaces.C.Strings.chars_ptr;
   pragma Import (C, pg_encoding_to_char);

   procedure PQclear (res : PGresult_Access);
   pragma Import (C, PQclear, "PQclear");

   function PQclientEncoding (conn : PGconn_Access) return Interfaces.C.int;
   pragma Import (C, PQclientEncoding, "PQclientEncoding");

   function PQconnectdbParams
    (keywords     : Interfaces.C.Strings.chars_ptr_array;
     values       : Interfaces.C.Strings.chars_ptr_array;
     expand_dbnam : Interfaces.C.int) return PGconn_Access;
   pragma Import (C, PQconnectdbParams, "PQconnectdbParams");

   function PQerrorMessage
    (conn : PGconn_Access) return Interfaces.C.Strings.chars_ptr;
   pragma Import (C, PQerrorMessage, "PQerrorMessage");

   function PQexec
    (conn    : PGconn_Access;
     command : Interfaces.C.Strings.chars_ptr) return PGresult_Access;
   pragma Import (C, PQexec, "PQexec");

   function PQexecPrepared
    (conn         : PGconn_Access;
     stmtName     : Interfaces.C.Strings.chars_ptr;
     nParams      : Interfaces.C.int;
--     paramValues  : chars_ptr_Access;
     paramValues  : Interfaces.C.Strings.chars_ptr_array;
     paramLengths : int_Access;
     paramFormats : int_Access;
     resultFormat : Interfaces.C.int) return PGresult_Access;
   pragma Import (C, PQexecPrepared, "PQexecPrepared");

   procedure PQfinish (conn : PGconn_Access);
   pragma Import (C, PQfinish, "PQfinish");

   function PQftype
    (res : PGresult_Access; column_number : Interfaces.C.int) return Oid;
   pragma Import (C, PQftype, "PQftype");

   function PQgetisnull
    (res           : PGresult_Access;
     row_number    : Interfaces.C.int;
     column_number : Interfaces.C.int) return Interfaces.C.int;
   pragma Import (C, PQgetisnull, "PQgetisnull");

   function PQgetlength
    (res           : PGresult_Access;
     row_number    : Interfaces.C.int;
     column_number : Interfaces.C.int) return Interfaces.C.int;
   pragma Import (C, PQgetlength, "PQgetlength");

   function PQgetvalue
    (res           : PGresult_Access;
     row_number    : Interfaces.C.int;
     column_number : Interfaces.C.int) return Interfaces.C.Strings.chars_ptr;
   pragma Import (C, PQgetvalue, "PQgetvalue");

   function PQisthreadsafe return Interfaces.C.int;
   pragma Import (C, PQisthreadsafe, "PQisthreadsafe");

   function PQntuples (res : PGresult_Access) return Interfaces.C.int;
   pragma Import (C, PQntuples, "PQntuples");

   function PQprepare
    (conn       : PGconn_Access;
     stmtName   : Interfaces.C.Strings.chars_ptr;
     query      : Interfaces.C.Strings.chars_ptr;
     nParams    : Interfaces.C.int;
     paramTypes : Oid_Access) return PGresult_Access;
   pragma Import (C, PQprepare, "PQprepare");

   function PQresultStatus (res : PGresult_Access) return ExecStatusType;
   pragma Import (C, PQresultStatus, "PQresultStatus");

   function PQsetClientEncoding
    (conn     : PGconn_Access;
     encoding : Interfaces.C.Strings.chars_ptr) return Interfaces.C.int;
   pragma Import (C, PQsetClientEncoding, "PQsetClientEncoding");

   function PQstatus (conn : PGconn_Access) return ConnStatusType;
   pragma Import (C, PQstatus, "PQstatus");

private

   type PGconn is limited null record;

   type PGresult is limited null record;

end Matreshka.Internals.SQL_Drivers.PostgreSQL;
