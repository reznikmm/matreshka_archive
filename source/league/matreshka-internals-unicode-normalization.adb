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
with Matreshka.Internals.Unicode.Ucd.Core;
with Matreshka.Internals.Unicode.Ucd.Norms;
with Matreshka.Internals.Utf16;

package body Matreshka.Internals.Unicode.Normalization is

   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Unicode.Ucd;
   use Matreshka.Internals.Utf16;

   generic
      Form          : Normalization_Form;
      Decomposition : Decomposition_Kinds;

   procedure Generic_Decomposition
    (Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access);

   generic
      Form          : Normalization_Form;
      Decomposition : Decomposition_Kinds;

   procedure Generic_Decomposition_Composition
    (Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access);

   procedure Reorder_Last_Character
    (Destination : Shared_String_Access;
     First       : Positive;
     Last        : Positive);
   --  Move last character in the string to follow Canonical Ordering.

   procedure Compose
    (Destination          : Shared_String_Access;
     Starter_Index        : Positive;
     Next_Starter_Index   : in out Positive;
     New_Starter_Composed : out Boolean);
   --  Do composition of one combined character starting from Starter_Index
   --  and up to end of string. Last character in the string must be last
   --  character in the data or next starting character. For Hangul Syllables
   --  this means the L, V pair composed to LV jamo, and on the next call,
   --  LV jamo composed to LVT jamo.

   function Get_Core (Code : Code_Point) return Core_Values;
   pragma Inline (Get_Core);

   -------------
   -- Compose --
   -------------

   procedure Compose
    (Destination          : Shared_String_Access;
     Starter_Index        : Positive;
     Next_Starter_Index   : in out Positive;
     New_Starter_Composed : out Boolean)
   is
      Index           : Positive := Starter_Index;
      Current         : Positive;
      Before          : Positive;
      Starter_Code    : Code_Point;
      Starter_Mapping : Sequence_Count;
      Starter_L       : Boolean;
      Starter_LV      : Boolean;
      New_Starter     : Code_Point;
      Current_Code    : Code_Point;
      Current_Mapping : Sequence_Count;
      Last_Class      : Canonical_Combining_Class := 0;
      Class           : Canonical_Combining_Class;

      procedure Replace_Starter_And_Pack;
      --  Replace starter character by new character and pack string data.

      ------------------------------
      -- Replace_Starter_And_Pack --
      ------------------------------

      procedure Replace_Starter_And_Pack is
         pragma Assert (Starter_Code <= 16#FFFF# xor Current_Code > 16#FFFF#);
         --  Change of the size of starter character in UTF-16 form is not
         --  supported.

      begin
         --  Save new starter.

         Index := Starter_Index;
         Unchecked_Store (Destination.Value, Index, New_Starter);

         --  Copy tail of the string.

         Destination.Value
          (Before .. Destination.Last - (Current - Before)) :=
             Destination.Value (Current .. Destination.Last);

         --  Correct string's length and last index.

         if Current_Code <= 16#FFFF# then
            Destination.Last := Destination.Last - 1;
            Next_Starter_Index := Next_Starter_Index - 1;

         else
            Destination.Last := Destination.Last - 2;
            Next_Starter_Index := Next_Starter_Index - 2;
         end if;

         Destination.Length := Destination.Length - 1;

         Starter_Code := New_Starter;
      end Replace_Starter_And_Pack;

   begin
      New_Starter_Composed := False;

      Unchecked_Next (Destination.Value, Index, Starter_Code);
      Starter_Mapping :=
        Norms.Mapping
         (First_Stage_Index (Starter_Code / 16#100#))
         (Second_Stage_Index (Starter_Code mod 16#100#)).Composition.First;
      Starter_L := Starter_Code in L_Base .. L_Base + L_Count - 1;
      Starter_LV :=
        Starter_Code in Hangul_Syllable_First .. Hangul_Syllable_Last
          and then (Starter_Code - S_Base) mod T_Count = 0;

      Current := Index;

      if Starter_Mapping = 0 then
         if Current > Destination.Last then
            return;

         elsif Starter_L then
            Before := Current;
            Unchecked_Next (Destination.Value, Current, Current_Code);

            if Current_Code not in V_Base .. V_Base + V_Count - 1 then
               return;
            end if;

            New_Starter :=
              S_Base
                + ((Starter_Code - L_Base) * V_Count + Current_Code - V_Base)
                    * T_Count;

            Replace_Starter_And_Pack;

            Current := Before;
            New_Starter_Composed := True;

         elsif Starter_LV then
            Before := Current;
            Unchecked_Next (Destination.Value, Current, Current_Code);

            if Current_Code not in T_Base .. T_Base + T_Count - 1 then
               return;
            end if;

            New_Starter := Starter_Code + Current_Code - T_Base;

            Replace_Starter_And_Pack;
            Current := Before;
            New_Starter_Composed := True;
         end if;

         return;
      end if;

      while Current <= Destination.Last loop
         Before := Current;
         Unchecked_Next (Destination.Value, Current, Current_Code);
         Current_Mapping :=
           Norms.Mapping
            (First_Stage_Index (Current_Code / 16#100#))
            (Second_Stage_Index (Current_Code mod 16#100#)).
               Composition.Last;
         Class := Get_Core (Current_Code).CCC;

         if Current_Mapping /= 0
           and then ((Class = 0 and then Last_Class = 0)
                        or else (Last_Class < Class))
         then
            New_Starter :=
              Norms.Composition_Data (Starter_Mapping, Current_Mapping);

            if New_Starter /= 16#FFFF# then
               Replace_Starter_And_Pack;

               Current := Before;
               Starter_Mapping :=
                 Norms.Mapping
                  (First_Stage_Index (Starter_Code / 16#100#))
                  (Second_Stage_Index (Starter_Code mod 16#100#)).
                     Composition.First;

               if Class = 0 then
                  New_Starter_Composed := True;
               end if;

               exit when Starter_Mapping = 0;

            else
               Last_Class := Class;
            end if;

         else
            Last_Class := Class;
         end if;
      end loop;
   end Compose;

   ---------------------------
   -- Generic_Decomposition --
   ---------------------------

   procedure Generic_Decomposition
    (Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access)
   is
      type Starter_State is record
         D_Next : Positive := 1;
      end record;

      S_Index    : Positive := 1;
      Code       : Code_Point;
      Length     : Natural  := 0;
      Last_Class : Canonical_Combining_Class := 0;
      Class      : Canonical_Combining_Class;
      Starter    : Starter_State;

   begin
      if Source.Last = 0 then
         Destination := Shared_Empty'Access;
         Reference (Destination);

         return;
      end if;

      --  Try to do Normalization Form quick check.

      declare
         S_Previous : Positive;

      begin
         while S_Index <= Source.Last loop
            S_Previous := S_Index;

            Unchecked_Next (Source.Value, S_Index, Code);
            Class := Get_Core (Code).CCC;

            case Get_Core (Code).NQC (Form) is
               when No | Maybe =>
                  S_Index := S_Previous;

                  exit;

               when Yes =>
                  null;
            end case;

            if Class /= 0 then
               if Last_Class > Class then
                  --  Canonical Ordering is violated.

                  S_Index := S_Previous;

                  exit;
               end if;

            else
               Starter := (D_Next => S_Index);
            end if;

            Last_Class := Class;
            Length := Length + 1;
         end loop;
      end;

      if S_Index > Source.Last then
         Destination := Source;
         Reference (Destination);

         return;
      end if;

      --  Source is not in Normalization Form probably, so start more complex
      --  algorithm.

      Destination := Allocate (Source.Size);

      Destination.Value (1 .. S_Index - 1) := Source.Value (1 .. S_Index - 1);
      Destination.Last   := S_Index - 1;
      Destination.Length := Length;

      while S_Index <= Source.Last loop
         Unchecked_Next (Source.Value, S_Index, Code);

         declare

            procedure Common_Append (Code : Code_Point);
            --  Common algorithm to append character exclude Hangul Syllable,
            --  decomposition and appending of which are done using special
            --  algorithm.

            -------------------
            -- Common_Append --
            -------------------

            procedure Common_Append (Code : Code_Point) is
            begin
               Class := Get_Core (Code).CCC;
               Append (Destination, Code, Source.Last - S_Index + 1);

               if Class /= 0 then
                  if Last_Class > Class then
                     --  Canonical Ordering is violated, reorder result.

                     Reorder_Last_Character
                      (Destination, Starter.D_Next, Destination.Last + 1);

                  else
                     Last_Class := Class;
                  end if;

               else
                  Starter := (D_Next => Destination.Last + 1);
                  Last_Class := Class;
               end if;
            end Common_Append;

            M_First : constant Sequence_Count
              := Norms.Mapping
                  (First_Stage_Index (Code / 16#100#))
                  (Second_Stage_Index (Code mod 16#100#)).Decomposition
                    (Decomposition).First;
            M_Last  : constant Sequence_Count
              := Norms.Mapping
                  (First_Stage_Index (Code / 16#100#))
                  (Second_Stage_Index (Code mod 16#100#)).Decomposition
                    (Decomposition).Last;

         begin
            if M_First = 0 then
               if Code in Hangul_Syllable_First .. Hangul_Syllable_Last then
                  --  Special processing of precomposed Hangul Syllables

                  declare
                     C_Index : constant Code_Point := Code - S_Base;
                     L       : constant Code_Point
                       := L_Base + C_Index / N_Count;
                     V       : constant Code_Point
                       := V_Base + (C_Index mod N_Count) / T_Count;
                     T       : constant Code_Point
                       := T_Base + C_Index mod T_Count;

                  begin
                     Append (Destination, L, Source.Last - S_Index + 3);
                     Append (Destination, V, Source.Last - S_Index + 2);

                     if T /= T_Base then
                        Append (Destination, T, Source.Last - S_Index + 1);
                     end if;
                  end;

                  Starter := (D_Next => Destination.Last + 1);
                  Last_Class := 0;

               else
                  Common_Append (Code);
               end if;

            else
               for J in M_First .. M_Last loop
                  Common_Append (Norms.Decomposition_Data (J));
               end loop;
            end if;
         end;
      end loop;
   end Generic_Decomposition;

   ---------------------------------------
   -- Generic_Decomposition_Composition --
   ---------------------------------------

   procedure Generic_Decomposition_Composition
    (Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access)
   is

      type Starter_State is record
         D_Index  : Positive := 1;
         D_Next   : Positive := 1;
         D_Length : Natural  := 0;
      end record;

      S_Index         : Positive := 1;
      Code            : Code_Point;
      Length          : Natural  := 0;
      Last_Class      : Canonical_Combining_Class := 0;
      Class           : Canonical_Combining_Class;
      Starter         : Starter_State;
      S_Starter       : Starter_State;
      C_Starter       : Starter_State;
      Composed        : Boolean := True;
      Fast            : Boolean := False;
      Starter_S_Index : Positive := 1;
      S_Previous      : Positive;

   begin
      if Source.Last = 0 then
         Destination := Shared_Empty'Access;
         Reference (Destination);

         return;
      end if;

      --  Try to do Normalization Form quick check.

      while S_Index <= Source.Last loop
         S_Previous := S_Index;

         Unchecked_Next (Source.Value, S_Index, Code);

         case Get_Core (Code).NQC (Form) is
            when No | Maybe =>
               S_Index := Starter_S_Index;
               Length  := Starter.D_Length;

               exit;

            when Yes =>
               null;
         end case;

         Class := Get_Core (Code).CCC;

         if Class /= 0 then
            if Last_Class > Class then
               --  Canonical Ordering is violated.

               S_Index := Starter_S_Index;
               Length  := Starter.D_Length;

               exit;
            end if;

         else
            Starter_S_Index := S_Previous;
            Starter :=
             (D_Index  => S_Previous,
              D_Next   => S_Index,
              D_Length => Length);
         end if;

         Last_Class := Class;
         Length := Length + 1;
      end loop;

      if S_Index > Source.Last then
         Destination := Source;
         Reference (Destination);

         return;
      end if;

      --  Source is not in Normalization Form probably, so start more complex
      --  algorithm.

      Destination := Allocate (Source.Size);

      Destination.Value (1 .. S_Index - 1) := Source.Value (1 .. S_Index - 1);
      Destination.Last   := S_Index - 1;
      Destination.Length := Length;

      while S_Index <= Source.Last loop
         S_Previous := S_Index;
         Unchecked_Next (Source.Value, S_Index, Code);

         declare

            procedure Common_Append (Code : Code_Point);
            --  Common algorithm to append character exclude Hangul Syllable,
            --  decomposition and appending of which are done using special
            --  algorithm.

            -------------------
            -- Common_Append --
            -------------------

            procedure Common_Append (Code : Code_Point) is
               D_Index : Positive := Destination.Last + 1;

            begin
               Class := Get_Core (Code).CCC;
               Append (Destination, Code, Source.Last - S_Index + 1);

               if Class /= 0 then
                  if Composed then
                     Starter := C_Starter;
                     Last_Class := Class;
                     Composed := False;

                  elsif Last_Class > Class then
                     --  Canonical Ordering is violated, reorder result, but
                     --  only when previous starter was not composed, otherwise
                     --  reordering will break normalization.

                     Reorder_Last_Character
                      (Destination, Starter.D_Next, Destination.Last + 1);

                  else
                     Last_Class := Class;
                  end if;

               else
                  Compose (Destination, Starter.D_Index, D_Index, Composed);

                  if Composed then
                     C_Starter :=
                      (D_Index  => D_Index,
                       D_Next   => Destination.Last + 1,
                       D_Length => Destination.Length - 1);

                  else
                     Starter :=
                      (D_Index  => D_Index,
                       D_Next   => Destination.Last + 1,
                       D_Length => Destination.Length - 1);
                     Last_Class := Class;
                  end if;
               end if;
            end Common_Append;

            M_First : constant Sequence_Count
              := Norms.Mapping
                  (First_Stage_Index (Code / 16#100#))
                  (Second_Stage_Index (Code mod 16#100#)).Decomposition
                    (Decomposition).First;
            M_Last  : constant Sequence_Count
              := Norms.Mapping
                  (First_Stage_Index (Code / 16#100#))
                  (Second_Stage_Index (Code mod 16#100#)).Decomposition
                    (Decomposition).Last;

         begin
            --  Check does the current character not affected by current
            --  normalization form?

            if Fast then
               --  Fast mode: try to avoid decomposition and composition.

               if Get_Core (Code).NQC (Form) = Yes then
                  Common_Append (Code);

                  if Starter_S_Index /= S_Previous
                    and then Class = 0
                    and then not Composed
                  then
                     --  Just processed character is starter and never compose
                     --  with previous characters, thus we need to store
                     --  current position.

                     Starter_S_Index := S_Previous;
                     S_Starter := Starter;
                  end if;

               else
                  S_Index := Starter_S_Index;
                  Starter := S_Starter;
                  Fast := False;
                  Destination.Last := Starter.D_Index - 1;
                  Destination.Length := Starter.D_Length;
               end if;

            else
               if M_First = 0 then
                  --  There is no special processing for Hangul Syllables here:
                  --  they will be composed into the same character; and never
                  --  compose with the previous or following characters.

                  Common_Append (Code);

               else
                  for J in M_First .. M_Last loop
                     Common_Append (Norms.Decomposition_Data (J));
                  end loop;
               end if;

               if Starter_S_Index /= S_Previous
                 and then Code
                           not in Hangul_Syllable_First .. Hangul_Syllable_Last
                 and then Get_Core (Code).CCC = 0
                 and then Get_Core (Code).NQC (Form) = Yes
               then
                  --  Just processed character is starter and never compose
                  --  with previous characters, thus we can switch back to fast
                  --  mode.

                  Fast := True;
                  Starter_S_Index := S_Previous;
                  S_Starter := Starter;
               end if;
            end if;
         end;
      end loop;

      declare
         D_Index : Positive := Destination.Last + 1;

      begin
         Compose (Destination, Starter.D_Index, D_Index, Composed);
      end;
   end Generic_Decomposition_Composition;

   --------------
   -- Get_Core --
   --------------

   function Get_Core (Code : Code_Point) return Core_Values is

      function Element is
        new Matreshka.Internals.Unicode.Ucd.Generic_Element
             (Matreshka.Internals.Unicode.Ucd.Core_Values,
              Matreshka.Internals.Unicode.Ucd.Core_Second_Stage,
              Matreshka.Internals.Unicode.Ucd.Core_Second_Stage_Access,
              Matreshka.Internals.Unicode.Ucd.Core_First_Stage);

   begin
      return Element (Core.Property, Code);
   end Get_Core;

   ---------
   -- NFC --
   ---------

   procedure NFC
    (Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access)
   is
      procedure Convert is
        new Generic_Decomposition_Composition (NFC, Canonical);

   begin
      Convert (Source, Destination);
   end NFC;

   ---------
   -- NFD --
   ---------

   procedure NFD
    (Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access)
   is
      procedure Convert is new Generic_Decomposition (NFD, Canonical);

   begin
      Convert (Source, Destination);
   end NFD;

   ----------
   -- NFKC --
   ----------

   procedure NFKC
    (Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access)
   is
      procedure Convert is
        new Generic_Decomposition_Composition (NFKC, Compatibility);

   begin
      Convert (Source, Destination);
   end NFKC;

   ----------
   -- NFKD --
   ----------

   procedure NFKD
    (Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access)
   is
      procedure Convert is new Generic_Decomposition (NFKD, Compatibility);

   begin
      Convert (Source, Destination);
   end NFKD;

   ----------------------------
   -- Reorder_Last_Character --
   ----------------------------

   procedure Reorder_Last_Character
    (Destination : Shared_String_Access;
     First       : Positive;
     Last        : Positive)
   is
      Previous_Class : Canonical_Combining_Class;
      Class          : Canonical_Combining_Class;
      Previous       : Positive;
      Aux            : Positive;
      Current        : Positive;
      Code_A         : Code_Point;
      Code_B         : Code_Point;
      Restart        : Boolean;

   begin
      --  XXX It is more efficient to use backward bulk sort: all characters
      --  in the substring always sorted, so we need just to move last
      --  character to appropriate position.

      loop
         Restart := False;

         Current := First;
         Previous := Current;
         Unchecked_Next (Destination.Value, Current, Code_A);
         Previous_Class := Get_Core (Code_A).CCC;

         while Current < Last loop
            Aux := Current;
            Unchecked_Next (Destination.Value, Current, Code_B);
            Class := Get_Core (Code_B).CCC;

            if Previous_Class > Class then
               Unchecked_Store (Destination.Value, Previous, Code_B);
               Current := Previous;
               Unchecked_Store (Destination.Value, Current, Code_A);
               Restart := True;

            else
               Previous_Class := Class;
               Previous := Aux;
               Code_A := Code_B;
            end if;
         end loop;

         exit when not Restart;
      end loop;
   end Reorder_Last_Character;

end Matreshka.Internals.Unicode.Normalization;
