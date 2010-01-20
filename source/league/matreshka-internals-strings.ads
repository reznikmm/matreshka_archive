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
with Matreshka.Internals.Atomics.Counters;
with Matreshka.Internals.Unicode.Ucd;
with Matreshka.Internals.Utf16;

package Matreshka.Internals.Strings is

   pragma Preelaborate;

   type Internal_Hash_Type is mod 2 ** 32;

   type Positive_Array is array (Positive range <>) of Positive;

   type Index_Map (Length : Natural) is record
      Map : Positive_Array (1 .. Length);
   end record;
   --  GNAT: GNAT uses fat pointers for arrays, thus makes impossible to define
   --  atomic compare-and-swap operations for access-to-unconstrained-array
   --  type.

   type Index_Map_Access is access all Index_Map;

   type Shared_String (Size : Natural) is limited record
      Counter   : aliased Matreshka.Internals.Atomics.Counters.Counter;
      --  Atomic reference counter.

      Value     : Matreshka.Internals.Utf16.Utf16_String (1 .. Size);
      --  String data. Internal data always has well-formed UTF-16 encoded
      --  sequence of valid Unicode code points. Validity checks proceed only
      --  for potentially invalid user specified data, and never proceed for
      --  the internal data.

      Last      : Natural := 0;
      --  Last used element in the Value array.

      Length    : Natural := 0;
      --  Precomputed length of the string in Unicode code points.

      Index_Map : aliased Index_Map_Access := null;
      pragma Atomic (Index_Map);
      --  Mapping of the string's characters index to position inside internal
      --  buffer. Used only if string has both BMP and non-BMP characters.
      --  Is built on-demand.
   end record;

   type Shared_String_Access is access all Shared_String;

   Shared_Empty : aliased Shared_String := (Size => 0, others => <>);

   type Sort_Key_Array is
     array (Positive range <>)
       of Matreshka.Internals.Unicode.Ucd.Collation_Weight;

   type Shared_Sort_Key (Size : Natural) is record
      Counter  : aliased Matreshka.Internals.Atomics.Counters.Counter;
      --  Atomic reference counter.

      Data     : Sort_Key_Array (1 .. Size);
      --  Sort key data.

      Last     : Natural := 0;
      --  Last element in the data.
   end record;

   type Shared_Sort_Key_Access is access all Shared_Sort_Key;

   Shared_Empty_Key : aliased Shared_Sort_Key := (Size => 0, others => <>);

--   function Copy (Source : not null String_Private_Data_Access)
--     return not null String_Private_Data_Access;
   --  Creates copy of string data.

   function Allocate (Size : Natural) return not null Shared_String_Access;
   --  Allocates new instance of string with specified size. Actual size of the
   --  allocated string can be greater. Returns reference to Shared_Empty with
   --  incremented counter when Size is zero.

   procedure Reference (Self : Shared_Sort_Key_Access);
   pragma Inline (Reference);
   --  Increment reference counter.

   procedure Reference (Self : Shared_String_Access);
   pragma Inline (Reference);
   --  Increment reference counter.

   procedure Dereference (Self : in out Shared_Sort_Key_Access);
   --  Decrement reference counter and free resources if it reach zero value.

   procedure Dereference (Self : in out Shared_String_Access);
   --  Decrement reference counter and free resources if it reach zero value.
   --  Self is setted to null. Decrement of reference counter and deallocation
   --  of Shared_Empty object is prevented to allow minor speedup and use it
   --  to initialize components of Preelaborateable_Initialization types.

   procedure Compute_Index_Map (Self : in out Shared_String);
   --  Compute index map. This operation is thread-safe.

   function Hash (Self : not null Shared_String_Access)
     return Internal_Hash_Type;
   --  Returns hash value for the string. MurmurHash2, by Austin Appleby is
   --  used.

   procedure Append
    (Self : in out Shared_String_Access;
     Item : Shared_String_Access);

   function Slice
    (Self   : not null Shared_String_Access;
     Low    : Positive;
     High   : Natural;
     Length : Natural)
       return not null Shared_String_Access;
   --  Returns slice from Low to High. Length specify expected length of the
   --  result.

   procedure Replace
    (Self   : in out Shared_String_Access;
     Low    : Positive;
     High   : Natural;
     Length : Natural;
     By     : not null Shared_String_Access);

   procedure Append
    (Self      : in out Shared_String_Access;
     Code      : Matreshka.Internals.Unicode.Code_Point;
     Increment : Natural);
   --  Append character to the string, reallocate memory if needed. Increment
   --  is used as minimum size increment value when relocation is applied.

end Matreshka.Internals.Strings;
