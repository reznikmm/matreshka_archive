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
--  This package provides name resolver.
--
--  XXX Note: components can be specified in any order, thus this resolver
--  should do several passes to handle all possible combination correctly. For
--  example, it can be separated onto several visitors, which will be run in
--  appropriate order. For now, following dependencies are not handled
--  correctly in some cases:
--
--   - binding operation to interface operation reference resolution:
--     {extended_interface} property must be resolved already.
------------------------------------------------------------------------------
with WSDL.AST.Descriptions;
private with WSDL.AST.Endpoints;
private with WSDL.AST.Operations;
private with WSDL.AST.Services;
private with WSDL.Iterators;
with WSDL.Visitors;

package WSDL.Name_Resolvers is

   pragma Preelaborate;

   type Name_Resolver is limited new WSDL.Visitors.WSDL_Visitor with private;

   procedure Set_Root
    (Self : in out Name_Resolver'Class;
     Root : WSDL.AST.Descriptions.Description_Access);

private

   type Name_Resolver is limited new WSDL.Visitors.WSDL_Visitor with record
      Root : WSDL.AST.Descriptions.Description_Access;
   end record;

   overriding procedure Enter_Binding
    (Self    : in out Name_Resolver;
     Node    : not null WSDL.AST.Binding_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Enter_Binding_Operation
    (Self    : in out Name_Resolver;
     Node    : not null WSDL.AST.Operations.Binding_Operation_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Enter_Endpoint
    (Self    : in out Name_Resolver;
     Node    : not null WSDL.AST.Endpoints.Endpoint_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Enter_Interface
    (Self    : in out Name_Resolver;
     Node    : not null WSDL.AST.Interface_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Enter_Service
    (Self    : in out Name_Resolver;
     Node    : not null WSDL.AST.Services.Service_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

end WSDL.Name_Resolvers;
