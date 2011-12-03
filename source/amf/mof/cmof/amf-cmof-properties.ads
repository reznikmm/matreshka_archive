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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
--  A property is a structural feature of a classifier that characterizes 
--  instances of the classifier. A property related by ownedAttribute to a 
--  classifier (other than an association) represents an attribute and might 
--  also represent an association end. It relates an instance of the class to 
--  a value or set of values of the type of the attribute. A property related 
--  by memberEnd or its specializations to an association represents an end of 
--  the association. The type of the property is the type of the end of the 
--  association.
------------------------------------------------------------------------------
limited with AMF.CMOF.Associations;
limited with AMF.CMOF.Classes;
limited with AMF.CMOF.Classifiers.Collections;
limited with AMF.CMOF.Data_Types;
limited with AMF.CMOF.Properties.Collections;
limited with AMF.CMOF.Redefinable_Elements;
with AMF.CMOF.Structural_Features;

package AMF.CMOF.Properties is

   pragma Preelaborate;

   type CMOF_Property is limited interface
     and AMF.CMOF.Structural_Features.CMOF_Structural_Feature;

   type CMOF_Property_Access is
     access all CMOF_Property'Class;
   for CMOF_Property_Access'Storage_Size use 0;

   not overriding function Get_Is_Read_Only
    (Self : not null access constant CMOF_Property)
       return Boolean is abstract;
   --  Getter of Property::isReadOnly.
   --
   --  If isReadOnly is true, the attribute may not be written to after 
   --  initialization.

   not overriding procedure Set_Is_Read_Only
    (Self : not null access CMOF_Property;
     To   : Boolean) is abstract;
   --  Setter of Property::isReadOnly.
   --
   --  If isReadOnly is true, the attribute may not be written to after 
   --  initialization.

   not overriding function Get_Default
    (Self : not null access constant CMOF_Property)
       return AMF.Optional_String is abstract;
   --  Getter of Property::default.
   --
   --  Specifies a String that represents a value to be used when no argument 
   --  is supplied for the Property.

   not overriding procedure Set_Default
    (Self : not null access CMOF_Property;
     To   : AMF.Optional_String) is abstract;
   --  Setter of Property::default.
   --
   --  Specifies a String that represents a value to be used when no argument 
   --  is supplied for the Property.

   not overriding function Get_Is_Composite
    (Self : not null access constant CMOF_Property)
       return Boolean is abstract;
   --  Getter of Property::isComposite.
   --
   --  If isComposite is true, the object containing the attribute is a 
   --  container for the object or value contained in the attribute.

   not overriding procedure Set_Is_Composite
    (Self : not null access CMOF_Property;
     To   : Boolean) is abstract;
   --  Setter of Property::isComposite.
   --
   --  If isComposite is true, the object containing the attribute is a 
   --  container for the object or value contained in the attribute.

   not overriding function Get_Is_Derived
    (Self : not null access constant CMOF_Property)
       return Boolean is abstract;
   --  Getter of Property::isDerived.
   --
   --  If isDerived is true, the value of the attribute is derived from 
   --  information elsewhere.

   not overriding procedure Set_Is_Derived
    (Self : not null access CMOF_Property;
     To   : Boolean) is abstract;
   --  Setter of Property::isDerived.
   --
   --  If isDerived is true, the value of the attribute is derived from 
   --  information elsewhere.

   not overriding function Get_Is_Derived_Union
    (Self : not null access constant CMOF_Property)
       return Boolean is abstract;
   --  Getter of Property::isDerivedUnion.
   --
   --  Specifies whether the property is derived as the union of all of the 
   --  properties that are constrained to subset it.

   not overriding procedure Set_Is_Derived_Union
    (Self : not null access CMOF_Property;
     To   : Boolean) is abstract;
   --  Setter of Property::isDerivedUnion.
   --
   --  Specifies whether the property is derived as the union of all of the 
   --  properties that are constrained to subset it.

   not overriding function Get_Class
    (Self : not null access constant CMOF_Property)
       return AMF.CMOF.Classes.CMOF_Class_Access is abstract;
   --  Getter of Property::class.
   --
   --  References the Class that owns the Property.

   not overriding procedure Set_Class
    (Self : not null access CMOF_Property;
     To   : AMF.CMOF.Classes.CMOF_Class_Access) is abstract;
   --  Setter of Property::class.
   --
   --  References the Class that owns the Property.

   not overriding function Get_Owning_Association
    (Self : not null access constant CMOF_Property)
       return AMF.CMOF.Associations.CMOF_Association_Access is abstract;
   --  Getter of Property::owningAssociation.
   --
   --  References the owning association of this property, if any.

   not overriding procedure Set_Owning_Association
    (Self : not null access CMOF_Property;
     To   : AMF.CMOF.Associations.CMOF_Association_Access) is abstract;
   --  Setter of Property::owningAssociation.
   --
   --  References the owning association of this property, if any.

   not overriding function Get_Redefined_Property
    (Self : not null access constant CMOF_Property)
       return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property is abstract;
   --  Getter of Property::redefinedProperty.
   --
   --  References the properties that are redefined by this property.

   not overriding function Get_Subsetted_Property
    (Self : not null access constant CMOF_Property)
       return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property is abstract;
   --  Getter of Property::subsettedProperty.
   --
   --  References the properties of which this property is constrained to be a 
   --  subset.

   not overriding function Get_Opposite
    (Self : not null access constant CMOF_Property)
       return AMF.CMOF.Properties.CMOF_Property_Access is abstract;
   --  Getter of Property::opposite.
   --
   --  In the case where the property is one navigable end of a binary 
   --  association with both ends navigable, this gives the other end.

   not overriding procedure Set_Opposite
    (Self : not null access CMOF_Property;
     To   : AMF.CMOF.Properties.CMOF_Property_Access) is abstract;
   --  Setter of Property::opposite.
   --
   --  In the case where the property is one navigable end of a binary 
   --  association with both ends navigable, this gives the other end.

   not overriding function Get_Datatype
    (Self : not null access constant CMOF_Property)
       return AMF.CMOF.Data_Types.CMOF_Data_Type_Access is abstract;
   --  Getter of Property::datatype.
   --
   --  The DataType that owns this Property.

   not overriding procedure Set_Datatype
    (Self : not null access CMOF_Property;
     To   : AMF.CMOF.Data_Types.CMOF_Data_Type_Access) is abstract;
   --  Setter of Property::datatype.
   --
   --  The DataType that owns this Property.

   not overriding function Get_Association
    (Self : not null access constant CMOF_Property)
       return AMF.CMOF.Associations.CMOF_Association_Access is abstract;
   --  Getter of Property::association.
   --
   --  References the association of which this property is a member, if any.

   not overriding procedure Set_Association
    (Self : not null access CMOF_Property;
     To   : AMF.CMOF.Associations.CMOF_Association_Access) is abstract;
   --  Setter of Property::association.
   --
   --  References the association of which this property is a member, if any.

   not overriding function Opposite
    (Self : not null access constant CMOF_Property)
       return AMF.CMOF.Properties.CMOF_Property_Access is abstract;
   --  Operation Property::opposite.
   --
   --  If this property is owned by a class, associated with a binary 
   --  association, and the other end of the association is also owned by a 
   --  class, then opposite gives the other end.

   overriding function Is_Consistent_With
    (Self : not null access constant CMOF_Property;
     Redefinee : AMF.CMOF.Redefinable_Elements.CMOF_Redefinable_Element_Access)
       return Boolean is abstract;
   --  Operation Property::isConsistentWith.
   --
   --  The query isConsistentWith() specifies, for any two Properties in a 
   --  context in which redefinition is possible, whether redefinition would 
   --  be logically consistent. A redefining property is consistent with a 
   --  redefined property if the type of the redefining property conforms to 
   --  the type of the redefined property, the multiplicity of the redefining 
   --  property (if specified) is contained in the multiplicity of the 
   --  redefined property, and the redefining property is derived if the 
   --  redefined property is derived.

   not overriding function Subsetting_Context
    (Self : not null access constant CMOF_Property)
       return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier is abstract;
   --  Operation Property::subsettingContext.
   --
   --  The query subsettingContext() gives the context for subsetting a 
   --  property. It consists, in the case of an attribute, of the 
   --  corresponding classifier, and in the case of an association end, all of 
   --  the classifiers at the other ends.

   not overriding function Is_Navigable
    (Self : not null access constant CMOF_Property)
       return Boolean is abstract;
   --  Operation Property::isNavigable.
   --
   --  The query isNavigable() indicates whether it is possible to navigate 
   --  across the property.

   not overriding function Is_Attribute
    (Self : not null access constant CMOF_Property;
     P : AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean is abstract;
   --  Operation Property::isAttribute.
   --
   --  The query isAttribute() is true if the Property is defined as an 
   --  attribute of some classifier.

end AMF.CMOF.Properties;
