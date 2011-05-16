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
--  A namespace is an element in a model that contains a set of named elements 
--  that can be identified by name.
------------------------------------------------------------------------------
limited with AMF.UML.Constraints;
limited with AMF.UML.Element_Imports;
with AMF.UML.Named_Elements;
limited with AMF.UML.Package_Imports;
limited with AMF.UML.Packageable_Elements;

package AMF.UML.Namespaces is

   pragma Preelaborate;

   type UML_Namespace_Interface is limited interface
     and AMF.UML.Named_Elements.UML_Named_Element_Interface;

   type UML_Namespace is
     access all UML_Namespace_Interface'Class;

   type Set_Of_UML_Namespace is null record;
   type Ordered_Set_Of_UML_Namespace is null record;

   not overriding function Get_Element_Import
    (Self : not null access constant UML_Namespace_Interface)
       return AMF.UML.Element_Imports.Set_Of_UML_Element_Import is abstract;
   --  References the ElementImports owned by the Namespace.

   not overriding function Get_Imported_Member
    (Self : not null access constant UML_Namespace_Interface)
       return AMF.UML.Packageable_Elements.Set_Of_UML_Packageable_Element is abstract;
   --  References the PackageableElements that are members of this Namespace 
   --  as a result of either PackageImports or ElementImports.

   not overriding function Get_Member
    (Self : not null access constant UML_Namespace_Interface)
       return AMF.UML.Named_Elements.Set_Of_UML_Named_Element is abstract;
   --  A collection of NamedElements identifiable within the Namespace, either 
   --  by being owned or by being introduced by importing or inheritance.

   not overriding function Get_Owned_Member
    (Self : not null access constant UML_Namespace_Interface)
       return AMF.UML.Named_Elements.Set_Of_UML_Named_Element is abstract;
   --  A collection of NamedElements owned by the Namespace.

   not overriding function Get_Owned_Rule
    (Self : not null access constant UML_Namespace_Interface)
       return AMF.UML.Constraints.Set_Of_UML_Constraint is abstract;
   --  Specifies a set of Constraints owned by this Namespace.

   not overriding function Get_Package_Import
    (Self : not null access constant UML_Namespace_Interface)
       return AMF.UML.Package_Imports.Set_Of_UML_Package_Import is abstract;
   --  References the PackageImports owned by the Namespace.

end AMF.UML.Namespaces;
