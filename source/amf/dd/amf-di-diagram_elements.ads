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
--  DiagramElement is the abstract super type of all elements in diagrams, 
--  including diagrams themselves. When contained in a diagram, diagram 
--  elements are laid out relative to the diagram’s origin.
------------------------------------------------------------------------------
limited with AMF.CMOF.Elements;
limited with AMF.DI.Diagram_Elements.Collections;
limited with AMF.DI.Styles;

package AMF.DI.Diagram_Elements is

   pragma Preelaborate;

   type DI_Diagram_Element is limited interface;

   type DI_Diagram_Element_Access is
     access all DI_Diagram_Element'Class;
   for DI_Diagram_Element_Access'Storage_Size use 0;

   not overriding function Get_Model_Element
    (Self : not null access constant DI_Diagram_Element)
       return AMF.CMOF.Elements.CMOF_Element_Access is abstract;
   --  Getter of DiagramElement::modelElement.
   --
   --  a reference to a depicted model element, which can be any MOF-based 
   --  element

   not overriding function Get_Owning_Element
    (Self : not null access constant DI_Diagram_Element)
       return AMF.DI.Diagram_Elements.DI_Diagram_Element_Access is abstract;
   --  Getter of DiagramElement::owningElement.
   --
   --  a reference to the diagram element that directly owns this diagram 
   --  element.

   not overriding function Get_Owned_Element
    (Self : not null access constant DI_Diagram_Element)
       return AMF.DI.Diagram_Elements.Collections.Set_Of_DI_Diagram_Element is abstract;
   --  Getter of DiagramElement::ownedElement.
   --
   --  a collection of diagram elements that are directly owned by this 
   --  diagram element.

   not overriding function Get_Local_Style
    (Self : not null access constant DI_Diagram_Element)
       return AMF.DI.Styles.DI_Style_Access is abstract;
   --  Getter of DiagramElement::localStyle.
   --
   --  a reference to an optional locally-owned style for this diagram element.

   not overriding procedure Set_Local_Style
    (Self : not null access DI_Diagram_Element;
     To   : AMF.DI.Styles.DI_Style_Access) is abstract;
   --  Setter of DiagramElement::localStyle.
   --
   --  a reference to an optional locally-owned style for this diagram element.

   not overriding function Get_Shared_Style
    (Self : not null access constant DI_Diagram_Element)
       return AMF.DI.Styles.DI_Style_Access is abstract;
   --  Getter of DiagramElement::sharedStyle.
   --
   --  a reference to an optional shared style element for this diagram 
   --  element.

   not overriding procedure Set_Shared_Style
    (Self : not null access DI_Diagram_Element;
     To   : AMF.DI.Styles.DI_Style_Access) is abstract;
   --  Setter of DiagramElement::sharedStyle.
   --
   --  a reference to an optional shared style element for this diagram 
   --  element.

end AMF.DI.Diagram_Elements;
