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
--  This package provides abstraction for Unicode characters (code points).
--  Some operations in this package and its children packages depends from the
--  current or explicitly specified locale.
--
--  Universal_Character provides the gateway to Unicode Character Database.
------------------------------------------------------------------------------
private with Matreshka.Internals.Unicode;

package League.Characters is

   pragma Preelaborate;
   pragma Remote_Types;

   type Universal_Character is tagged private;
   pragma Preelaborable_Initialization (Universal_Character);

   function To_Wide_Wide_Character
    (Self : Universal_Character'Class) return Wide_Wide_Character;

   function To_Universal_Character
    (Self : Wide_Wide_Character) return Universal_Character;

   function Is_Valid (Self : Universal_Character'Class) return Boolean;
   --  Returns True when code point of the specified character is inside valid
   --  code point range and it is not a surrogate code point.

   function Is_Noncharacter_Code_Point
    (Self : Universal_Character'Class) return Boolean;
   --  Code points permanently reserved for internal use.

   function Is_ID_Start (Self : Universal_Character'Class) return Boolean;
   --  Returns True when character is start character of identifier:
   --
   --  "Character having the Unicode General_Category of uppercase letters
   --  (Lu), lowercase letters (Ll), titlecase letters (Lt), modifier letters
   --  (Lm), other letters (Lo), letter numbers (Nl), minus Pattern_Syntax and
   --  Pattern_White_Space code points, plus stability extensions. Note that
   --  “other letters” includes ideographs."

   function Is_ID_Continue (Self : Universal_Character'Class) return Boolean;
   --  Returns True when character is continue of identifier:
   --
   --  "All of the start character of identifier characters, plus characters
   --  having the Unicode General_Category of nonspacing marks (Mn), spacing
   --  combining marks (Mc), decimal number (Nd), connector punctuations (Pc),
   --  plus stability extensions, minus Pattern_Syntax and Pattern_White_Space
   --  code points."

   function Lowercase (Self : Universal_Character'Class) return Boolean;
   --  Returns True when character is lowercase letter.

   function Uppercase (Self : Universal_Character'Class) return Boolean;
   --  Returns True when character is uppercase letter.

   function Simple_Uppercase_Mapping
    (Self : Universal_Character'Class) return Universal_Character;
   --  Returns simple uppercase mapping for the specified character.

   function Simple_Lowercase_Mapping
    (Self : Universal_Character'Class) return Universal_Character;
   --  Returns simple lowercase mapping for the specified character.

   function Simple_Titlecase_Mapping
    (Self : Universal_Character'Class) return Universal_Character;
   --  Returns simple titlecase mapping for the specified character.

   overriding function "="
    (Left : Universal_Character; Right : Universal_Character) return Boolean;
   not overriding function "<"
    (Left : Universal_Character; Right : Universal_Character) return Boolean;
   not overriding function "<="
    (Left : Universal_Character; Right : Universal_Character) return Boolean;
   not overriding function ">"
    (Left : Universal_Character; Right : Universal_Character) return Boolean;
   not overriding function ">="
    (Left : Universal_Character; Right : Universal_Character) return Boolean;
   not overriding function "="
    (Left : Universal_Character; Right : Wide_Wide_Character) return Boolean;
   not overriding function "<"
    (Left : Universal_Character; Right : Wide_Wide_Character) return Boolean;
   not overriding function "<="
    (Left : Universal_Character; Right : Wide_Wide_Character) return Boolean;
   not overriding function ">"
    (Left : Universal_Character; Right : Wide_Wide_Character) return Boolean;
   not overriding function ">="
    (Left : Universal_Character; Right : Wide_Wide_Character) return Boolean;
   not overriding function "="
    (Left : Wide_Wide_Character; Right : Universal_Character) return Boolean;
   not overriding function "<"
    (Left : Wide_Wide_Character; Right : Universal_Character) return Boolean;
   not overriding function "<="
    (Left : Wide_Wide_Character; Right : Universal_Character) return Boolean;
   not overriding function ">"
    (Left : Wide_Wide_Character; Right : Universal_Character) return Boolean;
   not overriding function ">="
    (Left : Wide_Wide_Character; Right : Universal_Character) return Boolean;
   --  Subprograms to compare characters in code point order.

private

   Invalid : constant Matreshka.Internals.Unicode.Code_Unit_32
     := Matreshka.Internals.Unicode.Code_Unit_32'Last;
   --  Invalid code point to be used to represent uninitialized
   --  Universal_Character object.

   -------------------------
   -- Universal_Character --
   -------------------------

   type Universal_Character is tagged record
      Code : Matreshka.Internals.Unicode.Code_Unit_32 := Invalid;
   end record;

   pragma Inline ("<");
   pragma Inline ("<=");
   pragma Inline ("=");
   pragma Inline (">");
   pragma Inline (">=");
   pragma Inline (To_Wide_Wide_Character);

end League.Characters;
