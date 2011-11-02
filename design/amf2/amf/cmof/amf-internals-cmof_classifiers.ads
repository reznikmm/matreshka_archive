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
with AMF.CMOF.Classifiers.Collections;
with AMF.CMOF.Features.Collections;
with AMF.CMOF.Named_Elements.Collections;
with AMF.CMOF.Properties.Collections;
with AMF.Internals.CMOF_Named_Elements;
with AMF.Internals.CMOF_Namespaces;
pragma Elaborate (AMF.Internals.CMOF_Namespaces);

package AMF.Internals.CMOF_Classifiers is

   package Namespaces is
     new AMF.Internals.CMOF_Namespaces
          (AMF.Internals.CMOF_Named_Elements.CMOF_Named_Element_Proxy);

   type CMOF_Classifier_Proxy is
     abstract limited new Namespaces.CMOF_Namespace_Proxy
       and AMF.CMOF.Classifiers.CMOF_Classifier
         with null record;

   overriding function Get_Attribute
    (Self : not null access constant CMOF_Classifier_Proxy)
       return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;
   --  Getter of Classifier::attribute.
   --
   --  Refers to all of the Properties that are direct (i.e. not inherited or 
   --  imported) attributes of the classifier.

   overriding function Get_Feature
    (Self : not null access constant CMOF_Classifier_Proxy)
       return AMF.CMOF.Features.Collections.Set_Of_CMOF_Feature;
   --  Getter of Classifier::feature.
   --
   --  Note that there may be members of the Classifier that are of the type 
   --  Feature but are not included in this association, e.g. inherited 
   --  features.

   overriding function Get_General
    (Self : not null access constant CMOF_Classifier_Proxy)
       return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier;
   --  Getter of Classifier::general.
   --
   --  References the general classifier in the Generalization relationship.

   overriding function Get_Inherited_Member
    (Self : not null access constant CMOF_Classifier_Proxy)
       return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element;
   --  Getter of Classifier::inheritedMember.
   --
   --  Specifies all elements inherited by this classifier from the general 
   --  classifiers.

   overriding function Get_Is_Final_Specialization
    (Self : not null access constant CMOF_Classifier_Proxy)
       return Boolean;

end AMF.Internals.CMOF_Classifiers;
