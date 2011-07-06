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
with League.Holders;
with League.Strings;

with AMF.CMOF.Associations;
with AMF.CMOF.Classes;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Packages;
with AMF.Elements;

package AMF.Factories is

   pragma Preelaborate;

   type Factory is limited interface;

   type Factory_Access is access all Factory'Class;

   not overriding function Create
    (Self       : not null access Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access is abstract;
   --  Creates an element that is an instance of the metaClass.
   --  Object::metaClass == metaClass and metaClass.isInstance(object) == true.
   --
   --  All properties of the element are considered unset. The values are the
   --  same as if object.unset(property) was invoked for every property.
   --
   --  Returns null if the creation cannot be performed. Classes with abstract
   --  = true always return null.
   --
   --  The created element’s metaClass == metaClass.
   --
   --  Exception: NullPointerException if class is null.
   --
   --  Exception: IllegalArgumentException if class is not a member of the
   --  package returned by getPackage().
   --
   --  Constraints
   --
   --  The following conditions on metaClass: Class and all its Properties must
   --  be satisfied before the metaClass: Class can be instantiated. If these
   --  requirements are not met, create() throws exceptions as described above.
   --
   --  [1] Meta object must be set.
   --
   --  [2] Name must be 1 or more characters.
   --
   --  [3] Property type must be set.
   --
   --  [4] Property: 0 <= LowerBound <= UpperBound required.
   --
   --  [5] Property: 1 <= UpperBound required.
   --
   --  [6] Enforcement of read-only properties is optional in EMOF.
   --
   --  [8] Properties of type Class cannot have defaults.
   --
   --  [9] Multivalued properties cannot have defaults.
   --
   --  [10] Property: Container end must not have upperBound >1, a property can
   --  only be contained in one container.
   --
   --  [11] Property: Only one end may be composite.
   --
   --  [12] Property: Bidirectional opposite ends must reference each other.
   --
   --  [13] Property and DataType: Default value must match type. Items 3-13
   --  apply to all Properties of the Class.
   --
   --  These conditions also apply to all superclasses of the class being
   --  instantiated.

   not overriding procedure Create_Link
    (Self           : not null access Factory;
     Association    :
       not null access AMF.CMOF.Associations.CMOF_Association'Class;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access) is abstract;
   --  This creates a Link from 2 supplied Elements that is an instance of the
   --  supplied Association. The firstElement is associated with the first end
   --  (the properties comprising the association ends are ordered) and must
   --  conform to its type. And correspondingly for the secondElement.

   not overriding function Create_From_String
    (Self      : not null access Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String)
       return League.Holders.Holder is abstract;
   --  Creates an Object initialized from the value of the String. Returns null
   --  if the creation cannot be performed.
   --
   --  The format of the String is defined by the XML Schema SimpleType
   --  corresponding to that datatype.
   --
   --  Exception: NullPointerException if datatype is null.
   --
   --  Exception: IllegalArgumentException if datatype is not a member of the
   --  package returned by getPackage().

   not overriding function Convert_To_String
    (Self      : not null access Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder)
       return League.Strings.Universal_String is abstract;
   --  Creates a String representation of the object. Returns null if the
   --  creation cannot be performed. The format of the String is defined by the
   --  XML Schema SimpleType corresponding to that dataType.
   --
   --  Exception: IllegalArgumentException if datatype is not a member of the
   --  package returned by getPackage() or the supplied object is not a valid
   --  instance of that datatype.

   not overriding function Get_Package
    (Self : not null access constant Factory)
       return not null AMF.CMOF.Packages.CMOF_Package_Access is abstract;
   --  Returns the package this is a factory for.

end AMF.Factories;
