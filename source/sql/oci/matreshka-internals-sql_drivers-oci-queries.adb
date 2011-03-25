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
with Ada.Unchecked_Deallocation;

with League.Strings.Internals;
with Matreshka.Internals.Utf16;
with Matreshka.Internals.Strings.C;

package body Matreshka.Internals.SQL_Drivers.OCI.Queries is

   use type Interfaces.Unsigned_32;
   use type Interfaces.Unsigned_16;
   use type Interfaces.Integer_8;
   use type Sb2;

   procedure Free is
     new Ada.Unchecked_Deallocation (Bound_Value_Node, Bound_Value_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Defined_Value_Array, Defined_Value_Array_Access);

   type Utf16_Code_Unit_Access is
     access all Matreshka.Internals.Utf16.Utf16_Code_Unit;

   function OCICallbackInBind
     (ictxp  : Bound_Value_Access;
      bindp  : OCI.Bind;
      iter   : Ub4;
      index  : Ub4;
      bufpp  : access Utf16_Code_Unit_Access;
      alenp  : access Ub4;
      piecep : access Ub1;
      indp   : access Sb2_Ptr)
     return Error_Code;

   pragma Convention (C, OCICallbackInBind);

   function OCICallbackOutBind
     (octxp   : Bound_Value_Access;
      bindp   : OCI.Bind;
      iter    : Ub4;
      index   : Ub4;
      bufpp   : access Utf16_Code_Unit_Access;
      alenp   : access Ub4_Ptr;
      piecep  : access Ub1;
      indp    : access Sb2_Ptr;
      rcodepp : access Sb2_Ptr)
     return Error_Code;

   pragma Convention (C, OCICallbackOutBind);

   function "+"
     (Left  : Matreshka.Internals.Utf16.Utf16_String_Index;
      Right : Ub4) return Matreshka.Internals.Utf16.Utf16_String_Index;

   ---------
   -- "+" --
   ---------

   function "+"
     (Left  : Matreshka.Internals.Utf16.Utf16_String_Index;
      Right : Ub4) return Matreshka.Internals.Utf16.Utf16_String_Index
   is
      use type Matreshka.Internals.Utf16.Utf16_String_Index;
   begin
      return Left + Matreshka.Internals.Utf16.Utf16_String_Index (Right) / 2;
   end "+";

   ----------------
   -- Bind_Value --
   ----------------

   overriding procedure Bind_Value
    (Self      : not null access OCI_Query;
     Name      : League.Strings.Universal_String;
     Value     : League.Values.Value;
     Direction : SQL.Parameter_Directions)
   is
      use type SQL.Parameter_Directions;

      Code : Error_Code;
      Pos  : Parameter_Maps.Cursor;
      Ok   : Boolean;

      procedure Bind
       (Name : League.Strings.Universal_String;
        Item : in out Bound_Value_Access);

      ----------
      -- Bind --
      ----------

      procedure Bind
       (Name : League.Strings.Universal_String;
        Item : in out Bound_Value_Access)
      is
         Length : Ub4;
      begin
         if Item = null then
            Item := new Bound_Value_Node;
         end if;

         Item.Value := Value;

         if League.Values.Is_Universal_String (Value) then
            Length := 64 * 1024;  --  64kbyte max length of out string param

            if Direction = SQL.In_Parameter then
               if League.Values.Is_Empty (Value) then
                  Length := 2;
               else
                  Length := Ub4 (League.Strings.Internals.Internal
                                   (League.Values.Get (Value)).Unused) * 2 + 2;
               end if;
            end if;

            Code :=
              OCIBindByName
                (Self.Handle,
                Item.Bind'Access,
                Self.DB.Error,
                League.Strings.Internals.Internal (Name).Value,
                Ub4 (League.Strings.Internals.Internal (Name).Unused) * 2,
                Value_Length => Length,
                Value_Type   => SQLT_STR,
                Mode         => OCI_DATA_AT_EXEC);

            if Databases.Check_Error (Self.DB, Code) then
               Free (Item);

               return;  --  How to report errors?
            end if;

            Code :=
              OCIBindDynamic
               (Item.Bind,
                Self.DB.Error,
                Item.all'Address,
                OCICallbackInBind'Address,
                Item.all'Address,
                OCICallbackOutBind'Address);

            Item.String_Size := 0;
         elsif League.Values.Is_Abstract_Integer (Value) then
            Code :=
              OCIBindByName
               (Self.Handle,
                Item.Bind'Access,
                Self.DB.Error,
                League.Strings.Internals.Internal (Name).Value,
                Ub4 (League.Strings.Internals.Internal (Name).Unused) * 2,
                Item.Int'Address,
                Item.Int'Size / 8,
                SQLT_INT,
                Item.Is_Null'Access);

            if not League.Values.Is_Empty (Value) then
               Item.Int := League.Values.Get (Value);
            end if;

         elsif League.Values.Is_Abstract_Float (Value) then
            Code :=
              OCIBindByName
               (Self.Handle,
                Item.Bind'Access,
                Self.DB.Error,
                League.Strings.Internals.Internal (Name).Value,
                Ub4 (League.Strings.Internals.Internal (Name).Unused) * 2,
                Item.Float'Address,
                Item.Float'Size / 8,
                SQLT_FLT,
                Item.Is_Null'Access);

            if not League.Values.Is_Empty (Value) then
               Item.Float := League.Values.Get (Value);
            end if;

         elsif League.Values.Is_Empty (Value) then
            Code :=
              OCIBindByName
               (Self.Handle,
                Item.Bind'Access,
                Self.DB.Error,
                League.Strings.Internals.Internal (Name).Value,
                Ub4 (League.Strings.Internals.Internal (Name).Unused) * 2,
                Item.Int'Address,
                Item.Int'Size / 8,
                SQLT_INT,
                Item.Is_Null'Access);

         else
            Free (Item);

            return;
         end if;

         if Databases.Check_Error (Self.DB, Code) then
            Free (Item);

            return;  --  How to report errors?
         end if;

         Item.Is_Null := -Boolean'Pos
           (League.Values.Is_Empty (Value) or Direction = SQL.Out_Parameter);
      end Bind;

   begin
      if Self.State = Prepared then
         Self.Parameters.Insert (Name, null, Pos, Ok);
         Self.Parameters.Update_Element (Pos, Bind'Access);
      end if;
   end Bind_Value;

   -----------------
   -- Bound_Value --
   -----------------

   overriding function Bound_Value
    (Self : not null access OCI_Query;
     Name : League.Strings.Universal_String)
      return League.Values.Value
   is
      Empty : League.Values.Value;
      Pos   : constant Parameter_Maps.Cursor := Self.Parameters.Find (Name);
      Item  : Bound_Value_Access;
   begin
      if Parameter_Maps.Has_Element (Pos) then
         Item := Parameter_Maps.Element (Pos);
      end if;

      if Item = null then
         return Empty;
      else
         return Item.Value;
      end if;
   end Bound_Value;

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

      procedure Fixup_Parameter (Position : Parameter_Maps.Cursor);

      ---------------------
      -- Fixup_Parameter --
      ---------------------

      procedure Fixup_Parameter (Position : Parameter_Maps.Cursor) is
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Ok   : Boolean;
         Item : constant Bound_Value_Access :=
           Parameter_Maps.Element (Position);
      begin
         if Item = null then
            return;
         elsif Item.String /= null then
            Item.String.Unused := Item.String.Unused + Item.String_Size;

            Matreshka.Internals.Strings.C.Validate_And_Fixup
              (Item.String, Item.String.Unused, Ok);

            League.Values.Set
              (Item.Value,
               League.Strings.Internals.Wrap (Item.String));

            Item.String := null;
            Item.String_Size := 0;

            if Item.Is_Null = -1 then
               League.Values.Clear (Item.Value);
            end if;
         elsif League.Values.Is_Abstract_Integer (Item.Value) then
            if Item.Is_Null = 0 then
               League.Values.Set (Item.Value, Item.Int);
            else
               League.Values.Clear (Item.Value);
            end if;
         elsif League.Values.Is_Abstract_Float (Item.Value) then
            if Item.Is_Null = 0 then
               League.Values.Set (Item.Value, Item.Float);
            else
               League.Values.Clear (Item.Value);
            end if;
         elsif Item.Is_Null /= 0 then
            League.Values.Clear (Item.Value);
         end if;
      end Fixup_Parameter;

      Count : aliased Ub4;
      Code  : Error_Code;

   begin  --  Execute
      if Self.State not in Ready then
         return False;
      end if;

      Code :=
        OCIStmtExecute
         (Self.DB.Service,
          Self.Handle,
          Self.DB.Error,
          Iters => Boolean'Pos (not Self.Is_Select));

      if Databases.Check_Error (Self.DB, Code) then
         return False;
      end if;

      Self.Parameters.Iterate (Fixup_Parameter'Access);

      if Self.Is_Select and not Self.Is_Described then
         Self.Is_Described := True;
         Self.Column_Count := 0;

         Code :=
           OCIAttrGet
            (Target      => Self.Handle,
             Target_Type => OCI_HTYPE_STMT,
             Buffer      => Count'Address,
             Length      => null,
             Attr        => OCI_ATTR_PARAM_COUNT,
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
               Code :=
                 OCIParamGet
                  (Self.Handle,
                   OCI_HTYPE_STMT,
                   Self.DB.Error,
                   Param'Access,
                   Ub4 (J));

               if Databases.Check_Error (Self.DB, Code) then
                  return False;
               end if;

               Code :=
                 OCIAttrGet
                  (Param,
                   OCI_DTYPE_PARAM,
                   Column_Type'Address,
                   null,
                   OCI_ATTR_DATA_TYPE,
                   Self.DB.Error);

               if Databases.Check_Error (Self.DB, Code) then
                  return False;
               end if;

               if Column_Type = SQLT_CHR or Column_Type = SQLT_AFC then
                  Code :=
                    OCIAttrGet
                     (Param,
                      OCI_DTYPE_PARAM,
                      Size'Address,
                      null,
                      OCI_ATTR_DATA_SIZE,
                      Self.DB.Error);

                  if Databases.Check_Error (Self.DB, Code) then
                     return False;
                  end if;

                  Self.Columns (J).Column_Type := String_Column;
                  Self.Columns (J).Size := Utf16.Utf16_String_Index (Size + 1);

                  declare
                     use Matreshka.Internals.Strings;

                     Ptr : Shared_String_Access
                       renames Self.Columns (J).String;

                  begin
                     if Ptr = null then
                        Ptr := Allocate (Self.Columns (J).Size);

                     elsif not Can_Be_Reused (Ptr, Self.Columns (J).Size) then
                        Dereference (Ptr);
                        Ptr := Allocate (Self.Columns (J).Size);
                     end if;

                     Code :=
                       OCIDefineByPos
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

               elsif Column_Type = SQLT_NUM
                 or Column_Type = SQLT_IBFLOAT
                 or Column_Type = SQLT_IBDOUBLE
               then
                  Code :=
                    OCIAttrGet
                     (Param,
                      OCI_DTYPE_PARAM,
                      Scale'Address,
                      null,
                      OCI_ATTR_SCALE,
                      Self.DB.Error);

                  if Databases.Check_Error (Self.DB, Code) then
                     return False;
                  end if;

                  if Column_Type = SQLT_NUM and Scale = 0 then
                     Self.Columns (J).Column_Type := Integer_Column;
                     Code :=
                       OCIDefineByPos
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

                     Code :=
                       OCIDefineByPos
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

               Code := OCIDescriptorFree (Param, OCI_DTYPE_PARAM);

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
         Self.State := No_More_Rows;
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

            Code := OCIStmtFetch2 (Self.Handle, Self.DB.Error, Rows => 0);

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
         Code := OCIHandleFree (Self.Handle, OCI_HTYPE_STMT);

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
    (Self : not null access OCI_Query) return Boolean
   is
      use Matreshka.Internals.Strings;
      Ok   : Boolean;
      Code : Error_Code;

   begin
      if Self.State not in Fetching then
         return False;
      end if;

      --  Rebind used strings columns

      for J in 1 .. Self.Column_Count loop
         if Self.Columns (J).Column_Type = String_Column
           and then not Can_Be_Reused
                         (Self.Columns (J).String, Self.Columns (J).Size)
         then
            Dereference (Self.Columns (J).String);
            Self.Columns (J).String := Allocate (Self.Columns (J).Size);

            Code :=
              OCIDefineByPos
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

      Code := OCIStmtFetch2 (Self.Handle, Self.DB.Error);

      if Databases.Check_Error (Self.DB, Code) or Code = OCI_NO_DATA then
         Self.State := No_More_Rows;

      else
         Self.State := Has_Row;

         --  validate not null string columns

         for J in 1 .. Self.Column_Count loop
            if Self.Columns (J).Column_Type = String_Column
              and Self.Columns (J).Is_Null = 0
            then
               Matreshka.Internals.Strings.C.Validate_And_Fixup
                (Self.Columns (J).String, Ok);
            end if;
         end loop;
      end if;

      return Self.State = Has_Row;
   end Next;

   -----------------------
   -- OCICallbackInBind --
   -----------------------

   function OCICallbackInBind
     (ictxp  : Bound_Value_Access;
      bindp  : OCI.Bind;
      iter   : Ub4;
      index  : Ub4;
      bufpp  : access Utf16_Code_Unit_Access;
      alenp  : access Ub4;
      piecep : access Ub1;
      indp   : access Sb2_Ptr)
     return Error_Code
   is
      pragma Unreferenced (bindp);
      pragma Unreferenced (iter);
      pragma Unreferenced (index);
   begin
      piecep.all := OCI_ONE_PIECE;
      indp.all := ictxp.Is_Null'Access;

      if ictxp.Is_Null = -1 then
         bufpp.all := null;
         alenp.all := 0;
         return OCI_CONTINUE;
      end if;

      alenp.all := Ub4 (League.Strings.Internals.Internal
                          (League.Values.Get (ictxp.Value)).Unused) * 2 + 2;

      bufpp.all := League.Strings.Internals.Internal
        (League.Values.Get (ictxp.Value)).Value (0)'Access;

      return OCI_CONTINUE;
   end OCICallbackInBind;

   ------------------------
   -- OCICallbackOutBind --
   ------------------------

   function OCICallbackOutBind
     (octxp   : Bound_Value_Access;
      bindp   : OCI.Bind;
      iter    : Ub4;
      index   : Ub4;
      bufpp   : access Utf16_Code_Unit_Access;
      alenp   : access Ub4_Ptr;
      piecep  : access Ub1;
      indp    : access Sb2_Ptr;
      rcodepp : access Sb2_Ptr)
     return Error_Code
   is
      pragma Unreferenced (bindp);
      pragma Unreferenced (iter);
      pragma Unreferenced (index);
      pragma Unreferenced (Rcodepp);
      
      use Matreshka.Internals.Strings;
      use type Ub1;
      use type Matreshka.Internals.Utf16.Utf16_String_Index;

   begin
      if piecep.all = OCI_ONE_PIECE then
         piecep.all := OCI_FIRST_PIECE;

         if not League.Values.Is_Empty (octxp.Value) then
            octxp.String := League.Strings.Internals.Internal
              (League.Values.Get (octxp.Value));
         else
            octxp.String := null;
         end if;

         if octxp.String /= null and then
           Can_Be_Reused (octxp.String, octxp.String.Size - 1)
         then
            Reference (octxp.String);

            League.Values.Set
              (octxp.Value, League.Strings.Empty_Universal_String);
         else
            octxp.String := Allocate (64);  --  Some initial size
         end if;

         octxp.String.Unused := 0;
      else
         piecep.all := OCI_NEXT_PIECE;
         octxp.String.Unused := octxp.String.Unused + octxp.String_Size;
         Mutate (octxp.String, 8 * octxp.String.Size);
      end if;

      octxp.String_Size := Ub4 ((octxp.String.Size - octxp.String.Unused) * 2);

      bufpp.all := octxp.String.Value (octxp.String.Unused)'Access;
      alenp.all := octxp.String_Size'Access;
      indp.all := octxp.Is_Null'Access;

      return OCI_CONTINUE;
   end OCICallbackOutBind;

   -------------
   -- Prepare --
   -------------

   overriding function Prepare
    (Self  : not null access OCI_Query;
     Query : League.Strings.Universal_String) return Boolean
   is
      Kind : aliased Ub2;
      Code : Error_Code;

   begin
      if Self.Handle = null then
         Code :=
           OCIHandleAlloc (Databases.Env, Self.Handle'Access, OCI_HTYPE_STMT);

         if Databases.Check_Error (Self.DB, Code) then
            return False;
         end if;
      end if;

      Code :=
        OCIStmtPrepare
         (Self.Handle,
          Self.DB.Error,
          League.Strings.Internals.Internal (Query).Value,
          Ub4 (League.Strings.Internals.Internal (Query).Unused) * 2);

      if Databases.Check_Error (Self.DB, Code) then
         return False;
      end if;

      Code :=
        OCIAttrGet
         (Target      => Self.Handle,
          Target_Type => OCI_HTYPE_STMT,
          Buffer      => Kind'Address,
          Length      => null,
          Attr        => OCI_ATTR_STMT_TYPE,
          Error       => Self.DB.Error);

      if Databases.Check_Error (Self.DB, Code) then
         return False;
      end if;

      Self.Is_Described := False;
      Self.Is_Select := Kind = OCI_STMT_SELECT;
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
      Value : League.Values.Value;

   begin
      if Self.State /= Has_Row or else Index > Self.Column_Count then
         return Value;

      elsif Self.Columns (Index).Column_Type = String_Column then
         League.Values.Set_Tag (Value, League.Values.Universal_String_Tag);

         if Self.Columns (Index).Is_Null = 0 then
            League.Values.Set
             (Value,
              League.Strings.Internals.Create (Self.Columns (Index).String));
         end if;

      elsif Self.Columns (Index).Column_Type = Integer_Column then
         League.Values.Set_Tag (Value, League.Values.Universal_Integer_Tag);

         if Self.Columns (Index).Is_Null = 0 then
            League.Values.Set (Value, Self.Columns (Index).Int);
         end if;

      elsif Self.Columns (Index).Column_Type = Float_Column then
         League.Values.Set_Tag (Value, League.Values.Universal_Float_Tag);

         if Self.Columns (Index).Is_Null = 0 then
            League.Values.Set (Value, Self.Columns (Index).Float);
         end if;
      end if;

      return Value;
   end Value;

end Matreshka.Internals.SQL_Drivers.OCI.Queries;
