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
-- Copyright © 2009, 2010 Vadim Godunko <vgodunko@gmail.com>                --
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
with League.Strings.Internals;
with Matreshka.Internals.Locales;
with Matreshka.Internals.Strings.Compare;
with Matreshka.Internals.Strings.Operations;
with Matreshka.Internals.Unicode.Casing;
with Matreshka.Internals.Unicode.Collation;
with Matreshka.Internals.Unicode.Normalization;
with Matreshka.Internals.Unicode.Ucd.Core;

package body League.Strings is

   use League.Strings.Internals;
   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Strings.Compare;
   use Matreshka.Internals.Strings.Operations;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Ucd;
   use Matreshka.Internals.Utf16;

   procedure To_Utf16_String
    (Source      : Wide_Wide_String;
     Destination : out Shared_String_Access);

   procedure Attach (Self : in out Abstract_Cursor'Class);
   --  Attaches cursor to the list of cursors of Universal_String.

   procedure Detach (Self : in out Abstract_Cursor'Class);
   --  Detaches cursor from the list of cursors of Universal_String. Also
   --  reset associated object to null.

   function Is_Legal_Unicode_Code_Point (Code : Code_Unit_32) return Boolean;
   --  Returns True if specified code point is in code point range and not
   --  a non-character or unpaired surrogates.

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
    (Left  : Universal_Character'Class;
     Right : Universal_String'Class)
       return Universal_String
   is
   begin
      return Left.To_Wide_Wide_Character & Right;
   end "&";

   ---------
   -- "&" --
   ---------

   function "&"
    (Left  : Universal_String'Class;
     Right : Universal_String'Class)
       return Universal_String
   is
      L_D : constant not null Shared_String_Access := Left.Data;
      R_D : constant not null Shared_String_Access := Right.Data;

   begin
      if L_D.Length = 0 then
         return Universal_String (Right);

      elsif R_D.Length = 0 then
         return Universal_String (Left);

      else
         declare
            D : constant not null Shared_String_Access
              := Allocate (L_D.Unused + R_D.Unused);

         begin
            D.Value (0 .. L_D.Unused - 1) := L_D.Value (0 .. L_D.Unused - 1);
            D.Value (L_D.Unused .. L_D.Unused + R_D.Unused - 1) :=
              R_D.Value (0 .. R_D.Unused - 1);
            D.Unused := L_D.Unused + R_D.Unused;
            D.Length := L_D.Length + R_D.Length;
            Fill_Null_Terminator (D);

            return Create (D);
         end;
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
      L_D : constant not null Shared_String_Access := Left.Data;

   begin
      if not Is_Legal_Unicode_Code_Point (Wide_Wide_Character'Pos (Right)) then
         raise Constraint_Error with "Illegal Unicode code point";
      end if;

      declare
         D : constant not null Shared_String_Access
           := Allocate (L_D.Unused + 1);
         P : Utf16_String_Index := L_D.Unused;

      begin
         if L_D.Unused /= 0 then
            D.Value (0 .. L_D.Unused - 1) := L_D.Value (0 .. L_D.Unused - 1);
         end if;

         Unchecked_Store (D.Value, P, Wide_Wide_Character'Pos (Right));
         D.Unused := P;
         D.Length := L_D.Length + 1;
         Fill_Null_Terminator (D);

         return Create (D);
      end;
   end "&";

   ---------
   -- "&" --
   ---------

   function "&"
    (Left  : Wide_Wide_Character;
     Right : Universal_String'Class)
       return Universal_String
   is
      R_D : constant not null Shared_String_Access := Right.Data;

   begin
      if not Is_Legal_Unicode_Code_Point (Wide_Wide_Character'Pos (Left)) then
         raise Constraint_Error with "Illegal Unicode code point";
      end if;

      declare
         D : constant not null Shared_String_Access
           := Allocate (R_D.Unused + 1);
         P : Utf16_String_Index := 0;

      begin
         Unchecked_Store (D.Value, P, Wide_Wide_Character'Pos (Left));

         if R_D.Unused /= 0 then
            D.Value (P .. P + R_D.Unused - 1) :=
              R_D.Value (0 .. R_D.Unused - 1);
         end if;

         D.Unused := P + R_D.Unused;
         D.Length := R_D.Length + 1;
         Fill_Null_Terminator (D);

         return Create (D);
      end;
   end "&";

   ---------
   -- "<" --
   ---------

   function "<"
    (Left  : Universal_String;
     Right : Universal_String) return Boolean
   is
      L_D : constant not null Shared_String_Access := Left.Data;
      R_D : constant not null Shared_String_Access := Right.Data;

   begin
      return Is_Less (L_D, R_D);
   end "<";

   ---------
   -- "<" --
   ---------

   function "<" (Left : Sort_Key; Right : Sort_Key) return Boolean is
      L_D : constant Shared_Sort_Key_Access := Left.Data;
      R_D : constant Shared_Sort_Key_Access := Right.Data;

   begin
      return
        L_D /= R_D
          and then L_D.Data (1 .. L_D.Last) < R_D.Data (1 .. R_D.Last);
   end "<";

   ----------
   -- "<=" --
   ----------

   function "<="
    (Left  : Universal_String;
     Right : Universal_String) return Boolean
   is
      L_D : constant not null Shared_String_Access := Left.Data;
      R_D : constant not null Shared_String_Access := Right.Data;

   begin
      return Is_Less_Or_Equal (L_D, R_D);
   end "<=";

   ----------
   -- "<=" --
   ----------

   function "<=" (Left : Sort_Key; Right : Sort_Key) return Boolean is
      L_D : constant Shared_Sort_Key_Access := Left.Data;
      R_D : constant Shared_Sort_Key_Access := Right.Data;

   begin
      return
        L_D = R_D
          or else L_D.Data (1 .. L_D.Last) <= R_D.Data (1 .. R_D.Last);
   end "<=";

   ---------
   -- "=" --
   ---------

   overriding function "="
    (Left  : Universal_String;
     Right : Universal_String)
       return Boolean
   is
      L_D : constant not null Shared_String_Access := Left.Data;
      R_D : constant not null Shared_String_Access := Right.Data;

   begin
      return Is_Equal (L_D, R_D);
   end "=";

   ---------
   -- "=" --
   ---------

   overriding function "=" (Left : Sort_Key; Right : Sort_Key)
     return Boolean
   is
      L_D : constant Shared_Sort_Key_Access := Left.Data;
      R_D : constant Shared_Sort_Key_Access := Right.Data;

   begin
      return
        L_D = R_D
          or else L_D.Data (1 .. L_D.Last) = R_D.Data (1 .. R_D.Last);
   end "=";

   ---------
   -- ">" --
   ---------

   function ">"
    (Left  : Universal_String;
     Right : Universal_String) return Boolean
   is
      L_D : constant not null Shared_String_Access := Left.Data;
      R_D : constant not null Shared_String_Access := Right.Data;

   begin
      return Is_Greater (L_D, R_D);
   end ">";

   ---------
   -- ">" --
   ---------

   function ">" (Left : Sort_Key; Right : Sort_Key) return Boolean is
      L_D : constant Shared_Sort_Key_Access := Left.Data;
      R_D : constant Shared_Sort_Key_Access := Right.Data;

   begin
      return
        L_D /= R_D
          and then L_D.Data (1 .. L_D.Last) > R_D.Data (1 .. R_D.Last);
   end ">";

   ----------
   -- ">=" --
   ----------

   function ">="
    (Left  : Universal_String;
     Right : Universal_String) return Boolean
   is
      L_D : constant not null Shared_String_Access := Left.Data;
      R_D : constant not null Shared_String_Access := Right.Data;

   begin
      return Is_Greater_Or_Equal (L_D, R_D);
   end ">=";

   ----------
   -- ">=" --
   ----------

   function ">=" (Left : Sort_Key; Right : Sort_Key) return Boolean is
      L_D : constant Shared_Sort_Key_Access := Left.Data;
      R_D : constant Shared_Sort_Key_Access := Right.Data;

   begin
      return
        L_D = R_D
          or else L_D.Data (1 .. L_D.Last) >= R_D.Data (1 .. R_D.Last);
   end ">=";

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Abstract_Cursor) is
   begin
      Self.Next     := null;
      Self.Previous := null;

      if Self.Object /= null then
         Attach (Self);
      end if;
   end Adjust;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Sort_Key) is
   begin
      Reference (Self.Data);
   end Adjust;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Universal_String) is
   begin
      Reference (Self.Data);
      Self.List    := (Head => null);
      Self.Cursors := Self.List'Unchecked_Access;
   end Adjust;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self : in out Universal_String'Class;
     Item : Universal_String'Class)
   is
      P : constant Utf16_String_Index := Self.Data.Unused;

   begin
      Append (Self.Data, Item.Data);
      Emit_Changed (Self, P, Utf16_String_Index'Last, Self.Data.Unused - 1);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self : in out Universal_String'Class;
     Item : Universal_Character'Class)
   is
      P : constant Utf16_String_Index := Self.Data.Unused;

   begin
      if not Is_Legal_Unicode_Code_Point (Item.Code) then
         raise Constraint_Error with "Illegal Unicode code point";
      end if;

      Append (Self.Data, Item.Code);
      Emit_Changed (Self, P, Utf16_String_Index'Last, Self.Data.Unused - 1);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self : in out Universal_String'Class;
     Item : Wide_Wide_Character)
   is
      P : constant Utf16_String_Index := Self.Data.Unused;

   begin
      if not Is_Legal_Unicode_Code_Point (Wide_Wide_Character'Pos (Item)) then
         raise Constraint_Error with "Illegal Unicode code point";
      end if;

      Append (Self.Data, Wide_Wide_Character'Pos (Item));
      Emit_Changed (Self, P, Utf16_String_Index'Last, Self.Data.Unused - 1);
   end Append;

   ------------
   -- Attach --
   ------------

   procedure Attach (Self : in out Abstract_Cursor'Class) is
   begin
      Self.Next                := Self.Object.Cursors.Head;
      Self.Object.Cursors.Head := Self'Unchecked_Access;

      if Self.Next /= null then
         Self.Next.Previous := Self'Unchecked_Access;
      end if;
   end Attach;

   ------------
   -- Attach --
   ------------

   procedure Attach
    (Self : in out Abstract_Cursor'Class;
     Item : in out Universal_String'Class)
   is
   begin
      if Self.Object /= Item'Unchecked_Access then
         Detach (Self);
         Self.Object := Item'Unchecked_Access;
         Attach (Self);
      end if;
   end Attach;

   ---------------
   -- Collation --
   ---------------

   function Collation (Self : Universal_String'Class) return Sort_Key is
      Data   : Shared_String_Access;
      Locale : Matreshka.Internals.Locales.Locale_Data_Access;

   begin
      Matreshka.Internals.Unicode.Normalization.NFD (Self.Data, Data);
      Locale := Matreshka.Internals.Locales.Get_Locale;

      return Result : constant Sort_Key
        := (Ada.Finalization.Controlled
              with Data =>
                     Matreshka.Internals.Unicode.Collation.Construct_Sort_Key
                      (Locale, Data))
      do
         Dereference (Data);
         Matreshka.Internals.Locales.Dereference (Locale);
      end return;
   end Collation;

   ----------
   -- Copy --
   ----------

--   function Copy (Source : not null String_Private_Data_Access)
--     return not null String_Private_Data_Access
--   is
--   begin
--      return Result : not null String_Private_Data_Access
--        := Create
--            (new Utf16_String'(Source.Value.all),
--             Source.Last,
--             Source.Length,
--             Source.Index_Mode)
--      do
--         if Source.Index_Map /= null then
--            Result.Index_Map := new Index_Map'(Source.Index_Map.all);
--         end if;
--      end return;
--   end Copy;

   ------------
   -- Detach --
   ------------

   procedure Detach (Self : in out Abstract_Cursor'Class) is
   begin
      if Self.Object /= null then
         if Self.Next /= null then
            Self.Next.Previous := Self.Previous;
         end if;

         if Self.Previous /= null then
            Self.Previous.Next := Self.Next;

         elsif Self.Object.Cursors.Head = Self'Unchecked_Access then
            Self.Object.Cursors.Head := Self.Next;
         end if;
      end if;

      Self.Next     := null;
      Self.Previous := null;
      Self.Object   := null;
   end Detach;

   -------------
   -- Element --
   -------------

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
      D : constant Shared_String_Access := Self.Data;

   begin
      if Index > D.Length then
         raise Constraint_Error with "Index is out of range";
      end if;

      if D.Unused = Utf16_String_Index (D.Length) then
         return
           Wide_Wide_Character'Val (D.Value (Utf16_String_Index (Index - 1)));

      elsif D.Unused = Utf16_String_Index (D.Length) * 2 then
         return
           Wide_Wide_Character'Val
            (Unchecked_To_Code_Point
              (D.Value, Utf16_String_Index (Index - 1) * 2));

      else
         declare
            M : Index_Map_Access := D.Index_Map;

         begin
            --  Calculate index map if it is unavailable for now.

            if M = null then
               Compute_Index_Map (D.all);
               M := D.Index_Map;
            end if;

            return
              Wide_Wide_Character'Val
               (Unchecked_To_Code_Point
                 (D.Value, M.Map (Utf16_String_Index (Index - 1))));
         end;
      end if;
   end Element;

   ------------------
   -- Emit_Changed --
   ------------------

   procedure Emit_Changed
    (Self          : Universal_String'Class;
     Changed_First : Matreshka.Internals.Utf16.Utf16_String_Index;
     Removed_Last  : Matreshka.Internals.Utf16.Utf16_String_Index;
     Inserted_Last : Matreshka.Internals.Utf16.Utf16_String_Index)
   is
      Current : Cursor_Access := Self.Cursors.Head;
      Next    : Cursor_Access;

   begin
      while Current /= null loop
         Next := Current.Next;
--         Current.On_Changed (Changed_First, Removed_Last, Inserted_Last);
         Current := Next;
      end loop;
   end Emit_Changed;

--   procedure Emit_Changed
--    (Self          : not null String_Private_Data_Access;
--     Cursor        : not null Modify_Cursor_Access;
--     Changed_First : Positive;
--     Removed_Last  : Natural;
--     Inserted_Last : Natural)
--   is
--      Current : Modify_Cursor_Access := Self.Cursors;
--      Next    : Modify_Cursor_Access := Current.Next;
--
--   begin
--      loop
--         if Current /= Cursor then
--            Current.On_Changed (Changed_First, Removed_Last, Inserted_Last);
--         end if;
--
--         exit when Next = null;
--
--         Current := Next;
--         Next    := Current.Next;
--      end loop;
--   end Emit_Changed;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Abstract_Cursor) is
   begin
      Detach (Self);
   end Finalize;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Sort_Key) is
   begin
      --  Finalize can be called more than once (as specified by language
      --  standard), thus implementation should provide protection from
      --  multiple finalization.

      if Self.Data /= null then
         Dereference (Self.Data);
      end if;
   end Finalize;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Universal_String) is
      Current : Cursor_Access;
      Next    : Cursor_Access;

   begin
      --  Finalize can be called more than once (as specified by language
      --  standard), thus implementation should provide protection from
      --  multiple finalization.

      if Self.Data /= null then
         Current := Self.Cursors.Head;

         while Current /= null loop
            Next := Current.Next;
            Detach (Current.all);
            Current := Next;
         end loop;

         Dereference (Self.Data);
      end if;
   end Finalize;

   ----------
   -- Hash --
   ----------

   function Hash (Self : Universal_String'Class) return Hash_Type is
   begin
      return Hash_Type (Hash (Self.Data));
   end Hash;

   ----------------
   -- Initialize --
   ----------------

   overriding procedure Initialize (Self : in out Universal_String) is
   begin
      Self.List := (Head => null);
      Self.Cursors := Self.List'Unchecked_Access;
   end Initialize;

   ---------------------------------
   -- Is_Legal_Unicode_Code_Point --
   ---------------------------------

   function Is_Legal_Unicode_Code_Point (Code : Code_Unit_32) return Boolean is
   begin
      return
        Code in Code_Point
          and then Core.Property
                    (First_Stage_Index (Code / Second_Stage_Index'Modulus))
                    (Second_Stage_Index
                      (Code mod Second_Stage_Index'Modulus)).GC /= Surrogate
          and then not Core.Property
                        (First_Stage_Index (Code / Second_Stage_Index'Modulus))
                        (Second_Stage_Index
                          (Code mod Second_Stage_Index'Modulus)).B
                            (Noncharacter_Code_Point);
   end Is_Legal_Unicode_Code_Point;

   ---------------------------------
   -- Is_Legal_Unicode_Code_Point --
   ---------------------------------

   function Is_Legal_Unicode_Code_Point
    (Self : Universal_Character'Class)
       return Boolean
   is
   begin
      return Is_Legal_Unicode_Code_Point (Self.Code);
   end Is_Legal_Unicode_Code_Point;

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
      pragma Unreferenced (Changed_First, Removed_Last, Inserted_Last);

   begin
      Detach (Self.all);
   end On_Changed;

   ----------
   -- Read --
   ----------

   procedure Read
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : out Universal_String)
   is
      Length : Natural;
      Unused : Utf16_String_Index;

   begin
      Natural'Read (Stream, Length);
      Utf16_String_Index'Read (Stream, Unused);

      --  XXX Value validation must be done before any other operations.
      --  XXX Object mutation can be used here.

      Dereference (Item.Data);

      Item.Data := Allocate (Unused);
      Utf16_String'Read (Stream, Item.Data.Value);
      Item.Data.Unused := Unused;
      Item.Data.Length := Length;
      Fill_Null_Terminator (Item.Data);
   end Read;

--   -------------
--   -- Replace --
--   -------------
--
--   procedure Replace
--    (Self : in out Universal_String'Class;
--     Low  : Positive;
--     High : Natural;
--     By   : Universal_String'Class)
--   is
--      D      : constant not null Shared_String_Access := Self.Data;
--      Length : Natural;
--      First  : Positive;
--      Last   : Natural;
--
--   begin
--      if Low > D.Last + 1 or else High > D.Last then
--         raise Constraint_Error with "Index is out of range";
--      end if;
--
--      Length := Natural'Max (High - Low + 1, 0);
--
--      if D.Last = D.Length then
--         First := Low;
--         Last  := High;
--
--      elsif D.Last = D.Length * 2 then
--         First := Low * 2 - 1;
--         Last  := High * 2;
--
--      else
--         declare
--            M : Index_Map_Access := D.Index_Map;
--
--         begin
--            if M = null then
--               Compute_Index_Map (D.all);
--               M := D.Index_Map;
--            end if;
--
--            First := M.Map (Low);
--
--            if High = D.Length then
--               Last := D.Last;
--
--            else
--               Last := M.Map (High + 1) - 1;
--            end if;
--         end;
--      end if;
--
--      Replace (Self.Data, First, Last, Length, By.Data);
--   end Replace;

   -----------
   -- Slice --
   -----------

   function Slice
     (Self : Universal_String'Class;
      Low  : Positive;
      High : Natural) return Universal_String
   is
      D      : constant not null Shared_String_Access := Self.Data;
      Length : Natural;
      First  : Utf16_String_Index;
      Size   : Utf16_String_Index;

   begin
      if Low <= High and then (Low > D.Length or else High > D.Length) then
         raise Constraint_Error with "Index is out of range";
      end if;

      Length := Natural'Max (High - Low + 1, 0);

      if Integer (D.Unused) = D.Length then
         First := Utf16_String_Index (Low - 1);
         Size  := Utf16_String_Index (High - Low + 1);

      elsif Integer (D.Unused) = D.Length * 2 then
         First := Utf16_String_Index ((Low - 1) * 2);
         Size  := Utf16_String_Index (High - Low + 1) * 2;

      else
         declare
            M : Index_Map_Access := D.Index_Map;

         begin
            if M = null then
               Compute_Index_Map (D.all);
               M := D.Index_Map;
            end if;

            First := M.Map (Utf16_String_Index (Low - 1));

            if High = D.Length then
               Size := First - D.Unused;

            else
               Size := First - M.Map (Utf16_String_Index (High));
            end if;
         end;
      end if;

      return Create (Slice (D, First, Size, Length));
   end Slice;

   -----------------
   -- To_Casefold --
   -----------------

   function To_Casefold (Self : Universal_String'Class)
     return Universal_String
   is
   begin
      if Self.Data.Length = 0 then
         return Universal_String (Self);
      end if;

      declare
         Locale : Matreshka.Internals.Locales.Locale_Data_Access
           := Matreshka.Internals.Locales.Get_Locale;
         Data   : not null Shared_String_Access := Allocate (Self.Data.Unused);

      begin
         Matreshka.Internals.Unicode.Casing.Convert_Case
          (Locale,
           Self.Data,
           Matreshka.Internals.Unicode.Ucd.Folding,
           Matreshka.Internals.Unicode.Ucd.Has_Case_Folding,
           Data);
         Matreshka.Internals.Locales.Dereference (Locale);

         return Create (Data);
      end;
   end To_Casefold;

   ------------------
   -- To_Lowercase --
   ------------------

   function To_Lowercase (Self : Universal_String'Class)
     return Universal_String
   is
   begin
      if Self.Data.Length = 0 then
         return Universal_String (Self);
      end if;

      declare
         Locale : Matreshka.Internals.Locales.Locale_Data_Access
           := Matreshka.Internals.Locales.Get_Locale;
         Data   : not null Shared_String_Access := Allocate (Self.Data.Unused);

      begin
         Matreshka.Internals.Unicode.Casing.Convert_Case
          (Locale,
           Self.Data,
           Matreshka.Internals.Unicode.Ucd.Lower,
           Matreshka.Internals.Unicode.Ucd.Has_Lowercase_Mapping,
           Data);
         Matreshka.Internals.Locales.Dereference (Locale);

         return Create (Data);
      end;
   end To_Lowercase;

   ------------
   -- To_NFC --
   ------------

   function To_NFC (Self : Universal_String'Class)
     return Universal_String
   is
      Data : Shared_String_Access;

   begin
      Matreshka.Internals.Unicode.Normalization.NFC (Self.Data, Data);

      return Create (Data);
   end To_NFC;

   ------------
   -- To_NFD --
   ------------

   function To_NFD (Self : Universal_String'Class)
     return Universal_String
   is
      Data : Shared_String_Access;

   begin
      Matreshka.Internals.Unicode.Normalization.NFD (Self.Data, Data);

      return Create (Data);
   end To_NFD;

   -------------
   -- To_NFKC --
   -------------

   function To_NFKC (Self : Universal_String'Class)
     return Universal_String
   is
      Data : Shared_String_Access;

   begin
      Matreshka.Internals.Unicode.Normalization.NFKC (Self.Data, Data);

      return Create (Data);
   end To_NFKC;

   -------------
   -- To_NFKD --
   -------------

   function To_NFKD (Self : Universal_String'Class)
     return Universal_String
   is
      Data : Shared_String_Access;

   begin
      Matreshka.Internals.Unicode.Normalization.NFKD (Self.Data, Data);

      return Create (Data);
   end To_NFKD;

   ----------------------------
   -- To_Universal_Character --
   ----------------------------

   function To_Universal_Character
    (Self : Wide_Wide_Character)
       return Universal_Character
   is
   begin
      return Universal_Character'(Code => Wide_Wide_Character'Pos (Self));
   end To_Universal_Character;

   -------------------------
   -- To_Universal_String --
   -------------------------

   function To_Universal_String (Item : Wide_Wide_String)
     return Universal_String
   is
      Data : Shared_String_Access;

   begin
      if Item'Length = 0 then
         return Result : Universal_String
           := Universal_String'
               (Ada.Finalization.Controlled with
                  Data    => Shared_Empty'Access,
                  List    => (Head => null),
                  Cursors => null)
         do
            Result.Cursors := Result.List'Unchecked_Access;
         end return;
      end if;

      To_Utf16_String (Item, Data);

      return Create (Data);
   end To_Universal_String;

   ------------------
   -- To_Uppercase --
   ------------------

   function To_Uppercase (Self : Universal_String'Class)
     return Universal_String
   is
   begin
      if Self.Data.Length = 0 then
         return Universal_String (Self);
      end if;

      declare
         Locale : Matreshka.Internals.Locales.Locale_Data_Access
           := Matreshka.Internals.Locales.Get_Locale;
         Data   : not null Shared_String_Access := Allocate (Self.Data.Unused);

      begin
         Matreshka.Internals.Unicode.Casing.Convert_Case
          (Locale,
           Self.Data,
           Matreshka.Internals.Unicode.Ucd.Upper,
           Matreshka.Internals.Unicode.Ucd.Has_Uppercase_Mapping,
           Data);
         Matreshka.Internals.Locales.Dereference (Locale);

         return Create (Data);
      end;
   end To_Uppercase;

   ---------------------
   -- To_Utf16_String --
   ---------------------

   procedure To_Utf16_String
    (Source      : Wide_Wide_String;
     Destination : out Shared_String_Access)
   is
   begin
      if Source'Length = 0 then
         Destination := Shared_Empty'Access;

      else
         Destination := Allocate (Source'Length);

         for J in Source'Range loop
            if not Is_Legal_Unicode_Code_Point
                (Wide_Wide_Character'Pos (Source (J)))
            then
               raise Constraint_Error with "Illegal Unicode code point";
            end if;

            Append (Destination, Wide_Wide_Character'Pos (Source (J)));
--              Source'Last - J);
         end loop;

         Fill_Null_Terminator (Destination);
      end if;

   exception
      when others =>
         Dereference (Destination);

         raise;
   end To_Utf16_String;

   ----------------------------
   -- To_Wide_Wide_Character --
   ----------------------------

   function To_Wide_Wide_Character
    (Self : Universal_Character'Class)
       return Wide_Wide_Character
   is
   begin
      return Wide_Wide_Character'Val (Self.Code);
   end To_Wide_Wide_Character;

   -------------------------
   -- To_Wide_Wide_String --
   -------------------------

   function To_Wide_Wide_String (Self : Universal_String'Class)
     return Wide_Wide_String
   is
      Result  : Wide_Wide_String (1 .. Self.Data.Length);
      Current : Utf16_String_Index := 0;
      Code    : Code_Point;

   begin
      for J in Result'Range loop
         Unchecked_Next (Self.Data.Value, Current, Code);
         Result (J) := Wide_Wide_Character'Val (Code);
      end loop;

      return Result;
   end To_Wide_Wide_String;

   -----------
   -- Write --
   -----------

   procedure Write
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : Universal_String)
   is
   begin
      Integer'Write (Stream, Item.Data.Length);
      Utf16_String_Index'Write (Stream, Item.Data.Unused);
      Matreshka.Internals.Utf16.Utf16_String'Write
       (Stream, Item.Data.Value (0 .. Item.Data.Unused - 1));
   end Write;

end League.Strings;
