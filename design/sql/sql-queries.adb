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
with SQL.Databases.Internals;

package body SQL.Queries is

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out SQL_Query) is
   begin
      Matreshka.Internals.SQL_Queries.Reference (Self.Data);
   end Adjust;

   ----------------
   -- Bind_Value --
   ----------------

   procedure Bind_Value
    (Self      : in out SQL_Query'Class;
     Name      : League.Strings.Universal_String;
     Value     : League.Values.Value;
     Direction : Parameter_Directions := In_Parameter) is
   begin
      null;
   end Bind_Value;

   -----------------
   -- Bound_Value --
   -----------------

   function Bound_Value
    (Self : SQL_Query'Class;
     Name : League.Strings.Universal_String) return League.Values.Value is
   begin
      return X : League.Values.Value;
   end Bound_Value;

   -------------
   -- Execute --
   -------------

   procedure Execute (Self : in out SQL_Query'Class) is
   begin
      Self.Data.Execute;
   end Execute;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out SQL_Query) is
      use type Matreshka.Internals.SQL_Queries.Query_Access;

   begin
      --  Finalize must be idempotent according to language rules.

      if Self.Data /= null then
         Matreshka.Internals.SQL_Queries.Dereference (Self.Data);
      end if;
   end Finalize;

   ------------
   -- Finish --
   ------------

   procedure Finish (Self : in out SQL_Query'Class) is
   begin
      null;
   end Finish;

   ----------
   -- Next --
   ----------

--   function Next (Self : in out SQL_Query'Class) return Boolean;
   function Next (Self : not null access SQL_Query'Class) return Boolean is
   begin
      return Self.Data.Next;
   end Next;

   -------------
   -- Prepare --
   -------------

   procedure Prepare
    (Self : in out SQL_Query'Class; Query : League.Strings.Universal_String) is
   begin
      Self.Data.Prepare (Query);
   end Prepare;

   --------------
   -- Previous --
   --------------

--   function Previous (Self : in out SQL_Query'Class) return Boolean;
   procedure Previous (Self : in out SQL_Query'Class) is
   begin
      null;
   end Previous;

   -----------
   -- Value --
   -----------

   function Value
    (Self  : SQL_Query'Class;
     Index : Positive) return League.Values.Value is
   begin
      return Self.Data.Value (Index);
   end Value;

end SQL.Queries;
