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

with League.Strings.Internals;
with Ada.Unchecked_Deallocation;

package body Matreshka.Internals.SQL_Drivers.OCI.Queries is

   ----------------
   -- Bind_Value --
   ----------------

   overriding procedure Bind_Value
     (Self      : not null access OCI_Query;
      Name      : League.Strings.Universal_String;
      Value     : League.Values.Value;
      Direction : SQL.Parameter_Directions)
   is
      Code : Error_Code;
      Pos  : Parameter_Maps.Cursor;
      Ok   : Boolean;

      procedure Free is new Ada.Unchecked_Deallocation
        (Bound_Value, Bound_Value_Access);

      procedure Bind (Name : League.Strings.Universal_String;
                      Item : in out Bound_Value_Access)
      is
         use type Sb2;
      begin
         if Item = null then
            Item := new Bound_Value;
         end if;

         if League.Values.Is_Empty (Value) then

            Code := Bind_By_Name
              (Self.Handle,
               Item.Bind'Access,
               Self.DB.Error,
               League.Strings.Internals.Internal (Name).Value,
               Ub4 (League.Strings.Internals.Internal (Name).Unused) * 2,
               Item.Int'Address,
               Item.Int'Size / 8,
               SQLT_INT,
               Item.Is_Null'Access);

         elsif League.Values.Is_Universal_String (Value) then

            Code := Bind_By_Name
              (Self.Handle,
               Item.Bind'Access,
               Self.DB.Error,
               League.Strings.Internals.Internal (Name).Value,
               Ub4 (League.Strings.Internals.Internal (Name).Unused) * 2,
               League.Strings.Internals.Internal
                 (League.Values.Get (Value)).Value'Address,
               Ub4 (League.Strings.Internals.Internal
                      (League.Values.Get (Value)).Unused) * 2,
               SQLT_CHR,
               Item.Is_Null'Access);

         elsif League.Values.Is_Abstract_Integer (Value) then

            Code := Bind_By_Name
              (Self.Handle,
               Item.Bind'Access,
               Self.DB.Error,
               League.Strings.Internals.Internal (Name).Value,
               Ub4 (League.Strings.Internals.Internal (Name).Unused) * 2,
               Item.Int'Address,
               Item.Int'Size / 8,
               SQLT_INT,
               Item.Is_Null'Access);

            Item.Int := League.Values.Get (Value);
         else
            Free (Item);
            return;
         end if;

         if Databases.Check_Error (Self.DB, Code) then
            Free (Item);
            return;
         end if;

         Item.Is_Null := -Boolean'Pos (League.Values.Is_Empty (Value));
      end Bind;

   begin
      Self.Parameters.Insert (Name, null, Pos, Ok);

      Self.Parameters.Update_Element (Pos, Bind'Access);
   end Bind_Value;

   -------------------
   -- Error_Message --
   -------------------

   overriding function Error_Message
    (Self : not null access OCI_Query)
    return League.Strings.Universal_String is
   begin
      return Self.DB.Error_Text;
   end Error_Message;

   -------------
   -- Execute --
   -------------

   overriding function Execute
     (Self : not null access OCI_Query) return Boolean
   is
      Code : Error_Code;
   begin
      if Self.Handle = null then
         --  Statement was not prepared.

         return False;
      end if;

      if Self.Is_Active then
         --  Finish execution of the current statement when it is active.

         Self.Finish;
      end if;

      Code := Stmt_Execute (Self.DB.Service,
                            Self.Handle,
                            Self.DB.Error,
                            Iters => Boolean'Pos (not Self.Has_Row));

      if Databases.Check_Error (Self.DB, Code) then
         return False;
      end if;

      Self.Is_Active := True;

      return True;
   end Execute;

   overriding procedure Finish (Self : not null access OCI_Query) is
   begin
      if not Self.Is_Active then
         --  Returns when query is not active.

         return;
      end if;

      Self.Is_Active := False;
   end Finish;

--   overriding procedure Invalidate (Self : not null access OCI_Query);

   overriding function Is_Active
    (Self : not null access OCI_Query) return Boolean is
   begin
      return Self.Is_Active;
   end Is_Active;

   overriding function Next
    (Self : not null access OCI_Query) return Boolean is
   begin
      if not Self.Is_Active then
         --  Returns immidiatly when statement is not active.

         return False;
      end if;

      return False;
   end ;

   -------------
   -- Prepare --
   -------------

   overriding function Prepare
    (Self  : not null access OCI_Query;
     Query : League.Strings.Universal_String) return Boolean
   is
      Code : Error_Code;
      Kind : aliased Ub2;
   begin
      if Self.Handle = null then
         Code := Handle_Alloc
           (Databases.Env, Self.Handle'Access, HT_Statament);

         if Databases.Check_Error (Self.DB, Code) then
            return False;
         end if;
      end if;

      Code := Stmt_Prepare
        (Self.Handle,
         Self.DB.Error,
         League.Strings.Internals.Internal (Query).Value,
         Ub4 (League.Strings.Internals.Internal (Query).Unused) * 2);

      if Databases.Check_Error (Self.DB, Code) then
         return False;
      end if;

      Code := Attr_Get
        (Target      => Self.Handle,
         Target_Type => HT_Statament,
         Buffer      => Kind'Address,
         Length      => null,
         Attr        => Attr_Stmt_Type,
         Error       => Self.DB.Error);

      if Databases.Check_Error (Self.DB, Code) then
         return False;
      end if;

      Self.Has_Row := Kind = 1;

      Self.Is_Active := False;
      return True;
   end Prepare;

   overriding function Value
    (Self  : not null access OCI_Query;
     Index : Positive) return League.Values.Value is
   begin
      return V : League.Values.Value;
   end ;

end Matreshka.Internals.SQL_Drivers.OCI.Queries;
