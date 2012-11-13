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
with AMF.DI.Diagram_Elements.Collections;
with AMF.DI.Styles;
with AMF.Elements;
with AMF.Internals.UML_Elements;
with AMF.UMLDI.UML_Diagram_Elements.Collections;
with AMF.UMLDI.UML_Styles;

generic
   type Element_Proxy is
     abstract new AMF.Internals.UML_Elements.UML_Element_Base with private;

package AMF.Internals.UMLDI_UML_Diagram_Elements is

   type UMLDI_UML_Diagram_Element_Proxy is
     abstract limited new Element_Proxy
       and AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element with null record;

   overriding function Container
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.Elements.Element_Access;

   overriding function Get_Owned_Element
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.UMLDI.UML_Diagram_Elements.Collections.Ordered_Set_Of_UMLDI_UML_Diagram_Element;
   --  Getter of UMLDiagramElement::ownedElement.
   --
   --  Restricts UMLDiagramElements to own only UMLDiagramElements.

   overriding function Get_Owning_Element
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access;
   --  Getter of UMLDiagramElement::owningElement.
   --
   --  Restricts UMLDiagramElements to be owned by only UMLDiagramElements.

   overriding procedure Set_Owning_Element
    (Self : not null access UMLDI_UML_Diagram_Element_Proxy;
     To   : AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access);
   --  Setter of UMLDiagramElement::owningElement.
   --
   --  Restricts UMLDiagramElements to be owned by only UMLDiagramElements.

   overriding function Get_Owning_Element
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.DI.Diagram_Elements.DI_Diagram_Element_Access;
   --  Getter of DiagramElement::owningElement.
   --
   --  a reference to the diagram element that directly owns this diagram 
   --  element.

   overriding function Get_Owned_Element
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.DI.Diagram_Elements.Collections.Set_Of_DI_Diagram_Element;
   --  Getter of DiagramElement::ownedElement.
   --
   --  a collection of diagram elements that are directly owned by this 
   --  diagram element.
 
   overriding function Get_Shared_Style
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access;
   --  Getter of UMLDiagramElement::sharedStyle.
   --
   --  Restricts shared styles to UMLStyles.

   overriding procedure Set_Shared_Style
    (Self : not null access UMLDI_UML_Diagram_Element_Proxy;
     To   : AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access);
   --  Setter of UMLDiagramElement::sharedStyle.
   --
   --  Restricts shared styles to UMLStyles.

   overriding function Get_Shared_Style
    (Self : not null access constant UMLDI_UML_Diagram_Element_Proxy)
       return AMF.DI.Styles.DI_Style_Access;
   --  Getter of DiagramElement::sharedStyle.
   --
   --  a reference to an optional shared style element for this diagram 
   --  element.

   overriding procedure Set_Shared_Style
    (Self : not null access UMLDI_UML_Diagram_Element_Proxy;
     To   : AMF.DI.Styles.DI_Style_Access);
   --  Setter of DiagramElement::sharedStyle.
   --
   --  a reference to an optional shared style element for this diagram 
   --  element.

end AMF.Internals.UMLDI_UML_Diagram_Elements;
