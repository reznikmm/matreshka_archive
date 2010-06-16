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
