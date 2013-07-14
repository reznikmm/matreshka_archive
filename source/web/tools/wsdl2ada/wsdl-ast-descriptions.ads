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

with WSDL.AST.Services;
with WSDL.AST.Types;

package WSDL.AST.Descriptions is

   pragma Preelaborate;

   package Binding_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           WSDL.AST.Binding_Access,
           League.Strings.Hash,
           League.Strings."=",
           WSDL.AST."=");

   package Interface_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           WSDL.AST.Interface_Access,
           League.Strings.Hash,
           League.Strings."=",
           WSDL.AST."=");

   package Service_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           WSDL.AST.Services.Service_Access,
           League.Strings.Hash,
           League.Strings."=",
           WSDL.AST.Services."=");

   type Description_Node is new Abstract_Node with record
      Target_Namespace : League.Strings.Universal_String;
      --  Value of 'targetNamespace' attribute.

      Types            : WSDL.AST.Types.Types_Access;
      --  Types section of description.

      Interfaces       : Interface_Maps.Map;
      --  Set of interface components represented as children elements of this
      --  description element.

      Bindings         : Binding_Maps.Map;
      --  Set of binding components represented as children element of this
      --  description element.

      Services         : Service_Maps.Map;
      --  Set of service components represented as children element of this
      --  description element.
   end record;

   overriding procedure Enter
    (Self    : not null access Description_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave
    (Self    : not null access Description_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Visit
    (Self     : not null access Description_Node;
     Iterator : in out WSDL.Iterators.WSDL_Iterator'Class;
     Visitor  : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control  : in out WSDL.Iterators.Traverse_Control);

end WSDL.AST.Descriptions;
