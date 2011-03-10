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
-- Copyright © 2011, Maxim Reznik <reznikmm@gmail.com>                      --
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
--  Implementation of Abstract_Database type for Oracle database.
------------------------------------------------------------------------------
with Matreshka.Internals.Strings;

package Matreshka.Internals.SQL_Drivers.OCI.Databases is

   type OCI_Database is new Abstract_Database with record
      Error      : aliased Error_Handle;
      Service    : aliased Service_Handle;
      Error_Text : Matreshka.Internals.Strings.Shared_String_Access;
   end record;

   overriding procedure Close (Self : not null access OCI_Database);

   overriding procedure Commit (Self : not null access OCI_Database);

   overriding function Error_Message
    (Self : not null access OCI_Database)
       return League.Strings.Universal_String;

   overriding function Query
    (Self : not null access OCI_Database) return not null Query_Access;

   overriding procedure Finalize (Self : not null access OCI_Database);

   overriding function Open
    (Self    : not null access OCI_Database;
     Options : League.Strings.Universal_String) return Boolean;

   function Check_Error
     (Self : not null access OCI_Database;
      Code : Error_Code) return Boolean;

   Env : aliased Environment;
   --  XXX Reasons of use of global object must be here, as well as all kind of
   --  considerations of its use.

end Matreshka.Internals.SQL_Drivers.OCI.Databases;
