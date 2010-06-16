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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Matreshka.Internals.Unicode.Ucd.Core;

package body Matreshka.Internals.Regexps.Engine.Pike is

   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

   function Element is
     new Unicode.Ucd.Generic_Element
      (Matreshka.Internals.Unicode.Ucd.Core_Values,
       Matreshka.Internals.Unicode.Ucd.Core_Second_Stage,
       Matreshka.Internals.Unicode.Ucd.Core_Second_Stage_Access,
       Matreshka.Internals.Unicode.Ucd.Core_First_Stage);

   -------------
   -- Execute --
   -------------

   function Execute
     (Program : Engine.Program;
      String  : not null Matreshka.Internals.Strings.Shared_String_Access)
      return not null Shared_Match_Access
   is
      type State_Information is record
         PC : Integer;
         SS : Regexps.Slice_Array (0 .. Program.Captures);
      end record;

      type State_Array is
        array (1 .. Program.Instructions'Length) of State_Information;

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
      Match   : constant not null Shared_Match_Access
        := new Shared_Match (Program.Captures);
      SP      : Utf16_String_Index := 0;
      SI      : Positive := 1;
      Step    : Positive := 1;
      Steps   : array (Program.Instructions'Range) of Integer := (others => 0);

      procedure Add
       (PC            : Integer;
        SS            : Slice_Array;
        Start_Of_Line : Boolean;
        End_Of_Line   : Boolean);

      ---------
      -- Add --
      ---------

      procedure Add
       (PC            : Integer;
        SS            : Slice_Array;
        Start_Of_Line : Boolean;
        End_Of_Line   : Boolean)
      is
         S : Slice_Array := SS;

      begin
         if Steps (PC) = Step then
            return;
         end if;

         Steps (PC) := Step;

         case Program.Instructions (PC).Kind is
            when Any_Code_Point
              | Code_Point
              | Code_Range
              | I_Property
              | Engine.Match
            =>
               Next.Last := Next.Last + 1;
               Next.State (Next.Last) := (PC, SS);

            when I_Terminate =>
               for J in 1 .. Current.Last loop
                  if Current.State (J).PC = Program.Instructions (PC).Next then
                     Current.State (J .. Current.Last - 1) :=
                       Current.State (J + 1 .. Current.Last);
                     Current.Last := Current.Last - 1;

                     exit;
                  end if;
               end loop;

            when Split =>
               Add (Program.Instructions (PC).Next, S, Start_Of_Line, End_Of_Line);
               Add (Program.Instructions (PC).Another, S, Start_Of_Line, End_Of_Line);

            when Save =>
               if Program.Instructions (PC).Start then
                  S (Program.Instructions (PC).Slot) := (SP, SI, 0, 1);

               else
                  S (Program.Instructions (PC).Slot).Next_Position := SP;
                  S (Program.Instructions (PC).Slot).Next_Index    := SI;
               end if;

               Add (Program.Instructions (PC).Next, S, Start_Of_Line, End_Of_Line);

            when I_Anchor =>
               declare
                  Match : Boolean := True;

               begin
                  if Program.Instructions (PC).Start_Of_Line then
                     Match := Match and Start_Of_Line;
                  end if;

                  if Program.Instructions (PC).End_Of_Line then
                     Match := Match and End_Of_Line;
                  end if;

                  if Match then
                     Add (Program.Instructions (PC).Next, S, Start_Of_Line, End_Of_Line);
                  end if;
               end;

            when None =>
               raise Program_Error;
         end case;
      end Add;

      PC      : Positive := 1;
      SS      : Regexps.Slice_Array (0 .. Program.Captures) := (others => (0, 1, 0, 1));
      Code    : Matreshka.Internals.Unicode.Code_Point;
      T       : Integer;
      SOL     : Boolean := True;
      EOL     : Boolean := String.Unused = 0;

   begin
      Match.Is_Matched := False;
      Match.Number := Program.Captures;

      Next.Last := 0;
      Current.Last := 0;

      Add (PC, SS, SOL, EOL);
      SOL := False;

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

         EOL := SP = String.Unused;

         loop
            exit when T > Current.Last;

            PC := Current.State (T).PC;
            SS := Current.State (T).SS;

            case Program.Instructions (PC).Kind is
               when Any_Code_Point =>
                  Add (Program.Instructions (PC).Next, SS, SOL, EOL);

               when Code_Point =>
                  if Code = Program.Instructions (PC).Code then
                     Add (Program.Instructions (PC).Next, SS, SOL, EOL);
                  end if;

               when Code_Range =>
                  if Program.Instructions (PC).Negate
                    xor (Code
                           in Program.Instructions (PC).Low
                                .. Program.Instructions (PC).High)
                  then
                     Add (Program.Instructions (PC).Next, SS, SOL, EOL);
                  end if;

               when I_Property =>
                  declare
                     R : Boolean;

                  begin
                     case Program.Instructions (PC).Value.Kind is
                        when None =>
                           raise Program_Error;

                        when General_Category =>
                           R :=
                             Program.Instructions (PC).Value.GC_Flags
                              (Element
                                (Matreshka.Internals.Unicode.Ucd.Core.Property, Code).GC);

                        when Binary =>
                           R :=
                             Element
                              (Matreshka.Internals.Unicode.Ucd.Core.Property, Code).B
                                (Program.Instructions (PC).Value.Property);
                     end case;

                     if Program.Instructions (PC).Negative xor R then
                        Add (Program.Instructions (PC).Next, SS, SOL, EOL);
                     end if;
                  end;

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
