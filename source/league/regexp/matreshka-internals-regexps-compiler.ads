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

package Matreshka.Internals.Regexps.Compiler is

   pragma Preelaborate;

   type YY_Errors is
    (No_Error,
     Unexpected_End_Of_Literal,
     Unexpected_End_Of_Character_Class,
     Unexpected_Character_in_Multiplicity_Specifier,
     Unexpected_End_Of_Multiplicity_Specifier,
     Unexpected_End_Of_Property_Specification,
     Unrecognized_Character_In_Property_Specification,
     Unescaped_Pattern_Syntax_Character,
     Expression_Syntax_Error);

   type YY_Error_Information is record
      Error : YY_Errors;
      Index : Natural;
   end record;

   type Property_Specification_Keyword is
    (ASCII_Hex_Digit,                 --  Names of binary properties
     Alphabetic,
     Bidi_Control,
--     Bidi_Mirrored,
     Composition_Exclusion,
     Full_Composition_Exclusion,
     Dash,
     Deprecated,
     Default_Ignorable_Code_Point,
     Diacritic,
     Extender,
     Grapheme_Base,
     Grapheme_Extend,
     Grapheme_Link,
     Hex_Digit,
     Hyphen,
     ID_Continue,
     Ideographic,
     ID_Start,
     IDS_Binary_Operator,
     IDS_Trinary_Operator,
     Join_Control,
     Logical_Order_Exception,
     Lowercase,
     Math,
     Noncharacter_Code_Point,
     Other_Alphabetic,
     Other_Default_Ignorable_Code_Point,
     Other_Grapheme_Extend,
     Other_ID_Continue,
     Other_ID_Start,
     Other_Lowercase,
     Other_Math,
     Other_Uppercase,
     Pattern_Syntax,
     Pattern_White_Space,
     Quotation_Mark,
     Radical,
     Soft_Dotted,
     STerm,
     Terminal_Punctuation,
     Unified_Ideograph,
     Uppercase,
     Variation_Selector,
     White_Space,
     XID_Continue,
     XID_Start,
     Expands_On_NFC,
     Expands_On_NFD,
     Expands_On_NFKC,
     Expands_On_NFKD,

     Other,                --  Values of the General Category
     Control,
     Format,
     Unassigned,
     Private_Use,
     Surrogate,
     Letter,
     Cased_Letter,
     Lowercase_Letter,
     Modifier_Letter,
     Other_Letter,
     Titlecase_Letter,
     Uppercase_Letter,
     Mark,
     Spacing_Mark,
     Enclosing_Mark,
     Nonspacing_Mark,
     Number,
     Decimal_Number,
     Letter_Number,
     Other_Number,
     Punctuation,
     Connector_Punctuation,
     Dash_Punctuation,
     Close_Punctuation,
     Final_Punctuation,
     Initial_Punctuation,
     Other_Punctuation,
     Open_Punctuation,
     Symbol,
     Currency_Symbol,
     Modifier_Symbol,
     Math_Symbol,
     Other_Symbol,
     Separator,
     Line_Separator,
     Paragraph_Separator,
     Space_Separator);

   type Kinds is
    (None,
     Match_Code_Point,
     Number,
     Property_Keyword,
     AST_Node);

   type YYSType (Kind : Kinds := None) is record
      case Kind is
         when None =>
            null;

         when Match_Code_Point =>
            Code : Wide_Wide_Character;

         when Number =>
            Value : Natural;

         when Property_Keyword =>
            Keyword : Property_Specification_Keyword;

         when AST_Node =>
            Node : Positive;
      end case;
   end record;

   type Token is
    (End_Of_Input,
     Error,
     Token_Code_Point,
     Token_Any_Code_Point,
     Token_Alternation,
     Token_Optional_Greedy,
     Token_Optional_Lazy,
     Token_Zero_Or_More_Greedy,
     Token_Zero_Or_More_Lazy,
     Token_One_Or_More_Greedy,
     Token_One_Or_More_Lazy,
     Token_Character_Class_Begin,
     Token_Character_Class_End,
     Token_Negate_Character_Class,
     Token_Character_Class_Range,
     Token_Multiplicity_Begin,
     Token_Multiplicity_End_Greedy,
     Token_Multiplicity_End_Lazy,
     Token_Multiplicity_Comma,
     Token_Multiplicity_Number,
     Token_Subexpression_Capture_Begin,
     Token_Subexpression_Begin,
     Token_Subexpression_End,
     Token_Property_Begin_Positive,
     Token_Property_Begin_Negative,
     Token_Property_End,
     Token_Property_Keyword,
     Token_Start_Of_Line,
     Token_End_Of_Line);

   --  Here is global state of the compiler. At the first stage of
   --  refactoring all global state variables must be moved to here.
   --  Later, they will be wrapped by record type to allow to have
   --  several compiler in the different threads at the same time.

   type Compiler_State is record
      Data                 : Matreshka.Internals.Strings.Shared_String_Access;
      YY_Start_State       : Integer := 1;
      YY_Current_Position  : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      YY_Current_Index     : Positive := 1;
      YY_Error             : YY_Error_Information := (No_Error, 0);
      YYLVal               : YYSType;
      YYVal                : YYSType;
      Character_Class_Mode : Boolean := False;
      --  Recognition of the Unicode property specification is done in the
      --  separate scanner's mode; this variable is used to switch back to
      --  original mode.
   end record;

   procedure YYError
    (Self : not null access Compiler_State; Error : YY_Errors; Index : Natural);
   --  Report error.

   procedure Attach
    (Pattern : in out Shared_Pattern; Head : Positive; Node : Positive);
   --  Attach Node to the list of nodes, started by Head.

   function Compile
    (Expression : not null Matreshka.Internals.Strings.Shared_String_Access)
       return not null Shared_Pattern_Access;

   function Create_Alternative
    (Pattern     : not null Shared_Pattern_Access;
     Prefered    : Positive;
     Alternative : Positive) return Positive;
   pragma Inline (Create_Alternative);

   function Create_Anchor_End_Of_Line
    (Pattern : not null Shared_Pattern_Access) return Positive;
   pragma Inline (Create_Anchor_End_Of_Line);

   function Create_Anchor_Start_Of_Line
    (Pattern : not null Shared_Pattern_Access) return Positive;
   pragma Inline (Create_Anchor_Start_Of_Line);

   function Create_Character_Class
    (Pattern : not null Shared_Pattern_Access) return Positive;
   pragma Inline (Create_Character_Class);

   function Create_Match_Any
    (Pattern : not null Shared_Pattern_Access) return Positive;
   pragma Inline (Create_Match_Any);

   function Create_Match_Character
    (Pattern   : not null Shared_Pattern_Access;
     Character : Matreshka.Internals.Unicode.Code_Point) return Positive;
   pragma Inline (Create_Match_Character);

   function Create_Match_Property
    (Pattern  : not null Shared_Pattern_Access;
     Value    : Matreshka.Internals.Unicode.Ucd.Boolean_Properties;
     Negative : Boolean) return Positive;
   pragma Inline (Create_Match_Property);

   function Create_Match_Property
    (Pattern  : not null Shared_Pattern_Access;
     Value    : General_Category_Flags;
     Negative : Boolean) return Positive;
   pragma Inline (Create_Match_Property);

   procedure Create_Member_Character
    (Pattern   : not null Shared_Pattern_Access;
     Class     : Positive;
     Character : Matreshka.Internals.Unicode.Code_Point);
   pragma Inline (Create_Member_Character);

   procedure Create_Member_Property
    (Pattern  : not null Shared_Pattern_Access;
     Class    : Positive;
     Value    : Matreshka.Internals.Unicode.Ucd.Boolean_Properties;
     Negative : Boolean);
   pragma Inline (Create_Member_Property);

   procedure  Create_Member_Property
    (Pattern  : not null Shared_Pattern_Access;
     Class    : Positive;
     Value    : General_Category_Flags;
     Negative : Boolean);
   pragma Inline (Create_Member_Property);

   procedure Create_Member_Range
    (Pattern  : not null Shared_Pattern_Access;
     Class    : Positive;
     Low      : Matreshka.Internals.Unicode.Code_Point;
     High     : Matreshka.Internals.Unicode.Code_Point);
   pragma Inline (Create_Member_Range);

   function Create_Repetition
     (Pattern    : not null Shared_Pattern_Access;
      Expression : Positive;
      Lower      : Natural;
      Upper      : Natural;
      Greedy     : Boolean) return Positive;
   pragma Inline (Create_Repetition);

   function Create_Subexpression
     (Pattern    : not null Shared_Pattern_Access;
      Expression : Positive;
      Capture    : Boolean) return Positive;
   pragma Inline (Create_Subexpression);

   function Get_Preferred
     (Pattern : not null Shared_Pattern_Access;
      Node    : Positive) return Natural;
   pragma Inline (Get_Preferred);

   function Get_Fallback
     (Pattern : not null Shared_Pattern_Access;
      Node    : Positive) return Natural;
   pragma Inline (Get_Fallback);

   function Get_Members
     (Pattern : not null Shared_Pattern_Access;
      Node    : Positive) return Natural;
   pragma Inline (Get_Members);

   function Get_Expression
     (Pattern : not null Shared_Pattern_Access;
      Node    : Positive) return Natural;
   pragma Inline (Get_Expression);

end Matreshka.Internals.Regexps.Compiler;
