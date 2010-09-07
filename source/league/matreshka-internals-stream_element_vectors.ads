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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Streams;

with Matreshka.Internals.Atomics.Counters;

package Matreshka.Internals.Stream_Element_Vectors is

   pragma Preelaborate;

   type Shared_Stream_Element_Vector
    (Size : Ada.Streams.Stream_Element_Offset) is limited
   record
      Counter : aliased Matreshka.Internals.Atomics.Counters.Counter;
      Last    : Ada.Streams.Stream_Element_Offset := 0;
      Value   : Ada.Streams.Stream_Element_Array (1 .. Size);
   end record;

   type Shared_Stream_Element_Vector_Access is
     access all Shared_Stream_Element_Vector;

   Empty_Shared_Stream_Element_Vector :
     aliased Shared_Stream_Element_Vector (0);

   procedure Reference (Item : Shared_Stream_Element_Vector_Access);
   pragma Inline (Reference);
   pragma Inline_Always (Reference);
   --  Increment reference counter. Change of reference counter of
   --  Empty_Shared_Stream_Element_Vector object is prevented to provide
   --  speedup and to allow to use it to initialize components of
   --  Preelaborateable_Initialization types.

   procedure Dereference (Item : in out Shared_Stream_Element_Vector_Access);
   --  Decrement reference counter and free resources if it reach zero value.
   --  Self is setted to null. Decrement of reference counter and deallocation
   --  of Empty_Shared_Stream_Element_Vector object is prevented to provide
   --  minor speedup and to allow use it to initialize components of
   --  Preelaborateable_Initialization types.

   function Allocate
    (Size : Ada.Streams.Stream_Element_Offset)
       return not null Shared_Stream_Element_Vector_Access;
   --  Allocates new instance of stream element vector with specified size.
   --  Actual size of the allocated object can be greater. Returns reference to
   --  Empty_Shared_Stream_Element_Vector when Size is zero.

end Matreshka.Internals.Stream_Element_Vectors;
