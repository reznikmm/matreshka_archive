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

package body Matreshka.Strings is

   --  Unicode code point.

   type Code_Unit_32 is mod 2**32;

   type Code_Point is new Code_Unit_32 range 0 .. 16#10_FFFF#;
   for Code_Point'Size use 32;
   --  Unicode code point or Unicode scalar value.
   --  GNAT produce most efficient code for this type comparing with others
   --  way of it declaration.

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Matreshka.Internals.String_Types.Utf16_String, Utf16_String_Access);

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

   function Is_Valid_Unicode_Code_Point (Item : Wide_Wide_Character)
     return Boolean;
   --  Returns True if code point of the specified Wide_Wide_Character is a
   --  valid Unicode code point.

   Empty_String : aliased Matreshka.Internals.String_Types.Utf16_String := "";

   Shared_Empty : aliased String_Private_Data
     := (Value => Empty_String'Access, others => <>);

   ---------------------------------
   -- Is_Valid_Unicode_Code_Point --
   ---------------------------------

   function Is_Valid_Unicode_Code_Point (Item : in Wide_Wide_Character)
     return Boolean
   is
   begin
      return
        Item < Wide_Wide_Character'Val (Code_Point'Last)
        --  Codes outside Unicode code point range.

          and then Item not in Surrogate_Wide_Wide_Character
          --  Codes reserved for Utf18 surrogate pairs.

          and then Wide_Wide_Character'Val
                     (Wide_Wide_Character'Pos (Item)
                        and Code_Unit_32 (16#FFFF#))
            not in Wide_Wide_Character'Val (16#FFFE#)
                     .. Wide_Wide_Character'Val (16#FFFF#);
          --  Two last codes on the each code plain.
   end Is_Valid_Unicode_Code_Point;

   Index_Mode_After_Concatenation : constant
     array (Index_Modes, Index_Modes) of Index_Modes
       := (Undefined    => (others => Undefined),
           Single_Units => (Undefined    => Undefined,
                            Single_Units => Single_Units,
                            others       => Mixed_Units),
           Double_Units => (Undefined    => Undefined,
                            Double_Units => Double_Units,
                            others       => Mixed_Units),
           Mixed_Units  => (Undefined    => Undefined,
                            others       => Mixed_Units));
   --  String indexing mode after concatenation. Each dimension is a valid
   --  string indexing mode for each concatenated string.

   Index_Mode_For_String : constant array (Boolean, Boolean) of Index_Modes
     := (False => (False => Undefined,
                   True  => Double_Units),
         True  => (False => Single_Units,
                   True  => Mixed_Units));
   --  String indexing mode for the string. First index must be True is string
   --  contains BMP characters, second index must be True is string contains
   --  non-BMP characters.

   ---------
   -- "&" --
   ---------

   function "&"
    (Left  : Universal_String;
     Right : Universal_String)
       return Universal_String
   is
      use type Matreshka.Internals.String_Types.Utf16_String;

      L_D : constant not null String_Private_Data_Access := Left.Data;
      R_D : constant not null String_Private_Data_Access := Right.Data;

   begin
      if L_D.Length = 0 then
         return Right;

      elsif R_D.Length = 0 then
         return Left;

      else
         return
           Universal_String'
            (Ada.Finalization.Controlled with
               Data =>
                 new String_Private_Data'
                      (Counter    => Matreshka.Internals.Atomics.Counters.One,
                       Value      =>
                         new Matreshka.Internals.String_Types.Utf16_String'
                              (L_D.Value (1 .. L_D.Last)
                                 & R_D.Value (1 .. R_D.Last)),
                       Last       => L_D.Last + R_D.Last,
                       Length     => L_D.Length + R_D.Length,
                       Index_Mode =>
                         Index_Mode_After_Concatenation
                          (L_D.Index_Mode, R_D.Index_Mode),
                       Index_Map  => null,
                       Iterators  => null));
      end if;
   end "&";

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Abstract_Iterator) is
   begin
      if Self.Data /= null then
         Matreshka.Internals.Atomics.Counters.Increment
          (Self.Data.Counter'Access);
         Self.Next           := Self.Data.Iterators;
         Self.Data.Iterators := Self'Unchecked_Access;
      end if;
   end Adjust;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Universal_String) is
   begin
      if Self.Data.Iterators = null then
         Matreshka.Internals.Atomics.Counters.Increment
          (Self.Data.Counter'Access);

      else
         Self.Data := Copy (Self.Data);
      end if;
   end Adjust;

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
                 Value      =>
                   new Matreshka.Internals.String_Types.Utf16_String'
                        (Source.Value.all),
                 Last       => Source.Last,
                 Length     => Source.Length,
                 Index_Mode => Source.Index_Mode,
                 Index_Map  => null,
                 Iterators  => null)
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
            pragma Assert (Self.Iterators = null);

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
    (Self     : in out String_Private_Data_Access;
     Iterator : not null Iterator_Access)
   is
      Previous : Iterator_Access := null;
      Current  : Iterator_Access;

   begin
      if Self /= null then
         Current := Self.Iterators;

         while Current /= Iterator loop
            Previous := Current;
            Current := Current.Next;
         end loop;

         if Previous = null then
            Self.Iterators := Iterator.Next;

         else
            Previous.Next := Iterator.Next;
         end if;

         Iterator.Next := null;

         Dereference (Self);
      end if;
   end Dereference;

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
            return
              Wide_Wide_Character'Val (Wide_Character'Pos (D.Value (Index)));

         when Double_Units =>
            return
              Unchecked_To_Wide_Wide_Character
               (D.Value (Index * 2 - 1), D.Value (Index * 2));

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

                     if D.Value (Current) in High_Surrogate_Wide_Character then
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

               if D.Value (M.Map (Index)) in High_Surrogate_Wide_Character then
                  return
                    Unchecked_To_Wide_Wide_Character
                     (D.Value (M.Map (Index)),
                      D.Value (M.Map (Index) + 1));

               else
                  return
                    Wide_Wide_Character'Val
                     (Wide_Character'Pos (D.Value (M.Map (Index))));
               end if;
            end;
      end case;
   end Element;

   ------------------
   -- Emit_Changed --
   ------------------

   procedure Emit_Changed
    (Self          : not null String_Private_Data_Access;
     Iterator      : not null Iterator_Access;
     Changed_First : Positive;
     Removed_Last  : Natural;
     Inserted_Last : Natural)
   is
      Current : Iterator_Access := Self.Iterators;
      Next    : Iterator_Access := Current.Next;

   begin
      loop
         if Current /= Iterator then
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

   overriding procedure Finalize (Self : in out Abstract_Iterator) is
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
    (Self           : access Abstract_Iterator;
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
      Value := new Matreshka.Internals.String_Types.Utf16_String (1 .. Last);
      Matreshka.Internals.String_Types.Utf16_String'Read (Stream, Value.all);

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
              Iterators  => null);
   end Read;

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
      Destination :=
        new Matreshka.Internals.String_Types.Utf16_String (1 .. Source'Length);
      Last := 0;

      for J in Source'Range loop
         if Is_Valid_Unicode_Code_Point (Source (J)) then
            declare
               C : Code_Point := Wide_Wide_Character'Pos (Source (J));

            begin
               if C <= 16#FFFF# then
                  Last := Last + 1;
                  Destination (Last) := Wide_Character'Val (C);
                  Has_Bmp := True;

               else
                  if not Double_Length then
                     --  Reallocate buffer.

                     declare
                        Aux : constant Utf16_String_Access
                          := new Matreshka.Internals.String_Types.Utf16_String
                                  (1 .. Source'Length * 2);

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
                    Wide_Character'Val (High_Surrogate_First + C / 16#400#);

                  Last := Last + 1;
                  Destination (Last) :=
                    Wide_Character'Val (Low_Surrogate_First + C mod 16#400#);

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
                    Iterators  => null));
   end To_Universal_String;

   -------------------------
   -- To_Wide_Wide_String --
   -------------------------

   function To_Wide_Wide_String (Self : Universal_String'Class)
     return Wide_Wide_String
   is
      Result  : Wide_Wide_String (1 .. Self.Data.Length);
      Current : Positive := 1;

   begin
      for J in Result'Range loop
         if Self.Data.Value (Current) in Surrogate_Wide_Character then
            if Current < Self.Data.Last
              and then Self.Data.Value (Current)
                         in High_Surrogate_Wide_Character
              and then Self.Data.Value (Current + 1)
                         in Low_Surrogate_Wide_Character
            then
               Result (J) :=
                 Unchecked_To_Wide_Wide_Character
                  (Self.Data.Value (Current), Self.Data.Value (Current + 1));
               Current := Current + 2;

            else
               raise Constraint_Error
                 with "Ill-formed UTF-16 string: invalid surrogate pair";
            end if;

         else
            Result (J) :=
              Wide_Wide_Character'Val
               (Wide_Character'Pos (Self.Data.Value (Current)));
            Current := Current + 1;
         end if;
      end loop;

      return Result;
   end To_Wide_Wide_String;

   --------------------------------------
   -- Unchecked_To_Wide_Wide_Character --
   --------------------------------------

   function Unchecked_To_Wide_Wide_Character
    (High : Wide_Character;
     Low  : Wide_Character)
       return Wide_Wide_Character
   is
   begin
      return
        Wide_Wide_Character'Val
         ((Wide_Character'Pos (High) - High_Surrogate_First) * 16#400#
            + (Wide_Character'Pos (Low) - Low_Surrogate_First)
            + 16#1_0000#);
   end Unchecked_To_Wide_Wide_Character;

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
      Matreshka.Internals.String_Types.Utf16_String'Write
       (Stream, Item.Data.Value (1 .. Item.Data.Last));
   end Write;

end Matreshka.Strings;
