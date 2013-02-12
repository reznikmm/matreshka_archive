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
--  Root package for AST of WSDL.
------------------------------------------------------------------------------
with Ada.Containers;

with League.Strings;

limited with WSDL.AST.Faults;
limited with WSDL.AST.Interfaces;
limited with WSDL.Iterators;
limited with WSDL.Visitors;

package WSDL.AST is

   pragma Preelaborate;

   type Qualified_Name is record
      Namespace_URI : League.Strings.Universal_String;
      Local_Name    : League.Strings.Universal_String;
   end record;

   function Image
    (Item : Qualified_Name) return League.Strings.Universal_String;

   function Hash (Item : Qualified_Name) return Ada.Containers.Hash_Type;

   type Message_Content_Models is (Element, Any, None, Other);

   type Message_Directions is (In_Message, Out_Message);

   -------------------
   -- Abstract Node --
   -------------------

   type Abstract_Node is abstract tagged record
      null;
   end record;

   type Node_Access is access all Abstract_Node'Class;

   not overriding procedure Enter
    (Self    : not null access Abstract_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control) is abstract;

   not overriding procedure Leave
    (Self    : not null access Abstract_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control) is abstract;

   not overriding procedure Visit
    (Self     : not null access Abstract_Node;
     Iterator : in out WSDL.Iterators.WSDL_Iterator'Class;
     Visitor  : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control  : in out WSDL.Iterators.Traverse_Control) is abstract;

   type Interface_Access is
     access all WSDL.AST.Interfaces.Interface_Node'Class;

   type Interface_Fault_Reference_Access is
     access all WSDL.AST.Faults.Interface_Fault_Reference_Node'Class;

end WSDL.AST;
