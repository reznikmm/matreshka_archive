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
--  This package provides implementation of Query abstraction for PostgreSQL.
------------------------------------------------------------------------------
with Matreshka.Internals.SQL_Drivers.PostgreSQL.Databases;
private with Matreshka.Internals.SQL_Parameter_Sets;

package Matreshka.Internals.SQL_Drivers.PostgreSQL.Queries is

   type PostgreSQL_Query is new Abstract_Query with private;

   procedure Initialize
    (Self     : not null access PostgreSQL_Query'Class;
     Database : not null access Databases.PostgreSQL_Database'Class);

private

   type PostgreSQL_Query is new Abstract_Query with record
      Name       : Interfaces.C.Strings.chars_ptr
        := Interfaces.C.Strings.Null_Ptr;
      Error      : League.Strings.Universal_String;
      Parameters : Matreshka.Internals.SQL_Parameter_Sets.Parameter_Set;
      Result     : PGresult_Access;
      Row        : Interfaces.C.int;
   end record;

   overriding procedure Bind_Value
    (Self      : not null access PostgreSQL_Query;
     Name      : League.Strings.Universal_String;
     Value     : League.Values.Value;
     Direction : SQL.Parameter_Directions);

   overriding function Bound_Value
    (Self : not null access PostgreSQL_Query;
     Name : League.Strings.Universal_String)
       return League.Values.Value;

   overriding function Error_Message
    (Self : not null access PostgreSQL_Query)
       return League.Strings.Universal_String;

   overriding function Execute
    (Self : not null access PostgreSQL_Query) return Boolean;

   overriding procedure Finish (Self : not null access PostgreSQL_Query);

   overriding procedure Invalidate (Self : not null access PostgreSQL_Query);

   overriding function Is_Active
    (Self : not null access PostgreSQL_Query) return Boolean;

   overriding function Next
    (Self : not null access PostgreSQL_Query) return Boolean;

   overriding function Prepare
    (Self  : not null access PostgreSQL_Query;
     Query : League.Strings.Universal_String) return Boolean;

   overriding function Value
    (Self  : not null access PostgreSQL_Query;
     Index : Positive) return League.Values.Value;

end Matreshka.Internals.SQL_Drivers.PostgreSQL.Queries;
