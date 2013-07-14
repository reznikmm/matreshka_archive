------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with WSDL.AST.Descriptions;
pragma Unreferenced (WSDL.AST.Descriptions);
--  GNAT Pro 7.2.0w (20130423) reports that this unit is not used.
with WSDL.Iterators;
with WSDL.Visitors;

package body WSDL.AST.Bindings is

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      --------------------
      -- Create_Binding --
      --------------------

      function Create_Binding
       (Parent : not null WSDL.AST.Description_Access;
        Name   : League.Strings.Universal_String)
          return not null WSDL.AST.Binding_Access is
      begin
         return Result : constant not null WSDL.AST.Binding_Access
           := new WSDL.AST.Bindings.Binding_Node
         do
            Result.Parent := Parent;
            Result.Local_Name := Name;
            Parent.Bindings.Insert (Name, Result);
         end return;
      end Create_Binding;

   end Constructors;

   -----------
   -- Enter --
   -----------

   overriding procedure Enter
    (Self    : not null access Binding_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Visitor.Enter_Binding (Binding_Access (Self), Control);
   end Enter;

   -----------
   -- Leave --
   -----------

   overriding procedure Leave
    (Self    : not null access Binding_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Visitor.Leave_Binding (Binding_Access (Self), Control);
   end Leave;

   -----------
   -- Visit --
   -----------

   overriding procedure Visit
    (Self     : not null access Binding_Node;
     Iterator : in out WSDL.Iterators.WSDL_Iterator'Class;
     Visitor  : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control  : in out WSDL.Iterators.Traverse_Control) is
   begin
      Iterator.Visit_Binding (Visitor, Binding_Access (Self), Control);
   end Visit;

end WSDL.AST.Bindings;
