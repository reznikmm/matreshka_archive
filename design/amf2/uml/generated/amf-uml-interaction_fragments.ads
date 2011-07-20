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
--  InteractionFragment is an abstract notion of the most general interaction 
--  unit. An interaction fragment is a piece of an interaction. Each 
--  interaction fragment is conceptually like an interaction by itself.
------------------------------------------------------------------------------
limited with AMF.UML.General_Orderings.Collections;
limited with AMF.UML.Interaction_Operands;
limited with AMF.UML.Interactions;
limited with AMF.UML.Lifelines.Collections;
with AMF.UML.Named_Elements;

package AMF.UML.Interaction_Fragments is

   pragma Preelaborate;

   type UML_Interaction_Fragment is limited interface
     and AMF.UML.Named_Elements.UML_Named_Element;

   type UML_Interaction_Fragment_Access is
     access all UML_Interaction_Fragment'Class;
   for UML_Interaction_Fragment_Access'Storage_Size use 0;

   not overriding function Get_Covered
    (Self : not null access constant UML_Interaction_Fragment)
       return AMF.UML.Lifelines.Collections.Set_Of_UML_Lifeline is abstract;
   --  Getter of InteractionFragment::covered.
   --
   --  References the Lifelines that the InteractionFragment involves.

   not overriding function Get_Enclosing_Interaction
    (Self : not null access constant UML_Interaction_Fragment)
       return AMF.UML.Interactions.UML_Interaction_Access is abstract;
   --  Getter of InteractionFragment::enclosingInteraction.
   --
   --  The Interaction enclosing this InteractionFragment.

   not overriding procedure Set_Enclosing_Interaction
    (Self : not null access UML_Interaction_Fragment;
     To   : AMF.UML.Interactions.UML_Interaction_Access) is abstract;
   --  Setter of InteractionFragment::enclosingInteraction.
   --
   --  The Interaction enclosing this InteractionFragment.

   not overriding function Get_Enclosing_Operand
    (Self : not null access constant UML_Interaction_Fragment)
       return AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access is abstract;
   --  Getter of InteractionFragment::enclosingOperand.
   --
   --  The operand enclosing this InteractionFragment (they may nest 
   --  recursively)

   not overriding procedure Set_Enclosing_Operand
    (Self : not null access UML_Interaction_Fragment;
     To   : AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access) is abstract;
   --  Setter of InteractionFragment::enclosingOperand.
   --
   --  The operand enclosing this InteractionFragment (they may nest 
   --  recursively)

   not overriding function Get_General_Ordering
    (Self : not null access constant UML_Interaction_Fragment)
       return AMF.UML.General_Orderings.Collections.Set_Of_UML_General_Ordering is abstract;
   --  Getter of InteractionFragment::generalOrdering.
   --
   --  The general ordering relationships contained in this fragment.

end AMF.UML.Interaction_Fragments;
