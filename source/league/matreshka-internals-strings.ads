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
with Matreshka.Internals.Atomics.Counters;
with Matreshka.Internals.Utf16;

package Matreshka.Internals.Strings is

   pragma Preelaborate;

   type Index_Modes is
    (Undefined,     --  Index mode is undefined.
     Single_Units,  --  All characters a BPM characters, thus represented as
                    --  one 16-bit code unit.
     Double_Units,  --  All characters is outside of BMP, thus represented as
                    --  surrogate pair (two 16-bit code units).
     Mixed_Units);  --  String has both BMP and non-BMP characters, thus index
                    --  table is used for direct access to string's characters.

   To_Index_Mode : constant
     array (Boolean, Boolean) of Index_Modes
       := (False => (False => Undefined,
                     True  => Double_Units),
           True  => (False => Single_Units,
                     True  => Mixed_Units));
   --  String indexing mode for the string. First index must be True when
   --  string contains BMP characters, second index must be True when string
   --  contains non-BMP characters.

   type Positive_Array is array (Positive range <>) of Positive;

   type Index_Map (Length : Natural) is record
      Map : Positive_Array (1 .. Length);
   end record;
   --  GNAT: GNAT uses fat pointers for arrays, thus makes impossible to define
   --  atomic compare-and-swap operations for access-to-unconstrained-array
   --  type.

   type Index_Map_Access is access all Index_Map;

   type Internal_String (Size : Natural) is limited record
      Counter    : aliased Matreshka.Internals.Atomics.Counters.Counter;
      --  Atomic reference counter.

      Value      : Matreshka.Internals.Utf16.Utf16_String (1 .. Size);
      --  String data. Internal data always has well-formed UTF-16 encoded
      --  sequence of valid Unicode code points. Validity checks proceed only
      --  for potentially invalid user specified data, and never proceed for
      --  the internal data.

      Last       : Natural := 0;
      --  Last used element in the Value array.

      Length     : Natural := 0;
      --  Precomputed length of the string in Unicode code points.

      Index_Mode : Index_Modes := Undefined;
      --  String's characters indexing mode for direct access by the
      --  character's index.

      Index_Map  : aliased Index_Map_Access := null;
      pragma Atomic (Index_Map);
      --  Mapping of the string's characters index to position inside internal
      --  buffer. Used only if string has both BMP and non-BMP characters.
      --  Is built on-demand.
   end record;

   type Internal_String_Access is access all Internal_String;

   Shared_Empty : aliased Internal_String := (Size => 0, others => <>);

--   function Copy (Source : not null String_Private_Data_Access)
--     return not null String_Private_Data_Access;
   --  Creates copy of string data.

   procedure Reference (Self : Internal_String_Access);
   pragma Inline (Reference);
   --  Increment reference counter.

   procedure Dereference (Self : in out Internal_String_Access);
   --  Decrement reference counter and free resources if it reach zero value.

   procedure Compute_Index_Map (Self : in out Internal_String);
   --  Compute index map. This operation is thread-safe.

   procedure Append
    (Self : in out Internal_String_Access;
     Item : Internal_String_Access);

   function Slice
    (Self   : not null Internal_String_Access;
     Low    : Positive;
     High   : Natural;
     Length : Natural)
       return not null Internal_String_Access;
   --  Returns slice from Low to High. Length specify expected length of the
   --  result.

end Matreshka.Internals.Strings;
