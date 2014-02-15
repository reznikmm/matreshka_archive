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
--  $Revision: 1793 $ $Date: 2011-06-11 10:40:44 +0300 (Сб, 11 июн 2011) $
------------------------------------------------------------------------------
--  This package provides implementation of Query abstraction for Firebird.
------------------------------------------------------------------------------
with League.Text_Codecs;
with Matreshka.Internals.SQL_Drivers.Firebird.Databases;
private with Matreshka.Internals.SQL_Drivers.Firebird.Records;
private with Matreshka.Internals.SQL_Parameter_Sets;

package Matreshka.Internals.SQL_Drivers.Firebird.Queries is

   type Firebird_Query is new Abstract_Query with private;

   procedure Initialize
    (Self     : not null access Firebird_Query'Class;
     Database : not null access Databases.Firebird_Database'Class;
     Codec    : access League.Text_Codecs.Text_Codec;
     Utf      : Boolean);

private

   type Query_State is (Active, Inactive);

   type Query_Sql_Type is
    (Unknown,           Simple_Select, Insert,
     Update,            Delete,        DDL,
     Get_Segment,       Put_Segment,   Exec_Procedure,
     Start_Transaction, Commit,        Rollback,
     Select_For_Update, Set_Generator, Save_Point_Operation);

   type Firebird_Query is new Abstract_Query with record
      State       : Query_State    := Inactive;
      Sql_Type    : Query_Sql_Type := Unknown;
      Stmt_Handle : aliased Isc_Stmt_Handle := Null_Isc_Stmt_Handle;
      Sql_Record  : Records.Sql_Record;
      Sql_Params  : Records.Sql_Record;
      Sql_Text    : League.Strings.Universal_String;

      Parameters  : Matreshka.Internals.SQL_Parameter_Sets.Parameter_Set;
      Cursor_Name : Isc_String (1 .. 10);
      Status      : aliased Isc_Results := (others => 0);
      Error       : League.Strings.Universal_String;
      Is_Valid    : Boolean := False;
   end record;

   overriding procedure Bind_Value
    (Self      : not null access Firebird_Query;
     Name      : League.Strings.Universal_String;
     Value     : League.Holders.Holder;
     Direction : SQL.Parameter_Directions);

   overriding function Bound_Value
    (Self : not null access Firebird_Query;
     Name : League.Strings.Universal_String) return League.Holders.Holder;

   overriding function Error_Message
    (Self : not null access Firebird_Query)
       return League.Strings.Universal_String;

   overriding function Execute
    (Self : not null access Firebird_Query) return Boolean;

   overriding procedure Finish (Self : not null access Firebird_Query);

   overriding procedure Invalidate (Self : not null access Firebird_Query);

   overriding function Is_Active
    (Self : not null access Firebird_Query) return Boolean;

   overriding function Next
    (Self : not null access Firebird_Query) return Boolean;

   overriding function Is_Valid
    (Self : not null access Firebird_Query) return Boolean;

   overriding function Prepare
    (Self  : not null access Firebird_Query;
     Query : League.Strings.Universal_String) return Boolean;

   overriding function Value
    (Self  : not null access Firebird_Query;
     Index : Positive) return League.Holders.Holder;

   procedure Free_Handle (Self : not null access Firebird_Query);

   function Execute_Immediate
    (Self : not null access Firebird_Query) return Boolean;

end Matreshka.Internals.SQL_Drivers.Firebird.Queries;
