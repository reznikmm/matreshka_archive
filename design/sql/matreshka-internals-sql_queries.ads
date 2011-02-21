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
with League.Strings;
private with Matreshka.Internals.Atomics.Counters;
limited with Matreshka.Internals.SQL_Databases;

package Matreshka.Internals.SQL_Queries is

   pragma Preelaborate;

   type Abstract_Query
         (Database : not null access SQL_Databases.Abstract_Database'Class)
     is abstract tagged limited private;

   not overriding procedure Finalize
    (Self : not null access Abstract_Query) is null;

   not overriding procedure Prepare
    (Self  : not null access Abstract_Query;
     Query : League.Strings.Universal_String) is abstract;

   not overriding procedure Execute
    (Self : not null access Abstract_Query) is abstract;

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
