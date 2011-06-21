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
with AMF.CMOF.Classes;
with AMF.CMOF.Properties;
with League.Holders;

package AMF.Elements is

   pragma Preelaborate;

   type Abstract_Element is limited interface;

   type Element_Access is access all Abstract_Element'Class;

   not overriding function Get_Meta_Class
    (Self : not null access constant Abstract_Element)
       return AMF.CMOF.Classes.CMOF_Class_Access is abstract;
   --  Returns the Class that describes this element.

   not overriding function Get
    (Self     : not null access constant Abstract_Element;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return League.Holders.Holder is abstract;
   --  Gets the value of the given property. If the Property has multiplicity
   --  upper bound of 1, get() returns the value of the Property. If Property
   --  has multiplicity upper bound >1, get() returns a ReflectiveCollection
   --  containing the values of the Property. If there are no values, the
   --  ReflectiveCollection returned is empty.
   --
   --  Exception: throws IllegalArgumentException if Property is not a member
   --  of the Class from class().

   not overriding procedure Set
    (Self     : not null access Abstract_Element;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Value    : League.Holders.Holder) is abstract;
   --  If the Property has multiplicity upper bound = 1, set() atomically
   --  updates the value of the Property to the object parameter. If Property
   --  has multiplicity upper bound >1, the Object must be a kind of
   --  ReflectiveCollection. The behavior is identical to the following
   --  operations performed atomically:
   --
   --     ReflectiveSequence list = element.get(property);
   --     list.clear();
   --     list.addAll((ReflectiveCollection) object);
   --
   --  There is no return value. Exception: throws IllegalArgumentException if
   --  Property is not a member of the Class from getMetaClass().
   --
   --  Exception: throws ClassCastException if the Property’s type
   --  isInstance(element) returns false and Property has multi-plicity upper
   --  bound = 1.
   --
   --  Exception: throws ClassCastException if Element is not a
   --  ReflectiveCollection and Property has multiplicity upper bound > 1.
   --
   --  Exception: throws IllegalArgumentException if element is null, Property
   --  is of type Class, and the multiplicity upper bound > 1.

end AMF.Elements;
