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
with AMF.String_Collections;
limited with AMF.UML.Constraints.Collections;
limited with AMF.UML.Element_Imports.Collections;
with AMF.UML.Named_Elements;
limited with AMF.UML.Named_Elements.Collections;
limited with AMF.UML.Package_Imports.Collections;
limited with AMF.UML.Packageable_Elements.Collections;

package AMF.UML.Namespaces is

   pragma Preelaborate;

   type UML_Namespace is limited interface
     and AMF.UML.Named_Elements.UML_Named_Element;

   type UML_Namespace_Access is
     access all UML_Namespace'Class;
   for UML_Namespace_Access'Storage_Size use 0;

   not overriding function Get_Element_Import
    (Self : not null access constant UML_Namespace)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import is abstract;
   --  Getter of Namespace::elementImport.
   --
   --  References the ElementImports owned by the Namespace.

   not overriding function Get_Imported_Member
    (Self : not null access constant UML_Namespace)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is abstract;
   --  Getter of Namespace::importedMember.
   --
   --  References the PackageableElements that are members of this Namespace 
   --  as a result of either PackageImports or ElementImports.

   not overriding function Get_Member
    (Self : not null access constant UML_Namespace)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is abstract;
   --  Getter of Namespace::member.
   --
   --  A collection of NamedElements identifiable within the Namespace, either 
   --  by being owned or by being introduced by importing or inheritance.

   not overriding function Get_Owned_Member
    (Self : not null access constant UML_Namespace)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is abstract;
   --  Getter of Namespace::ownedMember.
   --
   --  A collection of NamedElements owned by the Namespace.

   not overriding function Get_Owned_Rule
    (Self : not null access constant UML_Namespace)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is abstract;
   --  Getter of Namespace::ownedRule.
   --
   --  Specifies a set of Constraints owned by this Namespace.

   not overriding function Get_Package_Import
    (Self : not null access constant UML_Namespace)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import is abstract;
   --  Getter of Namespace::packageImport.
   --
   --  References the PackageImports owned by the Namespace.

   not overriding function Exclude_Collisions
    (Self : not null access constant UML_Namespace;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is abstract;
   --  Operation Namespace::excludeCollisions.
   --
   --  The query excludeCollisions() excludes from a set of 
   --  PackageableElements any that would not be distinguishable from each 
   --  other in this namespace.

   not overriding function Get_Names_Of_Member
    (Self : not null access constant UML_Namespace;
     Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String is abstract;
   --  Operation Namespace::getNamesOfMember.
   --
   --  The query getNamesOfMember() takes importing into account. It gives 
   --  back the set of names that an element would have in an importing 
   --  namespace, either because it is owned, or if not owned then imported 
   --  individually, or if not individually then from a package.
   --  The query getNamesOfMember() gives a set of all of the names that a 
   --  member would have in a Namespace. In general a member can have multiple 
   --  names in a Namespace if it is imported more than once with different 
   --  aliases. The query takes account of importing. It gives back the set of 
   --  names that an element would have in an importing namespace, either 
   --  because it is owned, or if not owned then imported individually, or if 
   --  not individually then from a package.

   not overriding function Import_Members
    (Self : not null access constant UML_Namespace;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is abstract;
   --  Operation Namespace::importMembers.
   --
   --  The query importMembers() defines which of a set of PackageableElements 
   --  are actually imported into the namespace. This excludes hidden ones, 
   --  i.e., those which have names that conflict with names of owned members, 
   --  and also excludes elements which would have the same name when imported.

   not overriding function Imported_Member
    (Self : not null access constant UML_Namespace)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is abstract;
   --  Operation Namespace::importedMember.
   --
   --  The importedMember property is derived from the ElementImports and the 
   --  PackageImports. References the PackageableElements that are members of 
   --  this Namespace as a result of either PackageImports or ElementImports.

   not overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_Namespace)
       return Boolean is abstract;
   --  Operation Namespace::membersAreDistinguishable.
   --
   --  The Boolean query membersAreDistinguishable() determines whether all of 
   --  the namespace's members are distinguishable within it.

   not overriding function Owned_Member
    (Self : not null access constant UML_Namespace)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is abstract;
   --  Operation Namespace::ownedMember.
   --
   --  Missing derivation for Namespace::/ownedMember : NamedElement

end AMF.UML.Namespaces;
