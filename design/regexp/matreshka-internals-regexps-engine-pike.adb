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

package body Matreshka.Internals.Regexps.Engine.Pike is

   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

   type State_Information is record
      PC : Integer;
      SS : Regexps.Slice_Array (0 .. 9);
   end record;

   -------------
   -- Execute --
   -------------

   function Execute
     (Program : Instruction_Array;
      String  : not null Matreshka.Internals.Strings.Shared_String_Access)
      return not null Shared_Match_Access
   is
      type State_Array is array (1 .. Program'Length) of State_Information;

      type Thread_List is record
         State : State_Array;
         Last  : Natural;
      end record;

      type Thread_List_Access is access all Thread_List;

      List_1  : aliased Thread_List;
      List_2  : aliased Thread_List;

      Current : Thread_List_Access := List_1'Access;
      Next    : Thread_List_Access := List_2'Access;
      Aux     : Thread_List_Access;
      Match   : not null Shared_Match_Access := new Shared_Match (9);
      SP      : Utf16_String_Index := 0;
      SI      : Positive := 1;
      Step    : Positive := 1;
      Steps   : array (Program'Range) of Integer := (others => 0);

      procedure Add (PC : Integer; SS : Slice_Array);

      ---------
      -- Add --
      ---------

      procedure Add (PC : Integer; SS : Slice_Array) is
         S : Slice_Array := SS;

      begin
         if Steps (PC) = Step then
            return;
         end if;

         Steps (PC) := Step;

         case Program (PC).Kind is
            when Any_Code_Point | Code_Point | Code_Range | Engine.Match =>
               Next.Last := Next.Last + 1;
               Next.State (Next.Last) := (PC, SS);

            when I_Terminate =>
               for J in 1 .. Current.Last loop
                  if Current.State (J).PC = Program (PC).Next then
                     Current.State (J .. Current.Last - 1) :=
                       Current.State (J + 1 .. Current.Last);
                     Current.Last := Current.Last - 1;

                     exit;
                  end if;
               end loop;

            when Split =>
               Add (Program (PC).Next, S);
               Add (Program (PC).Another, S);

            when Save =>
               if Program (PC).Start then
                  S (Program (PC).Slot) := (SP, SI, 0, 1);

               else
                  if Match.Number < Program (PC).Slot then
                     Match.Number := Program (PC).Slot;
                  end if;

                  S (Program (PC).Slot).Next_Position := SP;
                  S (Program (PC).Slot).Next_Index    := SI;
               end if;

               Add (Program (PC).Next, S);

            when others =>
               raise Program_Error;
         end case;
      end Add;

      PC      : Positive := 1;
      SS      : Regexps.Slice_Array (0 .. 9) := (others => (0, 1, 0, 1));
      Code    : Matreshka.Internals.Unicode.Code_Point;
      T       : Integer;

   begin
      Match.Is_Matched := False;
      Match.Number := 0;

      Next.Last := 0;
      Current.Last := 0;

      Add (PC, SS);

      while SP <= String.Unused loop
         --  Handling of 'match' instruction requires to do one cycle after
         --  last character. Implicit null terminator allows to do last cycle
         --  like any other cycles, and simplify code. Even if it match
         --  pattern this match never be taken, because it can be handled
         --  only on next cycle, which never be happen.

         Aux := Current;
         Current := Next;
         Next := Aux;
         Next.Last := 0;
         Step := Step + 1;

         exit when Current.Last = 0;

         Unchecked_Next (String.Value, SP, Code);
         SI := SI + 1;
         T := 1;

         loop
            exit when T > Current.Last;

            PC := Current.State (T).PC;
            SS := Current.State (T).SS;

            case Program (PC).Kind is
               when Any_Code_Point =>
                  Add (Program (PC).Next, SS);

               when Code_Point =>
                  if Code = Program (PC).Code then
                     Add (Program (PC).Next, SS);
                  end if;

               when Code_Range =>
                  if Program (PC).Negate
                    xor (Code in Program (PC).Low .. Program (PC).High)
                  then
                     Add (Program (PC).Next, SS);
                  end if;

               when Engine.Match =>
                  Match.Is_Matched := True;
                  Match.Slices := SS;

                  exit;

               when others =>
                  raise Program_Error;
            end case;

            T := T + 1;
         end loop;
      end loop;

      if Match.Is_Matched then
         Reference (String);
         Match.Source := String;
      end if;

      return Match;
   end Execute;

end Matreshka.Internals.Regexps.Engine.Pike;
