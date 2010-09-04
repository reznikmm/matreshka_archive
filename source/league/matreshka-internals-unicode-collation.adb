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
-- Copyright © 2009-2010, Vadim Godunko <vgodunko@gmail.com>                --
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

with Matreshka.Internals.Unicode.Properties;
with Matreshka.Internals.Unicode.Ucd;
with Matreshka.Internals.Utf16;

package body Matreshka.Internals.Unicode.Collation is

   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Unicode.Properties;
   use Matreshka.Internals.Unicode.Ucd;
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
     Source : Matreshka.Internals.Strings.Shared_String_Access)
       return Matreshka.Internals.Strings.Shared_Sort_Key_Access
   is
      Collation_Array : Collation_Element_Bounded_Array_Access
        := new Collation_Element_Bounded_Array (Integer (Source.Unused));
      S_Index         : Utf16_String_Index := 0;
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
            --  code points like unpaired surrogates in the string, thus only
            --  noncharacter code points must be ignored.

            --  pragma Assert (not Is_Surrogate (Code));

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

               elsif Is_Noncharacter_Code_Point (Code) then
                  --  All noncharacter code points are invalid for collation
                  --  and represented as [.0000.0000.0000] collation element,
                  --  thus they are ignored.

                  return;
               end if;

               Append (Collation_Array, (Base + Aaaa, 16#0020#, 16#0002#));
               Append (Collation_Array, (Bbbb, 16#0000#, 16#0000#));
            end;
         end if;
      end Expand;

   begin
      while S_Index < Source.Unused loop
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
                  Excludes         :
                    array (Positive range 1 .. 3) of Utf16_String_Index;
                  Excludes_First   : Positive;
                  Excludes_Last    : Natural := 0;
                  Last_Class       : Canonical_Combining_Class
                    := Locale.Get_Core (Code).CCC;
                  Current_Class    : Canonical_Combining_Class;
                  R_Index          : Utf16_String_Index := S_Index;
                  R_Previous       : Utf16_String_Index;
                  R_Code           : Code_Point;
                  Contractor_First : Sequence_Count := T.Contractor_First;
                  Contractor_Last  : Sequence_Count := T.Contractor_Last;
                  Matched          : Sequence_Count := 0;
                  Contracted       : Boolean;

               begin
                  while R_Index < Source.Unused loop
                     R_Previous := R_Index;
                     Unchecked_Next (Source.Value, R_Index, R_Code);

                     Current_Class := Locale.Get_Core (R_Code).CCC;
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

      return Result : constant Shared_Sort_Key_Access
        := new Shared_Sort_Key (Collation_Array.Last * 3 + 2)
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
