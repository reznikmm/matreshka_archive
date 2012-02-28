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
--  A component represents a modular part of a system that encapsulates its 
--  contents and whose manifestation is replaceable within its environment.
--  
--  In the namespace of a component, all model elements that are involved in 
--  or related to its definition are either owned or imported explicitly. This 
--  may include, for example, use cases and dependencies (e.g. mappings), 
--  packages, components, and artifacts.
------------------------------------------------------------------------------
with AMF.UML.Classes;
limited with AMF.UML.Classifiers;
limited with AMF.UML.Component_Realizations.Collections;
limited with AMF.UML.Interfaces.Collections;
limited with AMF.UML.Packageable_Elements.Collections;

package AMF.UML.Components is

   pragma Preelaborate;

   type UML_Component is limited interface
     and AMF.UML.Classes.UML_Class;

   type UML_Component_Access is
     access all UML_Component'Class;
   for UML_Component_Access'Storage_Size use 0;

   not overriding function Get_Is_Indirectly_Instantiated
    (Self : not null access constant UML_Component)
       return Boolean is abstract;
   --  Getter of Component::isIndirectlyInstantiated.
   --
   --  isIndirectlyInstantiated : Boolean {default = true} The kind of 
   --  instantiation that applies to a Component. If false, the component is 
   --  instantiated as an addressable object. If true, the Component is 
   --  defined at design-time, but at run-time (or execution-time) an object 
   --  specified by the Component does not exist, that is, the component is 
   --  instantiated indirectly, through the instantiation of its realizing 
   --  classifiers or parts. Several standard stereotypes use this meta 
   --  attribute (e.g., «specification», «focus», «subsystem»).

   not overriding procedure Set_Is_Indirectly_Instantiated
    (Self : not null access UML_Component;
     To   : Boolean) is abstract;
   --  Setter of Component::isIndirectlyInstantiated.
   --
   --  isIndirectlyInstantiated : Boolean {default = true} The kind of 
   --  instantiation that applies to a Component. If false, the component is 
   --  instantiated as an addressable object. If true, the Component is 
   --  defined at design-time, but at run-time (or execution-time) an object 
   --  specified by the Component does not exist, that is, the component is 
   --  instantiated indirectly, through the instantiation of its realizing 
   --  classifiers or parts. Several standard stereotypes use this meta 
   --  attribute (e.g., «specification», «focus», «subsystem»).

   not overriding function Get_Packaged_Element
    (Self : not null access constant UML_Component)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is abstract;
   --  Getter of Component::packagedElement.
   --
   --  The set of PackageableElements that a Component owns. In the namespace 
   --  of a component, all model elements that are involved in or related to 
   --  its definition may be owned or imported explicitly. These may include 
   --  e.g. Classes, Interfaces, Components, Packages, Use cases, Dependencies 
   --  (e.g. mappings), and Artifacts.

   not overriding function Get_Provided
    (Self : not null access constant UML_Component)
       return AMF.UML.Interfaces.Collections.Set_Of_UML_Interface is abstract;
   --  Getter of Component::provided.
   --
   --  The interfaces that the component exposes to its environment. These 
   --  interfaces may be Realized by the Component or any of its 
   --  realizingClassifiers, or they may be the Interfaces that are provided 
   --  by its public Ports.

   not overriding function Get_Realization
    (Self : not null access constant UML_Component)
       return AMF.UML.Component_Realizations.Collections.Set_Of_UML_Component_Realization is abstract;
   --  Getter of Component::realization.
   --
   --  The set of Realizations owned by the Component. Realizations reference 
   --  the Classifiers of which the Component is an abstraction; i.e., that 
   --  realize its behavior.

   not overriding function Get_Required
    (Self : not null access constant UML_Component)
       return AMF.UML.Interfaces.Collections.Set_Of_UML_Interface is abstract;
   --  Getter of Component::required.
   --
   --  The interfaces that the component requires from other components in its 
   --  environment in order to be able to offer its full set of provided 
   --  functionality. These interfaces may be used by the Component or any of 
   --  its realizingClassifiers, or they may be the Interfaces that are 
   --  required by its public Ports.

   not overriding function Provided
    (Self : not null access constant UML_Component)
       return AMF.UML.Interfaces.Collections.Set_Of_UML_Interface is abstract;
   --  Operation Component::provided.
   --
   --  Missing derivation for Component::/provided : Interface

   not overriding function Realized_Interfaces
    (Self : not null access constant UML_Component;
     Classifier : AMF.UML.Classifiers.UML_Classifier_Access)
       return AMF.UML.Interfaces.Collections.Set_Of_UML_Interface is abstract;
   --  Operation Component::realizedInterfaces.
   --
   --  Utility returning the set of realized interfaces of a component.

   not overriding function Required
    (Self : not null access constant UML_Component)
       return AMF.UML.Interfaces.Collections.Set_Of_UML_Interface is abstract;
   --  Operation Component::required.
   --
   --  Missing derivation for Component::/required : Interface

   not overriding function Used_Interfaces
    (Self : not null access constant UML_Component;
     Classifier : AMF.UML.Classifiers.UML_Classifier_Access)
       return AMF.UML.Interfaces.Collections.Set_Of_UML_Interface is abstract;
   --  Operation Component::usedInterfaces.
   --
   --  Utility returning the set of used interfaces of a component.

end AMF.UML.Components;
