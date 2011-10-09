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
--  This package provides abstract types to define database and query
--  abstractions for databases. Database drivers should provide implementation
--  of both abstractions.
--
--  Note: database driver should avoid raising of exceptions, instead it should
--  reports failures of operations in specified way and be ready to provide
--  diagnosis message in Error_Message function.
--
--  Note: all operations except Is_Valid on Abstract_Query are called only
--  when query is valid, so database drivers should use this to optimize code.
------------------------------------------------------------------------------
with League.Strings;
with League.Holders;
private with Matreshka.Atomics.Counters;
with SQL;

package Matreshka.Internals.SQL_Drivers is

   pragma Preelaborate;

   type Abstract_Database is abstract tagged limited private;

   type Database_Access is access all Abstract_Database'Class;

   type Abstract_Query is abstract tagged limited private;

   type Query_Access is access all Abstract_Query'Class;

   -----------------------
   -- Abstract_Database --
   -----------------------

   not overriding procedure Finalize
    (Self : not null access Abstract_Database) is null;
   --  Release all used resources.

   not overriding function Open
    (Self    : not null access Abstract_Database;
     Options : League.Strings.Universal_String) return Boolean is abstract;
   --  Opens database connection.
   --
   --  The function must return True on success and False on failure.

   not overriding procedure Close
    (Self : not null access Abstract_Database) is abstract;
   --  Closes the database connection, freeing any resources acquired, and
   --  invalidating any existing QSqlQuery objects that are used with the
   --  database.

   not overriding procedure Commit
    (Self : not null access Abstract_Database) is abstract;
   --  Commits active transaction.

   not overriding function Query
    (Self : not null access Abstract_Database) return not null Query_Access
       is abstract;

   not overriding function Error_Message
    (Self : not null access Abstract_Database)
       return League.Strings.Universal_String is abstract;

   procedure Invalidate_Queries
    (Self : not null access Abstract_Database'Class);
   --  Invalidates all queries.

   --------------------
   -- Abstract_Query --
   --------------------

   not overriding procedure Bind_Value
    (Self      : not null access Abstract_Query;
     Name      : League.Strings.Universal_String;
     Value     : League.Holders.Holder;
     Direction : SQL.Parameter_Directions) is abstract;

   not overriding function Bound_Value
    (Self : not null access Abstract_Query;
     Name : League.Strings.Universal_String)
       return League.Holders.Holder is abstract;
   --  XXX

   not overriding function Error_Message
    (Self : not null access Abstract_Query)
       return League.Strings.Universal_String is abstract;

   not overriding procedure Finalize (Self : not null access Abstract_Query);
   --  Called before memory deallocation. At Abstract_Query level it
   --  invalidates query object.

   not overriding procedure Finish
    (Self : not null access Abstract_Query) is abstract;
   --  Instruct the database driver that no more data will be fetched from this
   --  query until it is re-executed. There is normally no need to call this
   --  function, but it may be helpful in order to free resources such as locks
   --  or cursors if you intend to re-use the query at a later time.
   --
   --  Sets the query to inactive. Bound values retain their values.

   not overriding procedure Invalidate (Self : not null access Abstract_Query);
   --  Invalidates object. At Abstract_Query level it detachs query object from
   --  database object and dereference database object. Database drivers should
   --  release other resources before call to this inherited procedure.

   function Is_Valid
    (Self : not null access Abstract_Query'Class) return Boolean;
   --  Returns True when query is valid.

   not overriding function Is_Active
    (Self : not null access Abstract_Query) return Boolean is abstract;
   --  Returns True when prepared statement is active, so was executed but not
   --  finished.

   not overriding function Prepare
    (Self  : not null access Abstract_Query;
     Query : League.Strings.Universal_String) return Boolean is abstract;
   --  Prepares the SQL query query for execution. Returns True if the query is
   --  prepared successfully; otherwise returns False.
   --
   --  The query may contain placeholders for binding values. Both Oracle style
   --  colon-name (e.g., :surname), and ODBC style (?) placeholders are
   --  supported; but they cannot be mixed in the same query.

   not overriding function Execute
    (Self : not null access Abstract_Query) return Boolean is abstract;
   --  Executes a previously prepared SQL query. Returns True if the query
   --  executed successfully; otherwise returns False.
   --
   --  After the query is executed, the query is positioned on an invalid
   --  record and must be navigated to a valid record before data values can be
   --  retrieved.
   --
   --  Note that the last error for this query is reset when Execute is called.

   not overriding function Next
    (Self : not null access Abstract_Query) return Boolean is abstract;

   not overriding function Value
    (Self  : not null access Abstract_Query;
     Index : Positive) return League.Holders.Holder is abstract;

   ---------------------
   -- Database_Access --
   ---------------------

   procedure Reference (Self : not null Database_Access);
   pragma Inline (Reference);
   --  Increments internal reference counter.

   procedure Dereference (Self : in out Database_Access);
   --  Decrements internal reference counter and deallocates object when there
   --  are no reference to it any more. Sets Self to null always.

   ------------------
   -- Query_Access --
   ------------------

   procedure Reference (Self : not null Query_Access);
   pragma Inline (Reference);
   --  Increments internal reference counter.

   procedure Dereference (Self : in out Query_Access);
   --  Decrements internal reference counter and deallocates object when there
   --  are no reference to it any more. Sets Self to null always.

   -------------
   -- Factory --
   -------------

   function Create
    (Driver : League.Strings.Universal_String) return not null Database_Access;
   --  Creates new database object using registered factory. Returns reference
   --  to dummy database object when driver is not registered.

private

   type Abstract_Database is abstract tagged limited record
      Counter : Matreshka.Atomics.Counters.Counter;
      Head    : Query_Access;
      Tail    : Query_Access;
   end record;

   type Abstract_Query is abstract tagged limited record
      Counter   : Matreshka.Atomics.Counters.Counter;
      Database  : Database_Access;
      Next      : Query_Access;
      Previous  : Query_Access;
   end record;

   procedure Initialize
    (Self     : not null access Abstract_Query'Class;
     Database : not null Database_Access);
   --  Initializes new object of Abstract_Query type. It inserts object into
   --  the list of query objects of database.

   type Abstract_Factory is abstract tagged limited null record;

   type Factory_Access is access all Abstract_Factory'Class;

   not overriding function Create
    (Self : not null access Abstract_Factory)
       return not null Database_Access is abstract;
   --  Creates new database object.

   procedure Register
    (Name    : League.Strings.Universal_String;
     Factory : not null Factory_Access);
   --  Register factory. Factory is never deallocated and can be allocated
   --  statically.

end Matreshka.Internals.SQL_Drivers;
