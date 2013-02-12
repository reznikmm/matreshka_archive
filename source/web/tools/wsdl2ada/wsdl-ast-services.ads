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
with Ada.Containers.Hashed_Maps;

with League.Strings.Hash;

with WSDL.AST.Components;
with WSDL.AST.Endpoints;

package WSDL.AST.Services is

   pragma Preelaborate;

   package Endpoint_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           WSDL.AST.Endpoints.Endpoint_Access,
           League.Strings.Hash,
           League.Strings."=",
           WSDL.AST.Endpoints."=");

   type Service_Node is new WSDL.AST.Components.Component_Node with record
      Interface_Name : Qualified_Name;
      --  Name of interface.

      Interface_Node : WSDL.AST.Interface_Access;
      --  Value of {interface} property.

      Endpoints      : Endpoint_Maps.Map;
      --  Value of {endpoints} property.
   end record;

   type Service_Access is access all Service_Node'Class;

   overriding procedure Enter
    (Self    : not null access Service_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave
    (Self    : not null access Service_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Visit
    (Self     : not null access Service_Node;
     Iterator : in out WSDL.Iterators.WSDL_Iterator'Class;
     Visitor  : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control  : in out WSDL.Iterators.Traverse_Control);

end WSDL.AST.Services;
