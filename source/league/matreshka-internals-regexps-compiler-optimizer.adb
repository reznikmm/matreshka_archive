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
--  Optimizations:
--
--  1. Remove subtree starting from the repetition node with bounds {0,0}
--  including the repetition node. When the parent node is alternative then
--  it is removed also and replaced by filling other path in its place.
--
--  2. Two sequencial anchor nodes merged into the one node.

package body Matreshka.Internals.Regexps.Compiler.Optimizer is

   procedure Analyze_Node
    (Pattern : not null Shared_Pattern_Access;
     Node    : Natural;
     Restart : in out Boolean);

   procedure Remove_Subtree
    (Pattern : not null Shared_Pattern_Access;
     Node    : Natural);

   procedure Prepend
    (Pattern : not null Shared_Pattern_Access;
     List    : Node_List_Index;
     From    : Node_List_Index);

   ------------------
   -- Analyze_Node --
   ------------------

   procedure Analyze_Node
    (Pattern : not null Shared_Pattern_Access;
     Node    : Natural;
     Restart : in out Boolean)
   is
      Next : constant Natural := Get_Next_Sibling (Pattern, Node);
      --  Current node can be removed from the list, so it is safer
      --  to cache next sibling node.

   begin
      case Pattern.AST (Node).Kind is
         when N_Subexpression =>
            Analyze_Node (Pattern, Get_Expression (Pattern, Node), Restart);

         when N_Character_Class =>
            Analyze_Node (Pattern, Get_Members (Pattern, Node), Restart);

         when N_Multiplicity =>
            if Get_Lower_Bound (Pattern, Node) = 0
              and then Get_Upper_Bound (Pattern, Node) = 0
            then
               --  Subexpression is never looked in the string, reconstruct
               --  tree to remove this repetition node and its subtree.

               Remove_Subtree (Pattern, Node);
               Restart := True;

            elsif Get_Lower_Bound (Pattern, Node) = 1
              and then Get_Upper_Bound (Pattern, Node) = 1
            then
               --  Subexpression is looked only once, reconstruct tree to
               --  merge subtree of this repetition node instead on this
               --  repetition node.

               null;
            end if;

            if not Restart then
               Analyze_Node (Pattern, Get_Expression (Pattern, Node), Restart);
            end if;

         when N_Alternation =>
            Analyze_Node (Pattern, Get_Preferred (Pattern, Node), Restart);

            if not Restart then
               Analyze_Node (Pattern, Get_Fallback (Pattern, Node), Restart);
            end if;

         when N_Anchor =>
            declare
               Previous : constant Natural
                 := Get_Previous_Sibling (Pattern, Node);

            begin
               if Previous /= 0
                 and then Pattern.AST (Previous).Kind = N_Anchor
               then
                  --  Merge two sequencial anchor nodes into one.

                  Pattern.AST (Previous).Start_Of_Line :=
                    Pattern.AST (Previous).Start_Of_Line
                     or Pattern.AST (Node).Start_Of_Line;
                  Pattern.AST (Previous).End_Of_Line :=
                    Pattern.AST (Previous).End_Of_Line
                     or Pattern.AST (Node).End_Of_Line;
                  Remove_Subtree (Pattern, Node);
               end if;
            end;

         when others =>
            null;
      end case;

      if not Restart and then Next /= 0 then
         Analyze_Node (Pattern, Next, Restart);
      end if;
   end Analyze_Node;

   --------------
   -- Optimize --
   --------------

   procedure Optimize (Pattern : not null Shared_Pattern_Access) is
      Restart : Boolean;

   begin
      loop
         Restart := False;
         Analyze_Node (Pattern, Pattern.List (Pattern.Start).Head, Restart);

         exit when not Restart;
      end loop;
   end Optimize;

   -------------
   -- Prepend --
   -------------

   procedure Prepend
    (Pattern : not null Shared_Pattern_Access;
     List    : Node_List_Index;
     From    : Node_List_Index)
   is
      Current  : Natural := Pattern.List (From).Tail;
      Previous : Natural;

   begin
      while Current /= 0 loop
         Previous := Get_Previous_Sibling (Pattern, Current);

         Pattern.AST (Current).List := List;
         Pattern.AST (Current).Previous := 0;
         Pattern.AST (Current).Next := Pattern.List (List).Head;

         if Pattern.List (List).Head = 0 then
            Pattern.List (List).Tail := Current;

         else
            Pattern.AST (Pattern.List (List).Head).Previous := Current;
         end if;

         Pattern.List (List).Head := Current;

         Current := Previous;
      end loop;
   end Prepend;

   --------------------
   -- Remove_Subtree --
   --------------------

   procedure Remove_Subtree
    (Pattern : not null Shared_Pattern_Access;
     Node    : Natural)
   is
      List     : Node_List_Index := Pattern.AST (Node).List;
      Previous : Natural := Get_Previous_Sibling (Pattern, Node);
      Next     : Natural := Get_Next_Sibling (Pattern, Node);
      Parent   : Natural := Pattern.List (List).Parent;

   begin
      if Previous = 0 and then Next = 0 then
         case Pattern.AST (Parent).Kind is
            when N_Alternation =>
               declare
                  Previous : Natural := Get_Previous_Sibling (Pattern, Parent);
                  Next     : Natural := Get_Next_Sibling (Pattern, Parent);

               begin
                  if Previous = 0 and then Next = 0 then
                     Pattern.List (Pattern.AST (Parent).List).Head := 0;
                     Pattern.List (Pattern.AST (Parent).List).Tail := 0;

                  elsif Previous = 0 then
                     Pattern.List (Pattern.AST (Parent).List).Head := Next;
                     Pattern.AST (Next).Previous := 0;

                  elsif Next = 0 then
                     Pattern.List (Pattern.AST (Parent).List).Tail := Previous;
                     Pattern.AST (Previous).Next := 0;

                  else
                     Pattern.AST (Next).Previous := Previous;
                     Pattern.AST (Previous).Next := Next;
                  end if;
               end;

               if Pattern.AST (Parent).Preferred = List then
                  Prepend
                   (Pattern,
                    Pattern.AST (Parent).List,
                    Pattern.AST (Parent).Fallback);

               else
                  Prepend
                   (Pattern,
                    Pattern.AST (Parent).List,
                    Pattern.AST (Parent).Preferred);
               end if;
               Pattern.AST (Parent) := (Kind => N_None);

            when N_Multiplicity =>
               Remove_Subtree (Pattern, Pattern.List (List).Parent);

            when N_Subexpression =>
               Remove_Subtree (Pattern, Pattern.List (List).Parent);

            when others =>
               raise Program_Error;
         end case;

      elsif Previous = 0 then
         Pattern.List (List).Head := Next;
         Pattern.AST (Next).Previous := 0;

      elsif Next = 0 then
         Pattern.List (List).Tail := Previous;
         Pattern.AST (Previous).Next := 0;

      else
         Pattern.AST (Next).Previous := Previous;
         Pattern.AST (Previous).Next := Next;
      end if;
   end Remove_Subtree;

end Matreshka.Internals.Regexps.Compiler.Optimizer;
