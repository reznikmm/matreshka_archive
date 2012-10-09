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
-- Copyright © 2009-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This package containts type declarations for UTF-16 encoded strings and
--  useful subprograms.
--
--  For all subprogram those names starts from Unchecked_ all run time checks
--  are disabled; but to compensate this, assertions to check ranges and
--  validity of source data are added. So, developers can enable assertion
--  checks to simplify debugging of their code.
------------------------------------------------------------------------------
pragma Ada_2012;

with Matreshka.Internals.Unicode;

package Matreshka.Internals.Utf16 is

   pragma Pure;

   ---------------------
   -- Utf16_Code_Unit --
   ---------------------

   subtype Utf16_Code_Unit is Matreshka.Internals.Unicode.Code_Unit_16;

   subtype High_Surrogate_Utf16_Code_Unit is Utf16_Code_Unit
     range Matreshka.Internals.Unicode.High_Surrogate_First
             .. Matreshka.Internals.Unicode.High_Surrogate_Last;

   subtype Low_Surrogate_Utf16_Code_Unit is Utf16_Code_Unit
     range Matreshka.Internals.Unicode.Low_Surrogate_First
             .. Matreshka.Internals.Unicode.Low_Surrogate_Last;

   function Is_Less
    (Left : Utf16_Code_Unit; Right : Utf16_Code_Unit) return Boolean;
   pragma Inline (Is_Less);
   --  Compare two Utf16 code units with fixup for surrogate characters for
   --  less.

   function Is_Greater
    (Left : Utf16_Code_Unit; Right : Utf16_Code_Unit) return Boolean;
   pragma Inline (Is_Greater);
   --  Compare two Utf16 code units with fixup for surrogate characters for
   --  greater.

   function Compare_Order (Item : Utf16_Code_Unit) return Utf16_Code_Unit
     with Inline => True;
   --  Returns fixed value for compare code unit of UTF16 in UCS4 binary order.

   ------------------
   -- Utf16_String --
   ------------------

   type Utf16_String_Index is mod 2 ** 32;

   type Utf16_String is
     array (Utf16_String_Index range <>) of aliased Utf16_Code_Unit;
   for Utf16_String'Alignment use Standard'Maximum_Alignment;
   for Utf16_String'Component_Size use Utf16_Code_Unit'Size;
   pragma Pack (Utf16_String);
   --  Internal representation of UTF-16 encoded string. Type has aliased
   --  components to simplify interfacing with Windows API.

   type Unaligned_Utf16_String is
     array (Utf16_String_Index range <>) of aliased Utf16_Code_Unit;
   for Unaligned_Utf16_String'Alignment use Utf16_Code_Unit'Alignment;
   for Unaligned_Utf16_String'Component_Size use Utf16_Code_Unit'Size;
   pragma Pack (Unaligned_Utf16_String);
   --  Unaligned UTF-16 encoded string, intended to be used to interface with
   --  external libraries.

   function Unchecked_To_Code_Point
    (Item     : Utf16_String;
     Position : Utf16_String_Index)
       return Matreshka.Internals.Unicode.Code_Point;
   pragma Inline (Unchecked_To_Code_Point);
   --  Convert character or surrogate pair at the cpecified position in the
   --  the Unicode code point.

   procedure Unchecked_Next
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index;
     Code     : out Matreshka.Internals.Unicode.Code_Point);
   pragma Inline (Unchecked_Next);
   --  Convert character or surrogate pair at the specified position in the
   --  the Unicode code point and moves position to the next character.

   procedure Unchecked_Next
    (Item     : Unaligned_Utf16_String;
     Position : in out Utf16_String_Index;
     Code     : out Matreshka.Internals.Unicode.Code_Point);
   pragma Inline (Unchecked_Next);
   --  Convert character or surrogate pair at the specified position in the
   --  the Unicode code point and moves position to the next character.

   procedure Unchecked_Next
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index);
   pragma Inline (Unchecked_Next);
   --  Moves position to the next character.

   procedure Unchecked_Previous
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index;
     Code     : out Matreshka.Internals.Unicode.Code_Point);
   pragma Inline (Unchecked_Previous);
   --  Convert character or surrogate pair before the specified position in the
   --  the Unicode code point and moves position to the previous character.

   procedure Unchecked_Previous
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index);
   pragma Inline (Unchecked_Previous);
   --  Moves position to the previous character.

   procedure Unchecked_Store
    (Item     : in out Utf16_String;
     Position : in out Utf16_String_Index;
     Code     : Matreshka.Internals.Unicode.Code_Point);
   pragma Inline (Unchecked_Store);
   --  Store specified character at the specified position and move position to
   --  the next character.

   function Unchecked_Surrogate_Pair_To_Code_Point
    (High : Utf16_Code_Unit;
     Low  : Utf16_Code_Unit) return Matreshka.Internals.Unicode.Code_Point;
   pragma Inline (Unchecked_Surrogate_Pair_To_Code_Point);
   --  Converts surrogate pair into the code point.

   procedure Unchecked_Validate_Next
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index;
     Valid    : out Boolean);
   pragma Inline (Unchecked_Validate_Next);
   --  Validates next character or surrogate pair at the specified position.
   --  Sets Valid to True and moves Position if character of surrogate pair is
   --  valid; otherwise sets Valid to False and don't change Position.

   procedure Unchecked_Validate_Next
    (Item     : Unaligned_Utf16_String;
     Position : in out Utf16_String_Index;
     Code     : out Matreshka.Internals.Unicode.Code_Point;
     Valid    : out Boolean);
   pragma Inline (Unchecked_Validate_Next);
   --  Validates next character or surrogate pair at the specified position.
   --  Sets Valid to True, moves Position and sets Code to character's code
   --  if code unit or surrogate pair is valid; otherwise sets Valid to False
   --  and don't change Position.

end Matreshka.Internals.Utf16;
