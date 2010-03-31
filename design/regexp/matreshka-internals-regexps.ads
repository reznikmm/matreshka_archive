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
with Matreshka.Internals.Atomics.Counters;
with Matreshka.Internals.Strings;
with Matreshka.Internals.Unicode.Ucd;
with Matreshka.Internals.Utf16;

package Matreshka.Internals.Regexps is

   pragma Preelaborate;

   -------------
   -- Pattern --
   -------------

   --  Abstract Syntax Tree

   type Node_Kinds is
     (N_None,
      N_Subexpression,
      N_Match_Any,
      N_Match_Code,
      N_Match_Property,
      N_Member_Code,
      N_Member_Range,
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
                  Capture       : Boolean;
                  Index         : Natural;

               when N_Match_Any =>
                  null;

               when N_Match_Code | N_Member_Code =>
                  Code : Matreshka.Internals.Unicode.Code_Point;
		  --  Code point to match or code point as member of character
                  --  class.

               when N_Match_Property =>
                  Property : Matreshka.Internals.Unicode.Ucd.Boolean_Properties;
                  Negative : Boolean;

               when N_Member_Range =>
                  Low  : Matreshka.Internals.Unicode.Code_Point;
                  High : Matreshka.Internals.Unicode.Code_Point;
                  --  Range of code points as member of character class

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

   type AST_Array is array (Positive range <>) of Node;

   type Shared_Pattern (Size : Natural) is limited record
      Counter : aliased Matreshka.Internals.Atomics.Counters.Counter;
      --  Atomic reference counter.

      AST     : AST_Array (1 .. Size);
      Last    : Natural := 0;
      Start   : Positive;
   end record;

   type Shared_Pattern_Access is access all Shared_Pattern;

   Empty_Shared_Pattern : aliased Shared_Pattern (0);

   procedure Reference (Item : not null Shared_Pattern_Access);

   procedure Dereference (Item : in out Shared_Pattern_Access);

   -----------
   -- Match --
   -----------

   type Shared_String_Array is
     array (Natural range <>)
       of aliased Matreshka.Internals.Strings.Shared_String_Access;
   pragma Atomic_Components (Shared_String_Array);

   type Slice is record
      First_Position : Matreshka.Internals.Utf16.Utf16_String_Index;
      First_Index    : Positive;
      Next_Position  : Matreshka.Internals.Utf16.Utf16_String_Index;
      Next_Index     : Positive;
   end record;
   --  Slice represent slice in the source Shared_String. Next points to the
   --  first character after the slice.

   type Slice_Array is array (Natural range <>) of Slice;

   type Shared_Match (Groups : Natural) is limited record
      Counter   : aliased Matreshka.Internals.Atomics.Counters.Counter;
      --  Atomic reference counter.

      Is_Matched : Boolean := False;
      --  Flag is object contains match information or not.

      Source     : Matreshka.Internals.Strings.Shared_String_Access;
      --  Reference to source string.

      Number     : Natural;
      --  Number of actual subexpression captures.

      Slices     : Slice_Array (0 .. Groups);
      --  Slices of captured data.

      Captures   : Shared_String_Array (0 .. Groups);
      pragma Volatile (Captures);
      --  Actual captured data.
   end record;
   --  Shared match is a results of the match of the string to pattern. When
   --  shared object is constructed, only slices information is filled. Actual
   --  captures is constructed lazy on request.

   type Shared_Match_Access is access all Shared_Match;

   Empty_Shared_Match : aliased Shared_Match :=
    (Groups     => 0,
     Counter    => <>,
     Is_Matched => False,
     Source     => null,
     Number     => 0,
     Slices     => (others => (0, 1, 0, 1)),
     Captures   => (others => null));

   procedure Reference (Item : not null Shared_Match_Access);

   procedure Dereference (Item : in out Shared_Match_Access);

   function Capture
    (Item   : not null Shared_Match_Access;
     Number : Natural)
       return not null Matreshka.Internals.Strings.Shared_String_Access;

end Matreshka.Internals.Regexps;
