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

package body Matreshka.Internals.Regexps.Engine.Backtrack is

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

   -------------
   -- Execute --
   -------------

   function Execute
     (Program : Instruction_Array;
      String  : not null Matreshka.Internals.Strings.Shared_String_Access)
      return not null Shared_Match_Access
   is
      Match : not null Shared_Match_Access := new Shared_Match (9);
      Stack : State_Array (1 .. 100);
      Last  : Natural := 0;
      PC    : Positive := 1;
      SP    : Utf16_String_Index := 0;
      SI    : Positive := 1;
      SS    : Regexps.Slice_Array (0 .. 9) := (others => (0, 1, 0, 1));
      C     : Matreshka.Internals.Unicode.Code_Point;

   begin
      Match.Is_Matched := False;
      Match.Number := 0;
      Last := Last + 1;
      Stack (Last) := (PC, SP, SI, SS);

      while Last /= 0 loop
         PC := Stack (Last).PC;
         SP := Stack (Last).SP;
         SI := Stack (Last).SI;
         SS := Stack (Last).SS;
         Last := Last - 1;

         loop
            case Program (PC).Kind is
               when Any_Code_Point =>
                  exit when SP = String.Unused;

                  Unchecked_Next (String.Value, SP);
                  SI := SI + 1;
                  PC := Program (PC).Next;

               when Code_Point =>
                  exit when SP = String.Unused;

                  Unchecked_Next (String.Value, SP, C);
                  SI := SI + 1;

                  exit when C /= Program (PC).Code;

                  PC := Program (PC).Next;

               when Code_Range =>
                  exit when SP = String.Unused;

                  Unchecked_Next (String.Value, SP, C);
                  SI := SI + 1;

                  exit when Program (PC).Negate
                    xor (C not in Program (PC).Low .. Program (PC).High);

                  PC := Program (PC).Next;

               when Engine.Match =>
                  Reference (String);
                  Match.Is_Matched := True;
                  Match.Slices := SS;
                  Match.Source := String;

                  return Match;

               when Jump =>
                  PC := Program (PC).Next;

               when Split =>
                  Last := Last + 1;
                  Stack (Last) := (Program (PC).Another, SP, SI, SS);
                  PC := Program (PC).Next;

               when Save =>
                  if Program (PC).Start then
                     SS (Program (PC).Slot) := (SP, SI, 0, 1);

                  else
                     if Match.Number < Program (PC).Slot then
                        Match.Number := Program (PC).Slot;
                     end if;

                     SS (Program (PC).Slot).Next_Position := SP;
                     SS (Program (PC).Slot).Next_Index    := SI;
                  end if;

                  PC := Program (PC).Next;

               when others =>
                  raise Program_Error;
            end case;
         end loop;
      end loop;

      return Match;
   end Execute;

end Matreshka.Internals.Regexps.Engine.Backtrack;
