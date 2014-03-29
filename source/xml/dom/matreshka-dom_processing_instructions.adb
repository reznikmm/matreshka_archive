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

package body Matreshka.DOM_Processing_Instructions is

   ----------------
   -- Enter_Node --
   ----------------

   overriding procedure Enter_Node
    (Self    : not null access Processing_Instruction_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Visitor.Enter_Processing_Instruction
       (XML.DOM.Processing_Instructions.DOM_Processing_Instruction_Access
         (Self),
        Control);
   end Enter_Node;

   --------------
   -- Get_Data --
   --------------

   overriding function Get_Data
    (Self : not null access constant Processing_Instruction_Node)
       return League.Strings.Universal_String is
   begin
      raise Program_Error;
      return League.Strings.Empty_Universal_String;
   end Get_Data;

   -------------------
   -- Get_Node_Type --
   -------------------

   overriding function Get_Node_Type
    (Self : not null access constant Processing_Instruction_Node)
       return XML.DOM.Node_Type
   is
      pragma Unreferenced (Self);

   begin
      return XML.DOM.Processing_Instruction_Node;
   end Get_Node_Type;

   ----------------
   -- Get_Target --
   ----------------

   overriding function Get_Target
    (Self : not null access constant Processing_Instruction_Node)
       return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

   begin
      raise Program_Error;
      return League.Strings.Empty_Universal_String;
   end Get_Target;

   ----------------
   -- Leave_Node --
   ----------------

   overriding procedure Leave_Node
    (Self    : not null access Processing_Instruction_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Visitor.Leave_Processing_Instruction
       (XML.DOM.Processing_Instructions.DOM_Processing_Instruction_Access
         (Self),
        Control);
   end Leave_Node;

   --------------
   -- Set_Data --
   --------------

   overriding procedure Set_Data
    (Self     : not null access Processing_Instruction_Node;
     New_Data : League.Strings.Universal_String) is
   begin
      raise Program_Error;
   end Set_Data;

   ----------------
   -- Visit_Node --
   ----------------

   overriding procedure Visit_Node
    (Self     : not null access Processing_Instruction_Node;
     Iterator : in out XML.DOM.Visitors.Abstract_Iterator'Class;
     Visitor  : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control  : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Iterator.Visit_Processing_Instruction
       (Visitor,
        XML.DOM.Processing_Instructions.DOM_Processing_Instruction_Access
         (Self),
        Control);
   end Visit_Node;

end Matreshka.DOM_Processing_Instructions;
