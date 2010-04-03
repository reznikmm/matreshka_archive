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
with Matreshka.Internals.Regexps.Compiler.Parser;
with Matreshka.Internals.Regexps.Compiler.Semantic;

package body Matreshka.Internals.Regexps.Compiler is

   use Matreshka.Internals.Regexps.Compiler.Parser;
   use Matreshka.Internals.Regexps.Compiler.Semantic;

   procedure Add
    (Pattern : in out Shared_Pattern; Class : Positive; Member : Positive);

   ---------
   -- Add --
   ---------

   procedure Add
    (Pattern : in out Shared_Pattern;
     Class   : Positive;
     Member  : Positive) is
   begin
      if Pattern.AST (Class).Members = 0 then
         Pattern.AST (Class).Members := Member;

      else
         Attach (Pattern, Pattern.AST (Class).Members, Member);
      end if;
   end Add;

   ------------
   -- Attach --
   ------------

   procedure Attach
    (Pattern : in out Shared_Pattern;
     Head    : Positive;
     Node    : Positive)
   is
      J : Positive := Head;

   begin
      while Pattern.AST (J).Next /= 0 loop
         J := Pattern.AST (J).Next;
      end loop;

      Pattern.AST (J).Next := Node;
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
      Pattern.AST (Pattern.Last) :=
       (N_Alternation,
        0,
        Prefered,
        Alternative);

      return Pattern.Last;
   end Create_Alternative;

   -------------------------------
   -- Create_Anchor_End_Of_Line --
   -------------------------------

   function Create_Anchor_End_Of_Line
    (Pattern : not null Shared_Pattern_Access) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) := (N_Anchor, 0, False, True);

      return Pattern.Last;
   end Create_Anchor_End_Of_Line;

   ---------------------------------
   -- Create_Anchor_Start_Of_Line --
   ---------------------------------

   function Create_Anchor_Start_Of_Line
    (Pattern : not null Shared_Pattern_Access) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) := (N_Anchor, 0, True, False);

      return Pattern.Last;
   end Create_Anchor_Start_Of_Line;

   ----------------------------
   -- Create_Character_Class --
   ----------------------------

   function Create_Character_Class
    (Pattern : not null Shared_Pattern_Access) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) := (N_Character_Class, 0, False, 0);

      return Pattern.Last;
   end Create_Character_Class;

   ----------------------
   -- Create_Match_Any --
   ----------------------

   function Create_Match_Any
    (Pattern : not null Shared_Pattern_Access) return Positive is
   begin
      Pattern.Last := Pattern.Last + 1;
      Pattern.AST (Pattern.Last) := (N_Match_Any, 0);

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
      Pattern.AST (Pattern.Last) := (N_Match_Code, 0, Character);

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
       (N_Match_Property, 0, (Binary, Value), Negative);

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
       (N_Match_Property, 0, (General_Category, Value), Negative);

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
      Pattern.AST (Pattern.Last) := (N_Member_Code, 0, Character);
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
       (N_Member_Property, 0, (Binary, Value), Negative);
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
       (N_Member_Property, 0, (General_Category, Value), Negative);
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
      Pattern.AST (Pattern.Last) := (N_Member_Range, 0, Low, High);
      Add (Pattern.all, Class, Pattern.Last);
   end Create_Member_Range;

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
       (N_Multiplicity, 0, Expression, Greedy, Lower, Upper);

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
      Pattern.AST (Pattern.Last) :=
       (N_Subexpression, 0, Expression, Capture, 0);

      return Pattern.Last;
   end Create_Subexpression;

   -------------
   -- YYError --
   -------------

   procedure YYError
    (Self : not null access Compiler_State; Error : YY_Errors; Index : Natural) is
   begin
      if Self.YY_Error.Error = No_Error then
         Self.YY_Error := (Error, Index);
      end if;
   end YYError;

end Matreshka.Internals.Regexps.Compiler;
