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
--  A classifier is a classification of instances - it describes a set of 
--  instances that have features in common. A classifier can specify a 
--  generalization hierarchy by referencing its general classifiers.
--  A classifier has the capability to own collaboration uses. These 
--  collaboration uses link a collaboration with the classifier to give a 
--  description of the workings of the classifier.
--  Classifier is defined to be a kind of templateable element so that a 
--  classifier can be parameterized. It is also defined to be a kind of 
--  parameterable element so that a classifier can be a formal template 
--  parameter.
--  A classifier has the capability to own use cases. Although the owning 
--  classifier typically represents the subject to which the owned use cases 
--  apply, this is not necessarily the case. In principle, the same use case 
--  can be applied to multiple subjects, as identified by the subject 
--  association role of a use case.
------------------------------------------------------------------------------
limited with AMF.UML.Classifier_Template_Parameters;
limited with AMF.UML.Collaboration_Uses;
limited with AMF.UML.Features;
limited with AMF.UML.Generalization_Sets;
limited with AMF.UML.Generalizations;
limited with AMF.UML.Named_Elements;
with AMF.UML.Namespaces;
limited with AMF.UML.Properties;
with AMF.UML.Redefinable_Elements;
limited with AMF.UML.Redefinable_Template_Signatures;
limited with AMF.UML.Substitutions;
with AMF.UML.Templateable_Elements;
with AMF.UML.Types;
limited with AMF.UML.Use_Cases;

package AMF.UML.Classifiers is

   pragma Preelaborate;

   type UML_Classifier_Interface is limited interface
     and AMF.UML.Namespaces.UML_Namespace_Interface
     and AMF.UML.Types.UML_Type_Interface
     and AMF.UML.Templateable_Elements.UML_Templateable_Element_Interface
     and AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Interface;

   type UML_Classifier is
     access all UML_Classifier_Interface'Class;

   type Set_Of_UML_Classifier is null record;
   type Ordered_Set_Of_UML_Classifier is null record;

   not overriding function Get_Attribute
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Properties.Set_Of_UML_Property is abstract;
   --  Refers to all of the Properties that are direct (i.e. not inherited or 
   --  imported) attributes of the classifier.

   not overriding function Get_Collaboration_Use
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Collaboration_Uses.Set_Of_UML_Collaboration_Use is abstract;
   --  References the collaboration uses owned by the classifier.

   not overriding function Get_Feature
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Features.Set_Of_UML_Feature is abstract;
   --  Specifies each feature defined in the classifier.
   --  Note that there may be members of the Classifier that are of the type 
   --  Feature but are not included in this association, e.g. inherited 
   --  features.

   not overriding function Get_General
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Classifiers.Set_Of_UML_Classifier is abstract;
   --  Specifies the general Classifiers for this Classifier.
   --  References the general classifier in the Generalization relationship.

   not overriding function Get_Generalization
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Generalizations.Set_Of_UML_Generalization is abstract;
   --  Specifies the Generalization relationships for this Classifier. These 
   --  Generalizations navigaten to more general classifiers in the 
   --  generalization hierarchy.

   not overriding function Get_Inherited_Member
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Named_Elements.Set_Of_UML_Named_Element is abstract;
   --  Specifies all elements inherited by this classifier from the general 
   --  classifiers.

   not overriding function Get_Is_Abstract
    (Self : not null access constant UML_Classifier_Interface)
       return Boolean is abstract;
   --  If true, the Classifier does not provide a complete declaration and can 
   --  typically not be instantiated. An abstract classifier is intended to be 
   --  used by other classifiers e.g. as the target of general 
   --  metarelationships or generalization relationships.

   not overriding procedure Set_Is_Abstract
    (Self : not null access UML_Classifier_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Final_Specialization
    (Self : not null access constant UML_Classifier_Interface)
       return Boolean is abstract;
   --  If true, the Classifier cannot be specialized by generalization. Note 
   --  that this property is preserved through package merge operations; that 
   --  is, the capability to specialize a Classifier (i.e., 
   --  isFinalSpecialization =false) must be preserved in the resulting 
   --  Classifier of a package merge operation where a Classifier with 
   --  isFinalSpecialization =false is merged with a matching Classifier with 
   --  isFinalSpecialization =true: the resulting Classifier will have 
   --  isFinalSpecialization =false.

   not overriding procedure Set_Is_Final_Specialization
    (Self : not null access UML_Classifier_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Owned_Template_Signature
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature is abstract;
   --  The optional template signature specifying the formal template 
   --  parameters.

   not overriding procedure Set_Owned_Template_Signature
    (Self : not null access UML_Classifier_Interface;
     To   : AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature) is abstract;

   not overriding function Get_Owned_Use_Case
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Use_Cases.Set_Of_UML_Use_Case is abstract;
   --  References the use cases owned by this classifier.

   not overriding function Get_Powertype_Extent
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Generalization_Sets.Set_Of_UML_Generalization_Set is abstract;
   --  Designates the GeneralizationSet of which the associated Classifier is 
   --  a power type.

   not overriding function Get_Redefined_Classifier
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Classifiers.Set_Of_UML_Classifier is abstract;
   --  References the Classifiers that are redefined by this Classifier.

   not overriding function Get_Representation
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Collaboration_Uses.UML_Collaboration_Use is abstract;
   --  References a collaboration use which indicates the collaboration that 
   --  represents this classifier.

   not overriding procedure Set_Representation
    (Self : not null access UML_Classifier_Interface;
     To   : AMF.UML.Collaboration_Uses.UML_Collaboration_Use) is abstract;

   not overriding function Get_Substitution
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Substitutions.Set_Of_UML_Substitution is abstract;
   --  References the substitutions that are owned by this Classifier.

   not overriding function Get_Template_Parameter
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter is abstract;
   --  The template parameter that exposes this element as a formal parameter.

   not overriding procedure Set_Template_Parameter
    (Self : not null access UML_Classifier_Interface;
     To   : AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter) is abstract;

   not overriding function Get_Use_Case
    (Self : not null access constant UML_Classifier_Interface)
       return AMF.UML.Use_Cases.Set_Of_UML_Use_Case is abstract;
   --  The set of use cases for which this Classifier is the subject.

end AMF.UML.Classifiers;