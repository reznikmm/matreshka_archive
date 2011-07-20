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
--  A connector end is an endpoint of a connector, which attaches the 
--  connector to a connectable element. Each connector end is part of one 
--  connector.
------------------------------------------------------------------------------
limited with AMF.UML.Connectable_Elements;
with AMF.UML.Multiplicity_Elements;
limited with AMF.UML.Properties;

package AMF.UML.Connector_Ends is

   pragma Preelaborate;

   type UML_Connector_End is limited interface
     and AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element;

   type UML_Connector_End_Access is
     access all UML_Connector_End'Class;
   for UML_Connector_End_Access'Storage_Size use 0;

   not overriding function Get_Defining_End
    (Self : not null access constant UML_Connector_End)
       return AMF.UML.Properties.UML_Property_Access is abstract;
   --  Getter of ConnectorEnd::definingEnd.
   --
   --  A derived association referencing the corresponding association end on 
   --  the association which types the connector owing this connector end. 
   --  This association is derived by selecting the association end at the 
   --  same place in the ordering of association ends as this connector end.

   not overriding function Get_Part_With_Port
    (Self : not null access constant UML_Connector_End)
       return AMF.UML.Properties.UML_Property_Access is abstract;
   --  Getter of ConnectorEnd::partWithPort.
   --
   --  Indicates the role of the internal structure of a classifier with the 
   --  port to which the connector end is attached.

   not overriding procedure Set_Part_With_Port
    (Self : not null access UML_Connector_End;
     To   : AMF.UML.Properties.UML_Property_Access) is abstract;
   --  Setter of ConnectorEnd::partWithPort.
   --
   --  Indicates the role of the internal structure of a classifier with the 
   --  port to which the connector end is attached.

   not overriding function Get_Role
    (Self : not null access constant UML_Connector_End)
       return AMF.UML.Connectable_Elements.UML_Connectable_Element_Access is abstract;
   --  Getter of ConnectorEnd::role.
   --
   --  The connectable element attached at this connector end. When an 
   --  instance of the containing classifier is created, a link may (depending 
   --  on the multiplicities) be created to an instance of the classifier that 
   --  types this connectable element.

   not overriding procedure Set_Role
    (Self : not null access UML_Connector_End;
     To   : AMF.UML.Connectable_Elements.UML_Connectable_Element_Access) is abstract;
   --  Setter of ConnectorEnd::role.
   --
   --  The connectable element attached at this connector end. When an 
   --  instance of the containing classifier is created, a link may (depending 
   --  on the multiplicities) be created to an instance of the classifier that 
   --  types this connectable element.

   not overriding function Defining_End
    (Self : not null access constant UML_Connector_End)
       return AMF.UML.Properties.UML_Property_Access is abstract;
   --  Missing derivation for ConnectorEnd::/definingEnd : Property

end AMF.UML.Connector_Ends;
