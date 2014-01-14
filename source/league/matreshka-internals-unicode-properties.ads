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
pragma Ada_2012;

with League.Characters;

package Matreshka.Internals.Unicode.Properties is

   pragma Preelaborate;

   function General_Category
    (Code : Code_Point)
       return League.Characters.General_Category_Values;
   pragma Inline (General_Category);

   function Is_Unified_Ideograph (Code : Code_Point) return Boolean;
   pragma Inline (Is_Unified_Ideograph);
   --  Code points with Unified_Ideograph property.

   function Is_Noncharacter_Code_Point (Code : Code_Point) return Boolean;
   pragma Inline (Is_Noncharacter_Code_Point);
   --  Code points permanently reserved for internal use.

   function Is_ID_Start (Code : Code_Point) return Boolean;
   pragma Inline (Is_ID_Start);
   --  Code points which can start identifier.

   function Is_ID_Continue (Code : Code_Point) return Boolean;
   pragma Inline (Is_ID_Continue);
   --  Code points which continue identifier.

   function Is_White_Space (Code : Code_Point) return Boolean;
   pragma Inline (Is_White_Space);
   --  Code points which is white space.

   function Lowercase (Code : Code_Point) return Boolean
     with Inline => True;
   --  Code points which lowercase character.

   function Uppercase (Code : Code_Point) return Boolean
     with Inline => True;
   --  Code points which lowercase character.

   function Simple_Casefold_Mapping (Code : Code_Point) return Code_Point;
   --  Returns simple casefold mapping for the specified code point.

   function Simple_Lowercase_Mapping (Code : Code_Point) return Code_Point;
   --  Returns simple lowercase mapping for the specified code point.

   function Simple_Titlecase_Mapping (Code : Code_Point) return Code_Point;
   --  Returns simple titlecase mapping for the specified code point.

   function Simple_Uppercase_Mapping (Code : Code_Point) return Code_Point;
   --  Returns simple uppercase mapping for the specified code point.

end Matreshka.Internals.Unicode.Properties;
