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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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

with Ada.Containers.Ordered_Maps;
with League.Character_Sets.Internals;
with Matreshka.Internals.Regexps.Compiler;

package body Matreshka.Internals.Finite_Automatons is
   
   package Compiler renames Matreshka.Internals.Regexps.Compiler;
   
   type Position is new Natural;
   --  Position is index of a literal element of regexp
   --  for example: (a|b)*abb
   --                1 2  345

   --  Map each literal to corresponding character set
   type Character_Set_Map is array (Position range <>) of
     League.Character_Sets.Universal_Character_Set;
   
   --  Just list of character sets
   type Character_Set_Array is array (Positive range <>) of
     League.Character_Sets.Universal_Character_Set;
   
   function To_Character_Set
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Node : Positive) return League.Character_Sets.Universal_Character_Set;
   --  Return character set corresponding to given regexp element
   --  Raise Constraint_Error if element is not literal.
   
   function Count_Positions
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Root : Positive)
     return Position;
   --  Return count of literal elements in given regexp subexpression

   function Count_Positions_In_List
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Head : Positive)
     return Position;
   --  Return count of literal elements in given regexp subexpression sequence

   function Nullable
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Root : Positive) return Boolean;
   --  Check if given regexp subexpression can match empty string

   function Nullable_List
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Head : Positive) return Boolean;
   --  Check if given regexp subexpression sequence can match empty string

   -------------
   -- Compile --
   -------------

   function Compile
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access)
      return DFA
   is
      Head    : constant Positive := AST.List (Ast.Start).Head;
      Max_Pos : constant Position := Count_Positions_In_List (AST, Head) + 1;
      type Position_Set is array (1 .. Max_Pos) of Boolean;
      pragma Pack (Position_Set);

      Empty : constant Position_Set := (others => False);

      type Position_Set_Array is array (1 .. Max_Pos) of Position_Set;

      Follow  : Position_Set_Array := (others => Empty);
      Chars   : Character_Set_Map (1 .. Max_Pos);
      
      procedure Add_To_Follow
        (First : in out Position_Set;
         Last  : in out Position_Set);
      --  Update Follow array according to First and Last position sets
      
      procedure Walk
        (Root  : Positive;
         Pos   : in out Position;
         First : in out Position_Set;
         Last  : in out Position_Set);
      --  Walk regexp subexpression and update Follow array for each literal

      procedure Walk_List
        (Head  : Positive;
         Pos   : in out Position;
         First : in out Position_Set;
         Last  : in out Position_Set);
      --  Walk regexp subexpressions and update Follow array for each literal
      
      procedure Walk_Root_List
        (Head  : Positive;
         First : in out Position_Set);
      --  Walk whole regexp and add surogate final position
      
      function Get_Follows
        (Set  : Position_Set;
         Map  : Character_Set_Map;
         Char : League.Character_Sets.Universal_Character_Set)
        return Position_Set;
      --  Get positions set reachable from Set on input belong to Char

      procedure Split_To_Distinct_Sets
        (Set  : Position_Set;
         Map  : Character_Set_Map;
         List : out Character_Set_Array;
         Last : out Natural);
      --  Fill character set List with non-intersected subsets of
      --  characters in Map (Set)
      
      procedure Make_DFA
        (Graph : in out Matreshka.Internals.Graphs.Constructor.Graph;
         Start : out State;
         Edges : in out Vectors.Vector;
         Final : in out State_Sets.Set;
         First : Position_Set;
         Map   : Character_Set_Map);

      function Max_Distinct_Sets (Set : Position_Set) return Natural;
      --  Return maximum length of non-intersected character sets
      --  Return Count(Set) ** 2 - 1

      -------------------
      -- Add_To_Follow --
      -------------------
      
      procedure Add_To_Follow
        (First : in out Position_Set;
         Last  : in out Position_Set) is
      begin
         for J in Last'Range loop
            if Last (J) then
               Follow (J) := Follow (J) or First;
            end if;
         end loop;
      end Add_To_Follow;
      
      -----------------
      -- Get_Follows --
      -----------------
      
      function Get_Follows
        (Set  : Position_Set;
         Map  : Character_Set_Map;
         Char : League.Character_Sets.Universal_Character_Set)
        return Position_Set
      is
         Result : Position_Set := Empty;
      begin
         for J in Set'Range loop
            if Set (J) and then Char.Is_Subset (Map (J)) then
               Result := Result or Follow (J);
            end if;
         end loop;
         
         return Result;
      end Get_Follows;
      
      --------------
      -- Make_DFA --
      --------------
      
      procedure Make_DFA
        (Graph : in out Matreshka.Internals.Graphs.Constructor.Graph;
         Start : out State;
         Edges : in out Vectors.Vector;
         Final : in out State_Sets.Set;
         First : Position_Set;
         Map   : Character_Set_Map) 
      is
         use Matreshka.Internals.Graphs.Constructor;
         
         function New_Node (Set : Position_Set) return Node;
         --  Allocate new state/node, add it to Final if needed
         
         package Maps is new Ada.Containers.Ordered_Maps (Position_Set, Node);
         package Vectors is new Ada.Containers.Vectors
           (Index_Type   => Matreshka.Internals.Graphs.Edge_Identifier,
            Element_Type => League.Character_Sets.Universal_Character_Set,
            "="          => League.Character_Sets."=");
         
         --------------
         -- New_Node --
         --------------
         
         function New_Node (Set : Position_Set) return Node is
            Result : constant Node := Graph.New_Node;
         begin
            if Set (Max_Pos) then
               Final.Insert (Result.Index);
            end if;
            
            return Result;
         end New_Node;
         
         Marked     : Maps.Map;
         Not_Marked : Maps.Map;
      begin
         declare
            First_Node : constant Node := New_Node (First);
         begin
            Start := First_Node.Index;
            Not_Marked.Insert (First, First_Node);
         end;
         
         while not Not_Marked.Is_Empty loop
            declare
               Source : Node := Not_Marked.First_Element;
               Set    : Position_Set := Not_Marked.First_Key;
               Max    : Positive := Max_Distinct_Sets (Set);
               Last   : Natural;
               List   : Character_Set_Array (1 .. Max);
            begin
               Not_Marked.Delete_First;
               Marked.Insert (Set, Source);
               Split_To_Distinct_Sets (Set, Map, List, Last);
               
               for J in 1 .. Last loop
                  declare
                     use type Ada.Containers.Count_Type;

                     Target : Node;
                     Cursor : Maps.Cursor;
                     Next   : constant Position_Set :=
                       Get_Follows (Set, Map, List (J));
                  begin
                     if Next /= Empty then
                        Cursor := Marked.Find (Next);
                     
                        if Maps.Has_Element (Cursor) then
                           Target := Maps.Element (Cursor);
                        else
                           Cursor := Not_Marked.Find (Next);
                           
                           if Maps.Has_Element (Cursor) then
                              Target := Maps.Element (Cursor);
                           else
                              Target := New_Node (Next);
                              Not_Marked.Insert (Next, Target);
                           end if;
                        end if;
                        
                        --  Let's suppose edge allocation in sequent order
                        Edges.Set_Length (Edges.Length + 1);
                        
                        Edges.Replace_Element
                          (Index    => Source.New_Edge (Target),
                           New_Item => List (J));
                        
                     end if;
                  end;
               end loop;
            end;
         end loop;
      end Make_DFA;
      
      -----------------------
      -- Max_Distinct_Sets --
      -----------------------
      
      function Max_Distinct_Sets (Set : Position_Set) return Natural is
         Result : Natural := 0;
      begin
         for J in Set'Range loop
            if Set (J) then
               Result := Result * 2 + 1;
            end if;
         end loop;
         
         return Result;
      end Max_Distinct_Sets;
      
      ----------------------------
      -- Split_To_Distinct_Sets --
      ----------------------------
      
      procedure Split_To_Distinct_Sets
        (Set  : Position_Set;
         Map  : Character_Set_Map;
         List : out Character_Set_Array;
         Last : out Natural) is
      begin
         Last := 0;
         
         for J in Set'Range loop
            if Set (J) then
               declare
                  use League.Character_Sets;
                  Rest : Universal_Character_Set := Map (J);
               begin
                  for K in 1 .. Last loop
                     declare
                        Intersection : constant Universal_Character_Set :=
                          List (K) and Rest;
                     begin
                        if not Intersection.Is_Empty then
                           declare
                              Extra : constant Universal_Character_Set :=
                                List (K) - Rest;
                           begin
                              if not Extra.Is_Empty then
                                 Last := Last + 1;
                                 List (Last) := Extra;
                              end if;

                              Rest := Rest - List (K);
                              List (K) := Intersection;
                           end;
                        end if;
                     end;
                  end loop;
                  
                  if not Rest.Is_Empty then
                     Last := Last + 1;
                     List (Last) := Rest;
                  end if;
               end;
            end if;
         end loop;
      end Split_To_Distinct_Sets;
      
      ----------
      -- Walk --
      ----------
      
      procedure Walk
        (Root  : Positive;
         Pos   : in out Position;
         First : in out Position_Set;
         Last  : in out Position_Set)
      is
         Node : Matreshka.Internals.Regexps.Node renames AST.AST (Root);

      begin
         case Node.Kind is
            when Matreshka.Internals.Regexps.N_None =>
               raise Constraint_Error;

            when Matreshka.Internals.Regexps.N_Subexpression =>
               Walk
                 (Compiler.Get_Expression (AST, Root), Pos, First, Last);

            when Matreshka.Internals.Regexps.N_Match_Any |
              Matreshka.Internals.Regexps.N_Match_Code |
              Matreshka.Internals.Regexps.N_Match_Property |
              Matreshka.Internals.Regexps.N_Character_Class |
              Matreshka.Internals.Regexps.N_Anchor =>

               Chars (Pos) := To_Character_Set (Ast, Root);
               First (Pos) := True;
               Last (Pos) := True;
               Pos := Pos + 1;

            when Matreshka.Internals.Regexps.N_Member_Code |
              Matreshka.Internals.Regexps.N_Member_Property |
              Matreshka.Internals.Regexps.N_Member_Range =>

               raise Constraint_Error;

            when Matreshka.Internals.Regexps.N_Multiplicity =>
               declare
                  Result_First : Position_Set := Empty;
                  Result_Last  : Position_Set := Empty;
               begin
                  Walk (Compiler.Get_Expression (AST, Root),
                        Pos,
                        Result_First,
                        Result_Last);

                  Add_To_Follow (Result_First, Result_Last);
                  First := First or Result_First;
                  Last := Last or Result_Last;
               end;

            when Matreshka.Internals.Regexps.N_Alternation =>
               Walk_List
                 (Compiler.Get_Preferred (AST, Root),
                  Pos,
                  First,
                  Last);

               Walk_List
                 (Compiler.Get_Fallback (AST, Root),
                  Pos,
                  First,
                  Last);
         end case;
      end Walk;
      
      ---------------
      -- Walk_List --
      ---------------
      
      procedure Walk_List
        (Head  : Positive;
         Pos   : in out Position;
         First : in out Position_Set;
         Last  : in out Position_Set)
      is
         Next : Natural := Compiler.Get_Next_Sibling (AST, Head);
      begin
         if Next = 0 then
            Walk (Head, Pos, First, Last);
         else
            declare
               Result_First : Position_Set := Empty;
               Result_Last  : Position_Set := Empty;
            begin
               Walk (Head, Pos, First, Result_Last);
               Walk_List (Next, Pos, Result_First, Last);
               Add_To_Follow (Result_First, Result_Last);

               if Nullable (AST, Head) then
                  First := First or Result_First;
               end if;

               if Nullable (AST, Next) then
                  Last := Last or Result_Last;
               end if;
            end;
         end if;
      end Walk_List;
      
      --------------------
      -- Walk_Root_List --
      --------------------
      
      procedure Walk_Root_List
        (Head  : Positive;
         First : in out Position_Set)
      is
         Pos          : Position := 1;
         Result_First : Position_Set := Empty;
         Result_Last  : Position_Set := Empty;
      begin
         Walk_List (Head, Pos, First, Result_Last);
         --  Walk (Next, Pos, Result_First, Last);
         Result_First (Pos) := True;
         Add_To_Follow (Result_First, Result_Last);

         if Nullable_List (AST, Head) then
            First := First or Result_First;
         end if;
      end Walk_Root_List;

      First  : Position_Set := Empty;
      Last   : Position_Set := Empty;
      Graph  : Matreshka.Internals.Graphs.Constructor.Graph;
      
   begin
      Walk_Root_List (Head, First);
      
      return Result : DFA do
         Make_DFA
           (Graph, 
            Result.Start, 
            Result.Edge_Char_Set,
            Result.Final,
            First,
            Chars);
         Result.Start := 1;
         Graph.Complete (Output => Result.Graph);
      end return;
   end Compile;

   ---------------------
   -- Count_Positions --
   ---------------------

   function Count_Positions
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Root : Positive)
     return Position
   is
      Node : Matreshka.Internals.Regexps.Node renames AST.AST (Root);
   begin
      case Node.Kind is
         when Matreshka.Internals.Regexps.N_None =>
            raise Constraint_Error;

         when Matreshka.Internals.Regexps.N_Subexpression =>
            return Count_Positions (AST, Compiler.Get_Expression (AST, Root));

         when Matreshka.Internals.Regexps.N_Match_Any |
          Matreshka.Internals.Regexps.N_Match_Code |
          Matreshka.Internals.Regexps.N_Match_Property |
          Matreshka.Internals.Regexps.N_Character_Class =>
            return 1;
         when Matreshka.Internals.Regexps.N_Member_Code =>
            raise Constraint_Error;
         when Matreshka.Internals.Regexps.N_Member_Property =>
            raise Constraint_Error;
         when Matreshka.Internals.Regexps.N_Member_Range =>
            raise Constraint_Error;
         when Matreshka.Internals.Regexps.N_Multiplicity =>
            return Count_Positions (AST, Compiler.Get_Expression (AST, Root));

         when Matreshka.Internals.Regexps.N_Alternation =>
            return
              Count_Positions_In_List (AST, Compiler.Get_Preferred (AST, Root))
              +
              Count_Positions_In_List (AST, Compiler.Get_Fallback (AST, Root));

         when Matreshka.Internals.Regexps.N_Anchor =>
            return 1;
      end case;
   end Count_Positions;
   
   -----------------------------
   -- Count_Positions_In_List --
   -----------------------------
   
   function Count_Positions_In_List
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Head : Positive)
     return Position
   is
      Result : Position := 0;
      Pos    : Natural := Head;
   begin
      while Pos > 0 loop
         Result := Result + Count_Positions (AST, Pos);
         Pos := Compiler.Get_Next_Sibling (AST, Pos);
      end loop;

      return Result;
   end Count_Positions_In_List;
   
   --------------
   -- Nullable --
   --------------
   
   function Nullable
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Root : Positive) return Boolean
   is
      Node : Matreshka.Internals.Regexps.Node renames AST.AST (Root);

   begin
      case Node.Kind is
         when Matreshka.Internals.Regexps.N_None =>
            raise Constraint_Error;
            
         when Matreshka.Internals.Regexps.N_Subexpression =>
            return Nullable (AST, Compiler.Get_Expression (AST, Root));

         when Matreshka.Internals.Regexps.N_Match_Any |
           Matreshka.Internals.Regexps.N_Match_Code |
           Matreshka.Internals.Regexps.N_Match_Property |
           Matreshka.Internals.Regexps.N_Character_Class |
           Matreshka.Internals.Regexps.N_Anchor =>

            return False;

         when Matreshka.Internals.Regexps.N_Member_Code |
           Matreshka.Internals.Regexps.N_Member_Property |
           Matreshka.Internals.Regexps.N_Member_Range =>

            raise Constraint_Error;

         when Matreshka.Internals.Regexps.N_Multiplicity =>
            return Node.Lower = 0 or else
              Nullable (AST, Compiler.Get_Expression (AST, Root));

         when Matreshka.Internals.Regexps.N_Alternation =>
            return Nullable_List (AST, Compiler.Get_Preferred (AST, Root))
              or else Nullable_List (AST, Compiler.Get_Fallback (AST, Root));
      end case;
   end Nullable;

   -------------------
   -- Nullable_List --
   -------------------
   
   function Nullable_List
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Head : Positive)
     return Boolean
   is
      Pos : Natural := Head;
   begin
      while Pos > 0 loop
         if not Nullable (AST, Pos) then
            return False;
         end if;
         
         Pos := Compiler.Get_Next_Sibling (AST, Pos);
      end loop;

      return True;
   end Nullable_List;
   
   ----------------------
   -- To_Character_Set --
   ----------------------

   function To_Character_Set
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Node : Positive) return League.Character_Sets.Universal_Character_Set
   is
      use type League.Character_Sets.Universal_Character_Set;
   begin
      case AST.AST (Node).Kind is
         when Matreshka.Internals.Regexps.N_None =>
            return League.Character_Sets.Empty_Universal_Character_Set;
            
         when Matreshka.Internals.Regexps.N_Match_Any =>
            return not League.Character_Sets.Empty_Universal_Character_Set;

         when Matreshka.Internals.Regexps.N_Member_Code |
           Matreshka.Internals.Regexps.N_Match_Code =>
            return League.Character_Sets.To_Set
              ((1 => Wide_Wide_Character'Val (AST.AST (Node).Code)));

         when Matreshka.Internals.Regexps.N_Match_Property |
           Matreshka.Internals.Regexps.N_Member_Property =>
            declare
               Result : League.Character_Sets.Universal_Character_Set;
            begin
               case AST.AST (Node).Value.Kind is
                  when Matreshka.Internals.Regexps.None =>
                     raise Constraint_Error;

                  when Matreshka.Internals.Regexps.General_Category =>
                     Result := League.Character_Sets.Internals.To_Set
                       (AST.AST (Node).Value.GC_Flags);

                  when Matreshka.Internals.Regexps.Binary =>
                     Result := League.Character_Sets.Internals.To_Set
                       (AST.AST (Node).Value.Property);
               end case;

               if AST.AST (Node).Negative then
                  return not Result;
               else
                  return Result;
               end if;
            end;

         when Matreshka.Internals.Regexps.N_Member_Range =>
            return League.Character_Sets.To_Set
              (Low  => Wide_Wide_Character'Val (AST.AST (Node).Low),
               High => Wide_Wide_Character'Val (AST.AST (Node).High));

         when Matreshka.Internals.Regexps.N_Character_Class =>
            declare
               use type League.Character_Sets.Universal_Character_Set;

               Index  : Natural :=
                 AST.List (AST.AST (Node).Members).Head;
               Tail   : Positive :=
                 AST.List (AST.AST (Node).Members).Tail;
               Result : League.Character_Sets.Universal_Character_Set;
            begin
               while Index > 0 loop
                  Result := Result or To_Character_Set (AST, Index);
                  Index := AST.AST (Index).Next;
               end loop;

               if AST.AST (Node).Negated then
                  return not Result;
               else
                  return Result;
               end if;
            end;

         when others =>
            raise Constraint_Error;
      end case;
   end To_Character_Set;

end Matreshka.Internals.Finite_Automatons;
