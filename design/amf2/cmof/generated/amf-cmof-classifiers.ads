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
------------------------------------------------------------------------------
limited with AMF.CMOF.Classifiers.Collections;
limited with AMF.CMOF.Features.Collections;
limited with AMF.CMOF.Named_Elements.Collections;
with AMF.CMOF.Namespaces;
limited with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;

package AMF.CMOF.Classifiers is

   pragma Preelaborate;

   type CMOF_Classifier is limited interface
     and AMF.CMOF.Namespaces.CMOF_Namespace
     and AMF.CMOF.Types.CMOF_Type;

   type CMOF_Classifier_Access is
     access all CMOF_Classifier'Class;
   for CMOF_Classifier_Access'Storage_Size use 0;

   not overriding function Get_Attribute
    (Self : not null access constant CMOF_Classifier)
       return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property is abstract;
   --  Refers to all of the Properties that are direct (i.e. not inherited or 
   --  imported) attributes of the classifier.

   not overriding function Get_Feature
    (Self : not null access constant CMOF_Classifier)
       return AMF.CMOF.Features.Collections.Set_Of_CMOF_Feature is abstract;
   --  Note that there may be members of the Classifier that are of the type 
   --  Feature but are not included in this association, e.g. inherited 
   --  features.

   not overriding function Get_General
    (Self : not null access constant CMOF_Classifier)
       return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier is abstract;
   --  References the general classifier in the Generalization relationship.

   not overriding function Get_Inherited_Member
    (Self : not null access constant CMOF_Classifier)
       return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element is abstract;
   --  Specifies all elements inherited by this classifier from the general 
   --  classifiers.

   not overriding function Get_Is_Final_Specialization
    (Self : not null access constant CMOF_Classifier)
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
    (Self : not null access CMOF_Classifier;
     To   : Boolean) is abstract;

end AMF.CMOF.Classifiers;
