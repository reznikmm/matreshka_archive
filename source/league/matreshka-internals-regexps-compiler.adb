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
with Matreshka.Internals.Regexps.Compiler.Optimizer;
with Matreshka.Internals.Regexps.Compiler.Parser;
with Matreshka.Internals.Regexps.Compiler.Semantic;

package body Matreshka.Internals.Regexps.Compiler is

   use Matreshka.Internals.Regexps.Compiler.Optimizer;
   use Matreshka.Internals.Regexps.Compiler.Parser;
   use Matreshka.Internals.Regexps.Compiler.Semantic;

   procedure Append
    (Pattern : not null Shared_Pattern_Access;
     List    : Node_List_Index;
     Node    : Positive);

   function Create_Node_List
    (Pattern : not null Shared_Pattern_Access;
     Parent  : Positive) return Node_List_Index;

   procedure Add
    (Pattern : in out Shared_Pattern; Class : Positive; Member : Positive);

   procedure Set_Preferred
    (Pattern : not null Shared_Pattern_Access;
     Node    : Positive;
     To      : Positive);

   procedure Set_Fallback
    (Pattern : not null Shared_Pattern_Access;
     Node    : Positive;
     To      : Positive);

   procedure Set_Expression
    (Pattern : not null Shared_Pattern_Access;
     Node    : Positive;
     To      : Positive);

   ---------
   -- Add --
   ---------

   procedure Add
    (Pattern : in out Shared_Pattern;
     Class   : Positive;
     Member  : Positive) is
   begin
      if Pattern.AST (Class).Members = 0 then
         Pattern.Last_List := Pattern.Last_List + 1;
         Pattern.AST (Class).Members := Pattern.Last_List;
         Pattern.List (Pattern.Last_List) := (Class, Member, Member);
         Pattern.AST (Member).List := Pattern.Last_List;
         Pattern.AST (Member).Next := 0;

      else
         Attach
          (Pattern, Pattern.List (Pattern.AST (Class).Members).Head, Member);
      end if;
   end Add;

   ------------
   -- Append --
   ------------

   procedure Append
    (Pattern : not null Shared_Pattern_Access;
     List    : Node_List_Index;
     Node    : Positive)
   is
      pragma Assert (Pattern.AST (Node).List = 0);

      J : Natural := Pattern.List (List).Tail;

   begin
      if J = 0 then
         Pattern.List (List).Head := Node;
         Pattern.List (List).Tail := Node;
         Pattern.AST (Node).List := List;

      else
         Pattern.List (List).Tail := Node;
         Pattern.AST (J).Next := Node;
         Pattern.AST (Node).List := List;
         Pattern.AST (Node).Previous := J;
      end if;
   end Append;

   ------------
   -- Attach --
   ------------

   procedure Attach
    (Pattern : in out Shared_Pattern;
     Head    : Positive;
     Node    : Positive)
   is
      J : Positive;

   begin
      if Pattern.AST (Head).List = 0 then
         Pattern.Last_List := Pattern.Last_List + 1;
         Pattern.List (Pattern.Last_List) := (0, Head, Head);
         Pattern.AST (Head).List := Pattern.Last_List;
      end if;

      J := Pattern.List (Pattern.AST (Head).List).Tail;
      Pattern.List (Pattern.AST (Head).List).Tail := Node;
      Pattern.AST (J).Next := Node;
      Pattern.AST (Node).List := Pattern.AST (Head).List;
      Pattern.AST (Node).Previous := J;
   end Attach;

   -------------
   -- Compile --
   -------------

   function Compile
    (Expression : not null Matreshka.Internals.Strings.Shared_String_Access)
       return not null Shared_Pattern_Access
   is
      State : aliased Compiler_State;

   begin
      State.Data := Expression;

      return Pattern : constant not null Shared_Pattern_Access
        := YYParse (State'Access)
      do
         Analyze (Pattern);
         Optimize (Pattern);
      end return;
   end Compile;

   ------------------------
   -- Create_Alternative --
   ------------------------

   function Create_Alternative
    (Pattern     : not null Shared_Pattern_Access;
     Prefered    : Positive;
     Alternative : Positive) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) := (N_Alternation, 0, 0, 0, 0, 0);
      Set_Preferred (Pattern, Pattern.Last, Prefered);
      Set_Fallback (Pattern, Pattern.Last, Alternative);

      return Pattern.Last;
   end Create_Alternative;

   -------------------------------
   -- Create_Anchor_End_Of_Line --
   -------------------------------

   function Create_Anchor_End_Of_Line
    (Pattern : not null Shared_Pattern_Access) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) := (N_Anchor, 0, 0, 0, False, True);

      return Pattern.Last;
   end Create_Anchor_End_Of_Line;

   ---------------------------------
   -- Create_Anchor_Start_Of_Line --
   ---------------------------------

   function Create_Anchor_Start_Of_Line
    (Pattern : not null Shared_Pattern_Access) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) := (N_Anchor, 0, 0, 0, True, False);

      return Pattern.Last;
   end Create_Anchor_Start_Of_Line;

   ----------------------------
   -- Create_Character_Class --
   ----------------------------

   function Create_Character_Class
    (Pattern : not null Shared_Pattern_Access) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) := (N_Character_Class, 0, 0, 0, False, 0);

      return Pattern.Last;
   end Create_Character_Class;

   ----------------------
   -- Create_Match_Any --
   ----------------------

   function Create_Match_Any
    (Pattern : not null Shared_Pattern_Access) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) := (N_Match_Any, 0, 0, 0);

      return Pattern.Last;
   end Create_Match_Any;

   ----------------------------
   -- Create_Match_Character --
   ----------------------------

   function Create_Match_Character
    (Pattern   : not null Shared_Pattern_Access;
     Character : Matreshka.Internals.Unicode.Code_Point) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) := (N_Match_Code, 0, 0, 0, Character);

      return Pattern.Last;
   end Create_Match_Character;

   ---------------------------
   -- Create_Match_Property --
   ---------------------------

   function Create_Match_Property
    (Pattern  : not null Shared_Pattern_Access;
     Value    : Matreshka.Internals.Unicode.Ucd.Boolean_Properties;
     Negative : Boolean) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) :=
       (N_Match_Property, 0, 0, 0, (Binary, Value), Negative);

      return Pattern.Last;
   end Create_Match_Property;

   ---------------------------
   -- Create_Match_Property --
   ---------------------------

   function Create_Match_Property
    (Pattern  : not null Shared_Pattern_Access;
     Value    : General_Category_Flags;
     Negative : Boolean) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) :=
       (N_Match_Property, 0, 0, 0, (General_Category, Value), Negative);

      return Pattern.Last;
   end Create_Match_Property;

   -----------------------------
   -- Create_Member_Character --
   -----------------------------

   procedure Create_Member_Character
    (Pattern   : not null Shared_Pattern_Access;
     Class     : Positive;
     Character : Matreshka.Internals.Unicode.Code_Point) is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) := (N_Member_Code, 0, 0, 0, Character);
      Add (Pattern.all, Class, Pattern.Last);
   end Create_Member_Character;

   ----------------------------
   -- Create_Member_Property --
   ----------------------------

   procedure Create_Member_Property
    (Pattern  : not null Shared_Pattern_Access;
     Class    : Positive;
     Value    : Matreshka.Internals.Unicode.Ucd.Boolean_Properties;
     Negative : Boolean) is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) :=
       (N_Member_Property, 0, 0, 0, (Binary, Value), Negative);
      Add (Pattern.all, Class, Pattern.Last);
   end Create_Member_Property;

   ----------------------------
   -- Create_Member_Property --
   ----------------------------

   procedure Create_Member_Property
    (Pattern  : not null Shared_Pattern_Access;
     Class    : Positive;
     Value    : General_Category_Flags;
     Negative : Boolean) is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) :=
       (N_Member_Property, 0, 0, 0, (General_Category, Value), Negative);
      Add (Pattern.all, Class, Pattern.Last);
   end Create_Member_Property;

   -------------------------
   -- Create_Member_Range --
   -------------------------

   procedure Create_Member_Range
    (Pattern  : not null Shared_Pattern_Access;
     Class    : Positive;
     Low      : Matreshka.Internals.Unicode.Code_Point;
     High     : Matreshka.Internals.Unicode.Code_Point) is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) := (N_Member_Range, 0, 0, 0, Low, High);
      Add (Pattern.all, Class, Pattern.Last);
   end Create_Member_Range;

   ----------------------
   -- Create_Node_List --
   ----------------------

   function Create_Node_List
    (Pattern : not null Shared_Pattern_Access;
     Parent  : Positive) return Node_List_Index is
   begin
      Pattern.Last_List := Pattern.Last_List + 1;
      Pattern.List (Pattern.Last_List) := (Parent, 0, 0);

      return Pattern.Last_List;
   end Create_Node_List;

   -----------------------
   -- Create_Repetition --
   -----------------------

   function Create_Repetition
     (Pattern    : not null Shared_Pattern_Access;
      Expression : Positive;
      Lower      : Natural;
      Upper      : Natural;
      Greedy     : Boolean) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) :=
       (N_Multiplicity, 0, 0, 0, 0, Greedy, Lower, Upper);
      Set_Expression (Pattern, Pattern.Last, Expression);

      return Pattern.Last;
   end Create_Repetition;

   --------------------------
   -- Create_Subexpression --
   --------------------------

   function Create_Subexpression
     (Pattern    : not null Shared_Pattern_Access;
      Expression : Positive;
      Capture    : Boolean) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) := (N_Subexpression, 0, 0, 0, 0, Capture, 0);
      Set_Expression (Pattern, Pattern.Last, Expression);

      return Pattern.Last;
   end Create_Subexpression;

   --------------------
   -- Get_Expression --
   --------------------

   function Get_Expression
     (Pattern : not null Shared_Pattern_Access;
      Node    : Positive) return Natural is
   begin
      if Pattern.AST (Node).Kind = N_Multiplicity then
         return Pattern.List (Pattern.AST (Node).Item).Head;

      elsif Pattern.AST (Node).Kind = N_Subexpression then
         return Pattern.List (Pattern.AST (Node).Subexpression).Head;

      else
         raise Program_Error;
      end if;
   end Get_Expression;

   ------------------
   -- Get_Fallback --
   ------------------

   function Get_Fallback
     (Pattern : not null Shared_Pattern_Access;
      Node    : Positive) return Natural is
   begin
      return Pattern.List (Pattern.AST (Node).Fallback).Head;
   end Get_Fallback;

   ---------------------
   -- Get_Lower_Bound --
   ---------------------

   function Get_Lower_Bound
     (Pattern : not null Shared_Pattern_Access;
      Node    : Positive) return Natural is
   begin
      return Pattern.AST (Node).Lower;
   end Get_Lower_Bound;

   -----------------
   -- Get_Members --
   -----------------

   function Get_Members
     (Pattern : not null Shared_Pattern_Access;
      Node    : Positive) return Natural is
   begin
      return Pattern.List (Pattern.AST (Node).Members).Head;
   end Get_Members;

   ----------------------
   -- Get_Next_Sibling --
   ----------------------

   function Get_Next_Sibling
     (Pattern : not null Shared_Pattern_Access;
      Node    : Positive) return Natural is
   begin
      return Pattern.AST (Node).Next;
   end Get_Next_Sibling;

   -------------------
   -- Get_Preferred --
   -------------------

   function Get_Preferred
     (Pattern : not null Shared_Pattern_Access;
      Node    : Positive) return Natural is
   begin
      return Pattern.List (Pattern.AST (Node).Preferred).Head;
   end Get_Preferred;

   --------------------------
   -- Get_Previous_Sibling --
   --------------------------

   function Get_Previous_Sibling
     (Pattern : not null Shared_Pattern_Access;
      Node    : Positive) return Natural is
   begin
      return Pattern.AST (Node).Previous;
   end Get_Previous_Sibling;

   ---------------------
   -- Get_Upper_Bound --
   ---------------------

   function Get_Upper_Bound
     (Pattern : not null Shared_Pattern_Access;
      Node    : Positive) return Natural is
   begin
      return Pattern.AST (Node).Upper;
   end Get_Upper_Bound;

   --------------------
   -- Set_Expression --
   --------------------

   procedure Set_Expression
    (Pattern : not null Shared_Pattern_Access;
     Node    : Positive;
     To      : Positive) is
   begin
      if Pattern.AST (Node).Kind = N_Subexpression then
         if Pattern.AST (Node).Subexpression = 0 then
            if Pattern.AST (To).List = 0 then
               Pattern.AST (Node).Subexpression :=
                 Create_Node_List (Pattern, Node);
               Append (Pattern, Pattern.AST (Node).Subexpression, To);

            else
               Pattern.AST (Node).Subexpression := Pattern.AST (To).List;
            end if;

         else
            raise Program_Error;
         end if;

      elsif Pattern.AST (Node).Kind = N_Multiplicity then
         if Pattern.AST (Node).Item = 0 then
            if Pattern.AST (To).List = 0 then
               Pattern.AST (Node).Item := Create_Node_List (Pattern, Node);
               Append (Pattern, Pattern.AST (Node).Item, To);

            else
               Pattern.AST (Node).Item := Pattern.AST (To).List;
            end if;

         else
            raise Program_Error;
         end if;
      end if;
   end Set_Expression;

   ------------------
   -- Set_Fallback --
   ------------------

   procedure Set_Fallback
    (Pattern : not null Shared_Pattern_Access;
     Node    : Positive;
     To      : Positive) is
   begin
      if Pattern.AST (Node).Fallback = 0 then
         if Pattern.AST (To).List = 0 then
            Pattern.AST (Node).Fallback := Create_Node_List (Pattern, Node);
            Append (Pattern, Pattern.AST (Node).Fallback, To);

         else
            Pattern.AST (Node).Fallback := Pattern.AST (To).List;
         end if;

      else
         raise Program_Error;
      end if;
   end Set_Fallback;

   -------------------
   -- Set_Preferred --
   -------------------

   procedure Set_Preferred
    (Pattern : not null Shared_Pattern_Access;
     Node    : Positive;
     To      : Positive) is
   begin
      if Pattern.AST (Node).Preferred = 0 then
         if Pattern.AST (To).List = 0 then
            Pattern.AST (Node).Preferred := Create_Node_List (Pattern, Node);
            Append (Pattern, Pattern.AST (Node).Preferred, To);

         else
            Pattern.AST (Node).Preferred := Pattern.AST (To).List;
         end if;

      else
         raise Program_Error;
      end if;
   end Set_Preferred;

   -------------
   -- YYError --
   -------------

   procedure YYError
    (Self  : not null access Compiler_State;
     Error : YY_Errors;
     Index : Natural) is
   begin
      if Self.YY_Error.Error = No_Error then
         Self.YY_Error := (Error, Index);
      end if;
   end YYError;

end Matreshka.Internals.Regexps.Compiler;
