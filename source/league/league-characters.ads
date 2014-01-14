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
-- Copyright © 2010-2014, Vadim Godunko <vgodunko@gmail.com>                --
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

   type General_Category_Values is
    (Uppercase_Letter,
     Lowercase_Letter,
     Titlecase_Letter,
     Modifier_Letter,
     Other_Letter,
     Nonspacing_Mark,
     Spacing_Mark,
     Enclosing_Mark,
     Decimal_Number,
     Letter_Number,
     Other_Number,
     Connector_Punctuation,
     Dash_Punctuation,
     Open_Punctuation,
     Close_Punctuation,
     Initial_Punctuation,
     Final_Punctuation,
     Other_Punctuation,
     Math_Symbol,
     Currency_Symbol,
     Modifier_Symbol,
     Other_Symbol,
     Space_Separator,
     Line_Separator,
     Paragraph_Separator,
     Control,
     Format,
     Surrogate,
     Private_Use,
     Unassigned);

--   subtype Cased_Letter is General_Category_Values
--     range Uppercase_Letter .. Titlecase_Letter;
--
--   subtype Letter is General_Category_Values
--     range Uppercase_Letter .. Other_Letter;
--
--   subtype Mark is General_Category_Values
--     range Nonspacing_Mark .. Enclosing_Mark;
--
--   subtype Number is General_Category_Values
--     range Decimal_Number .. Other_Number;
--
--   subtype Punctuation is General_Category_Values
--     range Connector_Punctuation .. Other_Punctuation;
--
--   subtype Symbol is General_Category_Values
--     range Math_Symbol .. Other_Symbol;
--
--   subtype Separator is General_Category_Values
--     range Space_Separator .. Paragraph_Separator;
--
--   subtype Other is General_Category_Values
--     range Control .. Unassigned;

   type Universal_Character is tagged private;
   pragma Preelaborable_Initialization (Universal_Character);

   function To_Wide_Wide_Character
    (Self : Universal_Character'Class) return Wide_Wide_Character;

   function To_Universal_Character
    (Self : Wide_Wide_Character) return Universal_Character;

   function Is_Valid (Self : Universal_Character'Class) return Boolean;
   --  Returns True when code point of the specified character is inside valid
   --  code point range and it is not a surrogate code point.

   function General_Category
    (Self : Universal_Character'Class) return General_Category_Values;
   --  Returns general category of the specified character.

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

   function Is_White_Space (Self : Universal_Character'Class) return Boolean;
   --  Returns True when character is white space:
   --
   --  "Spaces, separator characters and other control characters which should
   --  be treated by programming languages as "white space" for the purpose of
   --  parsing elements. See also Line_Break, Grapheme_Cluster_Break,
   --  Sentence_Break, and Word_Break, which classify space characters and
   --  related controls somewhat differently for particular text segmentation
   --  contexts."

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

   function Simple_Casefold_Mapping
    (Self : Universal_Character'Class) return Universal_Character;
   --  Returns simple casefold mapping for the specified character.

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
