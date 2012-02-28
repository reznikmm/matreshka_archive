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
--  A class describes a set of objects that share the same specifications of 
--  features, constraints, and semantics.
--  
--  A class has the capability to have an internal structure and ports.
--  
--  Class has derived association that indicates how it may be extended 
--  through one or more stereotypes. Stereotype is the only kind of metaclass 
--  that cannot be extended by stereotypes.
--  
--  A class may be designated as active (i.e., each of its instances having 
--  its own thread of control) or passive (i.e., each of its instances 
--  executing within the context of some other object). A class may also 
--  specify which signals the instances of this class handle.
------------------------------------------------------------------------------
with AMF.UML.Behaviored_Classifiers;
limited with AMF.UML.Classes.Collections;
limited with AMF.UML.Classifiers.Collections;
with AMF.UML.Encapsulated_Classifiers;
limited with AMF.UML.Extensions.Collections;
limited with AMF.UML.Named_Elements.Collections;
limited with AMF.UML.Operations.Collections;
limited with AMF.UML.Properties.Collections;
limited with AMF.UML.Receptions.Collections;

package AMF.UML.Classes is

   pragma Preelaborate;

   type UML_Class is limited interface
     and AMF.UML.Behaviored_Classifiers.UML_Behaviored_Classifier
     and AMF.UML.Encapsulated_Classifiers.UML_Encapsulated_Classifier;

   type UML_Class_Access is
     access all UML_Class'Class;
   for UML_Class_Access'Storage_Size use 0;

   not overriding function Get_Extension
    (Self : not null access constant UML_Class)
       return AMF.UML.Extensions.Collections.Set_Of_UML_Extension is abstract;
   --  Getter of Class::extension.
   --
   --  References the Extensions that specify additional properties of the 
   --  metaclass. The property is derived from the extensions whose memberEnds 
   --  are typed by the Class.

   overriding function Get_Is_Abstract
    (Self : not null access constant UML_Class)
       return Boolean is abstract;
   --  Getter of Class::isAbstract.
   --
   --  True when a class is abstract.
   --  If true, the Classifier does not provide a complete declaration and can 
   --  typically not be instantiated. An abstract classifier is intended to be 
   --  used by other classifiers e.g. as the target of general 
   --  metarelationships or generalization relationships.

   overriding procedure Set_Is_Abstract
    (Self : not null access UML_Class;
     To   : Boolean) is abstract;
   --  Setter of Class::isAbstract.
   --
   --  True when a class is abstract.
   --  If true, the Classifier does not provide a complete declaration and can 
   --  typically not be instantiated. An abstract classifier is intended to be 
   --  used by other classifiers e.g. as the target of general 
   --  metarelationships or generalization relationships.

   not overriding function Get_Is_Active
    (Self : not null access constant UML_Class)
       return Boolean is abstract;
   --  Getter of Class::isActive.
   --
   --  Determines whether an object specified by this class is active or not. 
   --  If true, then the owning class is referred to as an active class. If 
   --  false, then such a class is referred to as a passive class.

   not overriding procedure Set_Is_Active
    (Self : not null access UML_Class;
     To   : Boolean) is abstract;
   --  Setter of Class::isActive.
   --
   --  Determines whether an object specified by this class is active or not. 
   --  If true, then the owning class is referred to as an active class. If 
   --  false, then such a class is referred to as a passive class.

   not overriding function Get_Nested_Classifier
    (Self : not null access constant UML_Class)
       return AMF.UML.Classifiers.Collections.Ordered_Set_Of_UML_Classifier is abstract;
   --  Getter of Class::nestedClassifier.
   --
   --  References all the Classifiers that are defined (nested) within the 
   --  Class.

   overriding function Get_Owned_Attribute
    (Self : not null access constant UML_Class)
       return AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property is abstract;
   --  Getter of Class::ownedAttribute.
   --
   --  The attributes (i.e. the properties) owned by the class.

   not overriding function Get_Owned_Operation
    (Self : not null access constant UML_Class)
       return AMF.UML.Operations.Collections.Ordered_Set_Of_UML_Operation is abstract;
   --  Getter of Class::ownedOperation.
   --
   --  The operations owned by the class.

   not overriding function Get_Owned_Reception
    (Self : not null access constant UML_Class)
       return AMF.UML.Receptions.Collections.Set_Of_UML_Reception is abstract;
   --  Getter of Class::ownedReception.
   --
   --  Receptions that objects of this class are willing to accept.

   not overriding function Get_Super_Class
    (Self : not null access constant UML_Class)
       return AMF.UML.Classes.Collections.Set_Of_UML_Class is abstract;
   --  Getter of Class::superClass.
   --
   --  This gives the superclasses of a class.

   not overriding function Extension
    (Self : not null access constant UML_Class)
       return AMF.UML.Extensions.Collections.Set_Of_UML_Extension is abstract;
   --  Operation Class::extension.
   --
   --  Missing derivation for Class::/extension : Extension

   overriding function Inherit
    (Self : not null access constant UML_Class;
     Inhs : AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is abstract;
   --  Operation Class::inherit.
   --
   --  The inherit operation is overridden to exclude redefined properties.

   not overriding function Super_Class
    (Self : not null access constant UML_Class)
       return AMF.UML.Classes.Collections.Set_Of_UML_Class is abstract;
   --  Operation Class::superClass.
   --
   --  Missing derivation for Class::/superClass : Class

end AMF.UML.Classes;
