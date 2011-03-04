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
with Matreshka.Internals.Strings;
with Matreshka.Internals.Utf16;
with Matreshka.Internals.Strings.Handlers;
with Matreshka.Internals.Strings.Configuration;
with Matreshka.Internals.Strings.Fixups;
with Ada.Unchecked_Deallocation;
with Ada.Wide_Wide_Text_IO;

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
            return;
         end if;

         Item.Value := Value;
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
      procedure Free is new Ada.Unchecked_Deallocation
        (Defined_Value_Array, Defined_Value_Array_Access);

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

      if Self.Has_Row and not Self.Is_Described then
         Code := Attr_Get
           (Target      => Self.Handle,
            Target_Type => HT_Statament,
            Buffer      => Self.Count'Address,
            Length      => null,
            Attr        => Attr_Param_Count,
            Error       => Self.DB.Error);

         if Databases.Check_Error (Self.DB, Code) then
            return False;
         end if;

         if Self.Columns /= null and then Self.Columns'Length < Self.Count then
            Free (Self.Columns);
         end if;

         if Self.Columns = null then
            Self.Columns :=
              new Defined_Value_Array (1 .. Positive (Self.Count));
         end if;

         for J in 1 .. Positive (Self.Count) loop
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

Ada.Wide_Wide_Text_IO.Put_Line ("type=" & Data_Type'Wide_Wide_Image (Column_Type));
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

Ada.Wide_Wide_Text_IO.Put_Line ("size=" & Ub2'Wide_Wide_Image (Size));

                  if Databases.Check_Error (Self.DB, Code) then
                     return False;
                  end if;

                  Self.Columns (J).Size := Utf16.Utf16_String_Index (Size + 1);

                  declare
                     Ptr : Matreshka.Internals.Strings.Shared_String_Access :=
                       Matreshka.Internals.Strings.Allocate
                         (Self.Columns (J).Size);
                  begin
                     Self.Columns (J).Column_Type := String_Column;
                     Self.Columns (J).String      := Ptr;

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

Ada.Wide_Wide_Text_IO.Put_Line ("scale=" & Sb1'Wide_Wide_Image (Scale));
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
                     Self.Columns (J).Column_Type := Decimal_Column;

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
                  raise Constraint_Error with "Unsupported type";
               end if;

               Code := Descriptor_Free (Param, DT_Parameter);

               if Databases.Check_Error (Self.DB, Code) then
                  return False;
               end if;
            end;
         end loop;

         Self.Is_Described := True;
      end if;

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

   ----------
   -- Next --
   ----------

   overriding function Next
     (Self : not null access OCI_Query)
     return Boolean
   is
      use Matreshka.Internals.Strings;
      Code : Error_Code;
   begin
      if not Self.Is_Active or not Self.Has_Row then
         --  Returns immidiatly when statement is not active.

         return False;
      end if;

      --  Rebind used strings columns
      for J in 1 .. Positive (Self.Count) loop
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
               return False;
            end if;

         end if;
      end loop;

      Code := Stmt_Fetch (Self.Handle, Self.DB.Error);

      if Databases.Check_Error (Self.DB, Code) then
         return False;
      end if;

      Self.Has_Row := Code /= Call_No_Data;

      if Self.Has_Row then
         for J in 1 .. Positive (Self.Count) loop
            if Self.Columns (J).Column_Type = String_Column then
               declare
                  use type Sb2;
                  Ok  : Boolean;
               begin
                  Fixups.Validate_And_Fixup (Self.Columns (J).String, Ok);

                  if not Ok then
                     Self.Columns (J).Is_Null := -1;
                  end if;
               end;
            end if;
         end loop;
      end if;

      return Self.Has_Row;
   end Next;

   -------------
   -- Prepare --
   -------------

   overriding function Prepare
    (Self  : not null access OCI_Query;
     Query : League.Strings.Universal_String) return Boolean
   is
      Select_Statement : constant := 1;
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

      Self.Has_Row := Kind = Select_Statement;

      Self.Is_Active := False;
      return True;
   end Prepare;

   overriding function Value
    (Self  : not null access OCI_Query;
     Index : Positive) return League.Values.Value
   is
      use type Sb2;
      Value : League.Values.Value;
   begin
      if Self.Columns (Index).Is_Null /= 0 then
         return Value;
      elsif Self.Columns (Index).Column_Type = String_Column then
         League.Values.Set_Tag
           (Value, League.Values.Universal_String_Tag);

         League.Values.Set
           (Value,
            League.Strings.Internals.Create (Self.Columns (Index).String));
      elsif Self.Columns (Index).Column_Type = Integer_Column then
         League.Values.Set_Tag
           (Value, League.Values.Universal_Integer_Tag);

         League.Values.Set (Value, Self.Columns (Index).Int);
      elsif Self.Columns (Index).Column_Type = Decimal_Column then
         League.Values.Set_Tag
           (Value, League.Values.Universal_Float_Tag);

         League.Values.Set (Value, Self.Columns (Index).Float);
      end if;

      return Value;
   end Value;

end Matreshka.Internals.SQL_Drivers.OCI.Queries;
