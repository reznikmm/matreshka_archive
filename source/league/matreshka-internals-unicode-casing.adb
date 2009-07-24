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

with Matreshka.Internals.Utf16;

package body Matreshka.Internals.Unicode.Casing is

   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Ucd;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

   ------------------
   -- Convert_Case --
   ------------------

   procedure Convert_Case
    (Locale      : not null Matreshka.Internals.Locales.Locale_Data_Access;
     Source      : not null Matreshka.Internals.Strings.Internal_String_Access;
     Kind        : Case_Mapping_Kinds;
     Property    : Matreshka.Internals.Ucd.Boolean_Properties;
     Destination : in out Matreshka.Internals.Strings.Internal_String_Access)
   is
      Source_Current : Positive := 1;
      Source_Code    : Code_Point;
      Has_BMP        : Boolean  := False;
      Has_Non_BMP    : Boolean  := False;
      Converted      : Boolean;

      procedure Append (C : Code_Point);

      function Is_Preceded_By_Final_Sigma_Context return Boolean;

      function Is_Followed_By_Final_Sigma_Context return Boolean;

      function Is_Preceded_By_After_Soft_Dotted_Context return Boolean;

      function Is_Followed_By_More_Above_Context return Boolean;

      function Is_Followed_By_Before_Dot_Context return Boolean;

      function Is_Preceded_By_After_I_Context return Boolean;

      ------------
      -- Append --
      ------------

      procedure Append (C : Code_Point) is
         X : Code_Point;

      begin
         Destination.Length := Destination.Length + 1;

         if C <= 16#FFFF# then
            Destination.Last := Destination.Last + 1;

         else
            Destination.Last := Destination.Last + 2;
         end if;
        
         if Destination.Last > Destination.Value'Last then
            declare
               Aux : not null Internal_String_Access
                 := new Internal_String (Destination.Last + Source.Last);

            begin
               Aux.Value (Destination.Value'Range) := Destination.Value;
               Aux.Last := Destination.Last;
               Aux.Length := Destination.Length;

               Dereference (Destination);
               Destination := Aux;
            end;
         end if;

         if C <= 16#FFFF# then
            Has_BMP                              := True;
            Destination.Value (Destination.Last) := Utf16_Code_Unit (C);

         else
            Has_Non_Bmp := True;
            X           := C - 16#1_0000#;
            Destination.Value (Destination.Last - 1) :=
              Utf16_Code_Unit (High_Surrogate_First + X / 16#400#);
            Destination.Value (Destination.Last) :=
              Utf16_Code_Unit (Low_Surrogate_First + X mod 16#400#);
         end if;
      end Append;

      ---------------------------------------
      -- Is_Followed_By_Before_Dot_Context --
      ---------------------------------------

      function Is_Followed_By_Before_Dot_Context return Boolean is
         Current : Natural := Source_Current;
         Code    : Code_Point;

      begin
         while Current <= Source.Last loop
            Unchecked_Next (Source.Value, Current, Code);

            declare
               R : constant Core_Values
                 := Locale.Core
                     (First_Stage_Index (Code / 16#100#))
                     (Second_Stage_Index (Code mod 16#100#));

            begin
               if R.CCC = 0 or else R.CCC = 230 then
                  return False;

               elsif Code = 16#0307# then
                  return True;
               end if;
            end;
         end loop;

         return False;
      end Is_Followed_By_Before_Dot_Context;

      ---------------------------------------
      -- Is_Followed_By_More_Above_Context --
      ---------------------------------------

      function Is_Followed_By_More_Above_Context return Boolean is
         Current : Natural := Source_Current;
         Code    : Code_Point;

      begin
         while Current <= Source.Last loop
            Unchecked_Next (Source.Value, Current, Code);

            declare
               R : constant Core_Values
                 := Locale.Core
                     (First_Stage_Index (Code / 16#100#))
                     (Second_Stage_Index (Code mod 16#100#));

            begin
               if R.CCC = 0 then
                  return False;

               elsif R.CCC = 230 then
                  return True;
               end if;
            end;
         end loop;

         return False;
      end Is_Followed_By_More_Above_Context;

      ----------------------------------------
      -- Is_Followed_By_Final_Sigma_Context --
      ----------------------------------------

      function Is_Followed_By_Final_Sigma_Context return Boolean is
         Current : Natural := Source_Current;
         Code    : Code_Point;

      begin
         while Current <= Source.Last loop
            Unchecked_Next (Source.Value, Current, Code);

            declare
               R : constant Core_Values
                 := Locale.Core
                     (First_Stage_Index (Code / 16#100#))
                     (Second_Stage_Index (Code mod 16#100#));

            begin
               if not R.B (Case_Ignorable) then
                  return not R.B (Cased);
               end if;
            end;
         end loop;

         return True;
      end Is_Followed_By_Final_Sigma_Context;

      ------------------------------------
      -- Is_Preceded_By_After_I_Context --
      ------------------------------------

      function Is_Preceded_By_After_I_Context return Boolean is
         Current : Natural := Source_Current;
         Code    : Code_Point;

      begin
         Unchecked_Previous (Source.Value, Current, Code);

         while Current > 1 loop
            Unchecked_Previous (Source.Value, Current, Code);

            declare
               R : constant Core_Values
                 := Locale.Core
                     (First_Stage_Index (Code / 16#100#))
                     (Second_Stage_Index (Code mod 16#100#));

            begin
               if R.CCC = 0 or else R.CCC = 230 then
                  return False;

               elsif Code = Wide_Wide_Character'Pos ('I') then
                  return True;
               end if;
            end;
         end loop;

         return False;
      end Is_Preceded_By_After_I_Context;

      ----------------------------------------------
      -- Is_Preceded_By_After_Soft_Dotted_Context --
      ----------------------------------------------

      function Is_Preceded_By_After_Soft_Dotted_Context return Boolean is
         Current : Natural := Source_Current;
         Code    : Code_Point;

      begin
         Unchecked_Previous (Source.Value, Current, Code);

         while Current > 1 loop
            Unchecked_Previous (Source.Value, Current, Code);

            declare
               R : constant Core_Values
                 := Locale.Core
                     (First_Stage_Index (Code / 16#100#))
                     (Second_Stage_Index (Code mod 16#100#));

            begin
               if R.CCC = 0 or else R.CCC = 230 then
                  return False;

               elsif R.B (Soft_Dotted) then
                  return True;
               end if;
            end;
         end loop;

         return False;
      end Is_Preceded_By_After_Soft_Dotted_Context;

      ----------------------------------------
      -- Is_Preceded_By_Final_Sigma_Context --
      ----------------------------------------

      function Is_Preceded_By_Final_Sigma_Context return Boolean is
         Current : Natural := Source_Current;
         Code    : Code_Point;

      begin
         Unchecked_Previous (Source.Value, Current, Code);

         while Current > 1 loop
            Unchecked_Previous (Source.Value, Current, Code);

            declare
               R : constant Core_Values
                 := Locale.Core
                     (First_Stage_Index (Code / 16#100#))
                     (Second_Stage_Index (Code mod 16#100#));

            begin
               if not R.B (Case_Ignorable) then
                  return R.B (Cased);
               end if;
            end;
         end loop;

         return False;
      end Is_Preceded_By_Final_Sigma_Context;

   begin
      Destination.Last := 0;
      Destination.Length := 0;

      while Source_Current <= Source.Last loop
         Unchecked_Next (Source.Value, Source_Current, Source_Code);

         if Locale.Core
             (First_Stage_Index (Source_Code / 16#100#))
             (Second_Stage_Index (Source_Code mod 16#100#)).B (Property)
         then
            declare
               Mapping : constant Case_Mapping
                 := Locale.Case_Mapping
                     (First_Stage_Index (Source_Code / 16#100#))
                     (Second_Stage_Index (Source_Code mod 16#100#));

            begin
               Converted := False;

               if Kind /= Folding
                 --  Ignore casing context mappings in the case folding mode.
                 and then Mapping.Context_First /= 0
               then
                  --  Character is casing context sensitive.

                  for J in Mapping.Context_First .. Mapping.Context_Last loop
                     declare
                        Context : constant Casing_Context_Mapping
                          := Locale.Case_Context (J);

                     begin
                        if Context.Ranges (Kind).First /= 0 then
                           case Context.Context is
                              when Final_Sigma =>
                                 if (Is_Preceded_By_Final_Sigma_Context
                                       and then
                                         Is_Followed_By_Final_Sigma_Context)
                                   xor Context.Negative
                                 then
                                    for J in Context.Ranges (Kind).First
                                               .. Context.Ranges (Kind).Last
                                    loop
                                       Append (Locale.Case_Sequence (J));
                                    end loop;

                                    Converted := True;

                                    exit;
                                 end if;

                              when After_Soft_Dotted =>
                                 if Is_Preceded_By_After_Soft_Dotted_Context
                                   xor Context.Negative
                                 then
                                    null;
                                 end if;

                              when More_Above =>
                                 if Is_Followed_By_More_Above_Context
                                   xor Context.Negative
                                 then
                                    null;
                                 end if;

                              when Before_Dot =>
                                 if Is_Followed_By_Before_Dot_Context
                                   xor Context.Negative
                                 then
                                    null;
                                 end if;

                              when After_I =>
                                 if Is_Preceded_By_After_I_Context
                                   xor Context.Negative
                                 then
                                    null;
                                 end if;
                           end case;
                        end if;
                     end;
                  end loop;
               end if;

               if not Converted then
                  for J in Mapping.Ranges (Kind).First
                             .. Mapping.Ranges (Kind).Last
                  loop
                     Append (Locale.Case_Sequence (J));
                  end loop;
               end if;
            end;

         else
            Append (Source_Code);
         end if;
      end loop;

      Destination.Index_Mode := Index_Mode_For_String (Has_BMP, Has_Non_BMP);
   end Convert_Case;

end Matreshka.Internals.Unicode.Casing;
