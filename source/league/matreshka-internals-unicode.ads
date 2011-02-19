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
--  This package provides declaration of several data types related to Unicode
--  standard as well as simple useful subprograms.

package Matreshka.Internals.Unicode is

   pragma Pure;

   --  Unicode code units.

   type Code_Unit_16 is mod 2**16;
   type Code_Unit_32 is mod 2**32;

   --  Unicode code point.

   subtype Code_Point is Code_Unit_32 range 0 .. 16#10_FFFF#;
   --  Unicode code point or Unicode scalar value.
   --  GNAT produce most efficient code for this type comparing with others
   --  way of it declaration.

   function Is_Valid (Code : Code_Unit_32) return Boolean;
   pragma Inline (Is_Valid);
   --  Returns True when specified code is valid Unicode scalar value (it
   --  is in range of Code_Point and not in surrogate block.

   --  Surrogate ranges.

   Surrogate_First      : constant := 16#D800#;
   High_Surrogate_First : constant := 16#D800#;
   High_Surrogate_Last  : constant := 16#DBFF#;
   Low_Surrogate_First  : constant := 16#DC00#;
   Low_Surrogate_Last   : constant := 16#DFFF#;
   Surrogate_Last       : constant := 16#DFFF#;

   --  Hangul syllables constants.

   Hangul_Syllable_First : constant := 16#AC00#;
   Hangul_Syllable_Last  : constant := 16#D7A3#;

   S_Base  : constant := Hangul_Syllable_First;
   L_Base  : constant := 16#1100#;
   V_Base  : constant := 16#1161#;  --  Note, it is Vowel_First + 1
   T_Base  : constant := 16#11A7#;  --  Note, it is Trailing_First - 1

   L_Count : constant := 19;
   V_Count : constant := 21;
   T_Count : constant := 28;
   N_Count : constant := V_Count * T_Count;  --  588
   S_Count : constant := L_Count * N_Count;  --  11172

   --  CJK Ideographs constants, used by collation algoriphm.

   CJK_Unified_Ideographs_First       : constant := 16#4E00#;
   CJK_Unified_Ideographs_Last        : constant := 16#9FFF#;
   CJK_Compatibility_Ideographs_First : constant := 16#F900#;
   CJK_Compatibility_Ideographs_Last  : constant := 16#FAFF#;

end Matreshka.Internals.Unicode;
