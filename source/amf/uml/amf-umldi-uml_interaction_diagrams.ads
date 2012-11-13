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
--  Shows an Interaction and its elements.  Also see Annex A.
------------------------------------------------------------------------------
limited with AMF.UML.Interactions;
with AMF.UMLDI.UML_Behavior_Diagrams;

package AMF.UMLDI.UML_Interaction_Diagrams is

   pragma Preelaborate;

   type UMLDI_UML_Interaction_Diagram is limited interface
     and AMF.UMLDI.UML_Behavior_Diagrams.UMLDI_UML_Behavior_Diagram;

   type UMLDI_UML_Interaction_Diagram_Access is
     access all UMLDI_UML_Interaction_Diagram'Class;
   for UMLDI_UML_Interaction_Diagram_Access'Storage_Size use 0;

   not overriding function Get_Kind
    (Self : not null access constant UMLDI_UML_Interaction_Diagram)
       return AMF.UMLDI.UMLDI_UML_Interaction_Diagram_Kind is abstract;
   --  Getter of UMLInteractionDiagram::kind.
   --
   --  Indicates how an Interaction shall be shown.

   not overriding procedure Set_Kind
    (Self : not null access UMLDI_UML_Interaction_Diagram;
     To   : AMF.UMLDI.UMLDI_UML_Interaction_Diagram_Kind) is abstract;
   --  Setter of UMLInteractionDiagram::kind.
   --
   --  Indicates how an Interaction shall be shown.

   not overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Interaction_Diagram)
       return AMF.UML.Interactions.UML_Interaction_Access is abstract;
   --  Getter of UMLInteractionDiagram::modelElement.
   --
   --  Restricts UMLInteractionDiagrams to showing Interactions.

   not overriding procedure Set_Model_Element
    (Self : not null access UMLDI_UML_Interaction_Diagram;
     To   : AMF.UML.Interactions.UML_Interaction_Access) is abstract;
   --  Setter of UMLInteractionDiagram::modelElement.
   --
   --  Restricts UMLInteractionDiagrams to showing Interactions.

end AMF.UMLDI.UML_Interaction_Diagrams;
