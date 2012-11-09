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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  9.3 Object
--
--  "Reflection introduces Object as a supertype of Element in order to be able
--  to have a Type that represents both elements and data values. Object
--  represents ‘any’ value and is the equivalent of java.lang.Object in Java."
--
--  Ada doesn't provide equivalent of java.lang.Object, thus League's Holder is
--  used to represent any arbitraty object. This package implements normative
--  API over League.Holders.Holder type.
------------------------------------------------------------------------------
with League.Holders;

with AMF.CMOF.Properties;

package AMF.Objects is

   pragma Preelaborate;

   function Equals
    (Object : League.Holders.Holder;
     Other  : League.Holders.Holder) return Boolean;
   --  Determines if the object equals this Object instance. For instances of
   --  Class, returns true if the object and this Object instance are
   --  references to the same Object. For instances of DataType, returns true
   --  if the object has the same value as this Object instance. Returns false
   --  for all other cases.

   function Get
    (Object   : League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return League.Holders.Holder;
   --  Gets the value of the given property. If the Property has multiplicity
   --  upper bound of 1, get() returns the value of the Property. If Property
   --  has multiplicity upper bound >1, get() returns a ReflectiveCollection
   --  containing the values of the Property. If there are no values, the
   --  ReflectiveCollection returned is empty.
   --
   --  Exception: throws IllegalArgumentException if Property is not a member
   --  of the Class from class().

   procedure Set
    (Object   : in out League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Value    : League.Holders.Holder);
   --  If the Property has multiplicity upper bound = 1, set() atomically
   --  updates the value of the Property to the object parameter. If Property
   --  has multiplicity upper bound >1, the Object must be a kind of
   --  ReflectiveCollection. The behavior is identical to the following
   --  operations performed atomically:
   --
   --     ReflectiveSequence list = element.get(property);
   --     list.clear();
   --     list.addAll((ReflectiveSequence) object);
   --
   --  There is no return value.
   --
   --  Exception: throws IllegalArgumentException if Property is not a member
   --  of the Class from getMetaClass().
   --
   --  Exception: throws ClassCastException if the Property’s type
   --  isInstance(element) returns false and Property has multiplicity upper
   --  bound = 1
   --
   --  Exception: throws ClassCastException if Element is not a
   --  ReflectiveCollection and Property has multiplicity upper bound > 1
   --
   --  Exception: throws IllegalArgumentException if element is null, Property
   --  is of type Class, and the multiplicity upper bound > 1.

   function Is_Set
    (Object   : League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean;
   --  If the Property has multiplicity upper bound of 1, isSet() returns true
   --  if the value of the Property is different than the default value of that
   --  property. If Property has multiplicity upper bound >1, isSet() returns
   --  true if the number of objects in the list is > 0.
   --
   --  Exception: throws IllegalArgumentException if Property is not a member
   --  of the Class from getMetaClass ().

   procedure Unset
    (Object   : in out League.Holders.Holder;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access);
   --  If the Property has multiplicity upper bound of 1, unset() atomically
   --  sets the value of the Property to its default value for DataType type
   --  properties and null for Class type properties. If Property has
   --  multiplicity upper bound >1, unset() clears the ReflectiveCollection of
   --  values of the Property. The behavior is identical to the following
   --  operations performed atomically:
   --
   --     ReflectiveCollection list = object.get(property);
   --     list.clear();
   --
   --  There is no return value.
   --
   --  After unset() is called, object.isSet(property) == false.
   --
   --  Exception: throws IllegalArgumentException if Property is not a member
   --  of the Class from getMetaClass().

end AMF.Objects;
