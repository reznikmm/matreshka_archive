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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with League.Strings.Internals;
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

   function Count_Positions_In_Array
     (List  : Shared_Pattern_Array)
     return Position;

   function Nullable
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Root : Positive) return Boolean;
   --  Check if given regexp subexpression can match empty string

   function Nullable_List
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Head : Positive) return Boolean;
   --  Check if given regexp subexpression sequence can match empty string

   procedure Check
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Head : Positive);

   -----------
   -- Check --
   -----------

   procedure Check
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Head : Positive)
   is
      procedure Walk (Root  : Positive);

      procedure Walk_List (Head  : Positive);

      procedure Walk (Root  : Positive) is
         Node : Matreshka.Internals.Regexps.Node renames AST.AST (Root);
      begin
         case Node.Kind is
            when Matreshka.Internals.Regexps.N_None =>
               raise Constraint_Error with "'None' unsupported";

            when Matreshka.Internals.Regexps.N_Subexpression =>
               Walk (Compiler.Get_Expression (AST, Root));

            when Matreshka.Internals.Regexps.N_Match_Any |
              Matreshka.Internals.Regexps.N_Match_Code |
              Matreshka.Internals.Regexps.N_Match_Property |
              Matreshka.Internals.Regexps.N_Character_Class |
              Matreshka.Internals.Regexps.N_Member_Code |
              Matreshka.Internals.Regexps.N_Member_Property |
              Matreshka.Internals.Regexps.N_Member_Range =>
               null;

            when Matreshka.Internals.Regexps.N_Anchor =>
               raise Constraint_Error with "'Anchor' unsupported";

            when Matreshka.Internals.Regexps.N_Multiplicity =>
               if not Node.Greedy then
                  raise Constraint_Error with "'Lazy' unsupported";
               elsif Node.Lower not in 0 .. 1 then
                  raise Constraint_Error with
                    "'Lower not 0 or 1' unsupported";
               elsif not (Node.Upper = Natural'Last or
                            (Node.Upper = 1 and Node.Lower = 0))
               then
                  raise Constraint_Error with
                    "'Upper not *' unsupported";
               end if;

            when Matreshka.Internals.Regexps.N_Alternation =>
               Walk_List (Compiler.Get_Preferred (AST, Root));
               Walk_List (Compiler.Get_Fallback (AST, Root));
         end case;
      end Walk;

      procedure Walk_List (Head  : Positive) is
         Pos    : Natural := Head;
      begin
         while Pos > 0 loop
            Walk (Pos);
            Pos := Compiler.Get_Next_Sibling (AST, Pos);
         end loop;
      end Walk_List;
   begin
      Walk_List (Head);
   end Check;

   -------------
   -- Compile --
   -------------

   procedure Compile
     (Self    : in out DFA_Constructor;
      Start   : League.Strings.Universal_String;
      List    : League.String_Vectors.Universal_String_Vector;
      Actions : Rule_Index_Array)
   is
      Data : Shared_Pattern_Array (1 .. List.Length);
   begin
      if Data'Length = 0 then
         return;
      end if;

      for J in Data'Range loop
         Data (J) := Compiler.Compile
           (League.Strings.Internals.Internal (List.Element (J)));
      end loop;

      Compile (Self, Start, Data, Actions);
   end Compile;

   -------------
   -- Compile --
   -------------

   procedure Compile
     (Self    : in out DFA_Constructor;
      Start   : League.Strings.Universal_String;
      List    : Shared_Pattern_Array;
      Actions : Rule_Index_Array)
   is
      Max_Pos : constant Position := Count_Positions_In_Array (List);
      type Position_Set is array (1 .. Max_Pos) of Boolean;
      --  pragma Pack (Position_Set);

      Empty  : constant Position_Set := (others => False);

      subtype Finish_Position is Position range 1 .. List'Length;

      type Position_Set_Array is array (1 .. Max_Pos) of Position_Set;

      Follow  : Position_Set_Array := (others => Empty);
      Chars   : Character_Set_Map (1 .. Max_Pos);

      function Head (Index : Positive) return Positive;
      --  Return Head for List (Index)

      procedure Add_To_Follow
        (First : in out Position_Set;
         Last  : in out Position_Set);
      --  Update Follow array according to First and Last position sets

      procedure Walk
        (AST   : Matreshka.Internals.Regexps.Shared_Pattern_Access;
         Root  : Positive;
         Pos   : in out Position;
         First : in out Position_Set;
         Last  : in out Position_Set);
      --  Walk regexp subexpression and update Follow array for each literal

      procedure Walk_List
        (AST   : Matreshka.Internals.Regexps.Shared_Pattern_Access;
         Head  : Positive;
         Pos   : in out Position;
         First : in out Position_Set;
         Last  : in out Position_Set);
      --  Walk regexp subexpressions and update Follow array for each literal

      procedure Walk_Array
        (List  : Shared_Pattern_Array;
         First : in out Position_Set);
      --  Walk regexp array and add fictive symbols in final positions

      function Get_Follows
        (Set  : Position_Set;
         Map  : Character_Set_Map;
         Char : League.Character_Sets.Universal_Character_Set)
        return Position_Set;
      --  Get positions set reachable from Set on input belong to Char

      procedure Split_To_Distinct_Sets
        (Set  : Position_Set;
         Map  : Character_Set_Map;
         List : out Vectors.Vector);
      --  Fill character set List with non-intersected subsets of
      --  characters in Map (Set)

      procedure Make_DFA
        (Graph : in out Matreshka.Internals.Graphs.Constructor.Graph;
         Start : out State;
         Edges : in out Vectors.Vector;
         Final : in out State_Maps.Map;
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

      ----------
      -- Head --
      ----------

      function Head (Index : Positive) return Positive is
      begin
         return List (Index).List (List (Index).Start).Head;
      end Head;

      --------------
      -- Make_DFA --
      --------------

      procedure Make_DFA
        (Graph : in out Matreshka.Internals.Graphs.Constructor.Graph;
         Start : out State;
         Edges : in out Vectors.Vector;
         Final : in out State_Maps.Map;
         First : Position_Set;
         Map   : Character_Set_Map)
      is
         use Matreshka.Internals.Graphs.Constructor;

         function New_Node (Set : Position_Set) return Node;
         --  Allocate new state/node, add it to Final if needed

         package Maps is new Ada.Containers.Ordered_Maps (Position_Set, Node);

         --------------
         -- New_Node --
         --------------

         function New_Node (Set : Position_Set) return Node is
            Result : constant Node := Graph.New_Node;
            Index  : Rule_Index;
         begin
            if Set (Finish_Position) /= (Finish_Position => False) then
               for J in Finish_Position loop
                  if Set (J) then
                     Index := Actions (Positive (J));
                     exit;
                  end if;
               end loop;

               Final.Insert (Result.Index, Index);
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
               List   : Vectors.Vector;
            begin
               Not_Marked.Delete_First;
               Marked.Insert (Set, Source);
               Split_To_Distinct_Sets (Set, Map, List);

               for J in List.First_Index .. List.Last_Index loop
                  declare
                     use type Ada.Containers.Count_Type;

                     Target : Node;
                     Cursor : Maps.Cursor;
                     Next   : constant Position_Set :=
                       Get_Follows (Set, Map, List.Element (J));
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
                           New_Item => List.Element (J));

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
         List : out Vectors.Vector) is
      begin
         for J in Set'Range loop
            if Set (J) then
               declare
                  use League.Character_Sets;
                  Rest : Universal_Character_Set := Map (J);
               begin
                  for K in List.First_Index .. List.Last_Index loop
                     declare
                        Item : constant Universal_Character_Set :=
                          List.Element (K);
                        Intersection : constant Universal_Character_Set :=
                          Item and Rest;
                     begin
                        if not Intersection.Is_Empty then
                           declare
                              Extra : constant Universal_Character_Set :=
                                Item - Rest;
                           begin
                              if not Extra.Is_Empty then
                                 List.Append (Extra);
                              end if;

                              Rest := Rest - Item;
                              List.Replace_Element (K, Intersection);
                           end;
                        end if;
                     end;
                  end loop;

                  if not Rest.Is_Empty then
                     List.Append (Rest);
                  end if;
               end;
            end if;
         end loop;
      end Split_To_Distinct_Sets;

      ----------
      -- Walk --
      ----------

      procedure Walk
        (AST   : Matreshka.Internals.Regexps.Shared_Pattern_Access;
         Root  : Positive;
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
                 (AST, Compiler.Get_Expression (AST, Root), Pos, First, Last);

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
                  Walk (AST,
                        Compiler.Get_Expression (AST, Root),
                        Pos,
                        Result_First,
                        Result_Last);

                  Add_To_Follow (Result_First, Result_Last);
                  First := First or Result_First;
                  Last := Last or Result_Last;
               end;

            when Matreshka.Internals.Regexps.N_Alternation =>
               Walk_List
                 (AST,
                  Compiler.Get_Preferred (AST, Root),
                  Pos,
                  First,
                  Last);

               Walk_List
                 (AST,
                  Compiler.Get_Fallback (AST, Root),
                  Pos,
                  First,
                  Last);
         end case;
      end Walk;

      ---------------
      -- Walk_List --
      ---------------

      procedure Walk_List
        (AST   : Matreshka.Internals.Regexps.Shared_Pattern_Access;
         Head  : Positive;
         Pos   : in out Position;
         First : in out Position_Set;
         Last  : in out Position_Set)
      is
         Next : Natural := Compiler.Get_Next_Sibling (AST, Head);
      begin
         if Next = 0 then
            Walk (AST, Head, Pos, First, Last);
         else
            declare
               Result_First : Position_Set := Empty;
               Result_Last  : Position_Set := Empty;
            begin
               Walk (AST, Head, Pos, First, Result_Last);
               Walk_List (AST, Next, Pos, Result_First, Last);
               Add_To_Follow (Result_First, Result_Last);

               if Nullable (AST, Head) then
                  First := First or Result_First;
               end if;

               if Nullable_List (AST, Next) then
                  Last := Last or Result_Last;
               end if;
            end;
         end if;
      end Walk_List;

      ----------------
      -- Walk_Array --
      ----------------

      procedure Walk_Array
        (List  : Shared_Pattern_Array;
         First : in out Position_Set)
      is
         Pos          : Position := List'Length + 1;
         Result_First : Position_Set;
         Result_Last  : Position_Set;
      begin
         for J in List'Range loop
            Check (List (J), Head (J));
            Result_First := Empty;
            Result_Last  := Empty;
            Walk_List
              (List (J),
               Head (J),
               Pos,
               First,
               Result_Last);
            --  Walk (Next, Pos, Result_First, Last);
            --  Fictive termination symbol:
            Result_First (Finish_Position (J)) := True;
            Add_To_Follow (Result_First, Result_Last);

            if Nullable_List (List (J), Head (J)) then
               First := First or Result_First;
            end if;
         end loop;
      end Walk_Array;

      First  : Position_Set := Empty;
      Last   : Position_Set := Empty;
      Result : State;
   begin
      Walk_Array (List, First);

      Make_DFA
        (Self.Graph,
         Result,
         Self.Edge_Char_Set,
         Self.Final,
         First,
         Chars);

      Self.Start.Insert (Start, Result);
   end Compile;

   --------------
   -- Complete --
   --------------

   procedure Complete
     (Input  : in out DFA_Constructor;
      Output : out DFA) is
   begin
      Output.Start := Input.Start;
      Input.Graph.Complete (Output => Output.Graph);
      Output.Edge_Char_Set := Input.Edge_Char_Set;
      Output.Final := Input.Final;
   end Complete;

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

   ------------------------------
   -- Count_Positions_In_Array --
   ------------------------------

   function Count_Positions_In_Array
     (List  : Shared_Pattern_Array)
     return Position
   is
      --  Terminate each regexp with fictive symbol
      Result : Position := Position (List'Length);
   begin
      for J in List'Range loop
         Result := Result + Count_Positions_In_List
           (List (J), List (J).List (List (J).Start).Head);
      end loop;

      return Result;
   end Count_Positions_In_Array;

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
   -- Minimize --
   --------------

   procedure Minimize (Self : in out DFA) is

      package Graphs renames Matreshka.Internals.Graphs;

      function Check_Equive_Class (X, Y : State) return Boolean;

      type State_Pair is array (1 .. 2) of State;

      use type Matreshka.Internals.Graphs.Edge_Identifier;

      package State_Pair_Maps is new Ada.Containers.Ordered_Maps
        (State_Pair, Matreshka.Internals.Graphs.Edge_Identifier);

      Last         : constant State := Self.Graph.Node_Count;
      Error_State  : constant State := Last + 1;

      type Equive_Array is array (1 .. Error_State) of State;
      Equive       : Equive_Array := (others => 1);
      Next_Equive  : Equive_Array := (others => 1);

      function Check_Equive_Class (X, Y : State) return Boolean is
         Node_X : constant Graphs.Node := Self.Graph.Get_Node (X);
         Node_Y : constant Graphs.Node := Self.Graph.Get_Node (Y);
      begin
         for I in Node_X.First_Edge_Index .. Node_X.Last_Edge_Index loop
            declare
               use type League.Character_Sets.Universal_Character_Set;

               Edge_X : constant Graphs.Edge := Self.Graph.Get_Edge (I);
               Jump_X : constant State := Edge_X.Target_Node.Index;
               Sym_X  : League.Character_Sets.Universal_Character_Set :=
                 Self.Edge_Char_Set.Element (Edge_X.Edge_Id);
            begin
               for J in Node_Y.First_Edge_Index .. Node_Y.Last_Edge_Index loop
                  declare
                     Edge_Y : constant Graphs.Edge := Self.Graph.Get_Edge (J);
                     Sym_Y  : League.Character_Sets.Universal_Character_Set :=
                       Self.Edge_Char_Set.Element (Edge_Y.Edge_Id);
                     Jump_Y : constant State := Edge_Y.Target_Node.Index;
                  begin
                     if not
                       League.Character_Sets.Is_Empty (Sym_X and Sym_Y)
                     then
                        if Equive (Jump_X) /= Equive (Jump_Y) then
                           return False;
                        else
                           Sym_X := Sym_X - Sym_Y;
                        end if;
                     end if;
                  end;
               end loop;

               if not Sym_X.Is_Empty
                 and Equive (Jump_X) /= Equive (Error_State)
               then
                  return False;
               end if;
            end;
         end loop;

         return True;
      end Check_Equive_Class;

      Current_Equive_Class : State'Base;
      Prev_Equive_Class    : State := 1;
      Found                : Boolean;

   begin
      Init_Equive_Classes :
         for J in 1 .. Last loop
            if Self.Final.Contains (J) then
               Equive (J) := State (Self.Final.Element (J) + 1);
               Prev_Equive_Class := State'Max (Prev_Equive_Class, Equive (J));
            end if;
         end loop Init_Equive_Classes;

      Try_Split_Equive_Classes :
         loop
            Current_Equive_Class := 0;

            Set_Equive_Classes :
               for I in 1 .. Last loop
                  Found := False;

                  Find_Existent_Class :
                     for J in 1 .. I - 1 loop
                        if Equive (I) = Equive (J)
                          and then
                          Self.Final.Contains (I) = Self.Final.Contains (J)
                        then
                           Found := Check_Equive_Class (I, J)
                             and then Check_Equive_Class (J, I);

                           if Found then
                              Next_Equive (I) := Next_Equive (J);
                              exit Find_Existent_Class;
                           end if;
                        end if;
                     end loop Find_Existent_Class;

                  if not Found then
                     Current_Equive_Class := Current_Equive_Class + 1;
                     Next_Equive (I) := Current_Equive_Class;
                  end if;
               end loop Set_Equive_Classes;

            Current_Equive_Class := Current_Equive_Class + 1;
            Next_Equive (Error_State) := Current_Equive_Class;

            exit Try_Split_Equive_Classes
              when Prev_Equive_Class = Current_Equive_Class;

            Prev_Equive_Class := Current_Equive_Class;
            Equive := Next_Equive;
         end loop Try_Split_Equive_Classes;

      --  Create_DFA

      declare
         procedure Each_Start (Cursor : Start_Maps.Cursor);

         use Matreshka.Internals.Graphs.Constructor;
         Result : Graph;
         Edges  : Vectors.Vector;
         Map    : State_Pair_Maps.Map;
         Final  : State_Maps.Map;
         Nodes  : array (1 .. Current_Equive_Class - 1) of Node;

         ----------------
         -- Each_Start --
         ----------------

         procedure Each_Start (Cursor : Start_Maps.Cursor) is
            Old : constant State := Start_Maps.Element (Cursor);
         begin
            Self.Start.Replace_Element
              (Cursor, Nodes (Equive (Old)).Index);
         end Each_Start;

      begin
         for K in Nodes'Range loop
            Nodes (K) := Result.New_Node;
         end loop;

         for I in 1 .. Last loop
            declare
               use type Ada.Containers.Count_Type;

               procedure Append_Chars
                 (X : in out League.Character_Sets.Universal_Character_Set);

               Edge_J : Graphs.Edge;

               ------------------
               -- Append_Chars --
               ------------------

               procedure Append_Chars
                 (X : in out League.Character_Sets.Universal_Character_Set)
               is
                  use type League.Character_Sets.Universal_Character_Set;
               begin
                  X := X or Self.Edge_Char_Set.Element (Edge_J.Edge_Id);
               end Append_Chars;

               Node_X : Graphs.Node := Self.Graph.Get_Node (I);
               Edge   : Graphs.Edge_Identifier;
               Pair   : State_Pair;
               Cursor : State_Pair_Maps.Cursor;
            begin
               for J in Node_X.First_Edge_Index .. Node_X.Last_Edge_Index loop
                  Edge_J := Self.Graph.Get_Edge (J);
                  Pair (1) := Equive (I);
                  Pair (2) := Equive (Edge_J.Target_Node.Index);
                  Cursor := Map.Find (Pair);

                  if State_Pair_Maps.Has_Element (Cursor) then
                     Edges.Update_Element
                       (State_Pair_Maps.Element (Cursor),
                        Append_Chars'Access);
                  else
                     Edge := Nodes (Pair (1)).New_Edge (Nodes (Pair (2)));
                     Map.Insert (Pair, Edge);
                     Edges.Set_Length (Edges.Length + 1);

                     Edges.Replace_Element
                       (Edge,
                        Self.Edge_Char_Set.Element (Edge_J.Edge_Id));
                  end if;
               end loop;

               if Self.Final.Contains (I) then
                  Final.Include
                    (Nodes (Equive (I)).Index,
                     Self.Final.Element (I));
               end if;
            end;
         end loop;

         Self.Start.Iterate (Each_Start'Access);
         Self.Graph.Clear;
         Result.Complete (Output => Self.Graph);
         Self.Edge_Char_Set := Edges;
         Self.Final := Final;
      end;
   end Minimize;

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
