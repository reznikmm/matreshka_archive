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
limited with AMF.CMOF.Elements;
limited with AMF.CMOF.Namespaces;
with AMF.CMOF.Packageable_Elements;
limited with AMF.CMOF.Value_Specifications;

package AMF.CMOF.Constraints is

   pragma Preelaborate;

   type CMOF_Constraint_Interface is limited interface
     and AMF.CMOF.Packageable_Elements.CMOF_Packageable_Element_Interface;

   type CMOF_Constraint is
     access all CMOF_Constraint_Interface'Class;
   for CMOF_Constraint'Storage_Size use 0;

   type Set_Of_CMOF_Constraint is null record;
   type Ordered_Set_Of_CMOF_Constraint is null record;

   not overriding function Get_Constrained_Element
    (Self : not null access constant CMOF_Constraint_Interface)
       return AMF.CMOF.Elements.Ordered_Set_Of_CMOF_Element is abstract;
   --  The ordered set of Elements referenced by this Constraint.

   not overriding function Get_Specification
    (Self : not null access constant CMOF_Constraint_Interface)
       return AMF.CMOF.Value_Specifications.CMOF_Value_Specification is abstract;
   --  A condition that must be true when evaluated in order for the 
   --  constraint to be satisfied.

   not overriding procedure Set_Specification
    (Self : not null access CMOF_Constraint_Interface;
     To   : AMF.CMOF.Value_Specifications.CMOF_Value_Specification) is abstract;

   not overriding function Get_Context
    (Self : not null access constant CMOF_Constraint_Interface)
       return AMF.CMOF.Namespaces.CMOF_Namespace is abstract;

   not overriding procedure Set_Context
    (Self : not null access CMOF_Constraint_Interface;
     To   : AMF.CMOF.Namespaces.CMOF_Namespace) is abstract;

end AMF.CMOF.Constraints;
