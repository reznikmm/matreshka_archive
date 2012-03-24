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
--  A combined fragment defines an expression of interaction fragments. A 
--  combined fragment is defined by an interaction operator and corresponding 
--  interaction operands. Through the use of combined fragments the user will 
--  be able to describe a number of traces in a compact and concise manner.
------------------------------------------------------------------------------
limited with AMF.UML.Gates.Collections;
with AMF.UML.Interaction_Fragments;
limited with AMF.UML.Interaction_Operands.Collections;

package AMF.UML.Combined_Fragments is

   pragma Preelaborate;

   type UML_Combined_Fragment is limited interface
     and AMF.UML.Interaction_Fragments.UML_Interaction_Fragment;

   type UML_Combined_Fragment_Access is
     access all UML_Combined_Fragment'Class;
   for UML_Combined_Fragment_Access'Storage_Size use 0;

   not overriding function Get_Cfragment_Gate
    (Self : not null access constant UML_Combined_Fragment)
       return AMF.UML.Gates.Collections.Set_Of_UML_Gate is abstract;
   --  Getter of CombinedFragment::cfragmentGate.
   --
   --  Specifies the gates that form the interface between this 
   --  CombinedFragment and its surroundings

   not overriding function Get_Interaction_Operator
    (Self : not null access constant UML_Combined_Fragment)
       return AMF.UML.UML_Interaction_Operator_Kind is abstract;
   --  Getter of CombinedFragment::interactionOperator.
   --
   --  Specifies the operation which defines the semantics of this combination 
   --  of InteractionFragments.

   not overriding procedure Set_Interaction_Operator
    (Self : not null access UML_Combined_Fragment;
     To   : AMF.UML.UML_Interaction_Operator_Kind) is abstract;
   --  Setter of CombinedFragment::interactionOperator.
   --
   --  Specifies the operation which defines the semantics of this combination 
   --  of InteractionFragments.

   not overriding function Get_Operand
    (Self : not null access constant UML_Combined_Fragment)
       return AMF.UML.Interaction_Operands.Collections.Ordered_Set_Of_UML_Interaction_Operand is abstract;
   --  Getter of CombinedFragment::operand.
   --
   --  The set of operands of the combined fragment.

end AMF.UML.Combined_Fragments;
