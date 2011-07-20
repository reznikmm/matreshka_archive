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
--  An interaction is a unit of behavior that focuses on the observable 
--  exchange of information between connectable elements.
------------------------------------------------------------------------------
limited with AMF.UML.Actions.Collections;
with AMF.UML.Behaviors;
limited with AMF.UML.Gates.Collections;
with AMF.UML.Interaction_Fragments;
limited with AMF.UML.Interaction_Fragments.Collections;
limited with AMF.UML.Lifelines.Collections;
limited with AMF.UML.Messages.Collections;

package AMF.UML.Interactions is

   pragma Preelaborate;

   type UML_Interaction is limited interface
     and AMF.UML.Behaviors.UML_Behavior
     and AMF.UML.Interaction_Fragments.UML_Interaction_Fragment;

   type UML_Interaction_Access is
     access all UML_Interaction'Class;
   for UML_Interaction_Access'Storage_Size use 0;

   not overriding function Get_Action
    (Self : not null access constant UML_Interaction)
       return AMF.UML.Actions.Collections.Set_Of_UML_Action is abstract;
   --  Getter of Interaction::action.
   --
   --  Actions owned by the Interaction.

   not overriding function Get_Formal_Gate
    (Self : not null access constant UML_Interaction)
       return AMF.UML.Gates.Collections.Set_Of_UML_Gate is abstract;
   --  Getter of Interaction::formalGate.
   --
   --  Specifies the gates that form the message interface between this 
   --  Interaction and any InteractionUses which reference it.

   not overriding function Get_Fragment
    (Self : not null access constant UML_Interaction)
       return AMF.UML.Interaction_Fragments.Collections.Ordered_Set_Of_UML_Interaction_Fragment is abstract;
   --  Getter of Interaction::fragment.
   --
   --  The ordered set of fragments in the Interaction.

   not overriding function Get_Lifeline
    (Self : not null access constant UML_Interaction)
       return AMF.UML.Lifelines.Collections.Set_Of_UML_Lifeline is abstract;
   --  Getter of Interaction::lifeline.
   --
   --  Specifies the participants in this Interaction.

   not overriding function Get_Message
    (Self : not null access constant UML_Interaction)
       return AMF.UML.Messages.Collections.Set_Of_UML_Message is abstract;
   --  Getter of Interaction::message.
   --
   --  The Messages contained in this Interaction.

end AMF.UML.Interactions;
