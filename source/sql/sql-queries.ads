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

with League.Holders;
with League.Strings;
private with Matreshka.Internals.SQL_Drivers.Dummy;

package SQL.Queries is

   type SQL_Query is tagged private;

   procedure Bind_Value
    (Self      : in out SQL_Query'Class;
     Name      : League.Strings.Universal_String;
     Value     : League.Holders.Holder;
     Direction : Parameter_Directions := In_Parameter);
   --  Set the placeholder Name to be bound to value Value in the prepared
   --  statement.
   --
   --  XXX Add description of Direction and how to set value to NULL.

   function Bound_Value
    (Self : SQL_Query'Class;
     Name : League.Strings.Universal_String) return League.Holders.Holder;

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
   --  Instruct the database driver that no more data will be fetched from this
   --  query until it is re-executed. There is normally no need to call this
   --  function, but it may be helpful in order to free resources such as locks
   --  or cursors if you intend to re-use the query at a later time.
   --
   --  Sets the query to inactive. Bound values retain their values.

   function Is_Active (Self : SQL_Query'Class) return Boolean;
   --  Returns True if the query is active. An active SQL_Query is one that has
   --  been executed successfully but not yet finished with. When you are
   --  finished with an active query, you can make make the query inactive by
   --  calling Finish, or you can delete the SQL_Query instance.
   --
   --  Note: Of particular interest is an active query that is a SELECT
   --  statement. For some databases that support transactions, an active query
   --  that is a SELECT statement can cause a Commit or a Rollback to fail, so
   --  before committing or rolling back, you should make your active SELECT
   --  statement query inactive using one of the ways listed above.

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
--   procedure Previous (Self : in out SQL_Query'Class);

   function Value
    (Self  : SQL_Query'Class;
     Index : Positive) return League.Holders.Holder;

private

   type SQL_Query is new Ada.Finalization.Controlled with record
      Data : Matreshka.Internals.SQL_Drivers.Query_Access
        := Matreshka.Internals.SQL_Drivers.Dummy.Empty_Query'Access;
   end record;

   overriding procedure Adjust (Self : in out SQL_Query);

   overriding procedure Finalize (Self : in out SQL_Query);

end SQL.Queries;
