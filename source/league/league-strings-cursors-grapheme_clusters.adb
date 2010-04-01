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

package body League.Strings.Cursors.Grapheme_Clusters is

   use League.Strings.Internals;
   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Ucd;
   use Matreshka.Internals.Utf16;

   Break_Machine : constant
     array (Grapheme_Cluster_Break, Grapheme_Cluster_Break) of Boolean
       := (Other         => (Extend | Spacing_Mark => False, others => True),
           CR            => (LF => False, others => True),
           LF            => (others => True),
           Control       => (others => True),
           Prepend       => (Other | Prepend | Extend | Spacing_Mark
                               | L | V | T | LV | LVT => False,
                             others => True),
           Extend        => (Extend | Spacing_Mark => False, others => True),
           Spacing_Mark  => (Extend | Spacing_Mark => False, others => True),
           L             => (Extend | Spacing_Mark | L | V | LV | LVT => False,
                             others => True),
           V             => (Extend | Spacing_Mark | V | T => False,
                             others => True),
           T             => (Extend | Spacing_Mark | T => False,
                             others => True),
           LV            => (Extend | Spacing_Mark | V | T => False,
                             others => True),
           LVT           => (Extend | Spacing_Mark | T => False,
                             others => True));

--   overriding procedure On_Changed
--    (Self          : not null access Character_Cursor;
--     Changed_First : Positive;
--     Removed_Last  : Natural;
--     Inserted_Last : Natural);

   procedure Unchecked_Next
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index;
     Property : out Grapheme_Cluster_Break;
     Locale   : not null Matreshka.Internals.Locales.Locale_Data_Access);
   pragma Inline (Unchecked_Next);
   --  Returns value of the break property for the character at the specified
   --  position and move position to the next character.

   procedure Unchecked_Previous
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index;
     Property : out Grapheme_Cluster_Break;
     Locale   : not null Matreshka.Internals.Locales.Locale_Data_Access);
   pragma Inline (Unchecked_Previous);
   --  Moves specified position to the previous character and returns value
   --  of the break property for this character.

   procedure Find_Next (Self : in out Grapheme_Cluster_Cursor'Class);
   --  Finds the next break point and set Current_State, Current_Length,
   --  Next_Position, Next_State members.
   --
   --  Preconditions: Next_Position = Current_Position

   procedure Find_Previous (Self : in out Grapheme_Cluster_Cursor'Class);
   --  Finds the next break point and set Previous_Position, Previous_State,
   --  Previuos_Length members.
   --
   --  Preconditions:  Current_Position = Previous_Position

   -------------
   -- Element --
   -------------

   function Element (Self : Grapheme_Cluster_Cursor'Class)
     return Universal_String is
   begin
      if Self.Object = null then
         raise Program_Error with "Invalid iterator";
      end if;

      if Self.Current_Position not in 0 .. Self.Object.Data.Unused - 1 then
         raise Constraint_Error with "Cursor out of range";
      end if;

      return
        Create
         (Slice
           (Self.Object.Data,
            Self.Current_Position,
            Self.Next_Position - Self.Current_Position,
            Self.Current_Length));
   end Element;

   ---------------
   -- Find_Next --
   ---------------

   procedure Find_Next (Self : in out Grapheme_Cluster_Cursor'Class) is
      D : constant not null Shared_String_Access := Self.Object.Data;

   begin
      if Self.Current_Position < D.Unused then
         Unchecked_Next
          (D.Value, Self.Next_Position, Self.Current_State, Self.Locale);
         Self.Current_Length := 1;

         declare
            Aux_Position : Utf16_String_Index     := Self.Next_Position;
            Aux_State    : Grapheme_Cluster_Break := Self.Current_State;

         begin
            while Self.Next_Position < D.Unused loop
               Unchecked_Next
                (D.Value, Aux_Position, Self.Next_State, Self.Locale);

               exit when Break_Machine (Aux_State, Self.Next_State);

               Self.Current_Length := Self.Current_Length + 1;
               Self.Next_Position  := Aux_Position;
               Aux_State           := Self.Next_State;
            end loop;
         end;

      else
         Self.Current_Length := 0;
      end if;
   end Find_Next;

   -------------------
   -- Find_Previous --
   -------------------

   procedure Find_Previous (Self : in out Grapheme_Cluster_Cursor'Class) is
      D : constant not null Shared_String_Access := Self.Object.Data;

   begin
      if Self.Current_Position /= Utf16_String_Index'Last then
         if Self.Current_Position /= 0 then
            Unchecked_Previous
             (D.Value, Self.Previous_Position, Self.Previous_State, Self.Locale);
            Self.Previous_Length := 1;

            while Self.Previous_Position /= 0 loop
               declare
                  Aux_Position : Utf16_String_Index := Self.Previous_Position;
                  Aux_State    : Grapheme_Cluster_Break;

               begin
                  Unchecked_Previous
                   (D.Value, Aux_Position, Aux_State, Self.Locale);

                  exit when Break_Machine (Aux_State, Self.Previous_State);

                  Self.Previous_Position := Aux_Position;
                  Self.Previous_State    := Aux_State;
                  Self.Previous_Length   := Self.Previous_Length + 1;
               end;
            end loop;

         else
            Self.Previous_Position := Utf16_String_Index'Last;
            Self.Previous_Length   := 0;
         end if;
      end if;
   end Find_Previous;

   -----------
   -- First --
   -----------

   procedure First
    (Self : in out Grapheme_Cluster_Cursor'Class;
     Item : in out Universal_String)
   is
   begin
      Self.Attach (Item);
      Self.Set_Locale;

      Self.Current_Position  := Self.Object.Data.Value'First;
      Self.Previous_Position := Self.Current_Position - 1;
      Self.Next_Position     := Self.Current_Position;

      Find_Next (Self);
   end First;

   -----------------
   -- Has_Element --
   -----------------

   function Has_Element (Self : Grapheme_Cluster_Cursor'Class)
     return Boolean
   is
   begin
      if Self.Object = null then
         raise Program_Error with "Invalid iterator";
      end if;

      return Self.Current_Position < Self.Object.Data.Unused;
   end Has_Element;

   ----------
   -- Last --
   ----------

   procedure Last
    (Self : in out Grapheme_Cluster_Cursor'Class;
     Item : in out Universal_String)
   is
   begin
      Self.Attach (Item);
      Self.Set_Locale;

      Self.Next_Position     := Self.Object.Data.Unused;
      Self.Current_Position  := Self.Next_Position;
      Self.Previous_Position := Self.Current_Position;

      if Self.Object.Data.Length /= 0 then
         Find_Previous (Self);
         Self.Current_Position := Self.Previous_Position;
         Self.Current_Length   := Self.Previous_Length;
         Self.Current_State    := Self.Previous_State;
         Find_Previous (Self);
      end if;
   end Last;

   ----------
   -- Next --
   ----------

   procedure Next (Self : in out Grapheme_Cluster_Cursor'Class) is
   begin
      if Self.Object = null then
         raise Program_Error with "Invalid iterator";
      end if;

      if Self.Current_Position < Self.Object.Data.Unused then
         Self.Previous_Position := Self.Current_Position;
         Self.Previous_Length   := Self.Current_Length;
         Self.Previous_State    := Self.Current_State;
         Self.Current_Position  := Self.Next_Position;
         Self.Current_State     := Self.Next_State;

         Find_Next (Self);
      end if;
   end Next;

--   ----------------
--   -- On_Changed --
--   ----------------
--
--   overriding procedure On_Changed
--    (Self          : not null access Character_Cursor;
--     Changed_First : Positive;
--     Removed_Last  : Natural;
--     Inserted_Last : Natural)
--   is
--   begin
--      if Self.Current in Changed_First .. Removed_Last then
--         Dereference (Self.Data, Self.all'Unchecked_Access);
--
--      elsif Self.Current > Removed_Last then
--         Self.Current := Self.Current + Inserted_Last - Removed_Last;
--      end if;
--   end On_Changed;

   --------------
   -- Previous --
   --------------

   procedure Previous (Self : in out Grapheme_Cluster_Cursor'Class) is
   begin
      if Self.Object = null then
         raise Program_Error with "Invalid iterator";
      end if;

      if Self.Current_Position <= Self.Object.Data.Unused then
         Self.Next_Position    := Self.Current_Position;
         Self.Next_State       := Self.Current_State;
         Self.Current_Position := Self.Previous_Position;
         Self.Current_Length   := Self.Previous_Length;
         Self.Current_State    := Self.Previous_State;

         Find_Previous (Self);
      end if;
   end Previous;

   --------------------
   -- Unchecked_Next --
   --------------------

   procedure Unchecked_Next
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index;
     Property : out Grapheme_Cluster_Break;
     Locale   : not null Matreshka.Internals.Locales.Locale_Data_Access)
   is
      C : Code_Point;

   begin
      Unchecked_Next (Item, Position, C);
      Property := Locale.Get_Core (C).GCB;
   end Unchecked_Next;

   ------------------------
   -- Unchecked_Previous --
   ------------------------

   procedure Unchecked_Previous
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index;
     Property : out Grapheme_Cluster_Break;
     Locale   : not null Matreshka.Internals.Locales.Locale_Data_Access)
   is
      C : Code_Point;

   begin
      Unchecked_Previous (Item, Position, C);
      Property := Locale.Get_Core (C).GCB;
   end Unchecked_Previous;

end League.Strings.Cursors.Grapheme_Clusters;
