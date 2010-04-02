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
with Ada.Integer_Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Fixed;
with Ada.Wide_Wide_Text_IO;

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

   procedure Dump (Program : Engine.Program) is
      use Ada.Integer_Wide_Wide_Text_IO;
      use Ada.Strings;
      use Ada.Strings.Wide_Wide_Fixed;
      use Ada.Wide_Wide_Text_IO;

   begin
      for J in Program.Instructions'Range loop
         declare
            Instruction : Engine.Instruction := Program.Instructions (J);

         begin
            Put (J, 4);
            Put (' ');

            case Instruction.Kind is
               when None =>
                  Put ("nop");

               when I_Terminate =>
                  Put
                    ("terminate ["
                       & Trim (Integer'Wide_Wide_Image (Instruction.Next), Both)
                       & "]");

               when Split =>
                  Put
                    ("split ["
                       & Trim (Integer'Wide_Wide_Image (Instruction.Next), Both)
                       & "], ["
                       & Trim (Integer'Wide_Wide_Image (Instruction.Another), Both)
                       & "]");

               when Any_Code_Point =>
                  Put
                    ("char is any ["
                       & Trim (Integer'Wide_Wide_Image (Instruction.Next), Both)
                       & "]");

               when Code_Point =>
                  Put
                    ("char is "
                       & Wide_Wide_Character'Wide_Wide_Image
                          (Wide_Wide_Character'Val (Instruction.Code))
                       & " ["
                       & Trim (Integer'Wide_Wide_Image (Instruction.Next), Both)
                       & "]");

               when Code_Range =>
                  Put
                    ("char in "
                       & Wide_Wide_Character'Wide_Wide_Image
                          (Wide_Wide_Character'Val (Instruction.Low))
                       & " .. "
                       & Wide_Wide_Character'Wide_Wide_Image
                          (Wide_Wide_Character'Val (Instruction.High)));

                  if Instruction.Negate then
                     Put (" {negate}");
                  end if;

                  Put
                    (" ["
                       & Trim (Integer'Wide_Wide_Image (Instruction.Next), Both)
                       & "]");

               when I_Property =>
                  case Instruction.Value.Kind is
                     when None =>
                        raise Program_Error;

                     when General_Category =>
                        Put ("char General_Category is");

                        for K in Instruction.Value.GC_Flags'Range loop
                           if Instruction.Value.GC_Flags (K) then
                              Put
                                (' '
                                   & Matreshka.Internals.Unicode.Ucd.General_Category'Wide_Wide_Image
                                      (K));
                           end if;
                        end loop;

                     when Binary =>
                        Put
                          ("char is "
                             & Matreshka.Internals.Unicode.Ucd.Boolean_Properties'Wide_Wide_Image
                                (Instruction.Value.Property));
                  end case;

                  if Instruction.Negative then
                     Put (" {negative}");
                  end if;

               when Match =>
                  Put ("match");

               when Save =>
                  Put
                    ("save $"
                       & Trim (Integer'Wide_Wide_Image (Instruction.Slot), Both)
                       & " ");

                  if Instruction.Start then
                     Put ("{begin}");

                  else
                     Put ("{end}");
                  end if;

                  Put
                    (" ["
                       & Trim (Integer'Wide_Wide_Image (Instruction.Next), Both)
                       & "]");

               when I_Anchor =>
                  Put ("anchor");

                  if Instruction.Start_Of_Line then
                     Put (" {start of line}");
                  end if;

                  if Instruction.End_Of_Line then
                     Put (" {end of line}");
                  end if;

                  Put
                    (" ["
                       & Trim (Integer'Wide_Wide_Image (Instruction.Next), Both)
                       & "]");
            end case;

            New_Line;
         end;
      end loop;
   end Dump;

end Matreshka.Internals.Regexps.Engine.Debug;
