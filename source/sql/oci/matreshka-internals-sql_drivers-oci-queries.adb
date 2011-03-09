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
with Matreshka.Internals.Utf16;
with Matreshka.Internals.Strings.C;
with Ada.Unchecked_Deallocation;

package body Matreshka.Internals.SQL_Drivers.OCI.Queries is

   procedure Free is new Ada.Unchecked_Deallocation
     (Bound_Value, Bound_Value_Access);

   procedure Free is new Ada.Unchecked_Deallocation
     (Defined_Value_Array, Defined_Value_Array_Access);

   ----------------
   -- Bind_Value --
   ----------------

   overriding procedure Bind_Value
     (Self      : not null access OCI_Query;
      Name      : League.Strings.Universal_String;
      Value     : League.Values.Value;
      Direction : SQL.Parameter_Directions)
   is
      pragma Unreferenced (Direction);

      Code : Error_Code;
      Pos  : Parameter_Maps.Cursor;
      Ok   : Boolean;

      procedure Bind (Name : League.Strings.Universal_String;
                      Item : in out Bound_Value_Access);

      ----------
      -- Bind --
      ----------

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

            --  Protect string from deallocation by saving in Item

            Item.String := League.Values.Get (Value);

            Code := Bind_By_Name
              (Self.Handle,
               Item.Bind'Access,
               Self.DB.Error,
               League.Strings.Internals.Internal (Name).Value,
               Ub4 (League.Strings.Internals.Internal (Name).Unused) * 2,
               League.Strings.Internals.Internal
                 (Item.String).Value'Address,
               Ub4 (League.Strings.Internals.Internal
                      (Item.String).Unused) * 2,
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
         elsif League.Values.Is_Abstract_Float (Value) then

            Code := Bind_By_Name
              (Self.Handle,
               Item.Bind'Access,
               Self.DB.Error,
               League.Strings.Internals.Internal (Name).Value,
               Ub4 (League.Strings.Internals.Internal (Name).Unused) * 2,
               Item.Float'Address,
               Item.Float'Size / 8,
               SQLT_FLT,
               Item.Is_Null'Access);

            Item.Float := League.Values.Get (Value);

         else
            Free (Item);
            return;
         end if;

         if Databases.Check_Error (Self.DB, Code) then
            Free (Item);
            return;  --  How to report errors?
         end if;

         Item.Is_Null := -Boolean'Pos (League.Values.Is_Empty (Value));
      end Bind;

   begin
      if Self.State = Prepared then
         Self.Parameters.Insert (Name, null, Pos, Ok);

         Self.Parameters.Update_Element (Pos, Bind'Access);
      end if;
   end Bind_Value;

   -------------------
   -- Error_Message --
   -------------------

   overriding function Error_Message
    (Self : not null access OCI_Query)
    return League.Strings.Universal_String is
   begin
      return Self.DB.Error_Message;
   end Error_Message;

   -------------
   -- Execute --
   -------------

   overriding function Execute
     (Self : not null access OCI_Query) return Boolean
   is

      Count : aliased Ub4;
      Code  : Error_Code;
   begin
      if Self.State not in Ready then
         return False;
      end if;

      Code := Stmt_Execute (Self.DB.Service,
                            Self.Handle,
                            Self.DB.Error,
                            Iters => Boolean'Pos (not Self.Is_Select));

      if Databases.Check_Error (Self.DB, Code) then
         return False;
      end if;

      if Self.Is_Select and not Self.Is_Described then
         Self.Is_Described := True;
         Self.Column_Count := 0;

         Code := Attr_Get
           (Target      => Self.Handle,
            Target_Type => HT_Statament,
            Buffer      => Count'Address,
            Length      => null,
            Attr        => Attr_Param_Count,
            Error       => Self.DB.Error);

         if Databases.Check_Error (Self.DB, Code) then
            return False;
         end if;

         if Self.Columns /= null and then Self.Columns'Length < Count then
            Free (Self.Columns);
         end if;

         if Self.Columns = null and Count > 0 then
            Self.Columns := new Defined_Value_Array (1 .. Positive (Count));
         end if;

         for J in 1 .. Natural (Count) loop
            declare
               Param       : aliased Parameter;
               Column_Type : aliased Data_Type;
               Size        : aliased Ub2;
               Scale       : aliased Sb1;
            begin
               Code := Param_Get
                 (Self.Handle,
                  HT_Statament,
                  Self.DB.Error,
                  Param'Access,
                  Ub4 (J));

               if Databases.Check_Error (Self.DB, Code) then
                  return False;
               end if;

               Code := Attr_Get
                 (Param,
                  DT_Parameter,
                  Column_Type'Address,
                  null,
                  Attr_Data_Type,
                  Self.DB.Error);

               if Databases.Check_Error (Self.DB, Code) then
                  return False;
               end if;

               if Column_Type = SQLT_CHR or Column_Type = SQLT_AFC then
                  Code := Attr_Get
                    (Param,
                     DT_Parameter,
                     Size'Address,
                     null,
                     Attr_Data_Size,
                     Self.DB.Error);

                  if Databases.Check_Error (Self.DB, Code) then
                     return False;
                  end if;

                  Self.Columns (J).Column_Type := String_Column;
                  Self.Columns (J).Size := Utf16.Utf16_String_Index (Size + 1);

                  declare
                     use Matreshka.Internals.Strings;
                     Ptr : Shared_String_Access renames
                       Self.Columns (J).String;
                  begin
                     if Ptr = null then
                        Ptr := Allocate (Self.Columns (J).Size);
                     elsif not Can_Be_Reused (Ptr, Self.Columns (J).Size) then
                        Dereference (Ptr);
                        Ptr := Allocate (Self.Columns (J).Size);
                     end if;

                     Code := Define_By_Pos
                       (Stmt         => Self.Handle,
                        Target       => Self.Columns (J).Define'Access,
                        Error        => Self.DB.Error,
                        Position     => Ub4 (J),
                        Value        => Ptr.Value (0)'Address,
                        Value_Length => Ptr.Value'Length * 2,
                        Value_Type   => SQLT_STR,
                        Indicator    => Self.Columns (J).Is_Null'Access);

                     if Databases.Check_Error (Self.DB, Code) then
                        return False;
                     end if;
                  end;
               elsif Column_Type = SQLT_NUM or
                 Column_Type = SQLT_IBFLOAT or
                 Column_Type = SQLT_IBDOUBLE
               then
                  Code := Attr_Get
                    (Param,
                     DT_Parameter,
                     Scale'Address,
                     null,
                     Attr_Data_Scale,
                     Self.DB.Error);

                  if Databases.Check_Error (Self.DB, Code) then
                     return False;
                  end if;

                  if Column_Type = SQLT_NUM and Scale = 0 then
                     Self.Columns (J).Column_Type := Integer_Column;

                     Code := Define_By_Pos
                       (Stmt         => Self.Handle,
                        Target       => Self.Columns (J).Define'Access,
                        Error        => Self.DB.Error,
                        Position     => Ub4 (J),
                        Value        => Self.Columns (J).Int'Address,
                        Value_Length => Self.Columns (J).Int'Size / 8,
                        Value_Type   => SQLT_INT,
                        Indicator    => Self.Columns (J).Is_Null'Access);

                     if Databases.Check_Error (Self.DB, Code) then
                        return False;
                     end if;
                  else
                     Self.Columns (J).Column_Type := Float_Column;

                     Code := Define_By_Pos
                       (Stmt         => Self.Handle,
                        Target       => Self.Columns (J).Define'Access,
                        Error        => Self.DB.Error,
                        Position     => Ub4 (J),
                        Value        => Self.Columns (J).Float'Address,
                        Value_Length => Self.Columns (J).Float'Size / 8,
                        Value_Type   => SQLT_FLT,
                        Indicator    => Self.Columns (J).Is_Null'Access);

                     if Databases.Check_Error (Self.DB, Code) then
                        return False;
                     end if;
                  end if;
               else
                  exit;
                  --  raise Constraint_Error with "Unsupported type";
               end if;

               Code := Descriptor_Free (Param, DT_Parameter);

               if Databases.Check_Error (Self.DB, Code) then
                  return False;
               end if;
            end;

            Self.Column_Count := J;
         end loop;
      end if;

      if Self.Is_Select then
         Self.State := Executed;
      else
         Self.State:= No_More_Rows;
      end if;

      return True;
   end Execute;

   ------------
   -- Finish --
   ------------

   overriding procedure Finish (Self : not null access OCI_Query) is
      Code  : Error_Code;
   begin
      if Self.State in Active then

         if Self.State in Fetching then
            --  Cancel cursor by fetching no rows
            Code := Stmt_Fetch (Self.Handle, Self.DB.Error, Rows => 0);

            if Databases.Check_Error (Self.DB, Code) then
               null;  --  How to report errors?
            end if;
         end if;

         Self.State := Prepared;
      end if;
   end Finish;

   ----------------
   -- Invalidate --
   ----------------

   overriding procedure Invalidate (Self : not null access OCI_Query) is

      procedure Drop (Pos : Parameter_Maps.Cursor);

      ----------
      -- Drop --
      ----------

      procedure Drop (Pos : Parameter_Maps.Cursor) is
         Item : Bound_Value_Access := Parameter_Maps.Element (Pos);
      begin
         Free (Item);
         Self.Parameters.Replace_Element (Pos, null);
      end Drop;

      Code  : Error_Code;
   begin
      if Self.Handle /= null then
         Code := Handle_Free (Self.Handle, HT_Statament);

         if Databases.Check_Error (Self.DB, Code) then
            null;  --  How to report errors?
         end if;

         Self.Handle := null;
      end if;

      Self.Parameters.Iterate (Drop'Access);

      if Self.Columns /= null then
         declare
            use Matreshka.Internals.Strings;
         begin
            for J in Self.Columns'Range loop
               if Self.Columns (J).String /= null then
                  Dereference (Self.Columns (J).String);
               end if;
            end loop;

            Free (Self.Columns);
         end;
      end if;
   end Invalidate;

   ---------------
   -- Is_Active --
   ---------------

   overriding function Is_Active
    (Self : not null access OCI_Query) return Boolean is
   begin
      return Self.State in Active;
   end Is_Active;

   ----------
   -- Next --
   ----------

   overriding function Next
     (Self : not null access OCI_Query)
     return Boolean
   is
      use Matreshka.Internals.Strings;
      use type Sb2;
      Ok   : Boolean;
      Code : Error_Code;
   begin
      if Self.State not in Fetching then
         return False;
      end if;

      --  Rebind used strings columns
      for J in 1 .. Self.Column_Count loop
         if Self.Columns (J).Column_Type = String_Column and then
           not Can_Be_Reused (Self.Columns (J).String, Self.Columns (J).Size)
         then
            Dereference (Self.Columns (J).String);
            Self.Columns (J).String := Allocate (Self.Columns (J).Size);

            Code := Define_By_Pos
              (Stmt         => Self.Handle,
               Target       => Self.Columns (J).Define'Access,
               Error        => Self.DB.Error,
               Position     => Ub4 (J),
               Value        => Self.Columns (J).String.Value (0)'Address,
               Value_Length => Self.Columns (J).String.Value'Length * 2,
               Value_Type   => SQLT_STR,
               Indicator    => Self.Columns (J).Is_Null'Access);

            if Databases.Check_Error (Self.DB, Code) then
               Self.State := No_More_Rows;
               return False;
            end if;

         end if;
      end loop;

      Code := Stmt_Fetch (Self.Handle, Self.DB.Error);

      if Databases.Check_Error (Self.DB, Code) or Code = Call_No_Data then
         Self.State := No_More_Rows;
      else
         Self.State := Has_Row;

         --  validate not null string columns
         for J in 1 .. Self.Column_Count loop
            if Self.Columns (J).Column_Type = String_Column and
              Self.Columns (J).Is_Null = 0
            then
               Matreshka.Internals.Strings.C.Validate_And_Fixup
                 (Self.Columns (J).String, Ok);
            end if;
         end loop;
      end if;

      return Self.State = Has_Row;
   end Next;

   -------------
   -- Prepare --
   -------------

   overriding function Prepare
    (Self  : not null access OCI_Query;
     Query : League.Strings.Universal_String) return Boolean
   is
      Select_Statement : constant := 1;

      Kind : aliased Ub2;
      Code : Error_Code;
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

      Self.Is_Described := False;
      Self.Is_Select := Kind = Select_Statement;
      Self.State := Prepared;

      return True;
   end Prepare;

   -----------
   -- Value --
   -----------

   overriding function Value
    (Self  : not null access OCI_Query;
     Index : Positive) return League.Values.Value
   is
      use type Sb2;
      Value : League.Values.Value;
   begin
      if Self.State /= Has_Row or else Index > Self.Column_Count then
         return Value;
      elsif Self.Columns (Index).Column_Type = String_Column then
         League.Values.Set_Tag
           (Value, League.Values.Universal_String_Tag);

         if Self.Columns (Index).Is_Null = 0 then
            League.Values.Set
              (Value,
               League.Strings.Internals.Create (Self.Columns (Index).String));
         end if;
      elsif Self.Columns (Index).Column_Type = Integer_Column then
         League.Values.Set_Tag
           (Value, League.Values.Universal_Integer_Tag);

         if Self.Columns (Index).Is_Null = 0 then
            League.Values.Set (Value, Self.Columns (Index).Int);
         end if;
      elsif Self.Columns (Index).Column_Type = Float_Column then
         League.Values.Set_Tag
           (Value, League.Values.Universal_Float_Tag);

         if Self.Columns (Index).Is_Null = 0 then
            League.Values.Set (Value, Self.Columns (Index).Float);
         end if;
      end if;

      return Value;
   end Value;

end Matreshka.Internals.SQL_Drivers.OCI.Queries;
