------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
--  A dependency is a relationship that signifies that a single or a set of 
--  model elements requires other model elements for their specification or 
--  implementation. This means that the complete semantics of the depending 
--  elements is either semantically or structurally dependent on the 
--  definition of the supplier element(s).
------------------------------------------------------------------------------
with AMF.UML.Directed_Relationships;
limited with AMF.UML.Named_Elements.Collections;
with AMF.UML.Packageable_Elements;

package AMF.UML.Dependencies is

   pragma Preelaborate;

   type UML_Dependency_Interface is limited interface
     and AMF.UML.Directed_Relationships.UML_Directed_Relationship_Interface
     and AMF.UML.Packageable_Elements.UML_Packageable_Element_Interface;

   type UML_Dependency is
     access all UML_Dependency_Interface'Class;
   for UML_Dependency'Storage_Size use 0;

   not overriding function Get_Client
    (Self : not null access constant UML_Dependency_Interface)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is abstract;
   --  The element(s) dependent on the supplier element(s). In some cases 
   --  (such as a Trace Abstraction) the assignment of direction (that is, the 
   --  designation of the client element) is at the discretion of the modeler, 
   --  and is a stipulation.

   not overriding function Get_Supplier
    (Self : not null access constant UML_Dependency_Interface)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is abstract;
   --  The element(s) independent of the client element(s), in the same 
   --  respect and the same dependency relationship. In some directed 
   --  dependency relationships (such as Refinement Abstractions), a common 
   --  convention in the domain of class-based OO software is to put the more 
   --  abstract element in this role. Despite this convention, users of UML 
   --  may stipulate a sense of dependency suitable for their domain, which 
   --  makes a more abstract element dependent on that which is more specific.

end AMF.UML.Dependencies;
