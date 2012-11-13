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
--  Specifies the common aspects of UMLClassDiagrams and 
--  UMLCompositeStructureDiagrams.
------------------------------------------------------------------------------
with AMF.UMLDI.UML_Structure_Diagrams;

package AMF.UMLDI.UML_Class_Or_Composite_Structure_Diagrams is

   pragma Preelaborate;

   type UMLDI_UML_Class_Or_Composite_Structure_Diagram is limited interface
     and AMF.UMLDI.UML_Structure_Diagrams.UMLDI_UML_Structure_Diagram;

   type UMLDI_UML_Class_Or_Composite_Structure_Diagram_Access is
     access all UMLDI_UML_Class_Or_Composite_Structure_Diagram'Class;
   for UMLDI_UML_Class_Or_Composite_Structure_Diagram_Access'Storage_Size use 0;

   not overriding function Get_Is_Association_Dot_Shown
    (Self : not null access constant UMLDI_UML_Class_Or_Composite_Structure_Diagram)
       return Boolean is abstract;
   --  Getter of UMLClassOrCompositeStructureDiagram::isAssociationDotShown.
   --
   --  Indicates whether dot notation for associations shall be used.

   not overriding procedure Set_Is_Association_Dot_Shown
    (Self : not null access UMLDI_UML_Class_Or_Composite_Structure_Diagram;
     To   : Boolean) is abstract;
   --  Setter of UMLClassOrCompositeStructureDiagram::isAssociationDotShown.
   --
   --  Indicates whether dot notation for associations shall be used.

   not overriding function Get_Navigability_Notation
    (Self : not null access constant UMLDI_UML_Class_Or_Composite_Structure_Diagram)
       return AMF.UMLDI.UMLDI_UML_Navigability_Notation_Kind is abstract;
   --  Getter of UMLClassOrCompositeStructureDiagram::navigabilityNotation.
   --
   --  Indicates when to show navigability of associations or connectors typed 
   --  by associations.

   not overriding procedure Set_Navigability_Notation
    (Self : not null access UMLDI_UML_Class_Or_Composite_Structure_Diagram;
     To   : AMF.UMLDI.UMLDI_UML_Navigability_Notation_Kind) is abstract;
   --  Setter of UMLClassOrCompositeStructureDiagram::navigabilityNotation.
   --
   --  Indicates when to show navigability of associations or connectors typed 
   --  by associations.

   not overriding function Get_Non_Navigability_Notation
    (Self : not null access constant UMLDI_UML_Class_Or_Composite_Structure_Diagram)
       return AMF.UMLDI.UMLDI_UML_Navigability_Notation_Kind is abstract;
   --  Getter of UMLClassOrCompositeStructureDiagram::nonNavigabilityNotation.
   --
   --  Indicates when to show non-navigability of associations or connectors 
   --  typed by associations.

   not overriding procedure Set_Non_Navigability_Notation
    (Self : not null access UMLDI_UML_Class_Or_Composite_Structure_Diagram;
     To   : AMF.UMLDI.UMLDI_UML_Navigability_Notation_Kind) is abstract;
   --  Setter of UMLClassOrCompositeStructureDiagram::nonNavigabilityNotation.
   --
   --  Indicates when to show non-navigability of associations or connectors 
   --  typed by associations.

end AMF.UMLDI.UML_Class_Or_Composite_Structure_Diagrams;
