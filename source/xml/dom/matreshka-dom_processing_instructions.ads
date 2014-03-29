------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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
with League.Strings;

with Matreshka.DOM_Nodes;
with XML.DOM.Processing_Instructions;
with XML.DOM.Visitors;

package Matreshka.DOM_Processing_Instructions is

   pragma Preelaborate;

   type Processing_Instruction_Node is new Matreshka.DOM_Nodes.Node
     and XML.DOM.Processing_Instructions.DOM_Processing_Instruction
       with null record;

   overriding procedure Enter_Node
    (Self    : not null access Processing_Instruction_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding function Get_Data
    (Self : not null access constant Processing_Instruction_Node)
       return League.Strings.Universal_String;

   overriding function Get_Node_Type
    (Self : not null access constant Processing_Instruction_Node)
       return XML.DOM.Node_Type;

   overriding function Get_Node_Value
    (Self : not null access constant Processing_Instruction_Node)
       return League.Strings.Universal_String renames Get_Data;

   overriding function Get_Target
    (Self : not null access constant Processing_Instruction_Node)
       return League.Strings.Universal_String;

   overriding function Get_Node_Name
    (Self : not null access constant Processing_Instruction_Node)
       return League.Strings.Universal_String renames Get_Target;

   overriding procedure Set_Data
    (Self     : not null access Processing_Instruction_Node;
     New_Data : League.Strings.Universal_String);

   overriding procedure Set_Node_Value
    (Self      : not null access Processing_Instruction_Node;
     New_Value : League.Strings.Universal_String) renames Set_Data;

   overriding procedure Leave_Node
    (Self    : not null access Processing_Instruction_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Node
    (Self     : not null access Processing_Instruction_Node;
     Iterator : in out XML.DOM.Visitors.Abstract_Iterator'Class;
     Visitor  : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control  : in out XML.DOM.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end Matreshka.DOM_Processing_Instructions;
