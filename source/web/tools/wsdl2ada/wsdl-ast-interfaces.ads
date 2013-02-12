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
with Ada.Containers.Hashed_Sets;
with Ada.Containers.Vectors;

with League.String_Vectors;
with League.Strings.Hash;

with WSDL.AST.Components;
with WSDL.AST.Faults;
with WSDL.AST.Operations;

package WSDL.AST.Interfaces is

   pragma Preelaborate;

   package Qualified_Name_Sets is
     new Ada.Containers.Hashed_Sets (Qualified_Name, Hash, "=");

   package Interface_Operation_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           WSDL.AST.Operations.Interface_Operation_Access,
           League.Strings.Hash,
           League.Strings."=",
           WSDL.AST.Operations."=");

   package Interface_Fault_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           WSDL.AST.Faults.Interface_Fault_Access,
           League.Strings.Hash,
           League.Strings."=",
           WSDL.AST.Faults."=");

   package Interface_Vectors is
     new Ada.Containers.Vectors (Positive, WSDL.AST.Interface_Access);

   type Interface_Node is new WSDL.AST.Components.Component_Node with record
      Extends              : Qualified_Name_Sets.Set;
      --  Names of interface components that this interface derives from.

      Extended_Interfaces  : Interface_Vectors.Vector;
      --  Value of {extended interfaces} property.

      Style_Default        : League.String_Vectors.Universal_String_Vector;
      --  Default value of operation style for all operations of the interface.

      Interface_Faults     : Interface_Fault_Maps.Map;
      --  Value of {interface faults} property of interface component.

      Interface_Operations : Interface_Operation_Maps.Map;
      --  Value of {interface operations} property of interface component.
   end record;

   overriding procedure Enter
    (Self    : not null access Interface_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave
    (Self    : not null access Interface_Node;
     Visitor : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Visit
    (Self     : not null access Interface_Node;
     Iterator : in out WSDL.Iterators.WSDL_Iterator'Class;
     Visitor  : in out WSDL.Visitors.WSDL_Visitor'Class;
     Control  : in out WSDL.Iterators.Traverse_Control);

end WSDL.AST.Interfaces;
