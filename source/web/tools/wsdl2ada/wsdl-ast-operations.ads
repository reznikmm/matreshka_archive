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

with League.String_Vectors;

limited with WSDL.AST.Bindings;
with WSDL.AST.Messages;
with WSDL.MEPs;

package WSDL.AST.Operations is

   pragma Preelaborate;

   package Interface_Message_Vectors is
     new Ada.Containers.Vectors
          (Positive,
           WSDL.AST.Messages.Interface_Message_Access,
           WSDL.AST.Messages."=");

   package Interface_Fault_Vectors is
     new Ada.Containers.Vectors
          (Positive,
           WSDL.AST.Interface_Fault_Reference_Access,
           WSDL.AST."=");

   type Binding_Access is
     access all WSDL.AST.Bindings.Binding_Node'Class;

   -------------------------
   -- Interface Operation --
   -------------------------

   type Interface_Operation_Node is new Abstract_Node with record
      Local_Name                   : League.Strings.Universal_String;
      --  Local name part of the name of the operation.

      Parent                       : WSDL.AST.Interface_Access;
      --  Value of {parent} property.

      Message_Exchange_Pattern     : WSDL.MEPs.MEP_Access;
      --  Value of {message exchange pattern} property.

      Style                        :
        League.String_Vectors.Universal_String_Vector;
      --  Value of {style} property.

      Interface_Message_References : Interface_Message_Vectors.Vector;
      --  Value of {interface message references} property.

      Interface_Fault_References   : Interface_Fault_Vectors.Vector;
      --  Value of {interface fault references} property.
   end record;

   overriding procedure Enter
    (Self    : not null access Interface_Operation_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave
    (Self    : not null access Interface_Operation_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Visit
    (Self     : not null access Interface_Operation_Node;
     Iterator : in out WSDL.Iterators.WSDL_Iterator'Class;
     Visitor  : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control  : in out WSDL.Iterators.Traverse_Control);

   -----------------------
   -- Binding Operation --
   -----------------------

   type SOAP_Binding_Operation_Extension is record
      MEP    : League.Strings.Universal_String;
      --  Value of {soap mep} property.

      Action : League.Strings.Universal_String;
      --  Value of {soap action} property.
   end record;

   type Binding_Operation_Node is new Abstract_Node with record
      Ref                 : Qualified_Name;
      --  Name of the related interface operation.

      Parent              : Binding_Access;
      --  Value of {parent} property.

      Interface_Operation : Interface_Operation_Access;
      --  Value of {interface operation} property.

      SOAP                : SOAP_Binding_Operation_Extension;
      --  SOAP Binding extension information;
   end record;

   type Binding_Operation_Access is
     access all Binding_Operation_Node'Class;

   overriding procedure Enter
    (Self    : not null access Binding_Operation_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave
    (Self    : not null access Binding_Operation_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Visit
    (Self     : not null access Binding_Operation_Node;
     Iterator : in out WSDL.Iterators.WSDL_Iterator'Class;
     Visitor  : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control  : in out WSDL.Iterators.Traverse_Control);

end WSDL.AST.Operations;
