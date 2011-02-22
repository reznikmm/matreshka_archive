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
--  This package provides abstract tagged type to represent SQL statement and
--  results of its execution. Database driver should provide implementation
--  for operations of this type.
--
--  Note: database driver should avoid raising of exceptions, instead it should
--  reports failures of operations in specified way and be ready to provide
--  diagnosis message in Error_Message function.
------------------------------------------------------------------------------
with League.Strings;
with League.Values;
private with Matreshka.Internals.Atomics.Counters;
limited with Matreshka.Internals.SQL_Databases;

package Matreshka.Internals.SQL_Queries is

   pragma Preelaborate;

   type Abstract_Query
         (Database : not null access SQL_Databases.Abstract_Database'Class)
     is abstract tagged limited private;

   not overriding function Error_Message
    (Self : not null access Abstract_Query)
       return League.Strings.Universal_String is abstract;

   not overriding procedure Finalize
    (Self : not null access Abstract_Query) is null;
   --  Called before memory deallocation.

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
     Index : Positive) return League.Values.Value is abstract;

   type Query_Access is access all Abstract_Query'Class;

   procedure Reference (Self : not null Query_Access);
   pragma Inline (Reference);
   --  Increments internal reference counter.

   procedure Dereference (Self : in out Query_Access);
   --  Decrements internal reference counter and deallocates object when there
   --  are no reference to it any more. Sets Self to null always.

private

   type Abstract_Query
         (Database : not null access SQL_Databases.Abstract_Database'Class)
     is abstract tagged limited record
      Counter : aliased Matreshka.Internals.Atomics.Counters.Counter;
   end record;

end Matreshka.Internals.SQL_Queries;
