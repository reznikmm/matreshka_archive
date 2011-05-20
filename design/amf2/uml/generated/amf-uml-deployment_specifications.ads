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

   type UML_Deployment_Specification_Interface is limited interface
     and AMF.UML.Artifacts.UML_Artifact_Interface;

   type UML_Deployment_Specification is
     access all UML_Deployment_Specification_Interface'Class;
   for UML_Deployment_Specification'Storage_Size use 0;

   not overriding function Get_Deployment
    (Self : not null access constant UML_Deployment_Specification_Interface)
       return AMF.UML.Deployments.UML_Deployment is abstract;
   --  The deployment with which the DeploymentSpecification is associated.

   not overriding procedure Set_Deployment
    (Self : not null access UML_Deployment_Specification_Interface;
     To   : AMF.UML.Deployments.UML_Deployment) is abstract;

   not overriding function Get_Deployment_Location
    (Self : not null access constant UML_Deployment_Specification_Interface)
       return Optional_String is abstract;
   --  The location where an Artifact is deployed onto a Node. This is 
   --  typically a 'directory' or 'memory address'.

   not overriding procedure Set_Deployment_Location
    (Self : not null access UML_Deployment_Specification_Interface;
     To   : Optional_String) is abstract;

   not overriding function Get_Execution_Location
    (Self : not null access constant UML_Deployment_Specification_Interface)
       return Optional_String is abstract;
   --  The location where a component Artifact executes. This may be a local 
   --  or remote location.

   not overriding procedure Set_Execution_Location
    (Self : not null access UML_Deployment_Specification_Interface;
     To   : Optional_String) is abstract;

end AMF.UML.Deployment_Specifications;
