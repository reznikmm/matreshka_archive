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
--  The most general class for UML diagram interchange.
------------------------------------------------------------------------------
with AMF.DI.Diagram_Elements;
limited with AMF.UML.Elements.Collections;
limited with AMF.UMLDI.UML_Diagram_Elements.Collections;
limited with AMF.UMLDI.UML_Styles;

package AMF.UMLDI.UML_Diagram_Elements is

   pragma Preelaborate;

   type UMLDI_UML_Diagram_Element is limited interface
     and AMF.DI.Diagram_Elements.DI_Diagram_Element;

   type UMLDI_UML_Diagram_Element_Access is
     access all UMLDI_UML_Diagram_Element'Class;
   for UMLDI_UML_Diagram_Element_Access'Storage_Size use 0;

   not overriding function Get_Is_Icon
    (Self : not null access constant UMLDI_UML_Diagram_Element)
       return Boolean is abstract;
   --  Getter of UMLDiagramElement::isIcon.
   --
   --  For modelElements that have an option to be shown with shapes other 
   --  than rectangles, such as Actors, or with other identifying shapes 
   --  inside them, such as arrows distinguishing InputPins and OutputPins, or 
   --  edges that have an option to be shown with lines other than solid with 
   --  open arrow heads, such as Realization.  A value of true for isIcon 
   --  indicates the alternative notation shall be shown.

   not overriding procedure Set_Is_Icon
    (Self : not null access UMLDI_UML_Diagram_Element;
     To   : Boolean) is abstract;
   --  Setter of UMLDiagramElement::isIcon.
   --
   --  For modelElements that have an option to be shown with shapes other 
   --  than rectangles, such as Actors, or with other identifying shapes 
   --  inside them, such as arrows distinguishing InputPins and OutputPins, or 
   --  edges that have an option to be shown with lines other than solid with 
   --  open arrow heads, such as Realization.  A value of true for isIcon 
   --  indicates the alternative notation shall be shown.

   not overriding function Get_Local_Style
    (Self : not null access constant UMLDI_UML_Diagram_Element)
       return AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access is abstract;
   --  Getter of UMLDiagramElement::localStyle.
   --
   --  Restricts owned styles to UMLStyles.

   not overriding procedure Set_Local_Style
    (Self : not null access UMLDI_UML_Diagram_Element;
     To   : AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access) is abstract;
   --  Setter of UMLDiagramElement::localStyle.
   --
   --  Restricts owned styles to UMLStyles.

   not overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Diagram_Element)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is abstract;
   --  Getter of UMLDiagramElement::modelElement.
   --
   --  Restricts UMLDiagramElements to show UML Elements, rather than other 
   --  language elements. 

   not overriding function Get_Owned_Element
    (Self : not null access constant UMLDI_UML_Diagram_Element)
       return AMF.UMLDI.UML_Diagram_Elements.Collections.Ordered_Set_Of_UMLDI_UML_Diagram_Element is abstract;
   --  Getter of UMLDiagramElement::ownedElement.
   --
   --  Restricts UMLDiagramElements to own only UMLDiagramElements.

   not overriding function Get_Owning_Element
    (Self : not null access constant UMLDI_UML_Diagram_Element)
       return AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access is abstract;
   --  Getter of UMLDiagramElement::owningElement.
   --
   --  Restricts UMLDiagramElements to be owned by only UMLDiagramElements.

   not overriding procedure Set_Owning_Element
    (Self : not null access UMLDI_UML_Diagram_Element;
     To   : AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access) is abstract;
   --  Setter of UMLDiagramElement::owningElement.
   --
   --  Restricts UMLDiagramElements to be owned by only UMLDiagramElements.

   not overriding function Get_Shared_Style
    (Self : not null access constant UMLDI_UML_Diagram_Element)
       return AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access is abstract;
   --  Getter of UMLDiagramElement::sharedStyle.
   --
   --  Restricts shared styles to UMLStyles.

   not overriding procedure Set_Shared_Style
    (Self : not null access UMLDI_UML_Diagram_Element;
     To   : AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access) is abstract;
   --  Setter of UMLDiagramElement::sharedStyle.
   --
   --  Restricts shared styles to UMLStyles.

end AMF.UMLDI.UML_Diagram_Elements;
