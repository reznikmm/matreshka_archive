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
with AMF.Internals.UML_Elements;
with AMF.String_Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Constraints.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Element_Imports.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.General_Orderings.Collections;
with AMF.UML.Interaction_Constraints;
with AMF.UML.Interaction_Fragments.Collections;
with AMF.UML.Interaction_Operands;
with AMF.UML.Interactions;
with AMF.UML.Lifelines.Collections;
with AMF.UML.Named_Elements.Collections;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Package_Imports.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.String_Expressions;

package AMF.Internals.UML_Interaction_Operands is

   type UML_Interaction_Operand_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Interaction_Operands.UML_Interaction_Operand with null record;

   overriding function Get_Fragment
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Interaction_Fragments.Collections.Ordered_Set_Of_UML_Interaction_Fragment;

   overriding function Get_Guard
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Interaction_Constraints.UML_Interaction_Constraint_Access;

   overriding procedure Set_Guard
    (Self : not null access UML_Interaction_Operand_Proxy;
     To   : AMF.UML.Interaction_Constraints.UML_Interaction_Constraint_Access);

   overriding function Get_Covered
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Lifelines.Collections.Set_Of_UML_Lifeline;

   overriding function Get_Enclosing_Interaction
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Interactions.UML_Interaction_Access;

   overriding procedure Set_Enclosing_Interaction
    (Self : not null access UML_Interaction_Operand_Proxy;
     To   : AMF.UML.Interactions.UML_Interaction_Access);

   overriding function Get_Enclosing_Operand
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access;

   overriding procedure Set_Enclosing_Operand
    (Self : not null access UML_Interaction_Operand_Proxy;
     To   : AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access);

   overriding function Get_General_Ordering
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.General_Orderings.Collections.Set_Of_UML_General_Ordering;

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;

   overriding function Get_Name
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.Optional_String;

   overriding procedure Set_Name
    (Self : not null access UML_Interaction_Operand_Proxy;
     To   : AMF.Optional_String);

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Interaction_Operand_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);

   overriding function Get_Namespace
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.Optional_String;

   overriding function Get_Visibility
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;

   overriding procedure Set_Visibility
    (Self : not null access UML_Interaction_Operand_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Get_Owner
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Elements.UML_Element_Access;

   overriding function Get_Element_Import
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import;

   overriding function Get_Imported_Member
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Get_Member
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function Get_Owned_Member
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function Get_Owned_Rule
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;

   overriding function Get_Package_Import
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import;

   overriding function All_Namespaces
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Interaction_Operand_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean;

   overriding function Namespace
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Qualified_Name
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return League.Strings.Universal_String;

   overriding function Separator
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return League.Strings.Universal_String;

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return Boolean;

   overriding function Exclude_Collisions
    (Self : not null access constant UML_Interaction_Operand_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Get_Names_Of_Member
    (Self : not null access constant UML_Interaction_Operand_Proxy;
     Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String;

   overriding function Import_Members
    (Self : not null access constant UML_Interaction_Operand_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Imported_Member
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return Boolean;

   overriding function Owned_Member
    (Self : not null access constant UML_Interaction_Operand_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

end AMF.Internals.UML_Interaction_Operands;
