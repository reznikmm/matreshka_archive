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
with Ada.Strings.Fixed;
with Ada.Text_IO;

package body Matreshka.Internals.Regexps.Compiler is

   ---------
   -- Add --
   ---------

   procedure Add (Class : Positive; Member : Positive) is
   begin
      if AST (Class).Members = 0 then
         AST (Class).Members := Member;

      else
         Attach (AST (Class).Members, Member);
      end if;
   end Add;

   ------------
   -- Attach --
   ------------

   procedure Attach (Head : Positive; Node : Positive) is
      J : Positive := Head;

   begin
      while AST (J).Next /= 0 loop
         J := AST (J).Next;
      end loop;

      AST (J).Next := Node;
   end Attach;

   ----------
   -- Dump --
   ----------

   procedure Dump is

      use Ada.Strings;
      use Ada.Strings.Fixed;
      use Ada.Text_IO;

      procedure Dump (N : Positive);

      Indent : Ada.Text_IO.Count := 1;
      Offset : constant := 3;

      procedure Dump (N : Positive) is
      begin
         Set_Col (Indent);

         Put (Trim (Integer'Image (N), Both) & ' ' & Node_Kinds'Image (AST (N).Kind));

         case AST (N).Kind is
            when N_None =>
               null;

            when N_Any_Code_Point =>
               null;

            when N_Subexpression =>
               Indent := Indent + Offset;
               Dump (AST (N).Subexpression);
               Indent := Indent - Offset;

            when N_Code_Point =>
               Put (' ' & Wide_Wide_Character'Image (AST (N).Code));

            when N_Code_Point_Range =>
               Put
                 (' ' & Wide_Wide_Character'Image (AST (N).Low)
                    & " .. " & Wide_Wide_Character'Image (AST (N).High));

            when N_Character_Class =>
               if AST (N).Negated then
                  Put (" {negated}");
               end if;

               Indent := Indent + Offset;
               Dump (AST (N).Members);
               Indent := Indent - Offset;

            when N_Multiplicity =>
               Put (" [" & Trim (Natural'Image (AST (N).Lower), Both) & "..");

               if AST (N).Upper /= Natural'Last then
                  Put (Trim (Natural'Image (AST (N).Upper), Both) & ']');

               else
                  Put ("Infinity]");
               end if;

               if AST (N).Greedy then
                  Put (" {greedy}");

               else
                  Put (" {lazy}");
               end if;

               Indent := Indent + Offset;
               Dump (AST (N).Item);
               Indent := Indent - Offset;

            when N_Alternation =>
               Indent := Indent + Offset;
               Set_Col (Indent);
               Put ("first");
               Indent := Indent + Offset;
               Dump (AST (N).First);
               Indent := Indent - Offset;
               Indent := Indent - Offset;

               Indent := Indent + Offset;
               Set_Col (Indent);
               Put ("second");
               Indent := Indent + Offset;
               Dump (AST (N).Second);
               Indent := Indent - Offset;
               Indent := Indent - Offset;
         end case;

         if AST (N).Next /= 0 then
            Dump (AST (N).Next);
         end if;
      end Dump;

   begin
      Dump (AST_Start);
      New_Line;
   end Dump;

   -------------
   -- YYError --
   -------------

   procedure YYError (Error : Parser_Tokens.YY_Errors; Index : Natural) is
      use Parser_Tokens;

   begin
      if YY_Error.Error = No_Error then
         YY_Error := (Error, Index);
      end if;
   end YYError;

end Matreshka.Internals.Regexps.Compiler;
