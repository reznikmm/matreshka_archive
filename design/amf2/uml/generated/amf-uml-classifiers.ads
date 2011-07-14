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
limited with AMF.UML.Classifiers.Collections;
limited with AMF.UML.Collaboration_Uses.Collections;
limited with AMF.UML.Features.Collections;
limited with AMF.UML.Generalization_Sets.Collections;
limited with AMF.UML.Generalizations.Collections;
limited with AMF.UML.Named_Elements.Collections;
with AMF.UML.Namespaces;
limited with AMF.UML.Properties.Collections;
with AMF.UML.Redefinable_Elements;
limited with AMF.UML.Redefinable_Template_Signatures;
limited with AMF.UML.Substitutions.Collections;
with AMF.UML.Templateable_Elements;
with AMF.UML.Types;
limited with AMF.UML.Use_Cases.Collections;

package AMF.UML.Classifiers is

   pragma Preelaborate;

   type UML_Classifier is limited interface
     and AMF.UML.Namespaces.UML_Namespace
     and AMF.UML.Types.UML_Type
     and AMF.UML.Templateable_Elements.UML_Templateable_Element
     and AMF.UML.Redefinable_Elements.UML_Redefinable_Element;

   type UML_Classifier_Access is
     access all UML_Classifier'Class;
   for UML_Classifier_Access'Storage_Size use 0;

   not overriding function Get_Attribute
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Properties.Collections.Set_Of_UML_Property is abstract;
   --  Refers to all of the Properties that are direct (i.e. not inherited or 
   --  imported) attributes of the classifier.

   not overriding function Get_Collaboration_Use
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Collaboration_Uses.Collections.Set_Of_UML_Collaboration_Use is abstract;
   --  References the collaboration uses owned by the classifier.

   not overriding function Get_Feature
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Features.Collections.Set_Of_UML_Feature is abstract;
   --  Specifies each feature defined in the classifier.
   --  Note that there may be members of the Classifier that are of the type 
   --  Feature but are not included in this association, e.g. inherited 
   --  features.

   not overriding function Get_General
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is abstract;
   --  Specifies the general Classifiers for this Classifier.
   --  References the general classifier in the Generalization relationship.

   not overriding function Get_Generalization
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Generalizations.Collections.Set_Of_UML_Generalization is abstract;
   --  Specifies the Generalization relationships for this Classifier. These 
   --  Generalizations navigaten to more general classifiers in the 
   --  generalization hierarchy.

   not overriding function Get_Inherited_Member
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is abstract;
   --  Specifies all elements inherited by this classifier from the general 
   --  classifiers.

   not overriding function Get_Is_Abstract
    (Self : not null access constant UML_Classifier)
       return Boolean is abstract;
   --  If true, the Classifier does not provide a complete declaration and can 
   --  typically not be instantiated. An abstract classifier is intended to be 
   --  used by other classifiers e.g. as the target of general 
   --  metarelationships or generalization relationships.

   not overriding procedure Set_Is_Abstract
    (Self : not null access UML_Classifier;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Final_Specialization
    (Self : not null access constant UML_Classifier)
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
    (Self : not null access UML_Classifier;
     To   : Boolean) is abstract;

   not overriding function Get_Owned_Template_Signature
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access is abstract;
   --  The optional template signature specifying the formal template 
   --  parameters.

   not overriding procedure Set_Owned_Template_Signature
    (Self : not null access UML_Classifier;
     To   : AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access) is abstract;

   not overriding function Get_Owned_Use_Case
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Use_Cases.Collections.Set_Of_UML_Use_Case is abstract;
   --  References the use cases owned by this classifier.

   not overriding function Get_Powertype_Extent
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Generalization_Sets.Collections.Set_Of_UML_Generalization_Set is abstract;
   --  Designates the GeneralizationSet of which the associated Classifier is 
   --  a power type.

   not overriding function Get_Redefined_Classifier
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is abstract;
   --  References the Classifiers that are redefined by this Classifier.

   not overriding function Get_Representation
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access is abstract;
   --  References a collaboration use which indicates the collaboration that 
   --  represents this classifier.

   not overriding procedure Set_Representation
    (Self : not null access UML_Classifier;
     To   : AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access) is abstract;

   not overriding function Get_Substitution
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Substitutions.Collections.Set_Of_UML_Substitution is abstract;
   --  References the substitutions that are owned by this Classifier.

   not overriding function Get_Template_Parameter
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access is abstract;
   --  The template parameter that exposes this element as a formal parameter.

   not overriding procedure Set_Template_Parameter
    (Self : not null access UML_Classifier;
     To   : AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access) is abstract;

   not overriding function Get_Use_Case
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Use_Cases.Collections.Set_Of_UML_Use_Case is abstract;
   --  The set of use cases for which this Classifier is the subject.

   not overriding function All_Features
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Features.Collections.Set_Of_UML_Feature is abstract;
   --  The query allFeatures() gives all of the features in the namespace of 
   --  the classifier. In general, through mechanisms such as inheritance, 
   --  this will be a larger set than feature.

   not overriding function All_Parents
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is abstract;
   --  The query allParents() gives all of the direct and indirect ancestors 
   --  of a generalized Classifier.

   not overriding function Conforms_To
    (Self : not null access constant UML_Classifier;
     Other : AMF.UML.Classifiers.UML_Classifier_Access)
       return Boolean is abstract;
   --  The query conformsTo() gives true for a classifier that defines a type 
   --  that conforms to another. This is used, for example, in the 
   --  specification of signature conformance for operations.

   not overriding function General
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is abstract;
   --  The general classifiers are the classifiers referenced by the 
   --  generalization relationships.

   not overriding function Has_Visibility_Of
    (Self : not null access constant UML_Classifier;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return Boolean is abstract;
   --  The query hasVisibilityOf() determines whether a named element is 
   --  visible in the classifier. By default all are visible. It is only 
   --  called when the argument is something owned by a parent.

   not overriding function Inherit
    (Self : not null access constant UML_Classifier;
     Inhs : AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is abstract;
   --  The query inherit() defines how to inherit a set of elements. Here the 
   --  operation is defined to inherit them all. It is intended to be 
   --  redefined in circumstances where inheritance is affected by 
   --  redefinition.
   --  The inherit operation is overridden to exclude redefined properties.

   not overriding function Inheritable_Members
    (Self : not null access constant UML_Classifier;
     C : AMF.UML.Classifiers.UML_Classifier_Access)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is abstract;
   --  The query inheritableMembers() gives all of the members of a classifier 
   --  that may be inherited in one of its descendants, subject to whatever 
   --  visibility restrictions apply.

   not overriding function Inherited_Member
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is abstract;
   --  The inheritedMember association is derived by inheriting the 
   --  inheritable members of the parents.
   --  The inheritedMember association is derived by inheriting the 
   --  inheritable members of the parents.

   overriding function Is_Template
    (Self : not null access constant UML_Classifier)
       return Boolean is abstract;
   --  The query isTemplate() returns whether this templateable element is 
   --  actually a template.

   not overriding function May_Specialize_Type
    (Self : not null access constant UML_Classifier;
     C : AMF.UML.Classifiers.UML_Classifier_Access)
       return Boolean is abstract;
   --  The query maySpecializeType() determines whether this classifier may 
   --  have a generalization relationship to classifiers of the specified 
   --  type. By default a classifier may specialize classifiers of the same or 
   --  a more general type. It is intended to be redefined by classifiers that 
   --  have different specialization constraints.

   not overriding function Parents
    (Self : not null access constant UML_Classifier)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is abstract;
   --  The query parents() gives all of the immediate ancestors of a 
   --  generalized Classifier.

end AMF.UML.Classifiers;
