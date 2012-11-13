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
--  Shows an Activity and its elements.  Also see Annex A.
------------------------------------------------------------------------------
limited with AMF.UML.Activities;
with AMF.UMLDI.UML_Behavior_Diagrams;

package AMF.UMLDI.UML_Activity_Diagrams is

   pragma Preelaborate;

   type UMLDI_UML_Activity_Diagram is limited interface
     and AMF.UMLDI.UML_Behavior_Diagrams.UMLDI_UML_Behavior_Diagram;

   type UMLDI_UML_Activity_Diagram_Access is
     access all UMLDI_UML_Activity_Diagram'Class;
   for UMLDI_UML_Activity_Diagram_Access'Storage_Size use 0;

   not overriding function Get_Is_Activity_Frame
    (Self : not null access constant UMLDI_UML_Activity_Diagram)
       return Boolean is abstract;
   --  Getter of UMLActivityDiagram::isActivityFrame.
   --
   --  Indicates whether the UMLActivityDiagram shall be shown with a frame 
   --  that is a round-cornered rectangle without a pentagonal header.

   not overriding procedure Set_Is_Activity_Frame
    (Self : not null access UMLDI_UML_Activity_Diagram;
     To   : Boolean) is abstract;
   --  Setter of UMLActivityDiagram::isActivityFrame.
   --
   --  Indicates whether the UMLActivityDiagram shall be shown with a frame 
   --  that is a round-cornered rectangle without a pentagonal header.

   not overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Activity_Diagram)
       return AMF.UML.Activities.UML_Activity_Access is abstract;
   --  Getter of UMLActivityDiagram::modelElement.
   --
   --  Restricts UMLActivityDiagrams to show Activities.

   not overriding procedure Set_Model_Element
    (Self : not null access UMLDI_UML_Activity_Diagram;
     To   : AMF.UML.Activities.UML_Activity_Access) is abstract;
   --  Setter of UMLActivityDiagram::modelElement.
   --
   --  Restricts UMLActivityDiagrams to show Activities.

end AMF.UMLDI.UML_Activity_Diagrams;
