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
--  A generalization is a taxonomic relationship between a more general 
--  classifier and a more specific classifier. Each instance of the specific 
--  classifier is also an indirect instance of the general classifier. Thus, 
--  the specific classifier inherits the features of the more general 
--  classifier.
--  A generalization relates a specific classifier to a more general 
--  classifier, and is owned by the specific classifier.
------------------------------------------------------------------------------
limited with AMF.UML.Classifiers;
with AMF.UML.Directed_Relationships;
limited with AMF.UML.Generalization_Sets.Collections;

package AMF.UML.Generalizations is

   pragma Preelaborate;

   type UML_Generalization is limited interface
     and AMF.UML.Directed_Relationships.UML_Directed_Relationship;

   type UML_Generalization_Access is
     access all UML_Generalization'Class;
   for UML_Generalization_Access'Storage_Size use 0;

   not overriding function Get_General
    (Self : not null access constant UML_Generalization)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  References the general classifier in the Generalization relationship.

   not overriding procedure Set_General
    (Self : not null access UML_Generalization;
     To   : AMF.UML.Classifiers.UML_Classifier_Access) is abstract;

   not overriding function Get_Generalization_Set
    (Self : not null access constant UML_Generalization)
       return AMF.UML.Generalization_Sets.Collections.Set_Of_UML_Generalization_Set is abstract;
   --  Designates a set in which instances of Generalization is considered 
   --  members.

   not overriding function Get_Is_Substitutable
    (Self : not null access constant UML_Generalization)
       return AMF.Optional_Boolean is abstract;
   --  Indicates whether the specific classifier can be used wherever the 
   --  general classifier can be used. If true, the execution traces of the 
   --  specific classifier will be a superset of the execution traces of the 
   --  general classifier.

   not overriding procedure Set_Is_Substitutable
    (Self : not null access UML_Generalization;
     To   : AMF.Optional_Boolean) is abstract;

   not overriding function Get_Specific
    (Self : not null access constant UML_Generalization)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  References the specializing classifier in the Generalization 
   --  relationship.

   not overriding procedure Set_Specific
    (Self : not null access UML_Generalization;
     To   : AMF.UML.Classifiers.UML_Classifier_Access) is abstract;

end AMF.UML.Generalizations;
