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
with Matreshka.Internals.Strings;
with Matreshka.Internals.Utf16;

package Matreshka.Internals.Regexps.Compiler is

--   pragma Preelaborate;

   type YY_Errors is
    (No_Error,
     Unexpected_End_Of_Literal,
     Unexpected_End_Of_Character_Class,
     Unexpected_Character_in_Multiplicity_Specifier,
     Unexpected_End_Of_Multiplicity_Specifier,
     Unescaped_Pattern_Syntax_Character,
     Expression_Syntax_Error);

   type YY_Error_Information is record
      Error : YY_Errors;
      Index : Natural;
   end record;

   type Kinds is (None, Match_Code_Point, Number, AST_Node);

   type YYSType (Kind : Kinds := None) is record
      case Kind is
         when None =>
            null;

         when Match_Code_Point =>
            Code : Wide_Wide_Character;

         when Number =>
            Value : Natural;

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
     Token_Subexpression_Begin,
     Token_Subexpression_End);

   --  Abstract Syntax Tree and Utilities

   type Node_Kinds is
     (N_None,
      N_Subexpression,
      N_Any_Code_Point,
      N_Code_Point,
      N_Code_Point_Range,
      N_Character_Class,
      N_Multiplicity,
      N_Alternation);

   type Node (Kind : Node_Kinds := N_None) is record
      case Kind is
         when N_None =>
            null;

         when others =>
            Next : Natural;
            --  Next node in the chain

            case Kind is
               when N_None =>
                  null;

               when N_Subexpression =>
                  Subexpression : Natural;
                  Index         : Natural;

               when N_Any_Code_Point =>
                  null;

               when N_Code_Point =>
                  Code : Wide_Wide_Character;
                  --  Code point to match

               when N_Code_Point_Range =>
                  Low  : Wide_Wide_Character;
                  High : Wide_Wide_Character;

               when N_Character_Class =>
                  Negated : Boolean;
                  Members : Natural;

               when N_Multiplicity =>
                  Item   : Natural;
                  --  Link to expression

                  Greedy : Boolean;
                  Lower  : Natural;
                  Upper  : Natural;

               when N_Alternation =>
                  First  : Natural;
                  Second : Natural;
            end case;
      end case;
   end record;

   --  Here is global state of the compiler. At the first stage of
   --  refactoring all global state variables must be moved to here.
   --  Later, they will be wrapped by record type to allow to have
   --  several compiler in the different threads at the same time.

   Data                : Matreshka.Internals.Strings.Shared_String_Access;
   YY_Start_State      : Integer := 1;
   YY_Current_Position : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
   YY_Error            : YY_Error_Information := (No_Error, 0);
   YYLVal              : YYSType; 
   YYVal               : YYSType; 
   AST                 : array (Positive range 1 .. 100) of Node;
   AST_Start           : Positive;
   AST_Last            : Natural := 0;

   procedure YYError (Error : YY_Errors; Index : Natural);
   --  Report error.

   procedure Attach (Head : Positive; Node : Positive);
   --  Attach Node to the list of nodes, started by Head.

   procedure Add (Class : Positive; Member : Positive);

   procedure Dump;

end Matreshka.Internals.Regexps.Compiler;
