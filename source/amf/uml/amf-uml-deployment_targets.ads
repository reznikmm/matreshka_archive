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
--  A deployment target is the location for a deployed artifact.
------------------------------------------------------------------------------
limited with AMF.UML.Deployments.Collections;
with AMF.UML.Named_Elements;
limited with AMF.UML.Packageable_Elements.Collections;

package AMF.UML.Deployment_Targets is

   pragma Preelaborate;

   type UML_Deployment_Target is limited interface
     and AMF.UML.Named_Elements.UML_Named_Element;

   type UML_Deployment_Target_Access is
     access all UML_Deployment_Target'Class;
   for UML_Deployment_Target_Access'Storage_Size use 0;

   not overriding function Get_Deployed_Element
    (Self : not null access constant UML_Deployment_Target)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is abstract;
   --  Getter of DeploymentTarget::deployedElement.
   --
   --  The set of elements that are manifested in an Artifact that is involved 
   --  in Deployment to a DeploymentTarget.

   not overriding function Get_Deployment
    (Self : not null access constant UML_Deployment_Target)
       return AMF.UML.Deployments.Collections.Set_Of_UML_Deployment is abstract;
   --  Getter of DeploymentTarget::deployment.
   --
   --  The set of Deployments for a DeploymentTarget.

   not overriding function Deployed_Element
    (Self : not null access constant UML_Deployment_Target)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is abstract;
   --  Operation DeploymentTarget::deployedElement.
   --
   --  Missing derivation for DeploymentTarget::/deployedElement : 
   --  PackageableElement

end AMF.UML.Deployment_Targets;
