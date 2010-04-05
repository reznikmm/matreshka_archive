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

package body Matreshka.Internals.Regexps.Compiler.Debug is

   ----------
   -- Dump --
   ----------

   procedure Dump (Pattern : not null Shared_Pattern_Access) is

      use Ada.Strings;
      use Ada.Strings.Fixed;
      use Ada.Text_IO;

      procedure Dump (N : Positive);

      Indent : Ada.Text_IO.Count := 1;
      Offset : constant := 3;

      procedure Dump (N : Positive) is
      begin
         Set_Col (Indent);

         Put
          (Trim (Integer'Image (N), Both)
             & ' '
             & Node_Kinds'Image (Pattern.AST (N).Kind));

         case Pattern.AST (N).Kind is
            when N_None =>
               null;

            when N_Match_Any =>
               null;

            when N_Subexpression =>
               if Pattern.AST (N).Capture then
                  Put (" {capture}");
               end if;

               Indent := Indent + Offset;
               Dump (Get_Expression (Pattern, N));
               Indent := Indent - Offset;

            when N_Match_Code | N_Member_Code =>
               Put
                (' '
                   & Wide_Wide_Character'Image
                      (Wide_Wide_Character'Val (Pattern.AST (N).Code)));

            when N_Match_Property | N_Member_Property =>
               case Pattern.AST (N).Value.Kind is
                  when None =>
                     null;

                  when General_Category =>
                     Put (" General_Category is");

                     for J in Pattern.AST (N).Value.GC_Flags'Range loop
                        if Pattern.AST (N).Value.GC_Flags (J) then
                           Put
                             (' '
                                & Matreshka.Internals.Unicode.Ucd.General_Category'Image
                                   (J));
                        end if;
                     end loop;

                  when Binary =>
                     Put
                      (' '
                         & Matreshka.Internals.Unicode.Ucd.Boolean_Properties'Image
                            (Pattern.AST (N).Value.Property));
               end case;

               if Pattern.AST (N).Negative then
                  Put (" {negative}");
               end if;

            when N_Member_Range =>
               Put
                (' '
                   & Wide_Wide_Character'Image
                      (Wide_Wide_Character'Val (Pattern.AST (N).Low))
                   & " .. "
                   & Wide_Wide_Character'Image
                      (Wide_Wide_Character'Val (Pattern.AST (N).High)));

            when N_Character_Class =>
               if Pattern.AST (N).Negated then
                  Put (" {negated}");
               end if;

               Indent := Indent + Offset;
               Dump (Get_Members (Pattern, N));
               Indent := Indent - Offset;

            when N_Multiplicity =>
               Put (" [" & Trim (Natural'Image (Pattern.AST (N).Lower), Both) & "..");

               if Pattern.AST (N).Upper /= Natural'Last then
                  Put (Trim (Natural'Image (Pattern.AST (N).Upper), Both) & ']');

               else
                  Put ("Infinity]");
               end if;

               if Pattern.AST (N).Greedy then
                  Put (" {greedy}");

               else
                  Put (" {lazy}");
               end if;

               Indent := Indent + Offset;
               Dump (Get_Expression (Pattern, N));
               Indent := Indent - Offset;

            when N_Alternation =>
               Indent := Indent + Offset;
               Set_Col (Indent);
               Put ("first");
               Indent := Indent + Offset;
               Dump (Get_Preferred (Pattern, N));
               Indent := Indent - Offset;
               Indent := Indent - Offset;

               Indent := Indent + Offset;
               Set_Col (Indent);
               Put ("second");
               Indent := Indent + Offset;
               Dump (Get_Fallback (Pattern, N));
               Indent := Indent - Offset;
               Indent := Indent - Offset;

            when N_Anchor =>
               if Pattern.AST (N).Start_Of_Line then
                  Put (" {start of line}");
               end if;

               if Pattern.AST (N).End_Of_Line then
                  Put (" {end of line}");
               end if;
         end case;

         if Pattern.AST (N).Next /= 0 then
            Dump (Pattern.AST (N).Next);
         end if;
      end Dump;

   begin
      Dump (Pattern.List (Pattern.Start).Head);
      New_Line;
   end Dump;

end Matreshka.Internals.Regexps.Compiler.Debug;
