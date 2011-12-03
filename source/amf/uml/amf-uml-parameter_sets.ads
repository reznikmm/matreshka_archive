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
--  A parameter set is an element that provides alternative sets of inputs or 
--  outputs that a behavior may use.
------------------------------------------------------------------------------
limited with AMF.UML.Constraints.Collections;
with AMF.UML.Named_Elements;
limited with AMF.UML.Parameters.Collections;

package AMF.UML.Parameter_Sets is

   pragma Preelaborate;

   type UML_Parameter_Set is limited interface
     and AMF.UML.Named_Elements.UML_Named_Element;

   type UML_Parameter_Set_Access is
     access all UML_Parameter_Set'Class;
   for UML_Parameter_Set_Access'Storage_Size use 0;

   not overriding function Get_Condition
    (Self : not null access constant UML_Parameter_Set)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is abstract;
   --  Getter of ParameterSet::condition.
   --
   --  Constraint that should be satisfied for the owner of the parameters in 
   --  an input parameter set to start execution using the values provided for 
   --  those parameters, or the owner of the parameters in an output parameter 
   --  set to end execution providing the values for those parameters, if all 
   --  preconditions and conditions on input parameter sets were satisfied.

   not overriding function Get_Parameter
    (Self : not null access constant UML_Parameter_Set)
       return AMF.UML.Parameters.Collections.Set_Of_UML_Parameter is abstract;
   --  Getter of ParameterSet::parameter.
   --
   --  Parameters in the parameter set.

end AMF.UML.Parameter_Sets;
