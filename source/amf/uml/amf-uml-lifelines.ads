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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  A lifeline represents an individual participant in the interaction. While 
--  parts and structural features may have multiplicity greater than 1, 
--  lifelines represent only one interacting entity.
------------------------------------------------------------------------------
limited with AMF.UML.Connectable_Elements;
limited with AMF.UML.Interaction_Fragments.Collections;
limited with AMF.UML.Interactions;
with AMF.UML.Named_Elements;
limited with AMF.UML.Part_Decompositions;
limited with AMF.UML.Value_Specifications;

package AMF.UML.Lifelines is

   pragma Preelaborate;

   type UML_Lifeline is limited interface
     and AMF.UML.Named_Elements.UML_Named_Element;

   type UML_Lifeline_Access is
     access all UML_Lifeline'Class;
   for UML_Lifeline_Access'Storage_Size use 0;

   not overriding function Get_Covered_By
    (Self : not null access constant UML_Lifeline)
       return AMF.UML.Interaction_Fragments.Collections.Set_Of_UML_Interaction_Fragment is abstract;
   --  Getter of Lifeline::coveredBy.
   --
   --  References the InteractionFragments in which this Lifeline takes part.

   not overriding function Get_Decomposed_As
    (Self : not null access constant UML_Lifeline)
       return AMF.UML.Part_Decompositions.UML_Part_Decomposition_Access is abstract;
   --  Getter of Lifeline::decomposedAs.
   --
   --  References the Interaction that represents the decomposition.

   not overriding procedure Set_Decomposed_As
    (Self : not null access UML_Lifeline;
     To   : AMF.UML.Part_Decompositions.UML_Part_Decomposition_Access) is abstract;
   --  Setter of Lifeline::decomposedAs.
   --
   --  References the Interaction that represents the decomposition.

   not overriding function Get_Interaction
    (Self : not null access constant UML_Lifeline)
       return AMF.UML.Interactions.UML_Interaction_Access is abstract;
   --  Getter of Lifeline::interaction.
   --
   --  References the Interaction enclosing this Lifeline.

   not overriding procedure Set_Interaction
    (Self : not null access UML_Lifeline;
     To   : AMF.UML.Interactions.UML_Interaction_Access) is abstract;
   --  Setter of Lifeline::interaction.
   --
   --  References the Interaction enclosing this Lifeline.

   not overriding function Get_Represents
    (Self : not null access constant UML_Lifeline)
       return AMF.UML.Connectable_Elements.UML_Connectable_Element_Access is abstract;
   --  Getter of Lifeline::represents.
   --
   --  References the ConnectableElement within the classifier that contains 
   --  the enclosing interaction.

   not overriding procedure Set_Represents
    (Self : not null access UML_Lifeline;
     To   : AMF.UML.Connectable_Elements.UML_Connectable_Element_Access) is abstract;
   --  Setter of Lifeline::represents.
   --
   --  References the ConnectableElement within the classifier that contains 
   --  the enclosing interaction.

   not overriding function Get_Selector
    (Self : not null access constant UML_Lifeline)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is abstract;
   --  Getter of Lifeline::selector.
   --
   --  If the referenced ConnectableElement is multivalued, then this 
   --  specifies the specific individual part within that set.

   not overriding procedure Set_Selector
    (Self : not null access UML_Lifeline;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is abstract;
   --  Setter of Lifeline::selector.
   --
   --  If the referenced ConnectableElement is multivalued, then this 
   --  specifies the specific individual part within that set.

end AMF.UML.Lifelines;
