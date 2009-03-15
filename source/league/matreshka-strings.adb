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

package body Matreshka.Strings is

   Surrogate_First      : constant := 16#D800#;
   High_Surrogate_First : constant := 16#D800#;
   High_Surrogate_Last  : constant := 16#DBFF#;
   Low_Surrogate_First  : constant := 16#DC00#;
   Low_Surrogate_Last   : constant := 16#DFFF#;
   Surrogate_Last       : constant := 16#DFFF#;

   subtype Surrogate_Wide_Character is Wide_Character
     range Wide_Character'Val (Surrogate_First)
             .. Wide_Character'Val (Surrogate_Last);

   subtype High_Surrogate_Wide_Character is Surrogate_Wide_Character
     range Wide_Character'Val (High_Surrogate_First)
             .. Wide_Character'Val (High_Surrogate_Last);

   subtype Low_Surrogate_Wide_Character is Surrogate_Wide_Character
     range Wide_Character'Val (Low_Surrogate_First)
             .. Wide_Character'Val (Low_Surrogate_Last);

   subtype Surrogate_Wide_Wide_Character is Wide_Wide_Character
     range Wide_Wide_Character'Val (Surrogate_First)
             .. Wide_Wide_Character'Val (Surrogate_Last);

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

   procedure Dereference (Self : in out String_Private_Data_Access);
   --  Decrement reference counter and free resources if it reach zero value.

   procedure To_Utf16_String
    (Source      : Wide_Wide_String;
     Destination : out Utf16_String_Access;
     Last        : out Natural);

   function Is_Valid_Unicode_Code_Point (Item : Wide_Wide_Character)
     return Boolean;
   --  Returns True if code point of the specified Wide_Wide_Character is a
   --  valid Unicode code point.

   function Unchecked_To_Wide_Wide_Character
    (High : Wide_Character;
     Low  : Wide_Character)
       return Wide_Wide_Character;
   pragma Inline (Unchecked_To_Wide_Wide_Character);
   --  Convert valid surrogate pair into the Wide_Wide_Character.

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

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Universal_String) is
   begin
      Matreshka.Internals.Atomics.Counters.Increment
       (Self.Data.Counter'Access);
   end Adjust;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out String_Private_Data_Access) is
   begin
      if Matreshka.Internals.Atomics.Counters.Decrement
          (Self.Counter'Access)
      then
         pragma Assert (Self /= Shared_Empty'Access);

         Free (Self.Value);
         Free (Self);

      else
         Self := null;
      end if;
   end Dereference;

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
             (Counter => Matreshka.Internals.Atomics.Counters.One,
              Value   => Value,
              Last    => Last,
              Length  => Length);
   end Read;

   ---------------------
   -- To_Utf16_String --
   ---------------------

   procedure To_Utf16_String
    (Source      : Wide_Wide_String;
     Destination : out Utf16_String_Access;
     Last        : out Natural)
   is
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
               end if;
            end;

         else
            raise Constraint_Error
              with "Wide_Wide_Character is not a valid Unicode code point";
         end if;
      end loop;

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
      Value : Utf16_String_Access;
      Last  : Natural;

   begin
      To_Utf16_String (Item, Value, Last);

      return
        Universal_String'
         (Ada.Finalization.Controlled with
            Data =>
              new String_Private_Data'
                   (Counter => Matreshka.Internals.Atomics.Counters.One,
                    Value   => Value,
                    Last    => Last,
                    Length  => Item'Length));
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
