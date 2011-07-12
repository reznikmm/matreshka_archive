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
--  An artifact is the specification of a physical piece of information that 
--  is used or produced by a software development process, or by deployment 
--  and operation of a system. Examples of artifacts include model files, 
--  source files, scripts, and binary executable files, a table in a database 
--  system, a development deliverable, or a word-processing document, a mail 
--  message.
--  An artifact is the source of a deployment to a node.
------------------------------------------------------------------------------
limited with AMF.UML.Artifacts.Collections;
with AMF.UML.Classifiers;
with AMF.UML.Deployed_Artifacts;
limited with AMF.UML.Manifestations.Collections;
limited with AMF.UML.Operations.Collections;
limited with AMF.UML.Properties.Collections;

package AMF.UML.Artifacts is

   pragma Preelaborate;

   type UML_Artifact is limited interface
     and AMF.UML.Classifiers.UML_Classifier
     and AMF.UML.Deployed_Artifacts.UML_Deployed_Artifact;

   type UML_Artifact_Access is
     access all UML_Artifact'Class;
   for UML_Artifact_Access'Storage_Size use 0;

   not overriding function Get_File_Name
    (Self : not null access constant UML_Artifact)
       return AMF.Optional_String is abstract;
   --  A concrete name that is used to refer to the Artifact in a physical 
   --  context. Example: file system name, universal resource locator.

   not overriding procedure Set_File_Name
    (Self : not null access UML_Artifact;
     To   : AMF.Optional_String) is abstract;

   not overriding function Get_Manifestation
    (Self : not null access constant UML_Artifact)
       return AMF.UML.Manifestations.Collections.Set_Of_UML_Manifestation is abstract;
   --  The set of model elements that are manifested in the Artifact. That is, 
   --  these model elements are utilized in the construction (or generation) 
   --  of the artifact.

   not overriding function Get_Nested_Artifact
    (Self : not null access constant UML_Artifact)
       return AMF.UML.Artifacts.Collections.Set_Of_UML_Artifact is abstract;
   --  The Artifacts that are defined (nested) within the Artifact. The 
   --  association is a specialization of the ownedMember association from 
   --  Namespace to NamedElement.

   not overriding function Get_Owned_Attribute
    (Self : not null access constant UML_Artifact)
       return AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property is abstract;
   --  The attributes or association ends defined for the Artifact. The 
   --  association is a specialization of the ownedMember association.

   not overriding function Get_Owned_Operation
    (Self : not null access constant UML_Artifact)
       return AMF.UML.Operations.Collections.Ordered_Set_Of_UML_Operation is abstract;
   --  The Operations defined for the Artifact. The association is a 
   --  specialization of the ownedMember association.

end AMF.UML.Artifacts;
