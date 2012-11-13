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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.CMOF.Elements;
with AMF.DC;
with AMF.DI.Diagram_Elements.Collections;
with AMF.DI.Styles;
with AMF.Internals.UML_Elements;
with AMF.UML.Elements.Collections;
with AMF.UML.Redefinable_Elements;
with AMF.UMLDI.UML_Diagram_Elements.Collections;
with AMF.UMLDI.UML_Redefines_Labels;
with AMF.UMLDI.UML_Styles.Collections;
with AMF.Visitors;
with League.Strings;

package AMF.Internals.UMLDI_UML_Redefines_Labels is

   type UMLDI_UML_Redefines_Label_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UMLDI.UML_Redefines_Labels.UMLDI_UML_Redefines_Label with null record;

   overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access;
   --  Getter of UMLRedefinesLabel::modelElement.
   --
   --  Restricts UMLRedefinesLabels to be notation for RedefinableElements.

   overriding procedure Set_Model_Element
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access);
   --  Setter of UMLRedefinesLabel::modelElement.
   --
   --  Restricts UMLRedefinesLabels to be notation for RedefinableElements.

   overriding function Get_Text
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return League.Strings.Universal_String;
   --  Getter of UMLLabel::text.
   --
   --  String to be rendered.

   overriding procedure Set_Text
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : League.Strings.Universal_String);
   --  Setter of UMLLabel::text.
   --
   --  String to be rendered.

   overriding function Get_Is_Icon
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
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
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
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
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access;
   --  Getter of UMLDiagramElement::localStyle.
   --
   --  Restricts owned styles to UMLStyles.

   overriding procedure Set_Local_Style
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access);
   --  Setter of UMLDiagramElement::localStyle.
   --
   --  Restricts owned styles to UMLStyles.

   overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of UMLDiagramElement::modelElement.
   --
   --  Restricts UMLDiagramElements to show UML Elements, rather than other 
   --  language elements. 

   overriding function Get_Owned_Element
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.UMLDI.UML_Diagram_Elements.Collections.Ordered_Set_Of_UMLDI_UML_Diagram_Element;
   --  Getter of UMLDiagramElement::ownedElement.
   --
   --  Restricts UMLDiagramElements to own only UMLDiagramElements.

   overriding function Get_Owning_Element
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access;
   --  Getter of UMLDiagramElement::owningElement.
   --
   --  Restricts UMLDiagramElements to be owned by only UMLDiagramElements.

   overriding procedure Set_Owning_Element
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access);
   --  Setter of UMLDiagramElement::owningElement.
   --
   --  Restricts UMLDiagramElements to be owned by only UMLDiagramElements.

   overriding function Get_Shared_Style
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.UMLDI.UML_Styles.Collections.Set_Of_UMLDI_UML_Style;
   --  Getter of UMLDiagramElement::sharedStyle.
   --
   --  Restricts shared styles to UMLStyles.

   overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.CMOF.Elements.CMOF_Element_Access;
   --  Getter of DiagramElement::modelElement.
   --
   --  a reference to a depicted model element, which can be any MOF-based 
   --  element

   overriding function Get_Owning_Element
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.DI.Diagram_Elements.DI_Diagram_Element_Access;
   --  Getter of DiagramElement::owningElement.
   --
   --  a reference to the diagram element that directly owns this diagram 
   --  element.

   overriding function Get_Owned_Element
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.DI.Diagram_Elements.Collections.Set_Of_DI_Diagram_Element;
   --  Getter of DiagramElement::ownedElement.
   --
   --  a collection of diagram elements that are directly owned by this 
   --  diagram element.

   overriding function Get_Local_Style
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.DI.Styles.DI_Style_Access;
   --  Getter of DiagramElement::localStyle.
   --
   --  a reference to an optional locally-owned style for this diagram element.

   overriding procedure Set_Local_Style
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : AMF.DI.Styles.DI_Style_Access);
   --  Setter of DiagramElement::localStyle.
   --
   --  a reference to an optional locally-owned style for this diagram element.

   overriding function Get_Shared_Style
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.DI.Styles.DI_Style_Access;
   --  Getter of DiagramElement::sharedStyle.
   --
   --  a reference to an optional shared style element for this diagram 
   --  element.

   overriding procedure Set_Shared_Style
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : AMF.DI.Styles.DI_Style_Access);
   --  Setter of DiagramElement::sharedStyle.
   --
   --  a reference to an optional shared style element for this diagram 
   --  element.

   overriding function Get_Bounds
    (Self : not null access constant UMLDI_UML_Redefines_Label_Proxy)
       return AMF.DC.Optional_DC_Bounds;
   --  Getter of Shape::bounds.
   --
   --  the optional bounds of the shape relative to the origin of its nesting 
   --  plane.

   overriding procedure Set_Bounds
    (Self : not null access UMLDI_UML_Redefines_Label_Proxy;
     To   : AMF.DC.Optional_DC_Bounds);
   --  Setter of Shape::bounds.
   --
   --  the optional bounds of the shape relative to the origin of its nesting 
   --  plane.

   overriding procedure Enter_Element
    (Self    : not null access constant UMLDI_UML_Redefines_Label_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Leave_Element
    (Self    : not null access constant UMLDI_UML_Redefines_Label_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Visit_Element
    (Self     : not null access constant UMLDI_UML_Redefines_Label_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);

end AMF.Internals.UMLDI_UML_Redefines_Labels;
