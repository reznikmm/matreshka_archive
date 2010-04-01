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
with Ada.Containers.Vectors;

package body Matreshka.Internals.Regexps.Compiler.Generator is

   use Matreshka.Internals.Regexps.Engine;

   package Integer_Vectors is
     new Ada.Containers.Vectors (Positive, Integer);

   --------------
   -- Generate --
   --------------

   function Generate
    (Pattern : not null Shared_Pattern_Access) return Engine.Program
   is
      use Integer_Vectors;

      Program : Instruction_Array (1 .. Pattern.Last * 9);
      Last    : Natural := 0;

      procedure Compile
        (Expression  : Positive;
         Instruction : out Positive;
         Tails       : out Vector);

      procedure Connect_Tails (Tails : Vector; Instruction : Positive);

      -------------
      -- Compile --
      -------------

      procedure Compile
        (Expression  : Positive;
         Instruction : out Positive;
         Tails       : out Vector)
      is
         procedure Compile_Next;

         ------------------
         -- Compile_Next --
         ------------------

         procedure Compile_Next is
         begin
            if Pattern.AST (Expression).Next /= 0 then
               declare
                  Next_Instruction : Positive;
                  Previous_Tails   : constant Vector := Tails;

               begin
                  Compile
                   (Pattern.AST (Expression).Next, Next_Instruction, Tails);
                  Connect_Tails (Previous_Tails, Next_Instruction);
               end;
            end if;
         end Compile_Next;

      begin
         case Pattern.AST (Expression).Kind is
            when N_Alternation =>
               Last := Last + 1;
               Instruction := Last;
               Tails.Clear;

               declare
                  Ins_1   : Positive;
                  Ins_2   : Positive;
                  Tails_1 : Vector;
                  Tails_2 : Vector;

               begin
                  Compile (Pattern.AST (Expression).First, Ins_1, Tails_1);
                  Compile (Pattern.AST (Expression).Second, Ins_2, Tails_2);
                  Program (Instruction) := (Split, Ins_1, Ins_2);

                  Tails := Tails_1 & Tails_2;
               end;

            when N_Match_Any =>
               Last := Last + 1;
               Instruction := Last;
               Tails.Clear;

               Program (Instruction) := (Any_Code_Point, 0);
               Tails.Append (Instruction);
               Compile_Next;

            when N_Match_Code =>
               Last := Last + 1;
               Instruction := Last;
               Tails.Clear;

               Program (Instruction) :=
                (Code_Point, 0, Pattern.AST (Expression).Code);
               Tails.Append (Instruction);
               Compile_Next;

            when N_Match_Property =>
               Last := Last + 1;
               Instruction := Last;
               Tails.Clear;

               Program (Instruction) :=
                (I_Property,
                 0,
                 Pattern.AST (Expression).Value,
                 Pattern.AST (Expression).Negative);
               Tails.Append (Instruction);
               Compile_Next;

            when N_Member_Code =>
               Last := Last + 1;
               Instruction := Last;

               if Pattern.AST (Expression).Next = 0 then
                  Program (Instruction) :=
                   (Code_Point, 0, Pattern.AST (Expression).Code);
                  Tails.Clear;
                  Tails.Append (Instruction);

               else
                  declare
                     Ins_1 : Integer;
                     Ins_2 : Integer;

                  begin
                     Last := Last + 1;
                     Ins_1 := Last;
                     Compile (Pattern.AST (Expression).Next, Ins_2, Tails);
                     Program (Ins_1) :=
                      (Code_Point, 0, Pattern.AST (Expression).Code);
                     Tails.Append (Ins_1);
                     Program (Instruction) := (Split, Ins_1, Ins_2);
                  end;
               end if;

            when N_Member_Range =>
               Last := Last + 1;
               Instruction := Last;

               if Pattern.AST (Expression).Next = 0 then
                  Program (Instruction) :=
                   (Code_Range,
                    0,
                    False,
                    Pattern.AST (Expression).Low,
                    Pattern.AST (Expression).High);
                  Tails.Clear;
                  Tails.Append (Instruction);

               else
                  declare
                     Ins_1 : Integer;
                     Ins_2 : Integer;

                  begin
                     Last := Last + 1;
                     Ins_1 := Last;
                     Compile (Pattern.AST (Expression).Next, Ins_2, Tails);
                     Program (Ins_1) :=
                      (Code_Range,
                       0,
                       False,
                       Pattern.AST (Expression).Low,
                       Pattern.AST (Expression).High);
                     Tails.Append (Ins_1);
                     Program (Instruction) := (Split, Ins_1, Ins_2);
                  end;
               end if;

            when N_Member_Property =>
               Last := Last + 1;
               Instruction := Last;

               if Pattern.AST (Expression).Next = 0 then
                  Program (Instruction) :=
                   (I_Property,
                    0,
                    Pattern.AST (Expression).Value,
                    Pattern.AST (Expression).Negative);
                  Tails.Clear;
                  Tails.Append (Instruction);

               else
                  declare
                     Ins_1 : Integer;
                     Ins_2 : Integer;

                  begin
                     Last := Last + 1;
                     Ins_1 := Last;
                     Compile (Pattern.AST (Expression).Next, Ins_2, Tails);
                     Program (Ins_1) :=
                      (I_Property,
                       0,
                       Pattern.AST (Expression).Value,
                       Pattern.AST (Expression).Negative);
                     Tails.Append (Ins_1);
                     Program (Instruction) := (Split, Ins_1, Ins_2);
                  end;
               end if;

            when N_Character_Class =>
               if not Pattern.AST (Expression).Negated then
                  Compile
                   (Pattern.AST (Expression).Members, Instruction, Tails);

               else
                  declare
                     Ins_1         : Integer;
                     Ins_Terminate : Integer;
                     Ins_Any       : Integer;

                  begin
                     Last := Last + 1;
                     Instruction := Last;
                     Tails.Clear;

                     Compile
                      (Pattern.AST (Expression).Members, Ins_1, Tails);

                     Last := Last + 1;
                     Ins_Terminate := Last;
                     Last := Last + 1;
                     Ins_Any := Last;

                     Program (Instruction) := (Split, Ins_1, Ins_Any);
                     Connect_Tails (Tails, Ins_Terminate);
                     Program (Ins_Terminate) := (I_Terminate, Ins_Any);
                     Program (Ins_Any) := (Any_Code_Point, 0);
                     Tails.Clear;
                     Tails.Append (Ins_Any);
                  end;
               end if;

            when N_Multiplicity =>
               if Pattern.AST (Expression).Lower = 0 then
                  if Pattern.AST (Expression).Upper = Natural'Last then
                     --  Zero or more

                     Last := Last + 1;
                     Instruction := Last;

                     declare
                        Ins_1 : Positive;

                     begin
                        Compile (Pattern.AST (Expression).Item, Ins_1, Tails);
                        Connect_Tails (Tails, Instruction);

                        if Pattern.AST (Expression).Greedy then
                           Program (Instruction) := (Split, Ins_1, 0);

                        else
                           Program (Instruction) := (Split, 0, Ins_1);
                        end if;

                        Tails.Clear;
                        Tails.Append (Instruction);
                        Compile_Next;
                     end;

                  elsif Pattern.AST (Expression).Upper >= 1 then
                     --  N optional elements

                     declare
                        Ins_1   : Positive;
                        Ins_2   : Positive;
                        Tails_L : Vector;

                     begin
                        Instruction := Last + 1;
                        Tails.Clear;

                        for J in Pattern.AST (Expression).Lower + 1 .. Pattern.AST (Expression).Upper loop
                           Last := Last + 1;
                           Ins_1 := Last;
                           Connect_Tails (Tails_L, Ins_1);
                           Tails.Append (Ins_1);

                           Compile (Pattern.AST (Expression).Item, Ins_2, Tails_L);

                           if Pattern.AST (Expression).Greedy then
                              Program (Ins_1) := (Split, Ins_2, 0);

                           else
                              Program (Ins_1) := (Split, 0, Ins_2);
                           end if;
                        end loop;

                        Tails.Append (Tails_L);
                        Compile_Next;
                     end;

                  else
                     raise Program_Error;
                  end if;

               else
                  declare
                     Ins_1   : Positive;
                     Ins_2   : Positive;
                     Tails_L : Vector;

                  begin
                     Tails.Clear;

                     for J in 1 .. Pattern.AST (Expression).Lower loop
                        Compile (Pattern.AST (Expression).Item, Ins_1, Tails);
                        Connect_Tails (Tails_L, Ins_1);
                        Tails_L := Tails;

                        if J = 1 then
                           Instruction := Ins_1;
                        end if;
                     end loop;

                     if Pattern.AST (Expression).Upper = Natural'Last then
                        Last := Last + 1;
                        Ins_2 := Last;
                        Connect_Tails (Tails_L, Ins_2);

                        if Pattern.AST (Expression).Greedy then
                           Program (Ins_2) := (Split, Ins_1, 0);

                        else
                           Program (Ins_2) := (Split, 0, Ins_1);
                        end if;

                        Tails.Clear;
                        Tails.Append (Ins_2);

                     else
                        Tails.Clear;

                        for J in Pattern.AST (Expression).Lower + 1 .. Pattern.AST (Expression).Upper loop
                           Last := Last + 1;
                           Ins_1 := Last;
                           Connect_Tails (Tails_L, Ins_1);
                           Tails.Append (Ins_1);

                           Compile (Pattern.AST (Expression).Item, Ins_2, Tails_L);

                           if Pattern.AST (Expression).Greedy then
                              Program (Ins_1) := (Split, Ins_2, 0);

                           else
                              Program (Ins_1) := (Split, 0, Ins_2);
                           end if;
                        end loop;

                        Tails.Append (Tails_L);
                     end if;

                     Compile_Next;
                  end;
               end if;

            when N_Subexpression =>
               if Pattern.AST (Expression).Capture then
                  declare
                     Ins_1   : Positive;

                  begin
                     Last := Last + 1;
                     Instruction := Last;

                     Compile (Pattern.AST (Expression).Subexpression, Ins_1, Tails);

                     Program (Instruction) :=
                       (Save, Ins_1, Pattern.AST (Expression).Index, True);
                     Last := Last + 1;
                     Ins_1 := Last;
                     Program (Ins_1) :=
                       (Save, 0, Pattern.AST (Expression).Index, False);
                     Connect_Tails (Tails, Ins_1);

                     Tails.Clear;
                     Tails.Append (Ins_1);
                     Compile_Next;
                  end;

               else
                  Compile (Pattern.AST (Expression).Subexpression, Instruction, Tails);
               end if;

            when others =>
               raise Program_Error;
         end case;
      end Compile;

      -------------------
      -- Connect_Tails --
      -------------------

      procedure Connect_Tails (Tails : Vector; Instruction : Positive) is
         Position : Cursor := Tails.First;

      begin
         while Has_Element (Position) loop
            if Program (Element (Position)).Kind = Split then
               if Program (Element (Position)).Next = 0 then
                  Program (Element (Position)).Next := Instruction;

               else
                  Program (Element (Position)).Another := Instruction;
               end if;

            else
               Program (Element (Position)).Next := Instruction;
            end if;

            Next (Position);
         end loop;
      end Connect_Tails;

      Ins      : Positive;
      Ins_1    : Positive;
      Tails_1  : Vector;

   begin
      Last := Last + 1;
      Ins := Last;

      Compile (Pattern.Start, Ins_1, Tails_1);

      Program (Ins) := (Save, Ins_1, 0, True);

      Last := Last + 1;
      Program (Last) := (Save, Last + 1, 0, False);
      Connect_Tails (Tails_1, Last);

      Last := Last + 1;
      Program (Last) := (Kind => Match);

      return (Last, Program (1 .. Last), Pattern.Captures);
   end Generate;

end Matreshka.Internals.Regexps.Compiler.Generator;
