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

with Ada.Containers.Hashed_Maps;
with League.Strings.Hash;
with Matreshka.Internals.SQL_Drivers.OCI.Databases;
with Matreshka.Internals.Strings;

package Matreshka.Internals.SQL_Drivers.OCI.Queries is

   type OCI_Database_Access is access all Databases.OCI_Database;

   type OCI_Query (DB : not null access Databases.OCI_Database) is
     new Abstract_Query with private;

private

   type Bound_Value is limited record
      Bind    : aliased OCI.Bind;
      Is_Null : aliased Sb2;
      String  : League.Strings.Universal_String;
      Int     : aliased League.Values.Universal_Integer;
      Float   : aliased League.Values.Universal_Float;
   end record;

   type Bound_Value_Access is access Bound_Value;

   package Parameter_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           Bound_Value_Access,
           League.Strings.Hash,
           League.Strings."=");

   type Column_Types is (String_Column, Integer_Column, Float_Column);

   type Defined_Value is limited record
      Column_Type : Column_Types;
      Define  : aliased OCI.Define;
      Is_Null : aliased Sb2;
      Size    : Utf16.Utf16_String_Index;
      String  : Matreshka.Internals.Strings.Shared_String_Access;
      Int     : aliased League.Values.Universal_Integer;
      Float   : aliased League.Values.Universal_Float;
   end record;

   type Defined_Value_Array is array (Positive range <>) of Defined_Value;

   type Defined_Value_Array_Access is access Defined_Value_Array;

   type Query_States is (Created, Prepared, Executed, Has_Row, No_More_Rows);

   subtype Active   is Query_States range Executed .. No_More_Rows;
   subtype Fetching is Query_States range Executed .. Has_Row;
   subtype Ready    is Query_States range Prepared .. No_More_Rows;

   type OCI_Query  (DB : not null access Databases.OCI_Database) is
     new Abstract_Query with record
        Handle       : aliased Statement_Handle;
        Column_Count : Natural := 0;
        State        : Query_States := Created;
        Is_Described : Boolean := False;
        Is_Select    : Boolean := False;
        Parameters   : Parameter_Maps.Map;
        Columns      : Defined_Value_Array_Access;
   end record;

   overriding procedure Bind_Value
    (Self      : not null access OCI_Query;
     Name      : League.Strings.Universal_String;
     Value     : League.Values.Value;
     Direction : SQL.Parameter_Directions);

   overriding function Error_Message
    (Self : not null access OCI_Query)
       return League.Strings.Universal_String;

   overriding function Execute
    (Self : not null access OCI_Query) return Boolean;

   overriding procedure Finish (Self : not null access OCI_Query);

   overriding procedure Invalidate (Self : not null access OCI_Query);

   overriding function Is_Active
    (Self : not null access OCI_Query) return Boolean;

   overriding function Next
    (Self : not null access OCI_Query) return Boolean;

   overriding function Prepare
    (Self  : not null access OCI_Query;
     Query : League.Strings.Universal_String) return Boolean;

   overriding function Value
    (Self  : not null access OCI_Query;
     Index : Positive) return League.Values.Value;

end Matreshka.Internals.SQL_Drivers.OCI.Queries;
