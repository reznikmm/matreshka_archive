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
--  An interaction operand is contained in a combined fragment. An interaction 
--  operand represents one operand of the expression given by the enclosing 
--  combined fragment.
------------------------------------------------------------------------------
limited with AMF.UML.Interaction_Constraints;
with AMF.UML.Interaction_Fragments;
limited with AMF.UML.Interaction_Fragments.Collections;
with AMF.UML.Namespaces;

package AMF.UML.Interaction_Operands is

   pragma Preelaborate;

   type UML_Interaction_Operand is limited interface
     and AMF.UML.Interaction_Fragments.UML_Interaction_Fragment
     and AMF.UML.Namespaces.UML_Namespace;

   type UML_Interaction_Operand_Access is
     access all UML_Interaction_Operand'Class;
   for UML_Interaction_Operand_Access'Storage_Size use 0;

   not overriding function Get_Fragment
    (Self : not null access constant UML_Interaction_Operand)
       return AMF.UML.Interaction_Fragments.Collections.Ordered_Set_Of_UML_Interaction_Fragment is abstract;
   --  Getter of InteractionOperand::fragment.
   --
   --  The fragments of the operand.

   not overriding function Get_Guard
    (Self : not null access constant UML_Interaction_Operand)
       return AMF.UML.Interaction_Constraints.UML_Interaction_Constraint_Access is abstract;
   --  Getter of InteractionOperand::guard.
   --
   --  Constraint of the operand.

   not overriding procedure Set_Guard
    (Self : not null access UML_Interaction_Operand;
     To   : AMF.UML.Interaction_Constraints.UML_Interaction_Constraint_Access) is abstract;
   --  Setter of InteractionOperand::guard.
   --
   --  Constraint of the operand.

end AMF.UML.Interaction_Operands;
