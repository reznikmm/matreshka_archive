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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.CMOF.Elements;
with AMF.DC;
with AMF.DI.Styles;
with AMF.DI.Diagram_Elements;
with AMF.Internals.UML_Elements;
with AMF.Internals.UMLDI_UML_Diagram_Elements;
with AMF.UML.Elements.Collections;
with AMF.UMLDI.UML_Diagram_Elements;
with AMF.UMLDI.UML_Edges;
with AMF.UMLDI.UML_Styles;
with AMF.Visitors;

package AMF.Internals.UMLDI_UML_Edges is

   package Diagram_Elements is
     new AMF.Internals.UMLDI_UML_Diagram_Elements
          (AMF.Internals.UML_Elements.UML_Element_Base);

   type UMLDI_UML_Edge_Proxy is
     limited new Diagram_Elements.UMLDI_UML_Diagram_Element_Proxy
       and AMF.UMLDI.UML_Edges.UMLDI_UML_Edge with null record;

   overriding function Get_Source
    (Self : not null access constant UMLDI_UML_Edge_Proxy)
       return AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access;
   --  Getter of UMLEdge::source.
   --
   --  Restricts the sources of UMLEdges to UMLDiagramElements.

   overriding procedure Set_Source
    (Self : not null access UMLDI_UML_Edge_Proxy;
     To   : AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access);
   --  Setter of UMLEdge::source.
   --
   --  Restricts the sources of UMLEdges to UMLDiagramElements.

   overriding function Get_Target
    (Self : not null access constant UMLDI_UML_Edge_Proxy)
       return AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access;
   --  Getter of UMLEdge::target.
   --
   --  Restricts the targets of UMLEdges to UMLDiagramElements.

   overriding procedure Set_Target
    (Self : not null access UMLDI_UML_Edge_Proxy;
     To   : AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access);
   --  Setter of UMLEdge::target.
   --
   --  Restricts the targets of UMLEdges to UMLDiagramElements.

   overriding function Get_Is_Icon
    (Self : not null access constant UMLDI_UML_Edge_Proxy)
       return Boolean;
   --  Getter of UMLDiagramElement::isIcon.
   --
   --  For modelElements that have an option to be shown with shapes other 
   --  than rectangles, such as Actors, or with other identifying shapes 
   --  inside them, such as arrows distinguishing InputPins and OutputPins, or 
   --  edges that have an option to be shown with lines other than solid with 
   --  open arrow heads, such as Realization.  A value of true for isIcon 
   --  indicates the alternative notation shall be shown.

   overriding procedure Set_Is_Icon
    (Self : not null access UMLDI_UML_Edge_Proxy;
     To   : Boolean);
   --  Setter of UMLDiagramElement::isIcon.
   --
   --  For modelElements that have an option to be shown with shapes other 
   --  than rectangles, such as Actors, or with other identifying shapes 
   --  inside them, such as arrows distinguishing InputPins and OutputPins, or 
   --  edges that have an option to be shown with lines other than solid with 
   --  open arrow heads, such as Realization.  A value of true for isIcon 
   --  indicates the alternative notation shall be shown.

   overriding function Get_Local_Style
    (Self : not null access constant UMLDI_UML_Edge_Proxy)
       return AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access;
   --  Getter of UMLDiagramElement::localStyle.
   --
   --  Restricts owned styles to UMLStyles.

   overriding procedure Set_Local_Style
    (Self : not null access UMLDI_UML_Edge_Proxy;
     To   : AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access);
   --  Setter of UMLDiagramElement::localStyle.
   --
   --  Restricts owned styles to UMLStyles.

   overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Edge_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of UMLDiagramElement::modelElement.
   --
   --  Restricts UMLDiagramElements to show UML Elements, rather than other 
   --  language elements. 

   overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Edge_Proxy)
       return AMF.CMOF.Elements.CMOF_Element_Access;
   --  Getter of DiagramElement::modelElement.
   --
   --  a reference to a depicted model element, which can be any MOF-based 
   --  element

   overriding function Get_Local_Style
    (Self : not null access constant UMLDI_UML_Edge_Proxy)
       return AMF.DI.Styles.DI_Style_Access;
   --  Getter of DiagramElement::localStyle.
   --
   --  a reference to an optional locally-owned style for this diagram element.

   overriding procedure Set_Local_Style
    (Self : not null access UMLDI_UML_Edge_Proxy;
     To   : AMF.DI.Styles.DI_Style_Access);
   --  Setter of DiagramElement::localStyle.
   --
   --  a reference to an optional locally-owned style for this diagram element.

   overriding function Get_Source
    (Self : not null access constant UMLDI_UML_Edge_Proxy)
       return AMF.DI.Diagram_Elements.DI_Diagram_Element_Access;
   --  Getter of Edge::source.
   --
   --  the edge's source diagram element, i.e. where the edge starts from.

   overriding function Get_Target
    (Self : not null access constant UMLDI_UML_Edge_Proxy)
       return AMF.DI.Diagram_Elements.DI_Diagram_Element_Access;
   --  Getter of Edge::target.
   --
   --  the edge's target diagram element, i.e. where the edge ends at.

   overriding function Get_Waypoint
    (Self : not null access constant UMLDI_UML_Edge_Proxy)
       return AMF.DC.Sequence_Of_DC_Point;
   --  Getter of Edge::waypoint.
   --
   --  an optional list of points relative to the origin of the nesting 
   --  diagram that specifies the connected line segments of the edge

   overriding procedure Enter_Element
    (Self    : not null access constant UMLDI_UML_Edge_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Leave_Element
    (Self    : not null access constant UMLDI_UML_Edge_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Visit_Element
    (Self     : not null access constant UMLDI_UML_Edge_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);

end AMF.Internals.UMLDI_UML_Edges;
