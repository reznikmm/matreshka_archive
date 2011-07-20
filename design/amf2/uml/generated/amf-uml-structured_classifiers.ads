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
--  A structured classifier is an abstract metaclass that represents any 
--  classifier whose behavior can be fully or partly described by the 
--  collaboration of owned or referenced instances.
------------------------------------------------------------------------------
with AMF.UML.Classifiers;
limited with AMF.UML.Connectable_Elements.Collections;
limited with AMF.UML.Connectors.Collections;
limited with AMF.UML.Properties.Collections;

package AMF.UML.Structured_Classifiers is

   pragma Preelaborate;

   type UML_Structured_Classifier is limited interface
     and AMF.UML.Classifiers.UML_Classifier;

   type UML_Structured_Classifier_Access is
     access all UML_Structured_Classifier'Class;
   for UML_Structured_Classifier_Access'Storage_Size use 0;

   not overriding function Get_Owned_Attribute
    (Self : not null access constant UML_Structured_Classifier)
       return AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property is abstract;
   --  Getter of StructuredClassifier::ownedAttribute.
   --
   --  References the properties owned by the classifier.

   not overriding function Get_Owned_Connector
    (Self : not null access constant UML_Structured_Classifier)
       return AMF.UML.Connectors.Collections.Set_Of_UML_Connector is abstract;
   --  Getter of StructuredClassifier::ownedConnector.
   --
   --  References the connectors owned by the classifier.

   not overriding function Get_Part
    (Self : not null access constant UML_Structured_Classifier)
       return AMF.UML.Properties.Collections.Set_Of_UML_Property is abstract;
   --  Getter of StructuredClassifier::part.
   --
   --  References the properties specifying instances that the classifier owns 
   --  by composition. This association is derived, selecting those owned 
   --  properties where isComposite is true.

   not overriding function Get_Role
    (Self : not null access constant UML_Structured_Classifier)
       return AMF.UML.Connectable_Elements.Collections.Set_Of_UML_Connectable_Element is abstract;
   --  Getter of StructuredClassifier::role.
   --
   --  References the roles that instances may play in this classifier.

   not overriding function Part
    (Self : not null access constant UML_Structured_Classifier)
       return AMF.UML.Properties.Collections.Set_Of_UML_Property is abstract;
   --  Missing derivation for StructuredClassifier::/part : Property

end AMF.UML.Structured_Classifiers;
