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
--  A loop node is a structured activity node that represents a loop with 
--  setup, test, and body sections.
------------------------------------------------------------------------------
limited with AMF.UML.Executable_Nodes;
limited with AMF.UML.Input_Pins;
limited with AMF.UML.Output_Pins;
with AMF.UML.Structured_Activity_Nodes;

package AMF.UML.Loop_Nodes is

   pragma Preelaborate;

   type UML_Loop_Node_Interface is limited interface
     and AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Interface;

   type UML_Loop_Node is
     access all UML_Loop_Node_Interface'Class;

   type Set_Of_UML_Loop_Node is null record;
   type Ordered_Set_Of_UML_Loop_Node is null record;

   not overriding function Get_Body_Output
    (Self : not null access constant UML_Loop_Node_Interface)
       return AMF.UML.Output_Pins.Ordered_Set_Of_UML_Output_Pin is abstract;
   --  A list of output pins within the body fragment the values of which are 
   --  moved to the loop variable pins after completion of execution of the 
   --  body, before the next iteration of the loop begins or before the loop 
   --  exits.

   not overriding function Get_Body_Part
    (Self : not null access constant UML_Loop_Node_Interface)
       return AMF.UML.Executable_Nodes.Set_Of_UML_Executable_Node is abstract;
   --  The set of nodes and edges that perform the repetitive computations of 
   --  the loop. The body section is executed as long as the test section 
   --  produces a true value.

   not overriding function Get_Decider
    (Self : not null access constant UML_Loop_Node_Interface)
       return AMF.UML.Output_Pins.UML_Output_Pin is abstract;
   --  An output pin within the test fragment the value of which is examined 
   --  after execution of the test to determine whether to execute the loop 
   --  body.

   not overriding procedure Set_Decider
    (Self : not null access UML_Loop_Node_Interface;
     To   : AMF.UML.Output_Pins.UML_Output_Pin) is abstract;

   not overriding function Get_Is_Tested_First
    (Self : not null access constant UML_Loop_Node_Interface)
       return Boolean is abstract;
   --  If true, the test is performed before the first execution of the body. 
   --  If false, the body is executed once before the test is performed.

   not overriding procedure Set_Is_Tested_First
    (Self : not null access UML_Loop_Node_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Loop_Variable
    (Self : not null access constant UML_Loop_Node_Interface)
       return AMF.UML.Output_Pins.Ordered_Set_Of_UML_Output_Pin is abstract;
   --  A list of output pins that hold the values of the loop variables during 
   --  an execution of the loop. When the test fails, the values are movied to 
   --  the result pins of the loop.

   not overriding function Get_Loop_Variable_Input
    (Self : not null access constant UML_Loop_Node_Interface)
       return AMF.UML.Input_Pins.Ordered_Set_Of_UML_Input_Pin is abstract;
   --  A list of values that are moved into the loop variable pins before the 
   --  first iteration of the loop.

   not overriding function Get_Result
    (Self : not null access constant UML_Loop_Node_Interface)
       return AMF.UML.Output_Pins.Ordered_Set_Of_UML_Output_Pin is abstract;
   --  A list of output pins that constitute the data flow output of the 
   --  entire loop.

   not overriding function Get_Setup_Part
    (Self : not null access constant UML_Loop_Node_Interface)
       return AMF.UML.Executable_Nodes.Set_Of_UML_Executable_Node is abstract;
   --  The set of nodes and edges that initialize values or perform other 
   --  setup computations for the loop.

   not overriding function Get_Test
    (Self : not null access constant UML_Loop_Node_Interface)
       return AMF.UML.Executable_Nodes.Set_Of_UML_Executable_Node is abstract;
   --  The set of nodes, edges, and designated value that compute a Boolean 
   --  value to determine if another execution of the body will be performed.

end AMF.UML.Loop_Nodes;
