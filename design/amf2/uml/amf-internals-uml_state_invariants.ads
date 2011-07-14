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
with AMF.UML.Comments.Collections;
with AMF.UML.Constraints;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.General_Orderings.Collections;
with AMF.UML.Interaction_Operands;
with AMF.UML.Interactions;
with AMF.UML.Lifelines.Collections;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.State_Invariants;
with AMF.UML.String_Expressions;

package AMF.Internals.UML_State_Invariants is

   type UML_State_Invariant_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.State_Invariants.UML_State_Invariant with null record;

   overriding function Get_Covered
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Lifelines.UML_Lifeline_Access;

   overriding procedure Set_Covered
    (Self : not null access UML_State_Invariant_Proxy;
     To   : AMF.UML.Lifelines.UML_Lifeline_Access);

   overriding function Get_Invariant
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Constraints.UML_Constraint_Access;

   overriding procedure Set_Invariant
    (Self : not null access UML_State_Invariant_Proxy;
     To   : AMF.UML.Constraints.UML_Constraint_Access);

   overriding function Get_Covered
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Lifelines.Collections.Set_Of_UML_Lifeline;

   overriding function Get_Enclosing_Interaction
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Interactions.UML_Interaction_Access;

   overriding procedure Set_Enclosing_Interaction
    (Self : not null access UML_State_Invariant_Proxy;
     To   : AMF.UML.Interactions.UML_Interaction_Access);

   overriding function Get_Enclosing_Operand
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access;

   overriding procedure Set_Enclosing_Operand
    (Self : not null access UML_State_Invariant_Proxy;
     To   : AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access);

   overriding function Get_General_Ordering
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.General_Orderings.Collections.Set_Of_UML_General_Ordering;

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;

   overriding function Get_Name
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.Optional_String;

   overriding procedure Set_Name
    (Self : not null access UML_State_Invariant_Proxy;
     To   : AMF.Optional_String);

   overriding function Get_Name_Expression
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;

   overriding procedure Set_Name_Expression
    (Self : not null access UML_State_Invariant_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);

   overriding function Get_Namespace
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.Optional_String;

   overriding function Get_Visibility
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;

   overriding procedure Set_Visibility
    (Self : not null access UML_State_Invariant_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;

   overriding function Get_Owned_Element
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Get_Owner
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Elements.UML_Element_Access;

   overriding function All_Namespaces
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;

   overriding function All_Owning_Packages
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_State_Invariant_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean;

   overriding function Namespace
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Qualified_Name
    (Self : not null access constant UML_State_Invariant_Proxy)
       return League.Strings.Universal_String;

   overriding function Separator
    (Self : not null access constant UML_State_Invariant_Proxy)
       return League.Strings.Universal_String;

   overriding function All_Owned_Elements
    (Self : not null access constant UML_State_Invariant_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant UML_State_Invariant_Proxy)
       return Boolean;

end AMF.Internals.UML_State_Invariants;
