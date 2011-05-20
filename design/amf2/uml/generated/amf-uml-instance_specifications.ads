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
--  An instance specification is a model element that represents an instance 
--  in a modeled system.
--  An instance specification has the capability of being a deployment target 
--  in a deployment relationship, in the case that it is an instance of a 
--  node. It is also has the capability of being a deployed artifact, if it is 
--  an instance of an artifact.
------------------------------------------------------------------------------
limited with AMF.UML.Classifiers.Collections;
with AMF.UML.Deployed_Artifacts;
with AMF.UML.Deployment_Targets;
with AMF.UML.Packageable_Elements;
limited with AMF.UML.Slots.Collections;
limited with AMF.UML.Value_Specifications;

package AMF.UML.Instance_Specifications is

   pragma Preelaborate;

   type UML_Instance_Specification_Interface is limited interface
     and AMF.UML.Deployment_Targets.UML_Deployment_Target_Interface
     and AMF.UML.Deployed_Artifacts.UML_Deployed_Artifact_Interface
     and AMF.UML.Packageable_Elements.UML_Packageable_Element_Interface;

   type UML_Instance_Specification is
     access all UML_Instance_Specification_Interface'Class;
   for UML_Instance_Specification'Storage_Size use 0;

   not overriding function Get_Classifier
    (Self : not null access constant UML_Instance_Specification_Interface)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is abstract;
   --  The classifier or classifiers of the represented instance. If multiple 
   --  classifiers are specified, the instance is classified by all of them.

   not overriding function Get_Slot
    (Self : not null access constant UML_Instance_Specification_Interface)
       return AMF.UML.Slots.Collections.Set_Of_UML_Slot is abstract;
   --  A slot giving the value or values of a structural feature of the 
   --  instance. An instance specification can have one slot per structural 
   --  feature of its classifiers, including inherited features. It is not 
   --  necessary to model a slot for each structural feature, in which case 
   --  the instance specification is a partial description.

   not overriding function Get_Specification
    (Self : not null access constant UML_Instance_Specification_Interface)
       return AMF.UML.Value_Specifications.UML_Value_Specification is abstract;
   --  A specification of how to compute, derive, or construct the instance.

   not overriding procedure Set_Specification
    (Self : not null access UML_Instance_Specification_Interface;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification) is abstract;

end AMF.UML.Instance_Specifications;
