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
with WSDL.AST.Endpoints;
with WSDL.AST.Faults;
with WSDL.AST.Operations;
with WSDL.AST.Services;
with WSDL.AST.Types;
limited with WSDL.Visitors;

package WSDL.Iterators is

   pragma Preelaborate;

   type Traverse_Control is
    (Continue,
     Abandon_Children,
     Abandon_Sibling,
     Terminate_Immediately);

   type WSDL_Iterator is limited interface;

   procedure Visit
    (Self    : in out WSDL_Iterator'Class;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Node_Access;
     Control : in out Traverse_Control);

   not overriding procedure Visit_Binding
    (Self    : in out WSDL_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Binding_Access;
     Control : in out Traverse_Control) is null;

   not overriding procedure Visit_Binding_Fault
    (Self    : in out WSDL_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Binding_Fault_Access;
     Control : in out Traverse_Control) is null;

   not overriding procedure Visit_Binding_Operation
    (Self    : in out WSDL_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Operations.Binding_Operation_Access;
     Control : in out Traverse_Control) is null;

   not overriding procedure Visit_Description
    (Self    : in out WSDL_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Descriptions.Description_Access;
     Control : in out Traverse_Control) is null;

   not overriding procedure Visit_Endpoint
    (Self    : in out WSDL_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Endpoints.Endpoint_Access;
     Control : in out Traverse_Control) is null;

   not overriding procedure Visit_Interface
    (Self    : in out WSDL_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Interface_Access;
     Control : in out Traverse_Control) is null;

   not overriding procedure Visit_Interface_Fault
    (Self    : in out WSDL_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Faults.Interface_Fault_Access;
     Control : in out Traverse_Control) is null;

   not overriding procedure Visit_Interface_Fault_Reference
    (Self    : in out WSDL_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Interface_Fault_Reference_Access;
     Control : in out Traverse_Control) is null;

   not overriding procedure Visit_Interface_Message
    (Self    : in out WSDL_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Interface_Message_Access;
     Control : in out Traverse_Control) is null;

   not overriding procedure Visit_Interface_Operation
    (Self    : in out WSDL_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Interface_Operation_Access;
     Control : in out Traverse_Control) is null;

   not overriding procedure Visit_Service
    (Self    : in out WSDL_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Services.Service_Access;
     Control : in out Traverse_Control) is null;

   not overriding procedure Visit_Types
    (Self    : in out WSDL_Iterator;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Node    : not null WSDL.AST.Types.Types_Access;
     Control : in out Traverse_Control) is null;

end WSDL.Iterators;
