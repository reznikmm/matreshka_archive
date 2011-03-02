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
with League.Text_Codecs;
with SQL.Databases.Internals;

package body SQL.Queries is

   procedure Raise_SQL_Error
    (Self : in out SQL_Query'Class; Success : Boolean);
   --  Raises SQL_Error when Success is not equal to True. Constructs exception
   --  message from Error_Message of query.

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out SQL_Query) is
   begin
      Matreshka.Internals.SQL_Drivers.Reference (Self.Data);
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
      if not Self.Data.Is_Valid then
         --  Returns when internal object was invalidated.

         return;
      end if;

      Self.Data.Bind_Value (Name.To_Casefold, Value, Direction);
   end Bind_Value;

   -----------------
   -- Bound_Value --
   -----------------

   function Bound_Value
    (Self : SQL_Query'Class;
     Name : League.Strings.Universal_String) return League.Values.Value is
   begin
      if not Self.Data.Is_Valid then
         --  Returns when internal object was invalidated.

         return X : League.Values.Value;
      end if;

      return X : League.Values.Value;
   end Bound_Value;

   -------------------
   -- Error_Message --
   -------------------

   function Error_Message
    (Self : SQL_Query'Class) return League.Strings.Universal_String is
   begin
      if not Self.Data.Is_Valid then
         --  Returns when internal object was invalidated.

         return League.Strings.To_Universal_String ("object was invalidated");
      end if;

      return Self.Data.Error_Message;
   end Error_Message;

   -------------
   -- Execute --
   -------------

   function Execute (Self : not null access SQL_Query'Class) return Boolean is
   begin
      if not Self.Data.Is_Valid then
         --  Returns when internal object was invalidated.

         return False;
      end if;

      return Self.Data.Execute;
   end Execute;

   -------------
   -- Execute --
   -------------

   procedure Execute (Self : in out SQL_Query'Class) is
   begin
      Self.Raise_SQL_Error (Self.Execute);
   end Execute;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out SQL_Query) is
      use type Matreshka.Internals.SQL_Drivers.Query_Access;

   begin
      --  Finalize must be idempotent according to language rules.

      if Self.Data /= null then
         Matreshka.Internals.SQL_Drivers.Dereference (Self.Data);
      end if;
   end Finalize;

   ------------
   -- Finish --
   ------------

   procedure Finish (Self : in out SQL_Query'Class) is
   begin
      if not Self.Data.Is_Valid then
         --  Returns when internal object was invalidated.

         return;
      end if;

      Self.Data.Finish;
   end Finish;

   ---------------
   -- Is_Active --
   ---------------

   function Is_Active (Self : SQL_Query'Class) return Boolean is
   begin
      if not Self.Data.Is_Valid then
         --  Returns when internal object was invalidated.

         return False;
      end if;

      return Self.Data.Is_Active;
   end Is_Active;

   ----------
   -- Next --
   ----------

--   function Next (Self : in out SQL_Query'Class) return Boolean;
   function Next (Self : not null access SQL_Query'Class) return Boolean is
   begin
      if not Self.Data.Is_Valid then
         --  Returns when internal object was invalidated.

         return False;
      end if;

      return Self.Data.Next;
   end Next;

   -------------
   -- Prepare --
   -------------

   function Prepare
--    (Self  : in out SQL_Query'Class;
    (Self  : not null access SQL_Query'Class;
     Query : League.Strings.Universal_String) return Boolean is
   begin
      if not Self.Data.Is_Valid then
         --  Returns when internal object was invalidated.

         return False;
      end if;

      return Self.Data.Prepare (Query);
   end Prepare;

   -------------
   -- Prepare --
   -------------

   procedure Prepare
    (Self : in out SQL_Query'Class; Query : League.Strings.Universal_String) is
   begin
      Self.Raise_SQL_Error (Self.Prepare (Query));
   end Prepare;

   --------------
   -- Previous --
   --------------

--   function Previous (Self : in out SQL_Query'Class) return Boolean;
   procedure Previous (Self : in out SQL_Query'Class) is
   begin
      if not Self.Data.Is_Valid then
         --  Returns when internal object was invalidated.

         return;
      end if;
   end Previous;

   ---------------------
   -- Raise_SQL_Error --
   ---------------------

   procedure Raise_SQL_Error
    (Self : in out SQL_Query'Class; Success : Boolean) is
   begin
      if not Success then
         raise SQL_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_Message);
      end if;
   end Raise_SQL_Error;

   -----------
   -- Value --
   -----------

   function Value
    (Self  : SQL_Query'Class;
     Index : Positive) return League.Values.Value is
   begin
      if not Self.Data.Is_Valid
        or else not Self.Data.Is_Active
      then
	 --  Returns when internal object was invalidated or not in active
         --  state.

         return X : League.Values.Value;
      end if;

      return Self.Data.Value (Index);
   end Value;

end SQL.Queries;
