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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  A port is a property of a classifier that specifies a distinct interaction 
--  point between that classifier and its environment or between the (behavior 
--  of the) classifier and its internal parts. Ports are connected to 
--  properties of the classifier by connectors through which requests can be 
--  made to invoke the behavioral features of a classifier. A Port may specify 
--  the services a classifier provides (offers) to its environment as well as 
--  the services that a classifier expects (requires) of its environment.
--  
--  A port has an associated protocol state machine.
------------------------------------------------------------------------------
limited with AMF.UML.Interfaces.Collections;
limited with AMF.UML.Ports.Collections;
with AMF.UML.Properties;
limited with AMF.UML.Protocol_State_Machines;

package AMF.UML.Ports is

   pragma Preelaborate;

   type UML_Port is limited interface
     and AMF.UML.Properties.UML_Property;

   type UML_Port_Access is
     access all UML_Port'Class;
   for UML_Port_Access'Storage_Size use 0;

   not overriding function Get_Is_Behavior
    (Self : not null access constant UML_Port)
       return Boolean is abstract;
   --  Getter of Port::isBehavior.
   --
   --  Specifies whether requests arriving at this port are sent to the 
   --  classifier behavior of this classifier. Such ports are referred to as 
   --  behavior port. Any invocation of a behavioral feature targeted at a 
   --  behavior port will be handled by the instance of the owning classifier 
   --  itself, rather than by any instances that this classifier may contain.

   not overriding procedure Set_Is_Behavior
    (Self : not null access UML_Port;
     To   : Boolean) is abstract;
   --  Setter of Port::isBehavior.
   --
   --  Specifies whether requests arriving at this port are sent to the 
   --  classifier behavior of this classifier. Such ports are referred to as 
   --  behavior port. Any invocation of a behavioral feature targeted at a 
   --  behavior port will be handled by the instance of the owning classifier 
   --  itself, rather than by any instances that this classifier may contain.

   not overriding function Get_Is_Conjugated
    (Self : not null access constant UML_Port)
       return Boolean is abstract;
   --  Getter of Port::isConjugated.
   --
   --  Specifies the way that the provided and required interfaces are derived 
   --  from the Port’s Type. The default value is false.

   not overriding procedure Set_Is_Conjugated
    (Self : not null access UML_Port;
     To   : Boolean) is abstract;
   --  Setter of Port::isConjugated.
   --
   --  Specifies the way that the provided and required interfaces are derived 
   --  from the Port’s Type. The default value is false.

   not overriding function Get_Is_Service
    (Self : not null access constant UML_Port)
       return Boolean is abstract;
   --  Getter of Port::isService.
   --
   --  If true indicates that this port is used to provide the published 
   --  functionality of a classifier; if false, this port is used to implement 
   --  the classifier but is not part of the essential externally-visible 
   --  functionality of the classifier and can, therefore, be altered or 
   --  deleted along with the internal implementation of the classifier and 
   --  other properties that are considered part of its implementation.

   not overriding procedure Set_Is_Service
    (Self : not null access UML_Port;
     To   : Boolean) is abstract;
   --  Setter of Port::isService.
   --
   --  If true indicates that this port is used to provide the published 
   --  functionality of a classifier; if false, this port is used to implement 
   --  the classifier but is not part of the essential externally-visible 
   --  functionality of the classifier and can, therefore, be altered or 
   --  deleted along with the internal implementation of the classifier and 
   --  other properties that are considered part of its implementation.

   not overriding function Get_Protocol
    (Self : not null access constant UML_Port)
       return AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access is abstract;
   --  Getter of Port::protocol.
   --
   --  References an optional protocol state machine which describes valid 
   --  interactions at this interaction point.

   not overriding procedure Set_Protocol
    (Self : not null access UML_Port;
     To   : AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access) is abstract;
   --  Setter of Port::protocol.
   --
   --  References an optional protocol state machine which describes valid 
   --  interactions at this interaction point.

   not overriding function Get_Provided
    (Self : not null access constant UML_Port)
       return AMF.UML.Interfaces.Collections.Set_Of_UML_Interface is abstract;
   --  Getter of Port::provided.
   --
   --  References the interfaces specifying the set of operations and 
   --  receptions that the classifier offers to its environment via this port, 
   --  and which it will handle either directly or by forwarding it to a part 
   --  of its internal structure. This association is derived according to the 
   --  value of isConjugated. If isConjugated is false, provided is derived as 
   --  the union of the sets of interfaces realized by the type of the port 
   --  and its supertypes, or directly from the type of the port if the port 
   --  is typed by an interface. If isConjugated is true, it is derived as the 
   --  union of the sets of interfaces used by the type of the port and its 
   --  supertypes.

   not overriding function Get_Redefined_Port
    (Self : not null access constant UML_Port)
       return AMF.UML.Ports.Collections.Set_Of_UML_Port is abstract;
   --  Getter of Port::redefinedPort.
   --
   --  A port may be redefined when its containing classifier is specialized. 
   --  The redefining port may have additional interfaces to those that are 
   --  associated with the redefined port or it may replace an interface by 
   --  one of its subtypes.

   not overriding function Get_Required
    (Self : not null access constant UML_Port)
       return AMF.UML.Interfaces.Collections.Set_Of_UML_Interface is abstract;
   --  Getter of Port::required.
   --
   --  References the interfaces specifying the set of operations and 
   --  receptions that the classifier expects its environment to handle via 
   --  this port. This association is derived according to the value of 
   --  isConjugated. If isConjugated is false, required is derived as the 
   --  union of the sets of interfaces used by the type of the port and its 
   --  supertypes. If isConjugated is true, it is derived as the union of the 
   --  sets of interfaces realized by the type of the port and its supertypes, 
   --  or directly from the type of the port if the port is typed by an 
   --  interface.

   not overriding function Provided
    (Self : not null access constant UML_Port)
       return AMF.UML.Interfaces.Collections.Set_Of_UML_Interface is abstract;
   --  Operation Port::provided.
   --
   --  Missing derivation for Port::/provided : Interface

   not overriding function Required
    (Self : not null access constant UML_Port)
       return AMF.UML.Interfaces.Collections.Set_Of_UML_Interface is abstract;
   --  Operation Port::required.
   --
   --  Missing derivation for Port::/required : Interface

end AMF.UML.Ports;
