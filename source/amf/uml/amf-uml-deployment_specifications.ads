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
--  A deployment specification specifies a set of properties that determine 
--  execution parameters of a component artifact that is deployed on a node. A 
--  deployment specification can be aimed at a specific type of container. An 
--  artifact that reifies or implements deployment specification properties is 
--  a deployment descriptor.
------------------------------------------------------------------------------
with AMF.UML.Artifacts;
limited with AMF.UML.Deployments;

package AMF.UML.Deployment_Specifications is

   pragma Preelaborate;

   type UML_Deployment_Specification is limited interface
     and AMF.UML.Artifacts.UML_Artifact;

   type UML_Deployment_Specification_Access is
     access all UML_Deployment_Specification'Class;
   for UML_Deployment_Specification_Access'Storage_Size use 0;

   not overriding function Get_Deployment
    (Self : not null access constant UML_Deployment_Specification)
       return AMF.UML.Deployments.UML_Deployment_Access is abstract;
   --  Getter of DeploymentSpecification::deployment.
   --
   --  The deployment with which the DeploymentSpecification is associated.

   not overriding procedure Set_Deployment
    (Self : not null access UML_Deployment_Specification;
     To   : AMF.UML.Deployments.UML_Deployment_Access) is abstract;
   --  Setter of DeploymentSpecification::deployment.
   --
   --  The deployment with which the DeploymentSpecification is associated.

   not overriding function Get_Deployment_Location
    (Self : not null access constant UML_Deployment_Specification)
       return AMF.Optional_String is abstract;
   --  Getter of DeploymentSpecification::deploymentLocation.
   --
   --  The location where an Artifact is deployed onto a Node. This is 
   --  typically a 'directory' or 'memory address'.

   not overriding procedure Set_Deployment_Location
    (Self : not null access UML_Deployment_Specification;
     To   : AMF.Optional_String) is abstract;
   --  Setter of DeploymentSpecification::deploymentLocation.
   --
   --  The location where an Artifact is deployed onto a Node. This is 
   --  typically a 'directory' or 'memory address'.

   not overriding function Get_Execution_Location
    (Self : not null access constant UML_Deployment_Specification)
       return AMF.Optional_String is abstract;
   --  Getter of DeploymentSpecification::executionLocation.
   --
   --  The location where a component Artifact executes. This may be a local 
   --  or remote location.

   not overriding procedure Set_Execution_Location
    (Self : not null access UML_Deployment_Specification;
     To   : AMF.Optional_String) is abstract;
   --  Setter of DeploymentSpecification::executionLocation.
   --
   --  The location where a component Artifact executes. This may be a local 
   --  or remote location.

end AMF.UML.Deployment_Specifications;
