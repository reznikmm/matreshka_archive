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
with WSDL.AST.Bindings;
pragma Unreferenced (WSDL.AST.Bindings);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Faults;
pragma Unreferenced (WSDL.AST.Faults);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Interfaces;
pragma Unreferenced (WSDL.AST.Interfaces);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Messages;
pragma Unreferenced (WSDL.AST.Messages);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Operations;
pragma Unreferenced (WSDL.AST.Operations);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.

package body WSDL.Iterators.Containment is

   -------------------
   -- Visit_Binding --
   -------------------

   overriding procedure Visit_Binding
    (Self    : in out Containment_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Binding_Access;
     Control : in out Traverse_Control) is
   begin
      for J of Node.Binding_Faults loop
         Self.Visit (Visitor, WSDL.AST.Node_Access (J), Control);
      end loop;

      for J of Node.Binding_Operations loop
         Self.Visit (Visitor, WSDL.AST.Node_Access (J), Control);
      end loop;
   end Visit_Binding;

   -----------------------
   -- Visit_Description --
   -----------------------

   overriding procedure Visit_Description
    (Self    : in out Containment_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Descriptions.Description_Access;
     Control : in out Traverse_Control)
   is
      use type WSDL.AST.Types.Types_Access;

   begin
      if Node.Types /= null then
         Self.Visit (Visitor, WSDL.AST.Node_Access (Node.Types), Control);
      end if;

      for J of Node.Interfaces loop
         Self.Visit (Visitor, WSDL.AST.Node_Access (J), Control);
      end loop;

      for J of Node.Bindings loop
         Self.Visit (Visitor, WSDL.AST.Node_Access (J), Control);
      end loop;

      for J of Node.Services loop
         Self.Visit (Visitor, WSDL.AST.Node_Access (J), Control);
      end loop;
   end Visit_Description;

   ---------------------
   -- Visit_Interface --
   ---------------------

   overriding procedure Visit_Interface
    (Self    : in out Containment_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Interface_Access;
     Control : in out Traverse_Control) is
   begin
      for J of Node.Interface_Operations loop
         Self.Visit (Visitor, WSDL.AST.Node_Access (J), Control);
      end loop;
   end Visit_Interface;

   -------------------------------
   -- Visit_Interface_Operation --
   -------------------------------

   overriding procedure Visit_Interface_Operation
    (Self    : in out Containment_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Interface_Operation_Access;
     Control : in out Traverse_Control) is
   begin
      for J of Node.Interface_Message_References loop
         Self.Visit (Visitor, WSDL.AST.Node_Access (J), Control);
      end loop;
   end Visit_Interface_Operation;

   -------------------
   -- Visit_Service --
   -------------------

   overriding procedure Visit_Service
    (Self    : in out Containment_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Services.Service_Access;
     Control : in out Traverse_Control) is
   begin
      for J of Node.Endpoints loop
         Self.Visit (Visitor, WSDL.AST.Node_Access (J), Control);
      end loop;
   end Visit_Service;

end WSDL.Iterators.Containment;
