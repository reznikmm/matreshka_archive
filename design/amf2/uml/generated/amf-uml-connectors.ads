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
--  A delegation connector is a connector that links the external contract of 
--  a component (as specified by its ports) to the realization of that 
--  behavior. It represents the forwarding of events (operation requests and 
--  events): a signal that arrives at a port that has a delegation connector 
--  to one or more parts or ports on parts will be passed on to those targets 
--  for handling. An assembly connector is a connector between two or more 
--  parts or ports on parts that defines that one or more parts provide the 
--  services that other parts use.
--  Specifies a link that enables communication between two or more instances. 
--  This link may be an instance of an association, or it may represent the 
--  possibility of the instances being able to communicate because their 
--  identities are known by virtue of being passed in as parameters, held in 
--  variables or slots, or because the communicating instances are the same 
--  instance. The link may be realized by something as simple as a pointer or 
--  by something as complex as a network connection. In contrast to 
--  associations, which specify links between any instance of the associated 
--  classifiers, connectors specify links between instances playing the 
--  connected parts only.
------------------------------------------------------------------------------
limited with AMF.UML.Associations;
limited with AMF.UML.Behaviors.Collections;
limited with AMF.UML.Connector_Ends.Collections;
limited with AMF.UML.Connectors.Collections;
with AMF.UML.Features;

package AMF.UML.Connectors is

   pragma Preelaborate;

   type UML_Connector is limited interface
     and AMF.UML.Features.UML_Feature;

   type UML_Connector_Access is
     access all UML_Connector'Class;
   for UML_Connector_Access'Storage_Size use 0;

   not overriding function Get_Contract
    (Self : not null access constant UML_Connector)
       return AMF.UML.Behaviors.Collections.Set_Of_UML_Behavior is abstract;
   --  The set of Behaviors that specify the valid interaction patterns across 
   --  the connector.

   not overriding function Get_End
    (Self : not null access constant UML_Connector)
       return AMF.UML.Connector_Ends.Collections.Ordered_Set_Of_UML_Connector_End is abstract;
   --  A connector consists of at least two connector ends, each representing 
   --  the participation of instances of the classifiers typing the 
   --  connectable elements attached to this end. The set of connector ends is 
   --  ordered.

   not overriding function Get_Kind
    (Self : not null access constant UML_Connector)
       return AMF.UML.UML_Connector_Kind is abstract;
   --  Indicates the kind of connector. This is derived: a connector with one 
   --  or more ends connected to a Port which is not on a Part and which is 
   --  not a behavior port is a delegation; otherwise it is an assembly.

   not overriding function Get_Redefined_Connector
    (Self : not null access constant UML_Connector)
       return AMF.UML.Connectors.Collections.Set_Of_UML_Connector is abstract;
   --  A connector may be redefined when its containing classifier is 
   --  specialized. The redefining connector may have a type that specializes 
   --  the type of the redefined connector. The types of the connector ends of 
   --  the redefining connector may specialize the types of the connector ends 
   --  of the redefined connector. The properties of the connector ends of the 
   --  redefining connector may be replaced.

   not overriding function Get_Type
    (Self : not null access constant UML_Connector)
       return AMF.UML.Associations.UML_Association_Access is abstract;
   --  An optional association that specifies the link corresponding to this 
   --  connector.

   not overriding procedure Set_Type
    (Self : not null access UML_Connector;
     To   : AMF.UML.Associations.UML_Association_Access) is abstract;

   not overriding function Kind
    (Self : not null access constant UML_Connector)
       return AMF.UML.UML_Connector_Kind is abstract;
   --  Missing derivation for Connector::/kind : ConnectorKind

end AMF.UML.Connectors;
