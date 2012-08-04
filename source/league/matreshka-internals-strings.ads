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
--  Internal representation of string data in the UTF-16 form.
--
--  Internal representation and operations on it use several optimization
--  techniques, so some important assumption must be taken into account to
--  have expected results:
--
--   - alignment of string's value must be compatible with alignment of the
--     largest supported by platform Unsigned_X type (for portable version of
--     implementation for any 32-bit or 64-bit platform) or with alignment of
--     largest supported vector operand for Single Instruction Multiple Data
--     instructions set when it is used to implement string operations (for
--     x86_64) - to speedup memory access and satisfy typical SIMD
--     requirements;
--
--   - all unused code points in the last largest element must be filled by
--     zero code point - to allows to use optimized version of compare
--     operations.
------------------------------------------------------------------------------
pragma Ada_2012;

with Matreshka.Atomics.Counters;
with Matreshka.Internals.Unicode.Ucd;
with Matreshka.Internals.Utf16;

package Matreshka.Internals.Strings is

   pragma Preelaborate;

   use type Matreshka.Internals.Utf16.Utf16_String_Index;

   type Internal_Hash_Type is mod 2 ** 32;

   type Utf16_String_Index_Array is
     array (Matreshka.Internals.Utf16.Utf16_String_Index range <>)
       of Matreshka.Internals.Utf16.Utf16_String_Index;

   type Index_Map (Length : Matreshka.Internals.Utf16.Utf16_String_Index) is
     record
      Map : Utf16_String_Index_Array (0 .. Length);
   end record;
   --  GNAT: GNAT uses fat pointers for arrays, thus makes impossible to define
   --  atomic compare-and-swap operations for access-to-unconstrained-array
   --  type.

   type Index_Map_Access is access all Index_Map;
   pragma Volatile (Index_Map_Access);

   type Shared_String (Size : Matreshka.Internals.Utf16.Utf16_String_Index)
     is limited record
      Counter   : Matreshka.Atomics.Counters.Counter;
      --  Atomic reference counter.

      Unused    : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      --  First unused element in the Value array.

      Length    : Natural := 0;
      --  Precomputed length of the string in Unicode code points.

      Index_Map : aliased Index_Map_Access := null;
      pragma Atomic (Index_Map);
      pragma Volatile (Index_Map);
      --  Mapping of the string's characters index to position inside internal
      --  buffer. Used only if string has both BMP and non-BMP characters.
      --  Is built on-demand.

      Value     : Matreshka.Internals.Utf16.Utf16_String (0 .. Size);
      --  String data. Internal data always has well-formed UTF-16 encoded
      --  sequence of valid Unicode code points. Validity checks proceed only
      --  for potentially invalid user specified data, and never proceed for
      --  the internal data.
   end record;

   type Shared_String_Access is access all Shared_String;

   Shared_Empty : aliased Shared_String :=
     (Size   => Standard'Maximum_Alignment / 2 - 1,
      Value  => (others => 0),
      others => <>);
   --  Globally defined empty shared string to be used as default value.
   --  Reference and Dereference subprograms known about this object and
   --  never change its reference counter for speed optimization (atomic
   --  increment/decrement operations have significant perfomance penalty)
   --  and allows to be used in Preelaborateable_Initialization types.

   procedure Reference (Self : not null Shared_String_Access)
     with Inline => True;
   --  Increment reference counter. Change of reference counter of Shared_Empty
   --  object is prevented to provide speedup and to allow to use it to
   --  initialize components of Preelaborateable_Initialization types.

   procedure Dereference (Self : in out Shared_String_Access);
   --  Decrement reference counter and free resources if it reach zero value.
   --  Self is setted to null. Decrement of reference counter and deallocation
   --  of Shared_Empty object is prevented to provide minor speedup and to
   --  allow use it to initialize components of Preelaborateable_Initialization
   --  types.

   function Allocate
    (Size : Matreshka.Internals.Utf16.Utf16_String_Index)
       return not null Shared_String_Access;
   --  Allocates new instance of string with specified size. Actual size of the
   --  allocated string can be greater. Returns reference to Shared_Empty with
   --  incremented counter when Size is zero.

   function Can_Be_Reused
    (Self : not null Shared_String_Access;
     Size : Matreshka.Internals.Utf16.Utf16_String_Index) return Boolean;
   pragma Inline (Can_Be_Reused);
   --  Returns True when specified shared string can be reused safely. There
   --  are two criteria: reference counter must be one (it means this object
   --  is not used anywhere); and size of the object is sufficient to store
   --  at least specified amount of code units.

   procedure Mutate
    (Self : in out not null Shared_String_Access;
     Size : Matreshka.Internals.Utf16.Utf16_String_Index);
   --  Checks whether specified string can be reused to store data of specified
   --  size and prepare it to be changed; otherwise allocates new string and
   --  copy data.

   procedure Compute_Index_Map (Self : in out Shared_String);
   --  Compute index map. This operation is thread-safe.

   function Hash (Self : not null Shared_String_Access)
     return Internal_Hash_Type;
   --  Returns hash value for the string. MurmurHash2, by Austin Appleby is
   --  used.

   type Sort_Key_Array is
     array (Positive range <>)
       of Matreshka.Internals.Unicode.Ucd.Collation_Weight;

   type Shared_Sort_Key (Size : Natural) is record
      Counter  : Matreshka.Atomics.Counters.Counter;
      --  Atomic reference counter.

      Data     : Sort_Key_Array (1 .. Size);
      --  Sort key data.

      Last     : Natural := 0;
      --  Last element in the data.
   end record;

   type Shared_Sort_Key_Access is access all Shared_Sort_Key;

   Shared_Empty_Key : aliased Shared_Sort_Key := (Size => 0, others => <>);
   --  Globally defined shared empty sort key to be used as default value.
   --  Reference and Dereference subprograms knoen about this object and
   --  never change its reference counter for speed optimization (atomic
   --  increment/decrement operations have significant performance penalty)
   --  and allows to be used in Preelaborateable_Initialization types.

   procedure Reference (Self : not null Shared_Sort_Key_Access)
     with Inline => True;
   --  Increment reference counter. Change of refernce counter of
   --  Shared_Empty_Key object is prevented to provide speedup and to allow
   --  to use it to initialize components of Preelaborateable_Initialization
   --  types.

   procedure Dereference (Self : in out Shared_Sort_Key_Access);
   --  Decrement reference counter and free resources if it reach zero value.
   --  Self is setted to null for safety reasons. Decrement of reference
   --  counter and deallocation of Shared_Empty_Key object is prevented to
   --  provide minor speedup and to allow to use it to initialize components
   --  of Preelaborateable_Initialization types.

end Matreshka.Internals.Strings;
