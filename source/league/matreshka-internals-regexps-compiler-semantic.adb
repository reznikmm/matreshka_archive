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

package body Matreshka.Internals.Regexps.Compiler.Semantic is

   procedure Analyze_Node
    (Pattern : not null Shared_Pattern_Access;
     Node    : Natural);

   -------------
   -- Analyze --
   -------------

   procedure Analyze (Pattern : not null Shared_Pattern_Access) is
   begin
      Analyze_Node (Pattern, Pattern.Start);
   end Analyze;

   ------------------
   -- Analyze_Node --
   ------------------

   procedure Analyze_Node
    (Pattern : not null Shared_Pattern_Access;
     Node    : Natural) is
   begin
      case Pattern.AST (Node).Kind is
         when N_Subexpression =>
            if Pattern.AST (Node).Capture then
               Pattern.Captures := Pattern.Captures + 1;
               Pattern.AST (Node).Index := Pattern.Captures;
            end if;

            Analyze_Node (Pattern, Pattern.AST (Node).Subexpression);

         when N_Character_Class =>
            Analyze_Node (Pattern, Pattern.AST (Node).Members);

         when N_Multiplicity =>
            Analyze_Node (Pattern, Pattern.AST (Node).Item);

         when N_Alternation =>
            Analyze_Node (Pattern, Pattern.AST (Node).First);
            Analyze_Node (Pattern, Pattern.AST (Node).Second);

         when others =>
            null;
      end case;

      if Pattern.AST (Node).Next /= 0 then
         Analyze_Node (Pattern, Pattern.AST (Node).Next);
      end if;
   end Analyze_Node;

end Matreshka.Internals.Regexps.Compiler.Semantic;
