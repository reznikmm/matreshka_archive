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
--  Shows an StateMachine and its elements.  Also see Annex A.
------------------------------------------------------------------------------
limited with AMF.UML.State_Machines;
with AMF.UMLDI.UML_Behavior_Diagrams;

package AMF.UMLDI.UML_State_Machine_Diagrams is

   pragma Preelaborate;

   type UMLDI_UML_State_Machine_Diagram is limited interface
     and AMF.UMLDI.UML_Behavior_Diagrams.UMLDI_UML_Behavior_Diagram;

   type UMLDI_UML_State_Machine_Diagram_Access is
     access all UMLDI_UML_State_Machine_Diagram'Class;
   for UMLDI_UML_State_Machine_Diagram_Access'Storage_Size use 0;

   not overriding function Get_Inherited_State_Border
    (Self : not null access constant UMLDI_UML_State_Machine_Diagram)
       return AMF.UMLDI.Optional_UMLDI_UML_Inherited_State_Border_Kind is abstract;
   --  Getter of UMLStateMachineDiagram::inheritedStateBorder.
   --
   --  Indicates how borders shall be rendered on UMLShapes that have an 
   --  inherited State as modelElement.

   not overriding procedure Set_Inherited_State_Border
    (Self : not null access UMLDI_UML_State_Machine_Diagram;
     To   : AMF.UMLDI.Optional_UMLDI_UML_Inherited_State_Border_Kind) is abstract;
   --  Setter of UMLStateMachineDiagram::inheritedStateBorder.
   --
   --  Indicates how borders shall be rendered on UMLShapes that have an 
   --  inherited State as modelElement.

   not overriding function Get_Is_Collapse_State_Icon
    (Self : not null access constant UMLDI_UML_State_Machine_Diagram)
       return Boolean is abstract;
   --  Getter of UMLStateMachineDiagram::isCollapseStateIcon.
   --
   --  Indicates whether UMLShapes for composite States shall contain a small 
   --  icon distinguishing them from non-composite States.

   not overriding procedure Set_Is_Collapse_State_Icon
    (Self : not null access UMLDI_UML_State_Machine_Diagram;
     To   : Boolean) is abstract;
   --  Setter of UMLStateMachineDiagram::isCollapseStateIcon.
   --
   --  Indicates whether UMLShapes for composite States shall contain a small 
   --  icon distinguishing them from non-composite States.

   not overriding function Get_Is_Transition_Oriented
    (Self : not null access constant UMLDI_UML_State_Machine_Diagram)
       return Boolean is abstract;
   --  Getter of UMLStateMachineDiagram::isTransitionOriented.
   --
   --  Indicates whether properties of Transitions shall be shown graphically.

   not overriding procedure Set_Is_Transition_Oriented
    (Self : not null access UMLDI_UML_State_Machine_Diagram;
     To   : Boolean) is abstract;
   --  Setter of UMLStateMachineDiagram::isTransitionOriented.
   --
   --  Indicates whether properties of Transitions shall be shown graphically.

   not overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_State_Machine_Diagram)
       return AMF.UML.State_Machines.UML_State_Machine_Access is abstract;
   --  Getter of UMLStateMachineDiagram::modelElement.
   --

   not overriding procedure Set_Model_Element
    (Self : not null access UMLDI_UML_State_Machine_Diagram;
     To   : AMF.UML.State_Machines.UML_State_Machine_Access) is abstract;
   --  Setter of UMLStateMachineDiagram::modelElement.
   --

end AMF.UMLDI.UML_State_Machine_Diagrams;
