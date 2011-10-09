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
with Matreshka.Atomics.Counters;
with Matreshka.Internals.Strings;
with Matreshka.Internals.Unicode.Ucd;
with Matreshka.Internals.Utf16;

package Matreshka.Internals.Regexps is

   pragma Preelaborate;

   -------------
   -- Pattern --
   -------------

   --  Abstract Syntax Tree

   type General_Category_Flags is
     array (Matreshka.Internals.Unicode.Ucd.General_Category) of Boolean;
   pragma Pack (General_Category_Flags);

   type Property_Kinds is (None, General_Category, Binary);

   type Property_Value (Kind : Property_Kinds := None) is record
      case Kind is
         when None =>
            null;

         when General_Category =>
            GC_Flags : General_Category_Flags;

         when Binary =>
            Property : Matreshka.Internals.Unicode.Ucd.Boolean_Properties;
      end case;
   end record;

   type Node_List is record
      Parent : Natural;
      Head   : Natural;
      Tail   : Natural;
   end record;

   type Node_List_Count is new Natural;
   subtype Node_List_Index is Node_List_Count range 1 .. Node_List_Count'Last;

   type Node_Kinds is
     (N_None,
      N_Subexpression,
      N_Match_Any,
      N_Match_Code,
      N_Match_Property,
      N_Member_Code,
      N_Member_Range,
      N_Member_Property,
      N_Character_Class,
      N_Multiplicity,
      N_Alternation,
      N_Anchor);

   type Node (Kind : Node_Kinds := N_None) is record
      case Kind is
         when N_None =>
            null;

         when others =>
            List     : Node_List_Count;
            Previous : Natural;
            Next     : Natural;
            --  Doubly linked list of nodes.

            case Kind is
               when N_None =>
                  null;

               when N_Subexpression =>
                  Subexpression : Node_List_Count;
                  Capture       : Boolean;
                  Index         : Natural;

               when N_Match_Any =>
                  null;

               when N_Match_Code | N_Member_Code =>
                  Code : Matreshka.Internals.Unicode.Code_Point;
                  --  Code point to match or code point as member of character
                  --  class.

               when N_Match_Property | N_Member_Property =>
                  Value    : Property_Value;
                  Negative : Boolean;

               when N_Member_Range =>
                  Low  : Matreshka.Internals.Unicode.Code_Point;
                  High : Matreshka.Internals.Unicode.Code_Point;
                  --  Range of code points as member of character class

               when N_Character_Class =>
                  Negated : Boolean;
                  Members : Node_List_Count;

               when N_Multiplicity =>
                  Item   : Node_List_Count;
                  --  Link to expression

                  Greedy : Boolean;
                  Lower  : Natural;
                  Upper  : Natural;

               when N_Alternation =>
                  Preferred : Node_List_Count;
                  Fallback  : Node_List_Count;

               when N_Anchor =>
                  Start_Of_Line : Boolean;
                  End_Of_Line   : Boolean;
            end case;
      end case;
   end record;

   type AST_Array is array (Positive range <>) of Node;
   type Node_List_Array is array (Node_List_Index range <>) of Node_List;

   type Shared_Pattern (Size : Natural; List_Size : Node_List_Count) is limited
   record
      Counter   : Matreshka.Atomics.Counters.Counter;
      --  Atomic reference counter.

      AST       : AST_Array (1 .. Size);
      List      : Node_List_Array (1 .. List_Size);
      Last      : Natural := 0;
      Last_List : Node_List_Count := 0;
      Start     : Node_List_Count := 0;
      Captures  : Natural := 0;
   end record;

   type Shared_Pattern_Access is access all Shared_Pattern;

   Empty_Shared_Pattern : aliased Shared_Pattern (0, 0);

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
      Counter   : Matreshka.Atomics.Counters.Counter;
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
