------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Unchecked_Deallocation;

with Matreshka.Internals.Atomics.Generic_Test_And_Set;
with Matreshka.Internals.Locales;
with Matreshka.Internals.Ucd;
with Matreshka.Internals.Unicode;
with Matreshka.Strings.Casing;

package body Matreshka.Strings is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

   procedure Free is
     new Ada.Unchecked_Deallocation (Utf16_String, Utf16_String_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation
          (String_Private_Data, String_Private_Data_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation (Index_Map, Index_Map_Access);

   function Test_And_Set is
     new Matreshka.Internals.Atomics.Generic_Test_And_Set
          (Index_Map, Index_Map_Access);

   procedure To_Utf16_String
    (Source      : Wide_Wide_String;
     Destination : out Utf16_String_Access;
     Last        : out Natural;
     Index_Mode  : out Index_Modes);

   procedure Unchecked_Append
    (Value      : in out Utf16_String_Access;
     Last       : in out Natural;
     Index_Mode : in out Index_Modes;
     Item       : Wide_Wide_Character);

   Empty_String : aliased Utf16_String := Utf16_String'(1 .. 0 => 0);

   Shared_Empty : aliased String_Private_Data
     := (Value => Empty_String'Access, others => <>);

   Index_Mode_After_Concatenation : constant
     array (Index_Modes, Index_Modes) of Index_Modes
       := (Undefined    => (Single_Units => Single_Units,
                            Double_Units => Double_Units,
                            Mixed_Units  => Mixed_Units,
                            others       => Undefined),
           Single_Units => (Undefined    => Single_Units,
                            Single_Units => Single_Units,
                            others       => Mixed_Units),
           Double_Units => (Undefined    => Double_Units,
                            Double_Units => Double_Units,
                            others       => Mixed_Units),
           Mixed_Units  => (Undefined    => Mixed_Units,
                            others       => Mixed_Units));
   --  String indexing mode after concatenation. Each dimension is a valid
   --  string indexing mode for each concatenated string.

   ---------
   -- "&" --
   ---------

   function "&"
    (Left  : Universal_String'Class;
     Right : Universal_Character'Class)
       return Universal_String
   is
   begin
      return Left & Right.To_Wide_Wide_Character;
   end "&";

   ---------
   -- "&" --
   ---------

   function "&"
    (Left  : Universal_String'Class;
     Right : Universal_String'Class)
       return Universal_String
   is
      L_D : constant not null String_Private_Data_Access := Left.Data;
      R_D : constant not null String_Private_Data_Access := Right.Data;

   begin
      if L_D.Length = 0 then
         return Universal_String (Right);

      elsif R_D.Length = 0 then
         return Universal_String (Left);

      else
         return
           Universal_String'
            (Ada.Finalization.Controlled with
               Data =>
                 new String_Private_Data'
                      (Counter    => Matreshka.Internals.Atomics.Counters.One,
                       Value      =>
                         new Utf16_String'
                              (L_D.Value (1 .. L_D.Last)
                                 & R_D.Value (1 .. R_D.Last)),
                       Last       => L_D.Last + R_D.Last,
                       Length     => L_D.Length + R_D.Length,
                       Index_Mode =>
                         Index_Mode_After_Concatenation
                          (L_D.Index_Mode, R_D.Index_Mode),
                       Index_Map  => null,
                       Cursors    => null));
      end if;
   end "&";

   ---------
   -- "&" --
   ---------

   function "&"
    (Left  : Universal_String'Class;
     Right : Wide_Wide_Character)
       return Universal_String
   is
      L_D        : constant not null String_Private_Data_Access := Left.Data;
      Value      : Utf16_String_Access;
      Last       : Natural;
      Index_Mode : Index_Modes;

   begin
      if not Is_Valid_Unicode_Code_Point (Wide_Wide_Character'Pos (Right)) then
         raise Constraint_Error with "Invalid Wide_Wide_Character";
      end if;

      Value := new Utf16_String (1 .. L_D.Last + 2);
      Value (1 .. L_D.Last) := L_D.Value (1 .. L_D.Last);
      Last := L_D.Last;
      Index_Mode := L_D.Index_Mode;
      Unchecked_Append (Value, Last, Index_Mode, Right);

      return
        Universal_String'
         (Ada.Finalization.Controlled with
            Data =>
              new String_Private_Data'
                   (Counter    => Matreshka.Internals.Atomics.Counters.One,
                    Value      => Value,
                    Last       => Last,
                    Length     => L_D.Length + 1,
                    Index_Mode => Index_Mode,
                    Index_Map  => null,
                    Cursors    => null));
   end "&";

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Abstract_Cursor) is
   begin
      if Self.Data /= null then
         Matreshka.Internals.Atomics.Counters.Increment
          (Self.Data.Counter'Access);
         Self.Next         := Self.Data.Cursors;
         Self.Data.Cursors := Self'Unchecked_Access;
      end if;
   end Adjust;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Universal_String) is
   begin
      if Self.Data.Cursors = null then
         Matreshka.Internals.Atomics.Counters.Increment
          (Self.Data.Counter'Access);

      else
         Self.Data := Copy (Self.Data);
      end if;
   end Adjust;

   ------------
   -- Attach --
   ------------

   procedure Attach
    (Self : in out Abstract_Cursor'Class;
     Item : in out Universal_String'Class)
   is
      Aux : String_Private_Data_Access;

   begin
      Dereference (Self.Data, Self'Unchecked_Access);

      --  Reference counter equal to one when internal data is not shared. By
      --  the convention, if data has associated iterator it is not shared.
      --  In all other cases internal data is shared, and exclusive copy of
      --  data must be created.

      if not Matreshka.Internals.Atomics.Counters.Is_One
              (Item.Data.Counter'Access)
        and then Item.Data.Cursors = null
      then
         Aux := Copy (Item.Data);
         Dereference (Item.Data);
         Item.Data := Aux;
      end if;

      Self.Data := Item.Data;
      Matreshka.Internals.Atomics.Counters.Increment
       (Self.Data.Counter'Access);
      Self.Next         := Self.Data.Cursors;
      Self.Data.Cursors := Self'Unchecked_Access;
   end Attach;

   ----------
   -- Copy --
   ----------

   function Copy (Source : not null String_Private_Data_Access)
     return not null String_Private_Data_Access
   is
   begin
      return Result : not null String_Private_Data_Access
        := new String_Private_Data'
                (Counter    => Matreshka.Internals.Atomics.Counters.One,
                 Value      => new Utf16_String' (Source.Value.all),
                 Last       => Source.Last,
                 Length     => Source.Length,
                 Index_Mode => Source.Index_Mode,
                 Index_Map  => null,
                 Cursors    => null)
      do
         if Source.Index_Map /= null then
            Result.Index_Map := new Index_Map'(Source.Index_Map.all);
         end if;
      end return;
   end Copy;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out String_Private_Data_Access) is
      Aux : Utf16_String_Access;

   begin
      if Self /= null then
         if Matreshka.Internals.Atomics.Counters.Decrement
             (Self.Counter'Access)
         then
            pragma Assert (Self /= Shared_Empty'Access);
            pragma Assert (Self.Cursors = null);

            Free (Self.Index_Map);
            Aux := Self.Value;
            Free (Aux);
            Free (Self);

         else
            Self := null;
         end if;
      end if;
   end Dereference;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference
    (Self   : in out String_Private_Data_Access;
     Cursor : not null Cursor_Access)
   is
      Previous : Cursor_Access := null;
      Current  : Cursor_Access;

   begin
      if Self /= null then
         Current := Self.Cursors;

         while Current /= Cursor loop
            Previous := Current;
            Current := Current.Next;
         end loop;

         if Previous = null then
            Self.Cursors := Cursor.Next;

         else
            Previous.Next := Cursor.Next;
         end if;

         Cursor.Next := null;

         Dereference (Self);
      end if;
   end Dereference;

   --------------
   -- Elemennt --
   --------------

   function Element
    (Self  : Universal_String'Class;
     Index : Positive)
       return Universal_Character
   is
   begin
      return To_Universal_Character (Self.Element (Index));
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : Universal_String'Class;
     Index : Positive)
       return Wide_Wide_Character
   is
      D : constant String_Private_Data_Access := Self.Data;

   begin
      if Index > D.Length then
         raise Constraint_Error with "Index is out of range";
      end if;

      case D.Index_Mode is
         when Undefined =>
            raise Program_Error;

         when Single_Units =>
            return Wide_Wide_Character'Val (D.Value (Index));

         when Double_Units =>
            return
              Wide_Wide_Character'Val
               (Unchecked_To_Code_Point (D.Value.all, Index * 2 - 1));

         when Mixed_Units =>
            declare
               M       : Index_Map_Access := D.Index_Map;
               Current : Positive         := 1;

            begin
               --  Calculate index map if it is unavailable for now.

               if M = null then
                  M := new Index_Map (D.Length);

                  for J in M.Map'Range loop
                     M.Map (J) := Current;

                     if D.Value (Current)
                          in High_Surrogate_Utf16_Code_Unit
                     then
                        Current := Current + 2;

                     else
                        Current := Current + 1;
                     end if;
                  end loop;

                  if not Test_And_Set (D.Index_Map'Access, null, M) then
                     --  Operation can fail if mapping has been calculated by
                     --  another thread. In this case computed result is
                     --  dropped, memory freed and already calculated mapping
                     --  is reused.

                     Free (M);
                  end if;

                  M := D.Index_Map;
               end if;

               return
                 Wide_Wide_Character'Val
                  (Unchecked_To_Code_Point (D.Value.all, M.Map (Index)));
            end;
      end case;
   end Element;

   ------------------
   -- Emit_Changed --
   ------------------

   procedure Emit_Changed
    (Self          : not null String_Private_Data_Access;
     Cursor        : not null Cursor_Access;
     Changed_First : Positive;
     Removed_Last  : Natural;
     Inserted_Last : Natural)
   is
      Current : Cursor_Access := Self.Cursors;
      Next    : Cursor_Access := Current.Next;

   begin
      loop
         if Current /= Cursor then
            Current.On_Changed (Changed_First, Removed_Last, Inserted_Last);
         end if;

         exit when Next = null;

         Current := Next;
         Next    := Current.Next;
      end loop;
   end Emit_Changed;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Abstract_Cursor) is
   begin
      Dereference (Self.Data, Self'Unchecked_Access);
   end Finalize;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Universal_String) is
   begin
      Dereference (Self.Data);
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   overriding procedure Initialize (Self : in out Universal_String) is
   begin
      Self.Data := Shared_Empty'Access;
      Matreshka.Internals.Atomics.Counters.Increment
       (Self.Data.Counter'Access);
   end Initialize;

   ------------
   -- Length --
   ------------

   function Length (Self : Universal_String'Class) return Natural is
   begin
      return Self.Data.Length;
   end Length;

   ----------------
   -- On_Changed --
   ----------------

   not overriding procedure On_Changed
    (Self           : not null access Abstract_Cursor;
     Changed_First  : Positive;
     Removed_Last   : Natural;
     Inserted_Last  : Natural)
   is
   begin
      Dereference (Self.Data, Self.all'Unchecked_Access);
   end On_Changed;

   ----------
   -- Read --
   ----------

   procedure Read
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : out Universal_String)
   is
      Length : Natural;
      Last   : Natural;
      Value  : Utf16_String_Access;

   begin
      Natural'Read (Stream, Length);
      Natural'Read (Stream, Last);
      Value := new Utf16_String (1 .. Last);
      Utf16_String'Read (Stream, Value.all);

      --  XXX Value validation must be done before any other operations.
      --  XXX Object mutation can be used here.

      Dereference (Item.Data);

      Item.Data :=
        new String_Private_Data'
             (Counter    => Matreshka.Internals.Atomics.Counters.One,
              Value      => Value,
              Last       => Last,
              Length     => Length,
              Index_Mode => Undefined,
              Index_Map  => null,
              Cursors    => null);
   end Read;

   -----------------
   -- To_Casefold --
   -----------------

   function To_Casefold (Self : Universal_String'Class)
     return Universal_String
   is
      Locale : Matreshka.Internals.Locales.Locale_Data_Access;

   begin
      return Result : Universal_String
        := Universal_String'
            (Ada.Finalization.Controlled with
               Data =>
                 new String_Private_Data'
                      (Counter    => Matreshka.Internals.Atomics.Counters.One,
                       Value      => new Utf16_String (1 .. 0),
                       Last       => 0,
                       Length     => 0,
                       Index_Mode => Undefined,
                       Index_Map  => null,
                       Cursors    => null))
      do
         Locale := Matreshka.Internals.Locales.Get_Locale;
         Matreshka.Strings.Casing.Convert_Case
          (Locale,
           Self.Data.Value.all,
           Self.Data.Last,
           Matreshka.Internals.Ucd.Folding,
           Matreshka.Internals.Ucd.Has_Case_Folding,
           Result.Data.Value,
           Result.Data.Last,
           Result.Data.Length,
           Result.Data.Index_Mode);
         Matreshka.Internals.Locales.Dereference (Locale);
      end return;
   end To_Casefold;

   ------------------
   -- To_Lowercase --
   ------------------

   function To_Lowercase (Self : Universal_String'Class)
     return Universal_String
   is
      Locale : Matreshka.Internals.Locales.Locale_Data_Access;

   begin
      if Self.Data.Length = 0 then
         return Universal_String (Self);
      end if;

      return Result : Universal_String
        := Universal_String'
            (Ada.Finalization.Controlled with
               Data =>
                 new String_Private_Data'
                      (Counter    => Matreshka.Internals.Atomics.Counters.One,
                       Value      => new Utf16_String (1 .. 0),
                       Last       => 0,
                       Length     => 0,
                       Index_Mode => Undefined,
                       Index_Map  => null,
                       Cursors    => null))
      do
         Locale := Matreshka.Internals.Locales.Get_Locale;
         Matreshka.Strings.Casing.Convert_Case
          (Locale,
           Self.Data.Value.all,
           Self.Data.Last,
           Matreshka.Internals.Ucd.Lower,
           Matreshka.Internals.Ucd.Has_Lowercase_Mapping,
           Result.Data.Value,
           Result.Data.Last,
           Result.Data.Length,
           Result.Data.Index_Mode);
         Matreshka.Internals.Locales.Dereference (Locale);
      end return;
   end To_Lowercase;

   ------------------
   -- To_Uppercase --
   ------------------

   function To_Uppercase (Self : Universal_String'Class)
     return Universal_String
   is
      Locale : Matreshka.Internals.Locales.Locale_Data_Access;

   begin
      if Self.Data.Length = 0 then
         return Universal_String (Self);
      end if;

      return Result : Universal_String
        := Universal_String'
            (Ada.Finalization.Controlled with
               Data =>
                 new String_Private_Data'
                      (Counter    => Matreshka.Internals.Atomics.Counters.One,
                       Value      => new Utf16_String (1 .. 0),
                       Last       => 0,
                       Length     => 0,
                       Index_Mode => Undefined,
                       Index_Map  => null,
                       Cursors    => null))
      do
         Locale := Matreshka.Internals.Locales.Get_Locale;
         Matreshka.Strings.Casing.Convert_Case
          (Locale,
           Self.Data.Value.all,
           Self.Data.Last,
           Matreshka.Internals.Ucd.Upper,
           Matreshka.Internals.Ucd.Has_Uppercase_Mapping,
           Result.Data.Value,
           Result.Data.Last,
           Result.Data.Length,
           Result.Data.Index_Mode);
         Matreshka.Internals.Locales.Dereference (Locale);
      end return;
   end To_Uppercase;

   ---------------------
   -- To_Utf16_String --
   ---------------------

   procedure To_Utf16_String
    (Source      : Wide_Wide_String;
     Destination : out Utf16_String_Access;
     Last        : out Natural;
     Index_Mode  : out Index_Modes)
   is
      Has_BMP       : Boolean := False;
      Has_Non_BMP   : Boolean := False;

      Double_Length : Boolean := False;
      --  True if Destination reserve space for double code unit representation
      --  of the source code points.

   begin
      Destination := new Utf16_String (1 .. Source'Length);
      Last := 0;

      for J in Source'Range loop
         if Is_Valid_Unicode_Code_Point
             (Wide_Wide_Character'Pos (Source (J)))
         then
            declare
               C : Code_Point := Wide_Wide_Character'Pos (Source (J));

            begin
               if C <= 16#FFFF# then
                  Last := Last + 1;
                  Destination (Last) := Utf16_Code_Unit (C);
                  Has_Bmp := True;

               else
                  if not Double_Length then
                     --  Reallocate buffer.

                     declare
                        Aux : constant Utf16_String_Access
                          := new Utf16_String (1 .. Source'Length * 2);

                     begin
                        Aux (1 .. Last) := Destination (1 .. Last);
                        Free (Destination);
                        Destination := Aux;

                        Double_Length := True;
                     end;
                  end if;

                  C := C - 16#1_0000#;

                  Last := Last + 1;
                  Destination (Last) :=
                    Utf16_Code_Unit (High_Surrogate_First + C / 16#400#);

                  Last := Last + 1;
                  Destination (Last) :=
                    Utf16_Code_Unit (Low_Surrogate_First + C mod 16#400#);

                  Has_Non_Bmp := True;
               end if;
            end;

         else
            raise Constraint_Error
              with "Wide_Wide_Character is not a valid Unicode code point";
         end if;
      end loop;

      Index_Mode := Index_Mode_For_String (Has_BMP, Has_Non_BMP);

   exception
      when others =>
         Free (Destination);

         raise;
   end To_Utf16_String;

   ----------------------------
   -- To_Universal_Character --
   ----------------------------

   function To_Universal_Character
    (Self : Wide_Wide_Character)
       return Universal_Character
   is
   begin
      if Is_Valid_Unicode_Code_Point (Wide_Wide_Character'Pos (Self)) then
         return Universal_Character'(C => Wide_Wide_Character'Pos (Self));

      else
         raise Constraint_Error
           with "Wide_Wide_Character is not a valid Unicode code point";
      end if;
   end To_Universal_Character;

   -------------------------
   -- To_Universal_String --
   -------------------------

   function To_Universal_String (Item : Wide_Wide_String)
     return Universal_String
   is
      Value      : Utf16_String_Access;
      Last       : Natural;
      Index_Mode : Index_Modes;

   begin
      if Item'Length = 0 then
         Matreshka.Internals.Atomics.Counters.Increment
          (Shared_Empty.Counter'Access);

         return
           Universal_String'
            (Ada.Finalization.Controlled with Data => Shared_Empty'Access);
      end if;

      To_Utf16_String (Item, Value, Last, Index_Mode);

      return
        Universal_String'
         (Ada.Finalization.Controlled with
            Data =>
              new String_Private_Data'
                   (Counter    => Matreshka.Internals.Atomics.Counters.One,
                    Value      => Value,
                    Last       => Last,
                    Length     => Item'Length,
                    Index_Mode => Index_Mode,
                    Index_Map  => null,
                    Cursors    => null));
   end To_Universal_String;

   ----------------------------
   -- To_Wide_Wide_Character --
   ----------------------------

   function To_Wide_Wide_Character
    (Self : Universal_Character)
       return Wide_Wide_Character
   is
   begin
      return Wide_Wide_Character'Val (Self.C);
   end To_Wide_Wide_Character;

   -------------------------
   -- To_Wide_Wide_String --
   -------------------------

   function To_Wide_Wide_String (Self : Universal_String'Class)
     return Wide_Wide_String
   is
      Result  : Wide_Wide_String (1 .. Self.Data.Length);
      Current : Positive := 1;
      Code    : Code_Point;

   begin
      for J in Result'Range loop
         Unchecked_Next (Self.Data.Value.all, Current, Code);
         Result (J) := Wide_Wide_Character'Val (Code);
      end loop;

      return Result;
   end To_Wide_Wide_String;

   ----------------------
   -- Unchecked_Append --
   ----------------------

   procedure Unchecked_Append
    (Value      : in out Utf16_String_Access;
     Last       : in out Natural;
     Index_Mode : in out Index_Modes;
     Item       : Wide_Wide_Character)
   is
      C             : Code_Point := Wide_Wide_Character'Pos (Item);
      Has_BMP       : Boolean    := False;
      Has_Non_BMP   : Boolean    := False;

   begin
      if C <= 16#FFFF# then
         Last := Last + 1;

      else
         Last := Last + 2;
      end if;
        
      if Last > Value'Last then
         declare
            Aux : constant not null Utf16_String_Access
              := new Utf16_String (1 .. Last);

         begin
            Aux (Value'Range) := Value.all;
            Free (Value);
            Value := Aux;
         end;
      end if;

      if C <= 16#FFFF# then
         Has_BMP      := True;
         Value (Last) := Utf16_Code_Unit (C);

      else
         Has_Non_Bmp      := True;
         C                := C - 16#1_0000#;
         Value (Last - 1) :=
           Utf16_Code_Unit (High_Surrogate_First + C / 16#400#);
         Value (Last)     :=
           Utf16_Code_Unit (Low_Surrogate_First + C mod 16#400#);
      end if;

      Index_Mode :=
        Index_Mode_After_Concatenation
         (Index_Mode, Index_Mode_For_String (Has_BMP, Has_Non_BMP));
   end Unchecked_Append;

   -----------
   -- Write --
   -----------

   procedure Write
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : Universal_String)
   is
   begin
      Integer'Write (Stream, Item.Data.Length);
      Integer'Write (Stream, Item.Data.Last);
      Matreshka.Internals.Utf16.Utf16_String'Write
       (Stream, Item.Data.Value (1 .. Item.Data.Last));
   end Write;

end Matreshka.Strings;
