------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This package provides implementation of reflective collection which is
--  equivalent of MOF::ReflectiveCollection and MOF::ReflectiveSequence
--  adopted to Ada conventions.
------------------------------------------------------------------------------
--  10.6 ReflectiveCollection
--
--  ReflectiveCollection is a reflective class for accessing properties with
--  more than one possible value. It is defined in package MOF::Common in order
--  to facilitate reuse in many other MOF capabilities.
--
--  For ordered properties, ReflectiveSequence (see below) must be returned.
--
--  Modifications made to the ReflectiveCollection update the Object’s values
--  for that property atomically.
--
--  Exception: throws ClassCastException if the Property’s type
--  isInstance(Element) returns false.
--
--  10.7 ReflectiveSequence
--
--  ReflectiveSequence is a subclass of ReflectiveCollection that is used for
--  accessing ordered properties with more than one possible value.
--  Modifications made to the ReflectiveSequence update the Element’s values
--  for that property atomically.
--
--  Exception: throws IllegalArgumentException if a duplicate would be added to
--  the collection and Property.isUnique()==true.
--
--  Exception: throws IndexOutOfBoundsException if an index out of the range of
--  0 <= index < size() is used.
--
--  Exception: throws IllegalArgumentException if a duplicate would be added to
--  the list and Property is of type Class or Property.isUnique()==true.
------------------------------------------------------------------------------
private with Ada.Finalization;

with League.Holders;
private with AMF.Internals.Collections;

package AMF.Reflective_Collections is

   pragma Preelaborate;

   type Reflective_Collection is tagged private;

   function Length (Self : Reflective_Collection'Class) return Natural;
   --  size(): Integer
   --
   --  Returns the number of objects in the colleciton.

   function Element
    (Self  : Reflective_Collection'Class;
     Index : Positive) return League.Holders.Holder;
   --  get(index: Integer): Object
   --
   --  Returns the object at the given index in the sequence.

   procedure Clear (Self : in out Reflective_Collection'Class);
   --  clear()
   --
   --  Removes all objects from the collection.

   procedure Add
    (Self : Reflective_Collection'Class;
     Item : League.Holders.Holder);
   --  add(object: Object): Boolean
   --
   --  Adds object to the last position in the collection. Returns true if the
   --  object was added.
   --
   --  add(object: Object): Boolean
   --
   --  Adds object to the end of the sequence. Returns true if the object was
   --  added.

   --  addAll(elements: ReflectiveSequence): Boolean
   --  Adds the objects to the end of the collection. Returns true if any elements were added.
   --
   --  remove(object: Object): Object
   --  Removes the specified object from the collection. Returns true if the object was removed.

   --  add(index: Integer, object: Object)
   --  Adds object to the specified index in the sequence, shifting later objects.
   --
   --  remove(index: Integer): Object
   --  Removes the object at the specified index from the sequence. Returns the object removed.
   --
   --  set(index: Integer, object: Object): Object
   --
   --  Replaces the object at the specified index with the new object. The removed object is returned.
   --
   --  Behavior of particular operations defined in ReflectiveCollection is the
   --  following when applied to a ReflectiveSequence:
   --
   --  addAll(objects: ReflectiveSequenceReflectiveCollection): Boolean
   --  issue 6907: clarify behavior
   --  Adds any objects from the parameter collection to the end of the target sequence:
   --  • in the same order if parameter is unordered then the ordering is random.
   --  • if the target is a unique sequence then only if they are not already present, this includes objects already ad -
   --  ded from the parameter which has the effect of removing duplicates from the parameter collection if not
   --  unique.
   --  Returns true if any objects were added.
   --  Adds the object to the end of the sequence. Returns true if any objects were added.
   --
   --  remove(object: Object): Boolean
   --  Removes the first occurrence of the specified object from the sequence.

private

   type Reflective_Collection is new Ada.Finalization.Controlled with record
      Collection : AMF.Internals.Collections.Shared_Collection_Access;
   end record;

   overriding procedure Adjust (Self : in out Reflective_Collection);

   overriding procedure Finalize (Self : in out Reflective_Collection);

end AMF.Reflective_Collections;
