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

with Matreshka.Internals.Ucd;
with Matreshka.Internals.Utf16;

package body Matreshka.Internals.Unicode.Collation is

   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Ucd;
   use Matreshka.Internals.Utf16;

   type Collation_Element_Array is
     array (Positive range <>) of Collation_Element;

   type Collation_Element_Bounded_Array (Size : Natural) is record
      Data : Collation_Element_Array (1 .. Size);
      Last : Natural := 0;
   end record;

   type Collation_Element_Bounded_Array_Access is
     access all Collation_Element_Bounded_Array;

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Collation_Element_Bounded_Array,
           Collation_Element_Bounded_Array_Access);

   procedure Append
    (Self : in out Collation_Element_Bounded_Array_Access;
     Item : Collation_Element);

   ------------
   -- Append --
   ------------

   procedure Append
    (Self : in out Collation_Element_Bounded_Array_Access;
     Item : Collation_Element)
   is
   begin
      if Self.Last = Self.Size then
         declare
            Aux : Collation_Element_Bounded_Array_Access := Self;

         begin
            Self :=
              new Collation_Element_Bounded_Array
                   (Aux.Size + Integer'Max (1, Aux.Size / 32));
            Self.Data (1 .. Aux.Last) := Aux.Data;
            Self.Last := Aux.Last;
            Free (Aux);
         end;
      end if;

      Self.Last := Self.Last + 1;
      Self.Data (Self.Last) := Item;
   end Append;

   ------------------------
   -- Construct_Sort_Key --
   ------------------------

   function Construct_Sort_Key
    (Locale : Matreshka.Internals.Locales.Locale_Data_Access;
     Source : Matreshka.Internals.Strings.Internal_String_Access)
       return Matreshka.Internals.Strings.Internal_Sort_Key_Access
   is
      Collation_Array : Collation_Element_Bounded_Array_Access
        := new Collation_Element_Bounded_Array (Source.Last);
      S_Index         : Positive := 1;
      Code            : Code_Point;

      procedure Expand (Code : Code_Point);
      --  Append base expansion of the specified code point into the
      --  Collation_Array.

      ------------
      -- Expand --
      ------------

      procedure Expand (Code : Code_Point) is
         T : Collation_Record
            renames Locale.Collation.Mapping
                     (First_Stage_Index (Code / 16#100#))
                     (Second_Stage_Index (Code mod 16#100#));

      begin
         if T.Expansion_First /= 0 then
            for J in T.Expansion_First .. T.Expansion_Last loop
               Append (Collation_Array, Locale.Collation.Expansion (J));
            end loop;

         else
            --  Internal representation of string assumes there are no illegal
            --  code points like noncharacters or unpaired surrogates in the
            --  string, thus just skip generation of corresponding weights.

            --  pragma Assert (Is_Legal_Unicode_Code_Point (Code);

            declare
               Base : Collation_Weight := 16#FBC0#;
               Aaaa : constant Collation_Weight
                 := Collation_Weight (Code / 16#8000#);
               Bbbb : constant Collation_Weight
                 := Collation_Weight (Code mod 16#8000#) or 16#8000#;

            begin
               if Code in CJK_Ideograph_First .. CJK_Ideograph_Last then
                  Base := 16#FB40#;

               elsif Code in CJK_Ideograph_A_First .. CJK_Ideograph_A_Last
                 or else Code
                           in CJK_Ideograph_B_First .. CJK_Ideograph_B_Last
               then
                  Base := 16#FB80#;
               end if;

               Append (Collation_Array, (Base + Aaaa, 16#0020#, 16#0002#));
               Append (Collation_Array, (Bbbb, 16#0000#, 16#0000#));
            end;
         end if;
      end Expand;

   begin
      while S_Index <= Source.Last loop
         Unchecked_Next (Source.Value, S_Index, Code);

         declare
            T    : Collation_Record
               renames Locale.Collation.Mapping
                        (First_Stage_Index (Code / 16#100#))
                        (Second_Stage_Index (Code mod 16#100#));
            Skip : Boolean := False;

         begin
            if T.Contractor_First /= 0 then
               declare
                  Excludes         : array (Positive range 1 .. 3) of Positive;
                  Excludes_First   : Positive;
                  Excludes_Last    : Natural := 0;
                  Last_Class       : Canonical_Combining_Class
                    := Locale.Core
                        (First_Stage_Index (Code / 16#100#))
                        (Second_Stage_Index (Code mod 16#100#)).CCC;
                  Current_Class    : Canonical_Combining_Class;
                  R_Index          : Positive := S_Index;
                  R_Previous       : Positive;
                  R_Code           : Code_Point;
                  Contractor_First : Sequence_Count := T.Contractor_First;
                  Contractor_Last  : Sequence_Count := T.Contractor_Last;
                  Matched          : Sequence_Count := 0;
                  Contracted       : Boolean;

               begin
                  while R_Index <= Source.Last loop
                     R_Previous := R_Index;
                     Unchecked_Next (Source.Value, R_Index, R_Code);

                     Current_Class :=
                       Locale.Core
                        (First_Stage_Index (R_Code / 16#100#))
                        (Second_Stage_Index (R_Code mod 16#100#)).CCC;

                     Contracted := False;

                     if Contractor_First /= 0
                       and then ((Current_Class = 0 and then Last_Class = 0)
                                    or else Last_Class < Current_Class)
                     then
                        for J in Contractor_First .. Contractor_Last loop
                           if Locale.Collation.Contraction (J).Code
                                = R_Code
                           then
                              --  Match.

                              Matched := J;
                              Contractor_First :=
                                Locale.Collation.Contraction
                                 (J).Contractor_First;
                              Contractor_Last :=
                                Locale.Collation.Contraction
                                 (J).Contractor_Last;

                              Excludes_Last := Excludes_Last + 1;
                              Excludes (Excludes_Last) := R_Previous;

                              Contracted := True;

                              exit;
                           end if;
                        end loop;
                     end if;

                     if not Contracted then
                        exit when Current_Class = 0;

                        Last_Class := Current_Class;
                     end if;
                  end loop;

                  if Excludes_Last /= 0 then
                     if Matched /= 0
                       and then Locale.Collation.Contraction
                                 (Matched).Expansion_First /= 0
                     then
                        for J in Locale.Collation.Contraction
                                  (Matched).Expansion_First
                                     .. Locale.Collation.Contraction
                                         (Matched).Expansion_Last
                        loop
                           Append
                            (Collation_Array, Locale.Collation.Expansion (J));
                        end loop;

                        Excludes_First := 1;

                        while S_Index < R_Index loop
                           Skip := False;

                           for J in Excludes_First .. Excludes_Last loop
                              if Excludes (J) = S_Index then
                                 Excludes_First := J + 1;
                                 Skip := True;

                                 exit;
                              end if;
                           end loop;

                           Unchecked_Next (Source.Value, S_Index, Code);

                           if not Skip then
                              Expand (Code);
                           end if;
                        end loop;

                        Skip := True;
                     end if;
                  end if;
               end;
            end if;

            if not Skip then
               Expand (Code);
            end if;
         end;
      end loop;

      return Result : constant Internal_Sort_Key_Access
        := new Internal_Sort_Key (Collation_Array.Last * 3 + 2)
      do
         for J in 1 .. Collation_Array.Last loop
            if Collation_Array.Data (J).Primary /= 0 then
               Result.Last := Result.Last + 1;
               Result.Data (Result.Last) := Collation_Array.Data (J).Primary;
            end if;
         end loop;

         Result.Last := Result.Last + 1;
         Result.Data (Result.Last) := 0;

         if Locale.Collation.Backwards then
            for J in reverse 1 .. Collation_Array.Last loop
               if Collation_Array.Data (J).Secondary /= 0 then
                  Result.Last := Result.Last + 1;
                  Result.Data (Result.Last) :=
                    Collation_Array.Data (J).Secondary;
               end if;
            end loop;

         else
            for J in 1 .. Collation_Array.Last loop
               if Collation_Array.Data (J).Secondary /= 0 then
                  Result.Last := Result.Last + 1;
                  Result.Data (Result.Last) :=
                    Collation_Array.Data (J).Secondary;
               end if;
            end loop;
         end if;

         Result.Last := Result.Last + 1;
         Result.Data (Result.Last) := 0;

         for J in 1 .. Collation_Array.Last loop
            if Collation_Array.Data (J).Trinary /= 0 then
               Result.Last := Result.Last + 1;
               Result.Data (Result.Last) := Collation_Array.Data (J).Trinary;
            end if;
         end loop;

         Free (Collation_Array);
      end return;
   end Construct_Sort_Key;

end Matreshka.Internals.Unicode.Collation;
