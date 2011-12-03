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
--  ConnectableElement is an abstract metaclass representing a set of 
--  instances that play roles of a classifier. Connectable elements may be 
--  joined by attached connectors and specify configurations of linked 
--  instances to be created within an instance of the containing classifier.
--  A connectable element may be exposed as a connectable element template 
--  parameter.
------------------------------------------------------------------------------
limited with AMF.UML.Connectable_Element_Template_Parameters;
limited with AMF.UML.Connector_Ends.Collections;
with AMF.UML.Parameterable_Elements;
with AMF.UML.Typed_Elements;

package AMF.UML.Connectable_Elements is

   pragma Preelaborate;

   type UML_Connectable_Element is limited interface
     and AMF.UML.Typed_Elements.UML_Typed_Element
     and AMF.UML.Parameterable_Elements.UML_Parameterable_Element;

   type UML_Connectable_Element_Access is
     access all UML_Connectable_Element'Class;
   for UML_Connectable_Element_Access'Storage_Size use 0;

   not overriding function Get_End
    (Self : not null access constant UML_Connectable_Element)
       return AMF.UML.Connector_Ends.Collections.Ordered_Set_Of_UML_Connector_End is abstract;
   --  Getter of ConnectableElement::end.
   --
   --  Denotes a set of connector ends that attaches to this connectable 
   --  element.

   not overriding function Get_Template_Parameter
    (Self : not null access constant UML_Connectable_Element)
       return AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access is abstract;
   --  Getter of ConnectableElement::templateParameter.
   --
   --  The ConnectableElementTemplateParameter for this ConnectableElement 
   --  parameter.

   not overriding procedure Set_Template_Parameter
    (Self : not null access UML_Connectable_Element;
     To   : AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access) is abstract;
   --  Setter of ConnectableElement::templateParameter.
   --
   --  The ConnectableElementTemplateParameter for this ConnectableElement 
   --  parameter.

   not overriding function Ends
    (Self : not null access constant UML_Connectable_Element)
       return AMF.UML.Connector_Ends.Collections.Set_Of_UML_Connector_End is abstract;
   --  Operation ConnectableElement::end.
   --
   --  Missing derivation for ConnectableElement::/end : ConnectorEnd

end AMF.UML.Connectable_Elements;
