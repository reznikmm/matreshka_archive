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
--  A deployment is the allocation of an artifact or artifact instance to a 
--  deployment target.
--  A component deployment is the deployment of one or more artifacts or 
--  artifact instances to a deployment target, optionally parameterized by a 
--  deployment specification. Examples are executables and configuration files.
------------------------------------------------------------------------------
with AMF.UML.Dependencies;
limited with AMF.UML.Deployed_Artifacts.Collections;
limited with AMF.UML.Deployment_Specifications.Collections;
limited with AMF.UML.Deployment_Targets;

package AMF.UML.Deployments is

   pragma Preelaborate;

   type UML_Deployment_Interface is limited interface
     and AMF.UML.Dependencies.UML_Dependency_Interface;

   type UML_Deployment is
     access all UML_Deployment_Interface'Class;
   for UML_Deployment'Storage_Size use 0;

   not overriding function Get_Configuration
    (Self : not null access constant UML_Deployment_Interface)
       return AMF.UML.Deployment_Specifications.Collections.Set_Of_UML_Deployment_Specification is abstract;
   --  The specification of properties that parameterize the deployment and 
   --  execution of one or more Artifacts.

   not overriding function Get_Deployed_Artifact
    (Self : not null access constant UML_Deployment_Interface)
       return AMF.UML.Deployed_Artifacts.Collections.Set_Of_UML_Deployed_Artifact is abstract;
   --  The Artifacts that are deployed onto a Node. This association 
   --  specializes the supplier association.

   not overriding function Get_Location
    (Self : not null access constant UML_Deployment_Interface)
       return AMF.UML.Deployment_Targets.UML_Deployment_Target is abstract;
   --  The DeployedTarget which is the target of a Deployment.

   not overriding procedure Set_Location
    (Self : not null access UML_Deployment_Interface;
     To   : AMF.UML.Deployment_Targets.UML_Deployment_Target) is abstract;

end AMF.UML.Deployments;
