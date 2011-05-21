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
--  A conditional node is a structured activity node that represents an 
--  exclusive choice among some number of alternatives.
------------------------------------------------------------------------------
limited with AMF.UML.Clauses.Collections;
limited with AMF.UML.Output_Pins.Collections;
with AMF.UML.Structured_Activity_Nodes;

package AMF.UML.Conditional_Nodes is

   pragma Preelaborate;

   type UML_Conditional_Node is limited interface
     and AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node;

   type UML_Conditional_Node_Access is
     access all UML_Conditional_Node'Class;
   for UML_Conditional_Node_Access'Storage_Size use 0;

   not overriding function Get_Clause
    (Self : not null access constant UML_Conditional_Node)
       return AMF.UML.Clauses.Collections.Set_Of_UML_Clause is abstract;
   --  Set of clauses composing the conditional.

   not overriding function Get_Is_Assured
    (Self : not null access constant UML_Conditional_Node)
       return Boolean is abstract;
   --  If true, the modeler asserts that at least one test will succeed.

   not overriding procedure Set_Is_Assured
    (Self : not null access UML_Conditional_Node;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Determinate
    (Self : not null access constant UML_Conditional_Node)
       return Boolean is abstract;
   --  If true, the modeler asserts that at most one test will succeed.

   not overriding procedure Set_Is_Determinate
    (Self : not null access UML_Conditional_Node;
     To   : Boolean) is abstract;

   not overriding function Get_Result
    (Self : not null access constant UML_Conditional_Node)
       return AMF.UML.Output_Pins.Collections.Ordered_Set_Of_UML_Output_Pin is abstract;
   --  A list of output pins that constitute the data flow outputs of the 
   --  conditional.

end AMF.UML.Conditional_Nodes;
