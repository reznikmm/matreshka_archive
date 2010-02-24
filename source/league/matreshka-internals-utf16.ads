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
-- Copyright © 2009, 2010 Vadim Godunko <vgodunko@gmail.com>                --
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
--  This package containts type declarations for UTF-16 encoded strings and
--  useful subprograms.
with Matreshka.Internals.Unicode;

package Matreshka.Internals.Utf16 is

   pragma Pure;

   subtype Utf16_Code_Unit is Matreshka.Internals.Unicode.Code_Unit_16;

   subtype High_Surrogate_Utf16_Code_Unit is Utf16_Code_Unit
     range Matreshka.Internals.Unicode.High_Surrogate_First
             .. Matreshka.Internals.Unicode.High_Surrogate_Last;

   subtype Low_Surrogate_Utf16_Code_Unit is Utf16_Code_Unit
     range Matreshka.Internals.Unicode.Low_Surrogate_First
             .. Matreshka.Internals.Unicode.Low_Surrogate_Last;

   type Utf16_String is array (Positive range <>) of Utf16_Code_Unit;
   for Utf16_String'Alignment use Standard'Maximum_Alignment;
   pragma Pack (Utf16_String);
   --  Internal representation of UTF-16 encoded string.

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

   function Unchecked_To_Code_Point
    (Item     : Utf16_String;
     Position : Positive)
       return Matreshka.Internals.Unicode.Code_Point;
   pragma Inline (Unchecked_To_Code_Point);
   --  Convert character or surrogate pair at the cpecified position in the
   --  the Unicode code point.

   procedure Unchecked_Next
    (Item     : Utf16_String;
     Position : in out Positive;
     Code     : out Matreshka.Internals.Unicode.Code_Point);
   pragma Inline (Unchecked_Next);
   --  Convert character or surrogate pair at the specified position in the
   --  the Unicode code point and moves position to the next character.

   procedure Unchecked_Next
    (Item     : Utf16_String;
     Position : in out Positive);
   pragma Inline (Unchecked_Next);
   --  Moves position to the next character.

   procedure Unchecked_Previous
    (Item     : Utf16_String;
     Position : in out Positive;
     Code     : out Matreshka.Internals.Unicode.Code_Point);
   pragma Inline (Unchecked_Previous);
   --  Convert character or surrogate pair before the specified position in the
   --  the Unicode code point and moves position to the previous character.

   procedure Unchecked_Previous
    (Item     : Utf16_String;
     Position : in out Positive);
   pragma Inline (Unchecked_Previous);
   --  Moves position to the previous character.

   procedure Unchecked_Store
    (Item     : in out Utf16_String;
     Position : in out Positive;
     Code     : Matreshka.Internals.Unicode.Code_Point);
   pragma Inline (Unchecked_Store);
   --  Store specified character at the specified position and move position to
   --  the next character.

end Matreshka.Internals.Utf16;
