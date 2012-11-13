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
with AMF.UMLDI.UML_Activity_Diagrams;
with AMF.UMLDI.UML_Association_End_Labels;
with AMF.UMLDI.UML_Association_Or_Connector_Or_Link_Shapes;
with AMF.UMLDI.UML_Class_Diagrams;
with AMF.UMLDI.UML_Classifier_Shapes;
with AMF.UMLDI.UML_Compartmentable_Shapes;
with AMF.UMLDI.UML_Compartments;
with AMF.UMLDI.UML_Component_Diagrams;
with AMF.UMLDI.UML_Composite_Structure_Diagrams;
with AMF.UMLDI.UML_Deployment_Diagrams;
with AMF.UMLDI.UML_Edges;
with AMF.UMLDI.UML_Interaction_Diagrams;
with AMF.UMLDI.UML_Interaction_Table_Labels;
with AMF.UMLDI.UML_Keyword_Labels;
with AMF.UMLDI.UML_Labels;
with AMF.UMLDI.UML_Multiplicity_Labels;
with AMF.UMLDI.UML_Name_Labels;
with AMF.UMLDI.UML_Object_Diagrams;
with AMF.UMLDI.UML_Package_Diagrams;
with AMF.UMLDI.UML_Profile_Diagrams;
with AMF.UMLDI.UML_Redefines_Labels;
with AMF.UMLDI.UML_Shapes;
with AMF.UMLDI.UML_State_Machine_Diagrams;
with AMF.UMLDI.UML_State_Shapes;
with AMF.UMLDI.UML_Stereotype_Property_Value_Labels;
with AMF.UMLDI.UML_Styles;
with AMF.UMLDI.UML_Typed_Element_Labels;
with AMF.UMLDI.UML_Use_Case_Diagrams;

package AMF.Visitors.UMLDI_Iterators is

   pragma Preelaborate;

   type UMLDI_Iterator is limited interface and AMF.Visitors.Abstract_Iterator;

   not overriding procedure Visit_UML_Activity_Diagram
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Activity_Diagrams.UMLDI_UML_Activity_Diagram_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Association_End_Label
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Association_End_Labels.UMLDI_UML_Association_End_Label_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Association_Or_Connector_Or_Link_Shape
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Association_Or_Connector_Or_Link_Shapes.UMLDI_UML_Association_Or_Connector_Or_Link_Shape_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Class_Diagram
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Class_Diagrams.UMLDI_UML_Class_Diagram_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Classifier_Shape
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Classifier_Shapes.UMLDI_UML_Classifier_Shape_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Compartment
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Compartments.UMLDI_UML_Compartment_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Compartmentable_Shape
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Compartmentable_Shapes.UMLDI_UML_Compartmentable_Shape_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Component_Diagram
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Component_Diagrams.UMLDI_UML_Component_Diagram_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Composite_Structure_Diagram
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Composite_Structure_Diagrams.UMLDI_UML_Composite_Structure_Diagram_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Deployment_Diagram
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Deployment_Diagrams.UMLDI_UML_Deployment_Diagram_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Edge
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Edges.UMLDI_UML_Edge_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Interaction_Diagram
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Interaction_Diagrams.UMLDI_UML_Interaction_Diagram_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Interaction_Table_Label
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Interaction_Table_Labels.UMLDI_UML_Interaction_Table_Label_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Keyword_Label
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Keyword_Labels.UMLDI_UML_Keyword_Label_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Label
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Labels.UMLDI_UML_Label_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Multiplicity_Label
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Multiplicity_Labels.UMLDI_UML_Multiplicity_Label_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Name_Label
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Name_Labels.UMLDI_UML_Name_Label_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Object_Diagram
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Object_Diagrams.UMLDI_UML_Object_Diagram_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Package_Diagram
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Package_Diagrams.UMLDI_UML_Package_Diagram_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Profile_Diagram
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Profile_Diagrams.UMLDI_UML_Profile_Diagram_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Redefines_Label
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Redefines_Labels.UMLDI_UML_Redefines_Label_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Shape
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Shapes.UMLDI_UML_Shape_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_State_Machine_Diagram
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_State_Machine_Diagrams.UMLDI_UML_State_Machine_Diagram_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_State_Shape
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_State_Shapes.UMLDI_UML_State_Shape_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Stereotype_Property_Value_Label
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Stereotype_Property_Value_Labels.UMLDI_UML_Stereotype_Property_Value_Label_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Style
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Typed_Element_Label
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Typed_Element_Labels.UMLDI_UML_Typed_Element_Label_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_UML_Use_Case_Diagram
    (Self    : in out UMLDI_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UMLDI.UML_Use_Case_Diagrams.UMLDI_UML_Use_Case_Diagram_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

end AMF.Visitors.UMLDI_Iterators;
