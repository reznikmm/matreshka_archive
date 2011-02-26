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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.Regexps.Compiler.Parser.Tables;
with Matreshka.Internals.Regexps.Compiler.Scanner;

package body Matreshka.Internals.Regexps.Compiler.Parser is

   use Matreshka.Internals.Regexps.Compiler.Parser.Tables;
   use Matreshka.Internals.Regexps.Compiler.Scanner;
   use Matreshka.Internals.Unicode.Ucd;

   function Process_Alternation
     (Pattern       : not null Shared_Pattern_Access;
      Alternative_1 : Positive;
      Alternative_2 : Positive) return Positive;

   function Process_Multiplicity
     (Pattern    : not null Shared_Pattern_Access;
      Expression : Positive;
      Lower      : Natural;
      Upper      : Natural;
      Greedy     : Boolean) return Positive;

   function Process_Match_Any
     (Pattern : not null Shared_Pattern_Access) return Positive;

   function Process_Code_Point
     (Pattern   : not null Shared_Pattern_Access;
      Character : Wide_Wide_Character) return Positive;

   function Process_Negate_Character_Class
     (Pattern : not null Shared_Pattern_Access;
      Class   : Positive) return Positive;

   function Process_Character_Class_Range
     (Pattern : not null Shared_Pattern_Access;
      Class   : Positive;
      Low     : Wide_Wide_Character;
      High    : Wide_Wide_Character) return Positive;

   function Process_Character_Class_Code_Point
     (Pattern : not null Shared_Pattern_Access;
      Class   : Positive;
      Code    : Wide_Wide_Character) return Positive;

   function Process_New_Character_Class
     (Pattern : not null Shared_Pattern_Access) return Positive;

   function Process_Subexpression
     (Pattern    : not null Shared_Pattern_Access;
      Expression : Positive;
      Capture    : Boolean) return Positive;

   function Process_Binary_Property
     (Pattern  : not null Shared_Pattern_Access;
      Keyword  : Property_Specification_Keyword;
      Negative : Boolean) return Positive;

   function Process_Character_Class_Binary_Property
     (Pattern  : not null Shared_Pattern_Access;
      Class    : Positive;
      Keyword  : Property_Specification_Keyword;
      Negative : Boolean) return Positive;

   function Process_Start_Of_Line
     (Pattern : not null Shared_Pattern_Access) return Positive;

   function Process_End_Of_Line
     (Pattern : not null Shared_Pattern_Access) return Positive;

   procedure Process_Expression
     (Pattern    : not null Shared_Pattern_Access;
      Expression : Positive);

   Binary_To_Ucd : constant
     array (Property_Specification_Keyword range <>) of Boolean_Properties :=
      (ASCII_Hex_Digit              => ASCII_Hex_Digit,
       Alphabetic                   => Alphabetic,
       Bidi_Control                 => Bidi_Control,
--       Bidi_Mirrored                => Bidi_Mirrored,
       Composition_Exclusion        => Composition_Exclusion,
       Cased                        => Cased,
       Case_Ignorable               => Case_Ignorable,
       Changes_When_Lowercased      => Changes_When_Lowercased,
       Changes_When_Uppercased      => Changes_When_Uppercased,
       Changes_When_Titlecased      => Changes_When_Titlecased,
       Changes_When_Casefolded      => Changes_When_Casefolded,
       Changes_When_Casemapped      => Changes_When_Casemapped,
       Changes_When_NFKC_Casefolded => Changes_When_NFKC_Casefolded,
       Full_Composition_Exclusion   => Full_Composition_Exclusion,
       Dash                         => Dash,
       Deprecated                   => Deprecated,
       Default_Ignorable_Code_Point => Default_Ignorable_Code_Point,
       Diacritic                    => Diacritic,
       Extender                     => Extender,
       Grapheme_Base                => Grapheme_Base,
       Grapheme_Extend              => Grapheme_Extend,
       Grapheme_Link                => Grapheme_Link,
       Hex_Digit                    => Hex_Digit,
       Hyphen                       => Hyphen,
       ID_Continue                  => ID_Continue,
       Ideographic                  => Ideographic,
       ID_Start                     => ID_Start,
       IDS_Binary_Operator          => IDS_Binary_Operator,
       IDS_Trinary_Operator         => IDS_Trinary_Operator,
       Join_Control                 => Join_Control,
       Logical_Order_Exception      => Logical_Order_Exception,
       Lowercase                    => Lowercase,
       Math                         => Math,
       Noncharacter_Code_Point      => Noncharacter_Code_Point,
       Other_Alphabetic             => Other_Alphabetic,
       Other_Default_Ignorable_Code_Point =>
         Other_Default_Ignorable_Code_Point,
       Other_Grapheme_Extend        => Other_Grapheme_Extend,
       Other_ID_Continue            => Other_ID_Continue,
       Other_ID_Start               => Other_ID_Start,
       Other_Lowercase              => Other_Lowercase,
       Other_Math                   => Other_Math,
       Other_Uppercase              => Other_Uppercase,
       Pattern_Syntax               => Pattern_Syntax,
       Pattern_White_Space          => Pattern_White_Space,
       Quotation_Mark               => Quotation_Mark,
       Radical                      => Radical,
       Soft_Dotted                  => Soft_Dotted,
       STerm                        => STerm,
       Terminal_Punctuation         => Terminal_Punctuation,
       Unified_Ideograph            => Unified_Ideograph,
       Uppercase                    => Uppercase,
       Variation_Selector           => Variation_Selector,
       White_Space                  => White_Space,
       XID_Continue                 => XID_Continue,
       XID_Start                    => XID_Start,
       Expands_On_NFC               => Expands_On_NFC,
       Expands_On_NFD               => Expands_On_NFD,
       Expands_On_NFKC              => Expands_On_NFKC,
       Expands_On_NFKD              => Expands_On_NFKD);

   GC_To_Ucd : constant
     array (Property_Specification_Keyword range <>)
       of General_Category_Flags :=
        (Other                 =>
          (Control | Format | Unassigned | Private_Use | Surrogate => True,
           others => False),
         Control               => (Control => True, others => False),
         Format                => (Format => True, others => False),
         Unassigned            => (Unassigned => True, others => False),
         Private_Use           => (Private_Use => True, others => False),
         Surrogate             => (Surrogate => True, others => False),
         Letter                =>
          (Lowercase_Letter
             | Modifier_Letter
             | Other_Letter
             | Titlecase_Letter
             | Uppercase_Letter => True,
           others => False),
         Cased_Letter          =>
          (Lowercase_Letter | Titlecase_Letter | Uppercase_Letter => True,
           others => False),
         Lowercase_Letter      => (Lowercase_Letter => True, others => False),
         Modifier_Letter       => (Modifier_Letter => True, others => False),
         Other_Letter          => (Other_Letter => True, others => False),
         Titlecase_Letter      => (Titlecase_Letter => True, others => False),
         Uppercase_Letter      => (Uppercase_Letter => True, others => False),
         Mark                  =>
          (Spacing_Mark | Enclosing_Mark | Nonspacing_Mark => True,
           others => False),
         Spacing_Mark          => (Spacing_Mark => True, others => False),
         Enclosing_Mark        => (Enclosing_Mark => True, others => False),
         Nonspacing_Mark       => (Nonspacing_Mark => True, others => False),
         Number                =>
          (Decimal_Number | Letter_Number | Other_Number => True,
           others => False),
         Decimal_Number        => (Decimal_Number => True, others => False),
         Letter_Number         => (Letter_Number => True, others => False),
         Other_Number          => (Other_Number => True, others => False),
         Punctuation           =>
          (Connector_Punctuation
             | Dash_Punctuation
             | Close_Punctuation
             | Final_Punctuation
             | Initial_Punctuation
             | Other_Punctuation
             | Open_Punctuation => True,
           others => False),
         Connector_Punctuation =>
          (Connector_Punctuation => True, others => False),
         Dash_Punctuation      => (Dash_Punctuation => True, others => False),
         Close_Punctuation     => (Close_Punctuation => True, others => False),
         Final_Punctuation     => (Final_Punctuation => True, others => False),
         Initial_Punctuation   =>
          (Initial_Punctuation => True, others => False),
         Other_Punctuation     => (Other_Punctuation => True, others => False),
         Open_Punctuation      => (Open_Punctuation => True, others => False),
         Symbol                =>
          (Currency_Symbol
             | Modifier_Symbol
             | Math_Symbol
             | Other_Symbol => True,
           others => False),
         Currency_Symbol       => (Currency_Symbol => True, others => False),
         Modifier_Symbol       => (Modifier_Symbol => True, others => False),
         Math_Symbol           => (Math_Symbol => True, others => False),
         Other_Symbol          => (Other_Symbol => True, others => False),
         Separator             =>
          (Line_Separator | Paragraph_Separator | Space_Separator => True,
           others => False),
         Line_Separator        => (Line_Separator => True, others => False),
         Paragraph_Separator   =>
          (Paragraph_Separator => True, others => False),
         Space_Separator       => (Space_Separator => True, others => False));

   -------------------------
   -- Process_Alternation --
   -------------------------

   function Process_Alternation
     (Pattern       : not null Shared_Pattern_Access;
      Alternative_1 : Positive;
      Alternative_2 : Positive) return Positive is
   begin
      return Create_Alternative (Pattern, Alternative_1, Alternative_2);
   end Process_Alternation;

   -----------------------------
   -- Process_Binary_Property --
   -----------------------------

   function Process_Binary_Property
     (Pattern  : not null Shared_Pattern_Access;
      Keyword  : Property_Specification_Keyword;
      Negative : Boolean) return Positive is
   begin
      if Keyword in Binary_To_Ucd'Range then
         return
           Create_Match_Property (Pattern, Binary_To_Ucd (Keyword), Negative);

      elsif Keyword in GC_To_Ucd'Range then
         return Create_Match_Property (Pattern, GC_To_Ucd (Keyword), Negative);

      else
         raise Program_Error;
      end if;
   end Process_Binary_Property;

   ---------------------------------------------
   -- Process_Character_Class_Binary_Property --
   ---------------------------------------------

   function Process_Character_Class_Binary_Property
     (Pattern  : not null Shared_Pattern_Access;
      Class    : Positive;
      Keyword  : Property_Specification_Keyword;
      Negative : Boolean) return Positive is
   begin
      if Keyword in Binary_To_Ucd'Range then
         Create_Member_Property
          (Pattern, Class, Binary_To_Ucd (Keyword), Negative);

      elsif Keyword in GC_To_Ucd'Range then
         Create_Member_Property
          (Pattern, Class, GC_To_Ucd (Keyword), Negative);

      else
         raise Program_Error;
      end if;

      return Class;
   end Process_Character_Class_Binary_Property;

   ----------------------------------------
   -- Process_Character_Class_Code_Point --
   ----------------------------------------

   function Process_Character_Class_Code_Point
     (Pattern : not null Shared_Pattern_Access;
      Class   : Positive;
      Code    : Wide_Wide_Character) return Positive is
   begin
      Create_Member_Character (Pattern, Class, Wide_Wide_Character'Pos (Code));

      return Class;
   end Process_Character_Class_Code_Point;

   -----------------------------------
   -- Process_Character_Class_Range --
   -----------------------------------

   function Process_Character_Class_Range
     (Pattern : not null Shared_Pattern_Access;
      Class   : Positive;
      Low     : Wide_Wide_Character;
      High    : Wide_Wide_Character) return Positive is
   begin
      Create_Member_Range
       (Pattern,
        Class,
        Wide_Wide_Character'Pos (Low),
        Wide_Wide_Character'Pos (High));

      return Class;
   end Process_Character_Class_Range;

   ------------------------
   -- Process_Code_Point --
   ------------------------

   function Process_Code_Point
     (Pattern   : not null Shared_Pattern_Access;
      Character : Wide_Wide_Character) return Positive is
   begin
      return
        Create_Match_Character (Pattern, Wide_Wide_Character'Pos (Character));
   end Process_Code_Point;

   -------------------------
   -- Process_End_Of_Line --
   -------------------------

   function Process_End_Of_Line
     (Pattern : not null Shared_Pattern_Access) return Positive is
   begin
      return Create_Anchor_End_Of_Line (Pattern);
   end Process_End_Of_Line;

   ------------------------
   -- Process_Expression --
   ------------------------

   procedure Process_Expression
     (Pattern    : not null Shared_Pattern_Access;
      Expression : Positive) is
   begin
      if Pattern.AST (Expression).List = 0 then
         Pattern.Last_List := Pattern.Last_List + 1;
         Pattern.List (Pattern.Last_List) := (0, Expression, Expression);
         Pattern.Start := Pattern.Last_List;
         Pattern.AST (Expression).List := Pattern.Last_List;

      else
         Pattern.Start := Pattern.AST (Expression).List;
      end if;
   end Process_Expression;

   -----------------------
   -- Process_Match_Any --
   -----------------------

   function Process_Match_Any
     (Pattern : not null Shared_Pattern_Access) return Positive is
   begin
      return Create_Match_Any (Pattern);
   end Process_Match_Any;

   --------------------------
   -- Process_Multiplicity --
   --------------------------

   function Process_Multiplicity
     (Pattern    : not null Shared_Pattern_Access;
      Expression : Positive;
      Lower      : Natural;
      Upper      : Natural;
      Greedy     : Boolean) return Positive is
   begin
      return Create_Repetition (Pattern, Expression, Lower, Upper, Greedy);
   end Process_Multiplicity;

   ------------------------------------
   -- Process_Negate_Character_Class --
   ------------------------------------

   function Process_Negate_Character_Class
     (Pattern : not null Shared_Pattern_Access;
      Class   : Positive) return Positive is
   begin
      Pattern.AST (Class).Negated := True;

      return Class;
   end Process_Negate_Character_Class;

   ---------------------------------
   -- Process_New_Character_Class --
   ---------------------------------

   function Process_New_Character_Class
     (Pattern : not null Shared_Pattern_Access) return Positive is
   begin
      return Create_Character_Class (Pattern);
   end Process_New_Character_Class;

   ---------------------------
   -- Process_Start_Of_Line --
   ---------------------------

   function Process_Start_Of_Line
     (Pattern : not null Shared_Pattern_Access) return Positive is
   begin
      return Create_Anchor_Start_Of_Line (Pattern);
   end Process_Start_Of_Line;

   ---------------------------
   -- Process_Subexpression --
   ---------------------------

   function Process_Subexpression
     (Pattern    : not null Shared_Pattern_Access;
      Expression : Positive;
      Capture    : Boolean) return Positive is
   begin
      return Create_Subexpression (Pattern, Expression, Capture);
   end Process_Subexpression;

   -------------
   -- YYParse --
   -------------

   function YYParse
    (Self : not null access Compiler_State)
       return not null Shared_Pattern_Access
   is

      --  The size of the value and state stacks

      YY_Stack_Size : constant Natural := 300;

      package YY is
         --  Stack data used by the parser

         TOS          : Natural := 0;
         Value_Stack  : array (0 .. YY_Stack_Size) of YYSType;
         State_Stack  : array (0 .. YY_Stack_Size) of Integer;

         --  Current input symbol and action the parser is on

         Input_Symbol : Token;
         Look_Ahead   : Boolean := True;
      end YY;

      YYVal : YYSType renames Self.YYVal;

      YY_Action  : Integer;
      YY_Rule_Id : Integer;
      YY_Index   : Integer;
      Pattern    : Shared_Pattern_Access
        := new Shared_Pattern
                (Self.Data.Length, Node_List_Count (Self.Data.Length));

   begin
      YY.TOS := 0;
      --  Initialize by pushing state 0 and getting the first input symbol
      YY.State_Stack (YY.TOS) := 0;
      YY.Look_Ahead := True;

      loop
         YY_Index := YY_Shift_Reduce_Offset (YY.State_Stack (YY.TOS));

         if YY_Shift_Reduce_Matrix (YY_Index).T = YY_Default then
            YY_Action := YY_Shift_Reduce_Matrix (YY_Index).Act;

         else
            if YY.Look_Ahead then
               YY.Input_Symbol := YYLex (Self);
               YY.Look_Ahead   := False;
            end if;

            YY_Index := YY_Shift_Reduce_Offset (YY.State_Stack (YY.TOS));

            while YY_Shift_Reduce_Matrix (YY_Index).T
                    /= Token'Pos (YY.Input_Symbol)
              and then YY_Shift_Reduce_Matrix (YY_Index).T /= YY_Default
            loop
               YY_Index := YY_Index + 1;
            end loop;

            YY_Action := YY_Shift_Reduce_Matrix (YY_Index).Act;
         end if;

         if YY_Action >= YY_First_Shift_Entry then  --  SHIFT
            --  Enter new state

            YY.TOS := YY.TOS + 1;
            YY.State_Stack (YY.TOS) := YY_Action;
            YY.Value_Stack (YY.TOS) := Self.YYLVal;

            --  Advance lookahead

            YY.Look_Ahead := True;

         elsif YY_Action = YY_Error_Code then  --  ERROR
            Dereference (Pattern);

            raise Constraint_Error
              with "Syntax error: "
                & YY_Errors'Image (Self.YY_Error.Error)
                & " at"
                & Integer'Image (Self.YY_Error.Index);

         elsif YY_Action = YY_Accept_Code then
            --  Grammar is accepted

            return Pattern;

         else
            --  Reduce Action

            --  Convert action into a rule
            YY_Rule_Id  := -1 * YY_Action;

            --  Execute User Action

            case YY_Rule_Id is
               pragma Style_Checks ("M127");

            when 1 =>
            Process_Expression (Pattern, YY.Value_Stack (YY.TOS).Node);

            when 2 =>
            --  Alternation

            YYVal :=
             (AST_Node,
              Process_Alternation (Pattern, YY.Value_Stack (YY.TOS -  2).Node, YY.Value_Stack (YY.TOS).Node));

            when 3 =>
            YYVal := YY.Value_Stack (YY.TOS);

            when 4 =>
            Matreshka.Internals.Regexps.Compiler.Attach
             (Pattern.all, YY.Value_Stack (YY.TOS -  1).Node, YY.Value_Stack (YY.TOS).Node);
            YYVal := YY.Value_Stack (YY.TOS -  1);

            when 5 =>
            YYVal := YY.Value_Stack (YY.TOS);

            when 6 =>
            --  Optional, greedy

            YYVal := (AST_Node, Process_Multiplicity (Pattern, YY.Value_Stack (YY.TOS -  1).Node, 0, 1, True));

            when 7 =>
            --  Optional, lazy

            YYVal := (AST_Node, Process_Multiplicity (Pattern, YY.Value_Stack (YY.TOS -  1).Node, 0, 1, False));

            when 8 =>
            --  Zero or more, greedy

            YYVal := (AST_Node, Process_Multiplicity (Pattern, YY.Value_Stack (YY.TOS -  1).Node, 0, Natural'Last, True));

            when 9 =>
            --  Zero or more, lazy

            YYVal := (AST_Node, Process_Multiplicity (Pattern, YY.Value_Stack (YY.TOS -  1).Node, 0, Natural'Last, False));

            when 10 =>
            --  One or more, greedy

            YYVal := (AST_Node, Process_Multiplicity (Pattern, YY.Value_Stack (YY.TOS -  1).Node, 1, Natural'Last, True));

            when 11 =>
            --  One or more, lazy

            YYVal := (AST_Node, Process_Multiplicity (Pattern, YY.Value_Stack (YY.TOS -  1).Node, 1, Natural'Last, False));

            when 12 =>
            --  Multiplicity range, greedy

            YYVal :=
             (AST_Node,
              Process_Multiplicity
               (Pattern,
                YY.Value_Stack (YY.TOS -  5).Node,
                YY.Value_Stack (YY.TOS -  3).Value,
                YY.Value_Stack (YY.TOS -  1).Value,
                True));

            when 13 =>
            --  Multiplicity range, lazy

            YYVal :=
             (AST_Node,
              Process_Multiplicity
               (Pattern,
                YY.Value_Stack (YY.TOS -  5).Node,
                YY.Value_Stack (YY.TOS -  3).Value,
                YY.Value_Stack (YY.TOS -  1).Value,
                False));

            when 14 =>
            --  Multiplicity zero .. upper, greedy

            YYVal :=
             (AST_Node,
              Process_Multiplicity
               (Pattern,
                YY.Value_Stack (YY.TOS -  4).Node,
                0,
                YY.Value_Stack (YY.TOS -  1).Value,
                True));

            when 15 =>
            --  Multiplicity zero .. upper, lazy

            YYVal :=
             (AST_Node,
              Process_Multiplicity
               (Pattern,
                YY.Value_Stack (YY.TOS -  4).Node,
                0,
                YY.Value_Stack (YY.TOS -  1).Value,
                False));

            when 16 =>
            --  Multiplicity lower .. infinity, greedy

            YYVal :=
             (AST_Node,
              Process_Multiplicity
               (Pattern,
                YY.Value_Stack (YY.TOS -  4).Node,
                YY.Value_Stack (YY.TOS -  2).Value,
                Integer'Last,
                True));

            when 17 =>
            --  Multiplicity lower .. infinity, lazy

            YYVal :=
             (AST_Node,
              Process_Multiplicity
               (Pattern,
                YY.Value_Stack (YY.TOS -  4).Node,
                YY.Value_Stack (YY.TOS -  2).Value,
                Integer'Last,
                False));

            when 18 =>
            --  Multiplicity, greedy

            YYVal :=
             (AST_Node,
              Process_Multiplicity
               (Pattern,
                YY.Value_Stack (YY.TOS -  3).Node,
                YY.Value_Stack (YY.TOS -  1).Value,
                YY.Value_Stack (YY.TOS -  1).Value,
                True));

            when 19 =>
            --  Multiplicity, lazy

            YYVal :=
             (AST_Node,
              Process_Multiplicity
               (Pattern,
                YY.Value_Stack (YY.TOS -  3).Node,
                YY.Value_Stack (YY.TOS -  1).Value,
                YY.Value_Stack (YY.TOS -  1).Value,
                False));

            when 20 =>
            YYVal := (AST_Node, Process_Subexpression (Pattern, YY.Value_Stack (YY.TOS -  1).Node, True));

            when 21 =>
            YYVal := (AST_Node, Process_Subexpression (Pattern, YY.Value_Stack (YY.TOS -  1).Node, False));

            when 22 =>
            --  Any code point

            YYVal := (AST_Node, Process_Match_Any (Pattern));

            when 23 =>
            --  Code point

            YYVal := (AST_Node, Process_Code_Point (Pattern, YY.Value_Stack (YY.TOS).Code));

            when 24 =>
            --  Character with binary property

            YYVal := (AST_Node, Process_Binary_Property (Pattern, YY.Value_Stack (YY.TOS -  1).Keyword, False));

            when 25 =>
            --  Character with binary property, negative

            YYVal := (AST_Node, Process_Binary_Property (Pattern, YY.Value_Stack (YY.TOS -  1).Keyword, True));

            when 26 =>
            --  Character class

            YYVal := YY.Value_Stack (YY.TOS);

            when 27 =>
            --  Start of line anchor

            YYVal := (AST_Node, Process_Start_Of_Line (Pattern));

            when 28 =>
            --  End of line anchor

            YYVal := (AST_Node, Process_End_Of_Line (Pattern));

            when 29 =>
            YYVal := YY.Value_Stack (YY.TOS -  1);

            when 30 =>
            YYVal := (AST_Node, Process_Negate_Character_Class (Pattern, YY.Value_Stack (YY.TOS -  1).Node));

            when 31 =>
            --  Add range of code points to character class

            YYVal :=
             (AST_Node,
              Process_Character_Class_Range
               (Pattern, YY.Value_Stack (YY.TOS -  3).Node, YY.Value_Stack (YY.TOS -  2).Code, YY.Value_Stack (YY.TOS).Code));

            when 32 =>
            --  Add code point to character class

            YYVal :=
             (AST_Node,
              Process_Character_Class_Code_Point
               (Pattern, YY.Value_Stack (YY.TOS -  1).Node, YY.Value_Stack (YY.TOS).Code));

            when 33 =>
            --  Character with binary property

            YYVal :=
             (AST_Node,
              Process_Character_Class_Binary_Property
               (Pattern, YY.Value_Stack (YY.TOS -  3).Node, YY.Value_Stack (YY.TOS -  1).Keyword, False));

            when 34 =>
            --  Character with binary property, negative

            YYVal :=
             (AST_Node,
              Process_Character_Class_Binary_Property
               (Pattern, YY.Value_Stack (YY.TOS -  3).Node, YY.Value_Stack (YY.TOS -  1).Keyword, True));

            when 35 =>
            --  Initialize new character class node

            YYVal := (AST_Node, Process_New_Character_Class (Pattern));
               pragma Style_Checks ("M79");

               when others =>
                  Dereference (Pattern);

                  raise Program_Error;
            end case;

            --  Pop RHS states and goto next state

            YY.TOS := YY.TOS - YY_Rule_Length (YY_Rule_Id) + 1;

            YY_Index := YY_Goto_Offset (YY.State_Stack (YY.TOS - 1));

            while YY_Goto_Matrix (YY_Index).Nonterm
                    /= YY_Get_LHS_Rule (YY_Rule_Id)
            loop
               YY_Index := YY_Index + 1;
            end loop;

            YY.State_Stack (YY.TOS) := YY_Goto_Matrix (YY_Index).Newstate;
            YY.Value_Stack (YY.TOS) := YYVal;
         end if;
      end loop;
   end YYParse;

end Matreshka.Internals.Regexps.Compiler.Parser;
