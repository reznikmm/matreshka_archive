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
with Matreshka.Internals.Atomics.Counters;
with Matreshka.Internals.Strings;

package Matreshka.Internals.String_Vectors is

   pragma Preelaborate;

   type Shared_String_Array is
     array (Positive range <>)
       of Matreshka.Internals.Strings.Shared_String_Access;

   type Shared_String_Vector (Size : Natural) is limited record
      Counter : aliased Matreshka.Internals.Atomics.Counters.Counter;
      --  Atomic reference counter.

      Length  : Natural := 0;
      --  Length of the actual data.

      Value   : Shared_String_Array (1 .. Size);
   end record;

   type Shared_String_Vector_Access is access all Shared_String_Vector;

   Empty_Shared_String_Vector : aliased Shared_String_Vector (0);

   procedure Reference (Item : Shared_String_Vector_Access);
   pragma Inline (Reference);
   pragma Inline_Always (Reference);
   --  Increment reference counter. Change of reference counter of
   --  Empty_Shared_String_Vector object is prevented to provide speedup
   --  and to allow to use it to initialize components of
   --  Preelaborateable_Initialization types.

   procedure Dereference (Item : in out Shared_String_Vector_Access);
   --  Decrement reference counter and free resources if it reach zero value.
   --  Self is setted to null. Decrement of reference counter and deallocation
   --  of Empty_Shared_String_Vector object is prevented to provide minor
   --  speedup and to allow use it to initialize components of
   --  Preelaborateable_Initialization types.

   function Allocate
    (Size : Natural) return not null Shared_String_Vector_Access;
   --  Allocates new instance of string with specified size. Actual size of the
   --  allocated string can be greater. Returns reference to
   --  Empty_Shared_String_Vector when Size is zero.

   procedure Detach
    (Item : in out Shared_String_Vector_Access;
     Size : Natural);
   --  Detach specified shared string vector. If reference counter equal to
   --  one, shared string vector is not an empty shared string vector object
   --  and its current size is sufficient to store specified number of strings
   --  then to nothing. Otherwise, allocates new shared string vector and
   --  copy existing data.

   procedure Append
    (Item   : in out Shared_String_Vector_Access;
     String : not null Matreshka.Internals.Strings.Shared_String_Access);
   --  Append string to the vector, reallocate vector then necessary. String's
   --  reference counter is not incremented.

   procedure Prepend
    (Self   : in out Shared_String_Vector_Access;
     Vector : not null Shared_String_Vector_Access);
   --  Prepends strings from vector to the vector, reallocates vector then
   --  necessary. Both vectors are still valid after this operation, reference
   --  counters of all prepended strings are incremented.

end Matreshka.Internals.String_Vectors;
