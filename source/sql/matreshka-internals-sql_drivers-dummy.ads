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
--  This package provides dummy implementation of Abstract_Database and
--  Abstract_Query to be used as empty value.
------------------------------------------------------------------------------

package Matreshka.Internals.SQL_Drivers.Dummy is

   pragma Preelaborate;

   type Dummy_Database is new Abstract_Database with null record;

   overriding function Open
    (Self    : not null access Dummy_Database;
     Options : SQL.Options.SQL_Options) return Boolean;

   overriding procedure Close (Self : not null access Dummy_Database) is null;

   overriding procedure Commit (Self : not null access Dummy_Database) is null;

   overriding function Error_Message
    (Self : not null access Dummy_Database)
       return League.Strings.Universal_String;

   overriding function Query
    (Self : not null access Dummy_Database) return not null Query_Access;

   type Dummy_Query is new Abstract_Query with null record;

   overriding procedure Bind_Value
    (Self      : not null access Dummy_Query;
     Name      : League.Strings.Universal_String;
     Value     : League.Holders.Holder;
     Direction : SQL.Parameter_Directions) is null;

   overriding function Bound_Value
    (Self : not null access Dummy_Query;
     Name : League.Strings.Universal_String)
       return League.Holders.Holder;

   overriding function Error_Message
    (Self : not null access Dummy_Query)
       return League.Strings.Universal_String;

   overriding function Execute
    (Self : not null access Dummy_Query) return Boolean;

   overriding procedure Finish (Self : not null access Dummy_Query) is null;

   overriding function Is_Active
    (Self : not null access Dummy_Query) return Boolean;

   overriding function Prepare
    (Self  : not null access Dummy_Query;
     Query : League.Strings.Universal_String) return Boolean;

   overriding function Next
    (Self : not null access Dummy_Query) return Boolean;

   overriding function Value
    (Self  : not null access Dummy_Query;
     Index : Positive) return League.Holders.Holder;

   Empty_Database : aliased Dummy_Database;
   Empty_Query    : aliased Dummy_Query;

end Matreshka.Internals.SQL_Drivers.Dummy;
