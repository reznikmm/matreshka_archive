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
--  $Revision: 1803 $ $Date: 2011-06-19 22:56:58 +0300 (Вс, 19 июн 2011) $
------------------------------------------------------------------------------
with Ada.Numerics.Discrete_Random;

with Matreshka.Internals.SQL_Drivers.Firebird.Fields;
with Matreshka.Internals.SQL_Parameter_Rewriters.Firebird;

package body Matreshka.Internals.SQL_Drivers.Firebird.Queries is

   SQL_Dialect : constant Isc_Db_Dialect := 3;

   Rewriter : SQL_Parameter_Rewriters.Firebird.Firebird_Parameter_Rewriter;

   function Random_String (Length : Interfaces.C.size_t) return Isc_String;

   ----------------
   -- Bind_Value --
   ----------------

   overriding procedure Bind_Value
    (Self      : not null access Firebird_Query;
     Name      : League.Strings.Universal_String;
     Value     : League.Holders.Holder;
     Direction : SQL.Parameter_Directions)
   is
      pragma Unreferenced (Direction);

   begin
      Self.Parameters.Set_Value (Name, Value);
   end Bind_Value;

   -----------------
   -- Bound_Value --
   -----------------

   overriding function Bound_Value
    (Self : not null access Firebird_Query;
     Name : League.Strings.Universal_String) return League.Holders.Holder
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Name);

   begin
      return League.Holders.Empty_Holder;
   end Bound_Value;

   -------------------
   -- Error_Message --
   -------------------

   overriding function Error_Message
    (Self : not null access Firebird_Query)
       return League.Strings.Universal_String is
   begin
      return Self.Error;
   end Error_Message;

   -------------
   -- Execute --
   -------------

   overriding function Execute
    (Self : not null access Firebird_Query) return Boolean
   is
      Value  : League.Holders.Holder;
      Result : Isc_Result_Code;

   begin
      --  Prepare parameter values.

      for Idx in 1 .. Self.Parameters.Number_Of_Positional loop
         Value := Self.Parameters.Value (Idx);
         Self.Sql_Params.Fields.Element
          (Isc_Valid_Field_Index (Idx)).Value (Value);
      end loop;

      Self.Sql_Record.Clear_Values;

      if Self.Sql_Type = DDL then
         return Self.Execute_Immediate;
      end if;

      case Self.Sql_Type is
         when Simple_Select | Select_For_Update =>
            Result := Isc_Dsql_Execute
              (Self.Status'Access, Databases.Firebird_Database'Class
                 (Self.Database.all).Transaction_Handle,
               Self.Stmt_Handle'Access, Sql_Dialect, Self.Sql_Params.Sqlda);

            if Result > 0 then
               Self.Error := Get_Error (Self.Status'Access);
               return False;
            end if;

            Self.State := Active;
            Self.Sql_Record.Clear_Values;

         when Exec_Procedure =>
            Result := Isc_Dsql_Execute2
              (Self.Status'Access, Databases.Firebird_Database'Class
                 (Self.Database.all).Transaction_Handle,
               Self.Stmt_Handle'Access, Sql_Dialect,
               Self.Sql_Params.Sqlda, Self.Sql_Record.Sqlda);

            if Self.Status (1) = 1
              and then Self.Status (2) > 0
            then
               Self.Error := Get_Error (Self.Status'Access);
               return False;
            end if;

         when Commit | Rollback =>
            return False;

         when Unknown       | Insert            | Update      |
              Delete        | DDL               | Get_Segment |
              Put_Segment   | Start_Transaction |
              Set_Generator | Save_Point_Operation =>

            Result := Isc_Dsql_Execute
              (Self.Status'Access, Databases.Firebird_Database'Class
                 (Self.Database.all).Transaction_Handle,
               Self.Stmt_Handle'Access, Sql_Dialect, Self.Sql_Params.Sqlda);

            if Result > 0 then
               Self.Error := Get_Error (Self.Status'Access);
               return False;
            end if;
      end case;

      Self.Is_Valid := False;
      return True;

   exception
      when others =>
         Self.Free_Handle;

         return False;
   end Execute;

   -----------------------
   -- Execute_Immediate --
   -----------------------

   function Execute_Immediate
    (Self : not null access Firebird_Query) return Boolean
   is
      Result : Isc_Result_Code;

   begin
      Self.Free_Handle;

      declare
         Statement : constant Isc_String := To_Isc_String (Self.Sql_Text);

      begin
         Result :=
           Isc_Dsql_Execute_Immediate
            (Self.Status'Access,
             Databases.Firebird_Database'Class
              (Self.Database.all).Database_Handle,
             Databases.Firebird_Database'Class
              (Self.Database.all).Transaction_Handle,
             Statement'Length, Statement,
             Sql_Dialect,
             Self.Sql_Params.Sqlda);
      end;

      if Result > 0 then
         Self.Error := Get_Error (Self.Status'Access);

         return False;
      end if;

      return True;
   end Execute_Immediate;

   ------------
   -- Finish --
   ------------

   overriding procedure Finish (Self : not null access Firebird_Query) is
      use type Isc_Long;

      EC : constant Isc_Result_Codes (1 .. 2)
        := (Isc_Bad_Stmt_Handle, Isc_Dsql_Cursor_Close_Err);

      Result : Isc_Result_Code;
      pragma Warnings (Off, Result);

   begin
      if Self.Stmt_Handle /= Null_Isc_Stmt_Handle then
         case Self.Sql_Type is
            when Simple_Select | Select_For_Update =>
               Result :=
                 Isc_Dsql_Free_Statement
                  (Self.Status'Access, Self.Stmt_Handle'Access, Isc_Sql_Close);

               if Self.Status (1) = 1
                 and then Self.Status (2) > 0
                 and then not Check_For_Error (Self.Status'Access, EC)
               then
                  Self.Error := Get_Error (Self.Status'Access);
               end if;

            when others =>
               Self.Free_Handle;
         end case;
      end if;

      Self.State := Inactive;
   end Finish;

   -----------------
   -- Free_Handle --
   -----------------

   procedure Free_Handle (Self : not null access Firebird_Query) is
      use type Isc_Long;

      Result : Isc_Result_Code;

   begin
      Self.Sql_Record.Count (0);

      if Self.Stmt_Handle /= Null_Isc_Stmt_Handle then
         Result :=
           Isc_Dsql_Free_Statement
            (Self.Status'Access, Self.Stmt_Handle'Access, Isc_Sql_Drop);

         Self.Stmt_Handle := Null_Isc_Stmt_Handle;
         Self.State       := Inactive;

         if Self.Status (1) = 1
           and then Result > 0
           and then Result /= Isc_Bad_Stmt_Handle
         then
            Self.Error := Get_Error (Self.Status'Access);
         end if;
      end if;
   end Free_Handle;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Self     : not null access Firebird_Query'Class;
     Database : not null access Databases.Firebird_Database'Class;
     Codec    : access League.Text_Codecs.Text_Codec;
     Utf      : Boolean) is
   begin
      Self.Sql_Record.Codec := Codec;
      Self.Sql_Params.Codec := Codec;
      Self.Sql_Record.Utf   := Utf;
      Self.Sql_Params.Utf   := Utf;
      Self.Is_Valid := False;

      SQL_Drivers.Initialize (Self, Database_Access (Database));
   end Initialize;

   ----------------
   -- Invalidate --
   ----------------

   overriding procedure Invalidate (Self : not null access Firebird_Query) is
   begin
      Self.Finish;

      if Self.Stmt_Handle /= Null_Isc_Stmt_Handle then
         Self.Free_Handle;
      end if;

      Self.Sql_Params.Finalize;
      Self.Sql_Record.Finalize;

      --  Call Invalidate of parent tagged type.

      Abstract_Query (Self.all).Invalidate;
   end Invalidate;

   ---------------
   -- Is_Active --
   ---------------

   overriding function Is_Active
    (Self : not null access Firebird_Query) return Boolean is
   begin
      return Self.State = Active;
   end Is_Active;

   --------------
   -- Is_Valid --
   --------------

   overriding function Is_Valid
    (Self : not null access Firebird_Query) return Boolean is
   begin
      return Self.Is_Valid;
   end Is_Valid;

   ----------
   -- Next --
   ----------

   overriding function Next
    (Self : not null access Firebird_Query) return Boolean
   is
      use type Isc_Long;

      Result : Isc_Result_Code;

   begin
      Result :=
        Isc_Dsql_Fetch
         (Self.Status'Access,
          Self.Stmt_Handle'Access,
          Sql_Dialect,
          Self.Sql_Record.Sqlda);

      if Result > 0 then
         if Result = 100 then
            Self.Is_Valid := False;
            return False;

         else
            declare
               EC : constant Isc_Result_Codes (1 .. 1)
                 := (others => Isc_Dsql_Cursor_Err);

            begin
               if Check_For_Error (Self.Status'Access, EC) then
                  Self.Is_Valid := False;
                  return False;

               else
                  Self.Error := Get_Error (Self.Status'Access);
                  Self.Finish;
                  Self.Is_Valid := False;

                  return False;
               end if;
            end;
         end if;

      else
         Self.Is_Valid := True;
         return True;
      end if;
   end Next;

   -------------
   -- Prepare --
   -------------

   overriding function Prepare
    (Self  : not null access Firebird_Query;
     Query : League.Strings.Universal_String) return Boolean
   is
      use type Records.Isc_Sqlda_Access;

      Result : Isc_Result_Code;
      Field  : Fields.Field_Access;

   begin
      Self.Finish;

      Rewriter.Rewrite (Query, Self.Sql_Text, Self.Parameters);
      Self.Sql_Params.Count
       (Isc_Field_Index (Self.Parameters.Number_Of_Positional));

      --  add params

      for Idx
        in 1 .. Isc_Field_Index (Self.Parameters.Number_Of_Positional)
      loop
         Field := Self.Sql_Params.Fields.Element (Idx);
         Field.Set_Null (True);
         Field.Sqlvar.Sqltype := Isc_Type_Empty;
      end loop;

      Result :=
        Isc_Dsql_Alloc_Statement2
         (Self.Status'Access,
          Databases.Firebird_Database'Class
           (Self.Database.all).Database_Handle,
          Self.Stmt_Handle'Access);

      if Result > 0 then
         Self.Error := Get_Error (Self.Status'Access);

         return False;
      end if;

      Self.Sql_Record.Count (1);

      declare
         Statement : constant Isc_String := To_Isc_String (Self.Sql_Text);

      begin
         Result :=
           Isc_Dsql_Prepare
            (Self.Status'Access,
             Databases.Firebird_Database'Class
              (Self.Database.all).Transaction_Handle,
             Self.Stmt_Handle'Access, 0, Statement,
             Sql_Dialect,
             Self.Sql_Record.Sqlda);

         if Result > 0 then
            Self.Error := Get_Error (Self.Status'Access);

            return False;
         end if;
      end;

      --  Get the type of the statement

      declare
         use type Interfaces.C.char;

         Len    : Isc_Long;
         Buffer : aliased Isc_String := (1 .. 9 => Interfaces.C.nul);
         Item   : Isc_String (1 .. 1);

      begin
         Item (1) := Isc_Info_Sql_Stmt_Type;

         Result :=
           Isc_Dsql_Sql_Info
            (Self.Status'Access,
             Self.Stmt_Handle'Access,
             1,
             Item,
             8,
             Buffer'Access);

         if Result > 0 then
            Self.Error := Get_Error (Self.Status'Access);

            return False;
         end if;

         if Buffer (1) /= Isc_Info_Sql_Stmt_Type then
            return False;
         end if;

         Len := Isc_Vax_Integer (Buffer (2 .. 4), 2);

         Self.Sql_Type :=
           Query_Sql_Type'Val
            (Isc_Vax_Integer (Buffer (4 .. 9), Isc_Short (Len)));
      end;

      if Self.Sql_Type = Select_For_Update then
         Self.Cursor_Name := Random_String (10);

         Result :=
           Isc_Dsql_Set_Cursor_Name
            (Self.Status'Access, Self.Stmt_Handle'Access, Self.Cursor_Name, 0);

         if Result > 0 then
            Self.Error := Get_Error (Self.Status'Access);

            return False;
         end if;
      end if;

      --  Done getting the type

      case Self.Sql_Type is
         when Get_Segment | Put_Segment | Start_Transaction =>
            Self.Free_Handle;

            return False;

         when Insert
                | Update
                | Delete
                | Simple_Select
                | Select_For_Update
                | Exec_Procedure
         =>
            if Self.Sql_Params.Sqlda /= null then
               Result :=
                 Isc_Dsql_Describe_Bind
                  (Self.Status'Access,
                   Self.Stmt_Handle'Access,
                   Sql_Dialect,
                   Self.Sql_Params.Sqlda);

               if Result > 0 then
                  Self.Error := Get_Error (Self.Status'Access);

                  return False;
               end if;
            end if;

            Self.Sql_Params.Init;

            case Self.Sql_Type is
               when Simple_Select | Select_For_Update | Exec_Procedure =>
                  if Self.Sql_Record.Sqlda.Sqld
                       > Self.Sql_Record.Sqlda.Sqln
                  then
                     Self.Sql_Record.Count (Self.Sql_Record.Sqlda.Sqld);

                     Result :=
                       Isc_Dsql_Describe
                        (Self.Status'Access,
                         Self.Stmt_Handle'Access,
                         Sql_Dialect,
                         Self.Sql_Record.Sqlda);

                     if Result > 0 then
                        Self.Error := Get_Error (Self.Status'Access);

                        return False;
                     end if;
                  else
                     if Self.Sql_Record.Sqlda.Sqld = 0 then
                        Self.Sql_Record.Count (0);
                     end if;
                  end if;

                  Self.Sql_Record.Init;

               when Unknown
                      | Insert
                      | Update
                      | Delete
                      | DDL
                      | Get_Segment
                      | Put_Segment
                      | Start_Transaction
                      | Commit
                      | Rollback
                      | Set_Generator
                      | Save_Point_Operation
               =>
                  Self.Sql_Record.Count (0);
            end case;

         when Unknown
                | DDL
                | Commit
                | Rollback
                | Set_Generator
                | Save_Point_Operation
         =>
            null;
      end case;

      return True;

   exception
      when others =>
         if Self.Stmt_Handle /= Null_Isc_Stmt_Handle then
            Self.Free_Handle;
         end if;

         return False;
   end Prepare;

   -------------------
   -- Random_String --
   -------------------

   function Random_String (Length : Interfaces.C.size_t) return Isc_String is
      use type Interfaces.C.size_t;
      use type Interfaces.C.char;

      subtype A_Z is Interfaces.C.char range '0' .. 'z';

      package Rand is new Ada.Numerics.Discrete_Random (A_Z);

      Gen  : Rand.Generator;
      Str  : Isc_String (1 .. Length);
      Char : Interfaces.C.char;

   begin
      Rand.Reset (Gen);

      for Idx in 1 .. Length - 1 loop
         loop
            Char := Rand.Random (Gen);

            exit when
             (Char >= '0' and then  Char <= '9')
                or else (Char >= 'A' and then Char <= 'Z')
                or else (Char >= 'a' and then Char <= 'z');
         end loop;

         Str (Idx) := Char;
      end loop;

      Str (Str'Last) := Interfaces.C.nul;

      return Str;
   end Random_String;

   -----------
   -- Value --
   -----------

   overriding function Value
    (Self  : not null access Firebird_Query;
     Index : Positive) return League.Holders.Holder is
   begin
      return
        Self.Sql_Record.Fields.Element (Isc_Valid_Field_Index (Index)).Value;
   end Value;

end Matreshka.Internals.SQL_Drivers.Firebird.Queries;
