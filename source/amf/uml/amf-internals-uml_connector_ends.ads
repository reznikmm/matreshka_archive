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
with AMF.Internals.UML_Elements;
with AMF.Internals.UML_Multiplicity_Elements;
with AMF.UML.Connectable_Elements;
with AMF.UML.Connector_Ends;
with AMF.UML.Elements.Collections;
with AMF.UML.Multiplicity_Elements;
with AMF.UML.Properties;
with AMF.UML.Value_Specifications;
with AMF.Visitors;

package AMF.Internals.UML_Connector_Ends is

   package UML_Multiplicity_Elements is
     new AMF.Internals.UML_Multiplicity_Elements
          (AMF.Internals.UML_Elements.UML_Element_Proxy);

   type UML_Connector_End_Proxy is
     limited new UML_Multiplicity_Elements.UML_Multiplicity_Element_Proxy
       and AMF.UML.Connector_Ends.UML_Connector_End with null record;

   overriding function Get_Defining_End
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.UML.Properties.UML_Property_Access;
   --  Getter of ConnectorEnd::definingEnd.
   --
   --  A derived association referencing the corresponding association end on
   --  the association which types the connector owing this connector end.
   --  This association is derived by selecting the association end at the
   --  same place in the ordering of association ends as this connector end.

   overriding function Get_Part_With_Port
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.UML.Properties.UML_Property_Access;
   --  Getter of ConnectorEnd::partWithPort.
   --
   --  Indicates the role of the internal structure of a classifier with the
   --  port to which the connector end is attached.

   overriding procedure Set_Part_With_Port
    (Self : not null access UML_Connector_End_Proxy;
     To   : AMF.UML.Properties.UML_Property_Access);
   --  Setter of ConnectorEnd::partWithPort.
   --
   --  Indicates the role of the internal structure of a classifier with the
   --  port to which the connector end is attached.

   overriding function Get_Role
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.UML.Connectable_Elements.UML_Connectable_Element_Access;
   --  Getter of ConnectorEnd::role.
   --
   --  The connectable element attached at this connector end. When an
   --  instance of the containing classifier is created, a link may (depending
   --  on the multiplicities) be created to an instance of the classifier that
   --  types this connectable element.

   overriding procedure Set_Role
    (Self : not null access UML_Connector_End_Proxy;
     To   : AMF.UML.Connectable_Elements.UML_Connectable_Element_Access);
   --  Setter of ConnectorEnd::role.
   --
   --  The connectable element attached at this connector end. When an
   --  instance of the containing classifier is created, a link may (depending
   --  on the multiplicities) be created to an instance of the classifier that
   --  types this connectable element.

   overriding function Get_Lower
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.Optional_Integer;
   --  Getter of MultiplicityElement::lower.
   --
   --  Specifies the lower bound of the multiplicity interval.

   overriding procedure Set_Lower
    (Self : not null access UML_Connector_End_Proxy;
     To   : AMF.Optional_Integer);
   --  Setter of MultiplicityElement::lower.
   --
   --  Specifies the lower bound of the multiplicity interval.

   overriding function Get_Lower_Value
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;
   --  Getter of MultiplicityElement::lowerValue.
   --
   --  The specification of the lower bound for this multiplicity.

   overriding procedure Set_Lower_Value
    (Self : not null access UML_Connector_End_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);
   --  Setter of MultiplicityElement::lowerValue.
   --
   --  The specification of the lower bound for this multiplicity.

   overriding function Get_Upper
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.Optional_Unlimited_Natural;
   --  Getter of MultiplicityElement::upper.
   --
   --  Specifies the upper bound of the multiplicity interval.

   overriding procedure Set_Upper
    (Self : not null access UML_Connector_End_Proxy;
     To   : AMF.Optional_Unlimited_Natural);
   --  Setter of MultiplicityElement::upper.
   --
   --  Specifies the upper bound of the multiplicity interval.

   overriding function Get_Upper_Value
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;
   --  Getter of MultiplicityElement::upperValue.
   --
   --  The specification of the upper bound for this multiplicity.

   overriding procedure Set_Upper_Value
    (Self : not null access UML_Connector_End_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);
   --  Setter of MultiplicityElement::upperValue.
   --
   --  The specification of the upper bound for this multiplicity.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function Defining_End
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.UML.Properties.UML_Property_Access;
   --  Operation ConnectorEnd::definingEnd.
   --
   --  Missing derivation for ConnectorEnd::/definingEnd : Property

   overriding function Compatible_With
    (Self : not null access constant UML_Connector_End_Proxy;
     Other : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean;
   --  Operation MultiplicityElement::compatibleWith.
   --
   --  The operation compatibleWith takes another multiplicity as input. It
   --  checks if one multiplicity is compatible with another.

   overriding function Includes_Cardinality
    (Self : not null access constant UML_Connector_End_Proxy;
     C : Integer)
       return Boolean;
   --  Operation MultiplicityElement::includesCardinality.
   --
   --  The query includesCardinality() checks whether the specified
   --  cardinality is valid for this multiplicity.

   overriding function Includes_Multiplicity
    (Self : not null access constant UML_Connector_End_Proxy;
     M : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean;
   --  Operation MultiplicityElement::includesMultiplicity.
   --
   --  The query includesMultiplicity() checks whether this multiplicity
   --  includes all the cardinalities allowed by the specified multiplicity.

   overriding function Iss
    (Self : not null access constant UML_Connector_End_Proxy;
     Lowerbound : Integer;
     Upperbound : Integer)
       return Boolean;
   --  Operation MultiplicityElement::is.
   --
   --  The operation is determines if the upper and lower bound of the ranges
   --  are the ones given.

   overriding function Lower
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.Optional_Integer;
   --  Operation MultiplicityElement::lower.
   --
   --  The derived lower attribute must equal the lowerBound.

   overriding function Upper
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.Optional_Unlimited_Natural;
   --  Operation MultiplicityElement::upper.
   --
   --  The derived upper attribute must equal the upperBound.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned
   --  elements of an element.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Connector_End_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Connector_End_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Connector_End_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Connector_Ends;
