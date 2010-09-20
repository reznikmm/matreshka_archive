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
-- Copyright © 2010 Vadim Godunko <vgodunko@gmail.com>                      --
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
with Ada.Characters.Latin_1;
with Ada.Strings.Fixed;
with Ada.Strings.Unbounded;

package body Matreshka.Internals.Regexps.Engine.Debug is

   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

   type State is record
      PC : Positive;
      SP : Utf16_String_Index;
      SI : Positive;
      SS : Regexps.Slice_Array (0 .. 9);
   end record;

   type State_Array is array (Positive range <>) of State;

   ----------
   -- Dump --
   ----------

   function Dump (Program : Engine.Program) return String is

      use Ada.Characters.Latin_1;
      use Ada.Strings;
      use Ada.Strings.Fixed;
      use Ada.Strings.Unbounded;

      Result : Unbounded_String;

   begin
      for J in Program.Instructions'Range loop
         declare
            Address_Image  : constant String := Trim (Integer'Image (J), Both);
            Address_Buffer : String (1 .. 4) := (others => ' ');
            Instruction    : Engine.Instruction := Program.Instructions (J);

         begin
            Address_Buffer (4 - Address_Image'Length + 1 .. 4) :=
              Address_Image;
            Append (Result, Address_Buffer);
            Append (Result, ' ');

            case Instruction.Kind is
               when None =>
                  Append (Result, "nop");

               when I_Terminate =>
                  Append
                    (Result,
                     "terminate ["
                       & Trim (Integer'Image (Instruction.Next), Both)
                       & "]");

               when Split =>
                  Append
                    (Result,
                     "split ["
                       & Trim (Integer'Image (Instruction.Next), Both)
                       & "], ["
                       & Trim (Integer'Image (Instruction.Another), Both)
                       & "]");

               when Any_Code_Point =>
                  Append
                    (Result,
                     "char is any ["
                       & Trim (Integer'Image (Instruction.Next), Both)
                       & "]");

               when Code_Point =>
                  Append
                    (Result,
                     "char is "
                       & Wide_Wide_Character'Image
                          (Wide_Wide_Character'Val (Instruction.Code))
                       & " ["
                       & Trim (Integer'Image (Instruction.Next), Both)
                       & "]");

               when Code_Range =>
                  Append
                    (Result,
                     "char in "
                       & Wide_Wide_Character'Image
                          (Wide_Wide_Character'Val (Instruction.Low))
                       & " .. "
                       & Wide_Wide_Character'Image
                          (Wide_Wide_Character'Val (Instruction.High)));

                  if Instruction.Negate then
                     Append (Result, " {negate}");
                  end if;

                  Append
                    (Result,
                     " ["
                       & Trim (Integer'Image (Instruction.Next), Both)
                       & "]");

               when I_Property =>
                  case Instruction.Value.Kind is
                     when None =>
                        raise Program_Error;

                     when General_Category =>
                        Append (Result, "char General_Category is");

                        for K in Instruction.Value.GC_Flags'Range loop
                           if Instruction.Value.GC_Flags (K) then
                              Append
                                (Result,
                                 ' '
                                   & Matreshka.Internals.Unicode.Ucd.
                                       General_Category'Image
                                        (K));
                           end if;
                        end loop;

                     when Binary =>
                        Append
                          (Result,
                           "char is "
                             & Matreshka.Internals.Unicode.Ucd.
                                 Boolean_Properties'Image
                                  (Instruction.Value.Property));
                  end case;

                  if Instruction.Negative then
                     Append (Result, " {negative}");
                  end if;

               when Match =>
                  Append (Result, "match");

               when Save =>
                  Append
                    (Result,
                     "save $"
                       & Trim (Integer'Image (Instruction.Slot), Both)
                       & " ");

                  if Instruction.Start then
                     Append (Result, "{begin}");

                  else
                     Append (Result, "{end}");
                  end if;

                  Append
                    (Result,
                     " ["
                       & Trim (Integer'Image (Instruction.Next), Both)
                       & "]");

               when I_Anchor =>
                  Append (Result, "anchor");

                  if Instruction.Start_Of_Line then
                     Append (Result, " {start of line}");
                  end if;

                  if Instruction.End_Of_Line then
                     Append (Result, " {end of line}");
                  end if;

                  Append
                    (Result,
                     " ["
                       & Trim (Integer'Image (Instruction.Next), Both)
                       & "]");
            end case;

            Append (Result, LF);
         end;
      end loop;

      return To_String (Result);
   end Dump;

end Matreshka.Internals.Regexps.Engine.Debug;
