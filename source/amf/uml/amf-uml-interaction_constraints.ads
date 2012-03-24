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
--  An interaction constraint is a Boolean expression that guards an operand 
--  in a combined fragment.
------------------------------------------------------------------------------
with AMF.UML.Constraints;
limited with AMF.UML.Value_Specifications;

package AMF.UML.Interaction_Constraints is

   pragma Preelaborate;

   type UML_Interaction_Constraint is limited interface
     and AMF.UML.Constraints.UML_Constraint;

   type UML_Interaction_Constraint_Access is
     access all UML_Interaction_Constraint'Class;
   for UML_Interaction_Constraint_Access'Storage_Size use 0;

   not overriding function Get_Maxint
    (Self : not null access constant UML_Interaction_Constraint)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is abstract;
   --  Getter of InteractionConstraint::maxint.
   --
   --  The maximum number of iterations of a loop

   not overriding procedure Set_Maxint
    (Self : not null access UML_Interaction_Constraint;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is abstract;
   --  Setter of InteractionConstraint::maxint.
   --
   --  The maximum number of iterations of a loop

   not overriding function Get_Minint
    (Self : not null access constant UML_Interaction_Constraint)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is abstract;
   --  Getter of InteractionConstraint::minint.
   --
   --  The minimum number of iterations of a loop

   not overriding procedure Set_Minint
    (Self : not null access UML_Interaction_Constraint;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is abstract;
   --  Setter of InteractionConstraint::minint.
   --
   --  The minimum number of iterations of a loop

end AMF.UML.Interaction_Constraints;
