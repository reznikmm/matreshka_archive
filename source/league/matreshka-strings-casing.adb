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

package body Matreshka.Strings.Casing is

   use Matreshka.Internals.Ucd;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

--   pragma Suppress (All_Checks);

   procedure Free is
     new Ada.Unchecked_Deallocation (Utf16_String, Utf16_String_Access);

   ------------------
   -- To_Uppercase --
   ------------------

   procedure To_Uppercase
    (Locale      : not null Matreshka.Internals.Locales.Locale_Data_Access;
     Source      : Matreshka.Internals.Utf16.Utf16_String;
     Source_Last : Natural;
     Destination : out Utf16_String_Access;
     Last        : out Natural;
     Length      : out Natural;
     Index_Mode  : out Index_Modes)
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
         Length := Length + 1;

         if C <= 16#FFFF# then
            Last := Last + 1;

         else
            Last := Last + 2;
         end if;
        
         if Last > Destination'Last then
            declare
               Aux : constant not null Utf16_String_Access
                 := new Utf16_String (1 .. Last + Source'Length);

            begin
               Aux (Destination'Range) := Destination.all;
               Free (Destination);
               Destination := Aux;
            end;
         end if;

         if C <= 16#FFFF# then
            Has_BMP            := True;
            Destination (Last) := Utf16_Code_Unit (C);

         else
            Has_Non_Bmp            := True;
            X                      := C - 16#1_0000#;
            Destination (Last - 1) :=
              Utf16_Code_Unit (High_Surrogate_First + X / 16#400#);
            Destination (Last)     :=
              Utf16_Code_Unit (Low_Surrogate_First + X mod 16#400#);
         end if;

--      Index_Mode :=
--        Index_Mode_After_Concatenation
--         (Index_Mode, Index_Mode_For_String (Has_BMP, Has_Non_BMP));
      end Append;

      ---------------------------------------
      -- Is_Followed_By_Before_Dot_Context --
      ---------------------------------------

      function Is_Followed_By_Before_Dot_Context return Boolean is
      begin
         return False;
      end Is_Followed_By_Before_Dot_Context;

      ---------------------------------------
      -- Is_Followed_By_More_Above_Context --
      ---------------------------------------

      function Is_Followed_By_More_Above_Context return Boolean is
      begin
         return False;
      end Is_Followed_By_More_Above_Context;

      ----------------------------------------
      -- Is_Followed_By_Final_Sigma_Context --
      ----------------------------------------

      function Is_Followed_By_Final_Sigma_Context return Boolean is
         Current : Natural := Source_Current;
         Code    : Code_Point;

      begin
         Unchecked_Next (Source, Current, Code);

         while Current <= Last loop
            Unchecked_Next (Source, Current, Code);

            if not Locale.Core
                    (First_Stage_Index (Code / 16#100#))
                    (Second_Stage_Index (Code mod 16#100#)).B
                      (Case_Ignorable)
            then
               return
                 not Locale.Core
                      (First_Stage_Index (Code / 16#100#))
                      (Second_Stage_Index (Code mod 16#100#)).B
                        (Cased);
            end if;
         end loop;

         return True;
      end Is_Followed_By_Final_Sigma_Context;

      ------------------------------------
      -- Is_Preceded_By_After_I_Context --
      ------------------------------------

      function Is_Preceded_By_After_I_Context return Boolean is
      begin
         return False;
      end Is_Preceded_By_After_I_Context;

      ----------------------------------------------
      -- Is_Preceded_By_After_Soft_Dotted_Context --
      ----------------------------------------------

      function Is_Preceded_By_After_Soft_Dotted_Context return Boolean is
      begin
         return False;
      end Is_Preceded_By_After_Soft_Dotted_Context;

      ----------------------------------------
      -- Is_Preceded_By_Final_Sigma_Context --
      ----------------------------------------

      function Is_Preceded_By_Final_Sigma_Context return Boolean is
         Current : Natural := Source_Current;
         Code    : Code_Point;

      begin
         while Current > 1 loop
            Unchecked_Previous (Source, Current, Code);

            if not Locale.Core
                    (First_Stage_Index (Code / 16#100#))
                    (Second_Stage_Index (Code mod 16#100#)).B
                      (Case_Ignorable)
            then
               return Locale.Core
                       (First_Stage_Index (Code / 16#100#))
                       (Second_Stage_Index (Code mod 16#100#)).B
                         (Cased);
            end if;
         end loop;

         return False;
      end Is_Preceded_By_Final_Sigma_Context;

   begin
      Last   := 0;
      Length := 0;

      while Source_Current <= Source_Last loop
         Unchecked_Next (Source, Source_Current, Source_Code);

         if Locale.Core
             (First_Stage_Index (Source_Code / 16#100#))
             (Second_Stage_Index (Source_Code mod 16#100#)).B
               (Has_Uppercase_Mapping)
         then
            declare
               Mapping : constant Case_Mapping
                 := Locale.Case_Mapping
                     (First_Stage_Index (Source_Code / 16#100#))
                     (Second_Stage_Index (Source_Code mod 16#100#));

            begin
               Converted := False;

               if Mapping.Context_First /= 0 then
                  --  Character is casing context sensitive.

                  for J in Mapping.Context_First .. Mapping.Context_Last loop
                     declare
                        Context : constant Casing_Context_Mapping
                          := Locale.Case_Context (J);

                     begin
                        if Context.Upper_First /= 0 then
                           case Context.Context is
                              when Final_Sigma =>
                                 if (Is_Preceded_By_Final_Sigma_Context
                                       and then
                                         Is_Followed_By_Final_Sigma_Context)
                                   xor Context.Negative
                                 then
                                    for J in Context.Upper_First
                                               .. Context.Upper_Last
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
                  for J in Mapping.Upper_First .. Mapping.Upper_Last loop
                     Append (Locale.Case_Sequence (J));
                  end loop;
               end if;
            end;

         else
            Append (Source_Code);
         end if;
      end loop;

      Index_Mode := Index_Mode_For_String (Has_BMP, Has_Non_BMP);
   end To_Uppercase;

--   ----------------------
--   -- Unchecked_Append --
--   ----------------------
--
--   procedure Unchecked_Append
--    (Value      : in out Utf16_String_Access;
--     Last       : in out Natural;
--     Index_Mode : in out Index_Modes;
--     Item       : Wide_Wide_Character)
--   is
--      C             : Code_Point := Wide_Wide_Character'Pos (Item);
--      Has_BMP       : Boolean    := False;
--      Has_Non_BMP   : Boolean    := False;
--
--   begin
--      if C <= 16#FFFF# then
--         Last := Last + 1;
--
--      else
--         Last := Last + 2;
--      end if;
--        
--      if Last > Value'Last then
--         declare
--            Aux : constant not null Utf16_String_Access
--              := new Utf16_String (1 .. Last);
--
--         begin
--            Aux (Value'Range) := Value.all;
--            Free (Value);
--            Value := Aux;
--         end;
--      end if;
--
--      if C <= 16#FFFF# then
--         Has_BMP      := True;
--         Value (Last) := Utf16_Code_Unit (C);
--
--      else
--         Has_Non_Bmp      := True;
--         C                := C - 16#1_0000#;
--         Value (Last - 1) :=
--           Utf16_Code_Unit (High_Surrogate_First + C / 16#400#);
--         Value (Last)     :=
--           Utf16_Code_Unit (Low_Surrogate_First + C mod 16#400#);
--      end if;
--
--      Index_Mode :=
--        Index_Mode_After_Concatenation
--         (Index_Mode, Index_Mode_For_String (Has_BMP, Has_Non_BMP));
--   end Unchecked_Append;

--   procedure To_Lowercase
--    (Source      : Matreshka.Internals.Utf16.Utf16_String;
--     Source_Last : Natural;
--     Destination : out Utf16_String_Access;
--     Last        : out Natural;
--     Length      : out Natural;
--     Index_Mode  : out Index_Modes);
--
--   procedure To_Titlecase
--    (Source      : Matreshka.Internals.Utf16.Utf16_String;
--     Source_Last : Natural;
--     Destination : out Utf16_String_Access;
--     Last        : out Natural;
--     Length      : out Natural;
--     Index_Mode  : out Index_Modes);

end Matreshka.Strings.Casing;
