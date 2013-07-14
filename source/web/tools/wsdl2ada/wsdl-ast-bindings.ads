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
with Ada.Containers.Vectors;

with WSDL.AST.Components;

package WSDL.AST.Bindings is

   pragma Preelaborate;

   package Binding_Fault_Vectors is
     new Ada.Containers.Vectors
          (Positive,
           WSDL.AST.Binding_Fault_Access,
           WSDL.AST."=");

   package Binding_Operation_Vectors is
     new Ada.Containers.Vectors
          (Positive,
           WSDL.AST.Binding_Operation_Access,
           WSDL.AST."=");

   type SOAP_Binding_Extension is record
      Version             : League.Strings.Universal_String;
      --  Value of {soap version} property.

      Underlying_Protocol : League.Strings.Universal_String;
      --  Value of {soap underlying protocol} property.

      MEP_Default         : League.Strings.Universal_String;
      --  Value of {soap mep default} property.
   end record;

   type Binding_Node is new WSDL.AST.Components.Component_Node with record
      Interface_Name     : Qualified_Name;
      --  Name of interface.

      Interface_Node     : WSDL.AST.Interface_Access;
      --  Value of {interface} property.

      Binding_Type       : League.Strings.Universal_String;
      --  Value of {type} property.

      Binding_Operations : Binding_Operation_Vectors.Vector;
      --  Value of {binding operations} property.

      Binding_Faults     : Binding_Fault_Vectors.Vector;
      --  Value of {binding faults} property.

      SOAP               : SOAP_Binding_Extension;
      --  SOAP Binding specific components.
   end record;

   overriding procedure Enter
    (Self    : not null access Binding_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave
    (Self    : not null access Binding_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Visit
    (Self     : not null access Binding_Node;
     Iterator : in out WSDL.Iterators.WSDL_Iterator'Class;
     Visitor  : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control  : in out WSDL.Iterators.Traverse_Control);

   package Constructors is

      function Create_Binding
       (Parent : not null WSDL.AST.Description_Access;
        Name   : League.Strings.Universal_String)
          return not null WSDL.AST.Binding_Access;

   end Constructors;

end WSDL.AST.Bindings;
