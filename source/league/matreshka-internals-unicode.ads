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
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
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

   --  CJK Ideographs costants.

   CJK_Ideograph_First   : constant := 16#4E00#;
   CJK_Ideograph_Last    : constant := 16#9FC3#;
   CJK_Ideograph_A_First : constant := 16#3400#;
   CJK_Ideograph_A_Last  : constant := 16#4DB5#;
   CJK_Ideograph_B_First : constant := 16#20000#;
   CJK_Ideograph_B_Last  : constant := 16#2A6D6#;

end Matreshka.Internals.Unicode;
