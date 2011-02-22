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
private with Ada.Finalization;

with League.Strings;
with League.Values;
private with Matreshka.Internals.SQL_Queries.Dummy;

package SQL.Queries is

--   pragma Preelaborate;

   type Parameter_Directions is
    (In_Parameter, Out_Parameter, In_Out_Parameter);

   type SQL_Query is tagged private;

   procedure Bind_Value
    (Self      : in out SQL_Query'Class;
     Name      : League.Strings.Universal_String;
     Value     : League.Values.Value;
     Direction : Parameter_Directions := In_Parameter);

   function Bound_Value
    (Self : SQL_Query'Class;
     Name : League.Strings.Universal_String) return League.Values.Value;

   function Error_Message
    (Self : SQL_Query'Class) return League.Strings.Universal_String;

--   function Execute (Self : in out SQL_Query'Class) return Boolean;
   --  Executes a previously prepared SQL query. Returns True if the query
   --  executed successfully; otherwise returns False.
   --
   --  After the query is executed, the query is positioned on an invalid
   --  record and must be navigated to a valid record before data values can be
   --  retrieved.
   --
   --  Note that the last error for this query is reset when Execute is called.

   procedure Execute (Self : in out SQL_Query'Class);
   --  Executes a previously prepared SQL query. Raises SQL_Error when query
   --  is not executed successfully.
   --
   --  After the query is executed, the query is positioned on an invalid
   --  record and must be navigated to a valid record before data values can be
   --  retrieved.
   --
   --  Note that the last error for this query is reset when Execute is called.

   procedure Finish (Self : in out SQL_Query'Class);

--   function Next (Self : in out SQL_Query'Class) return Boolean;
   function Next (Self : not null access SQL_Query'Class) return Boolean;

--   function Prepare
--    (Self  : in out SQL_Query'Class;
--     Query : League.Strings.Universal_String) return Boolean;
   --  Prepares the SQL query query for execution. Returns True if the query is
   --  prepared successfully; otherwise returns False.
   --
   --  The query may contain placeholders for binding values. Both Oracle style
   --  colon-name (e.g., :surname), and ODBC style (?) placeholders are
   --  supported; but they cannot be mixed in the same query.
   --
   --  Portability note: Some databases choose to delay preparing a query until
   --  it is executed the first time. In this case, preparing a syntactically
   --  wrong query succeeds, but every consecutive Execute will fail.

   procedure Prepare
    (Self : in out SQL_Query'Class; Query : League.Strings.Universal_String);
   --  Prepares the SQL query query for execution. Raises SQL_Error if query is
   --  not prepared successfully.
   --
   --  The query may contain placeholders for binding values. Both Oracle style
   --  colon-name (e.g., :surname), and ODBC style (?) placeholders are
   --  supported; but they cannot be mixed in the same query.
   --
   --  Portability note: Some databases choose to delay preparing a query until
   --  it is executed the first time. In this case, preparing a syntactically
   --  wrong query succeeds, but every consecutive Execute will fail.

--   function Previous (Self : in out SQL_Query'Class) return Boolean;
   procedure Previous (Self : in out SQL_Query'Class);

   function Value
    (Self  : SQL_Query'Class;
     Index : Positive) return League.Values.Value;

private

   type SQL_Query is new Ada.Finalization.Controlled with record
      Data : Matreshka.Internals.SQL_Queries.Query_Access
        := Matreshka.Internals.SQL_Queries.Dummy.Empty_Query'Access;
   end record;

   overriding procedure Adjust (Self : in out SQL_Query);

   overriding procedure Finalize (Self : in out SQL_Query);

end SQL.Queries;
