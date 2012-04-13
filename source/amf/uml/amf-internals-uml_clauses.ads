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
with AMF.Internals.UML_Elements;
with AMF.UML.Clauses.Collections;
with AMF.UML.Executable_Nodes.Collections;
with AMF.UML.Output_Pins.Collections;
with AMF.Visitors;

package AMF.Internals.UML_Clauses is

   type UML_Clause_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Clauses.UML_Clause with null record;

   overriding function Get_Body
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Executable_Nodes.Collections.Set_Of_UML_Executable_Node;
   --  Getter of Clause::body.
   --
   --  A nested activity fragment that is executed if the test evaluates to
   --  true and the clause is chosen over any concurrent clauses that also
   --  evaluate to true.

   overriding function Get_Body_Output
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Output_Pins.Collections.Ordered_Set_Of_UML_Output_Pin;
   --  Getter of Clause::bodyOutput.
   --
   --  A list of output pins within the body fragment whose values are moved
   --  to the result pins of the containing conditional node after execution
   --  of the clause body.

   overriding function Get_Decider
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Output_Pins.UML_Output_Pin_Access;
   --  Getter of Clause::decider.
   --
   --  An output pin within the test fragment the value of which is examined
   --  after execution of the test to determine whether the body should be
   --  executed.

   overriding procedure Set_Decider
    (Self : not null access UML_Clause_Proxy;
     To   : AMF.UML.Output_Pins.UML_Output_Pin_Access);
   --  Setter of Clause::decider.
   --
   --  An output pin within the test fragment the value of which is examined
   --  after execution of the test to determine whether the body should be
   --  executed.

   overriding function Get_Predecessor_Clause
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Clauses.Collections.Set_Of_UML_Clause;
   --  Getter of Clause::predecessorClause.
   --
   --  A set of clauses whose tests must all evaluate false before the current
   --  clause can be tested.

   overriding function Get_Successor_Clause
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Clauses.Collections.Set_Of_UML_Clause;
   --  Getter of Clause::successorClause.
   --
   --  A set of clauses which may not be tested unless the current clause
   --  tests false.

   overriding function Get_Test
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Executable_Nodes.Collections.Set_Of_UML_Executable_Node;
   --  Getter of Clause::test.
   --
   --  A nested activity fragment with a designated output pin that specifies
   --  the result of the test.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Clause_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Clause_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Clause_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Clauses;
