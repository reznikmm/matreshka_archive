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
--  A constraint is a condition or restriction expressed in natural language 
--  text or in a machine readable language for the purpose of declaring some 
--  of the semantics of an element.
------------------------------------------------------------------------------
limited with AMF.UML.Elements.Collections;
limited with AMF.UML.Namespaces;
with AMF.UML.Packageable_Elements;
limited with AMF.UML.Value_Specifications;

package AMF.UML.Constraints is

   pragma Preelaborate;

   type UML_Constraint is limited interface
     and AMF.UML.Packageable_Elements.UML_Packageable_Element;

   type UML_Constraint_Access is
     access all UML_Constraint'Class;
   for UML_Constraint_Access'Storage_Size use 0;

   not overriding function Get_Constrained_Element
    (Self : not null access constant UML_Constraint)
       return AMF.UML.Elements.Collections.Ordered_Set_Of_UML_Element is abstract;
   --  Getter of Constraint::constrainedElement.
   --
   --  The ordered set of Elements referenced by this Constraint.

   not overriding function Get_Context
    (Self : not null access constant UML_Constraint)
       return AMF.UML.Namespaces.UML_Namespace_Access is abstract;
   --  Getter of Constraint::context.
   --
   --  Specifies the namespace that owns the NamedElement.

   not overriding procedure Set_Context
    (Self : not null access UML_Constraint;
     To   : AMF.UML.Namespaces.UML_Namespace_Access) is abstract;
   --  Setter of Constraint::context.
   --
   --  Specifies the namespace that owns the NamedElement.

   not overriding function Get_Specification
    (Self : not null access constant UML_Constraint)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is abstract;
   --  Getter of Constraint::specification.
   --
   --  A condition that must be true when evaluated in order for the 
   --  constraint to be satisfied.

   not overriding procedure Set_Specification
    (Self : not null access UML_Constraint;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is abstract;
   --  Setter of Constraint::specification.
   --
   --  A condition that must be true when evaluated in order for the 
   --  constraint to be satisfied.

end AMF.UML.Constraints;
