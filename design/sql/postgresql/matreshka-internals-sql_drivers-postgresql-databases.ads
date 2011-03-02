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
--  Implementation of database abstraction for PostgreSQL.
------------------------------------------------------------------------------
private with Ada.Containers.Ordered_Maps;

package Matreshka.Internals.SQL_Drivers.PostgreSQL.Databases is

   type PostgreSQL_Database is new Abstract_Database with private;

   type Data_Types is (Text_Data, Integer_Data, Float_Data);

   function Allocate_Statement_Name
    (Self : not null access PostgreSQL_Database'Class)
       return Interfaces.C.Strings.chars_ptr;
   --  Allocates statement identifier. Returns name as C pointer to be used
   --  in low level API. Returned name must be deallocated by caller.

   function Handle
    (Self : not null access PostgreSQL_Database'Class) return PGconn_Access;
   --  Returns database connection handle.

   function Get_Error_Message
    (Self : not null access PostgreSQL_Database'Class)
       return League.Strings.Universal_String;
   --  Returns current error message.

   function Get_Type
    (Self     : not null access PostgreSQL_Database'Class;
     Type_Oid : Oid) return Data_Types;
   --  Returns base type of the type with specified Oid.

private

   package Maps is new Ada.Containers.Ordered_Maps (Oid, Data_Types);

   type PostgreSQL_Database is new Abstract_Database with record
      Handle    : PGconn_Access;
      Error     : League.Strings.Universal_String;
      Statement : Natural;
      Type_Map  : Maps.Map;
   end record;

   overriding procedure Close (Self : not null access PostgreSQL_Database);

   overriding procedure Commit (Self : not null access PostgreSQL_Database);

   overriding function Error_Message
    (Self : not null access PostgreSQL_Database)
       return League.Strings.Universal_String;

   overriding procedure Finalize (Self : not null access PostgreSQL_Database);

   overriding function Open
    (Self    : not null access PostgreSQL_Database;
     Options : League.Strings.Universal_String) return Boolean;

   overriding function Query
    (Self : not null access PostgreSQL_Database) return not null Query_Access;

end Matreshka.Internals.SQL_Drivers.PostgreSQL.Databases;
