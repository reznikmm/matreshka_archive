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
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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

package WSDL.AST.Faults is

   pragma Preelaborate;

   ---------------------
   -- Interface Fault --
   ---------------------

   type Interface_Fault_Node is new Abstract_Node with record
      Local_Name            : League.Strings.Universal_String;
      --  Local name part of the name of the fault.

      Parent                : Interface_Access;
      --  Value of {parent} property.

      Message_Content_Model : WSDL.AST.Message_Content_Models;
      --  Value of {message content model} property.

      Element               : WSDL.AST.Qualified_Name;
      --  Name of the element which is used as content of the fault.
   end record;

   overriding procedure Enter
    (Self    : not null access Interface_Fault_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave
    (Self    : not null access Interface_Fault_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Visit
    (Self     : not null access Interface_Fault_Node;
     Iterator : in out WSDL.Iterators.WSDL_Iterator'Class;
     Visitor  : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control  : in out WSDL.Iterators.Traverse_Control);

   -------------------------------
   -- Interface Fault Reference --
   -------------------------------

   type Interface_Fault_Reference_Node is new Abstract_Node with record
      Interface_Fault_Name : Qualified_Name;
      --  QName of referenced interface fault component.

      Interface_Fault      : WSDL.AST.Interface_Fault_Access;
      --  Value of {interface fault} property.

      Parent               : WSDL.AST.Interface_Operation_Access;
      --  Value of {parent} property.

      Message_Label        : League.Strings.Universal_String;
      --  Value of {message label} property.

      Direction            : WSDL.AST.Message_Directions;
      --  Value of {direction} property.
   end record;

   overriding procedure Enter
    (Self    : not null access Interface_Fault_Reference_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave
    (Self    : not null access Interface_Fault_Reference_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Visit
    (Self     : not null access Interface_Fault_Reference_Node;
     Iterator : in out WSDL.Iterators.WSDL_Iterator'Class;
     Visitor  : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control  : in out WSDL.Iterators.Traverse_Control);

   -------------------
   -- Binding Fault --
   -------------------

--   type SOAP_Binding_Operation_Extension is record
--      MEP    : League.Strings.Universal_String;
--      --  Value of {soap mep} property.
--
--      Action : League.Strings.Universal_String;
--      --  Value of {soap action} property.
--   end record;

   type Binding_Fault_Node is new Abstract_Node with record
      null;
--      Ref                 : Qualified_Name;
--      --  Name of the related interface operation.
--
--      Parent              : Binding_Access;
--      --  Value of {parent} property.
--
--      Interface_Operation : Interface_Operation_Access;
--      --  Value of {interface operation} property.
--
--      SOAP                : SOAP_Binding_Operation_Extension;
--      --  SOAP Binding extension information;
   end record;

   overriding procedure Enter
    (Self    : not null access Binding_Fault_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave
    (Self    : not null access Binding_Fault_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Visit
    (Self     : not null access Binding_Fault_Node;
     Iterator : in out WSDL.Iterators.WSDL_Iterator'Class;
     Visitor  : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control  : in out WSDL.Iterators.Traverse_Control);

end WSDL.AST.Faults;
