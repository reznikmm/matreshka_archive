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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Internals.UML_Named_Elements;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Gates.Collections;
with AMF.UML.General_Orderings.Collections;
with AMF.UML.Interaction_Operands;
with AMF.UML.Interactions;
with AMF.UML.Lifelines.Collections;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Part_Decompositions;
with AMF.UML.Properties;
with AMF.UML.String_Expressions;
with AMF.UML.Value_Specifications.Collections;
with AMF.Visitors;

package AMF.Internals.UML_Part_Decompositions is

   type UML_Part_Decomposition_Proxy is
     limited new AMF.Internals.UML_Named_Elements.UML_Named_Element_Proxy
       and AMF.UML.Part_Decompositions.UML_Part_Decomposition with null record;

   overriding function Get_Actual_Gate
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.Gates.Collections.Set_Of_UML_Gate;
   --  Getter of InteractionUse::actualGate.
   --
   --  The actual gates of the InteractionUse

   overriding function Get_Argument
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.Value_Specifications.Collections.Ordered_Set_Of_UML_Value_Specification;
   --  Getter of InteractionUse::argument.
   --
   --  The actual arguments of the Interaction

   overriding function Get_Refers_To
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.Interactions.UML_Interaction_Access;
   --  Getter of InteractionUse::refersTo.
   --
   --  Refers to the Interaction that defines its meaning

   overriding procedure Set_Refers_To
    (Self : not null access UML_Part_Decomposition_Proxy;
     To   : AMF.UML.Interactions.UML_Interaction_Access);
   --  Setter of InteractionUse::refersTo.
   --
   --  Refers to the Interaction that defines its meaning

   overriding function Get_Return_Value
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;
   --  Getter of InteractionUse::returnValue.
   --
   --  The value of the executed Interaction.

   overriding procedure Set_Return_Value
    (Self : not null access UML_Part_Decomposition_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);
   --  Setter of InteractionUse::returnValue.
   --
   --  The value of the executed Interaction.

   overriding function Get_Return_Value_Recipient
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.Properties.UML_Property_Access;
   --  Getter of InteractionUse::returnValueRecipient.
   --
   --  The recipient of the return value.

   overriding procedure Set_Return_Value_Recipient
    (Self : not null access UML_Part_Decomposition_Proxy;
     To   : AMF.UML.Properties.UML_Property_Access);
   --  Setter of InteractionUse::returnValueRecipient.
   --
   --  The recipient of the return value.

   overriding function Get_Covered
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.Lifelines.Collections.Set_Of_UML_Lifeline;
   --  Getter of InteractionFragment::covered.
   --
   --  References the Lifelines that the InteractionFragment involves.

   overriding function Get_Enclosing_Interaction
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.Interactions.UML_Interaction_Access;
   --  Getter of InteractionFragment::enclosingInteraction.
   --
   --  The Interaction enclosing this InteractionFragment.

   overriding procedure Set_Enclosing_Interaction
    (Self : not null access UML_Part_Decomposition_Proxy;
     To   : AMF.UML.Interactions.UML_Interaction_Access);
   --  Setter of InteractionFragment::enclosingInteraction.
   --
   --  The Interaction enclosing this InteractionFragment.

   overriding function Get_Enclosing_Operand
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access;
   --  Getter of InteractionFragment::enclosingOperand.
   --
   --  The operand enclosing this InteractionFragment (they may nest
   --  recursively)

   overriding procedure Set_Enclosing_Operand
    (Self : not null access UML_Part_Decomposition_Proxy;
     To   : AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access);
   --  Setter of InteractionFragment::enclosingOperand.
   --
   --  The operand enclosing this InteractionFragment (they may nest
   --  recursively)

   overriding function Get_General_Ordering
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.General_Orderings.Collections.Set_Of_UML_General_Ordering;
   --  Getter of InteractionFragment::generalOrdering.
   --
   --  The general ordering relationships contained in this fragment.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Part_Decomposition_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a
   --  hierarchy of nested Namespaces. It is constructed from the names of the
   --  containing namespaces starting at the root of the hierarchy and ending
   --  with the name of the NamedElement itself.

   overriding function All_Namespaces
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;
   --  Operation NamedElement::allNamespaces.
   --
   --  The query allNamespaces() gives the sequence of namespaces in which the
   --  NamedElement is nested, working outwards.

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Part_Decomposition_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean;
   --  Operation NamedElement::isDistinguishableFrom.
   --
   --  The query isDistinguishableFrom() determines whether two NamedElements
   --  may logically co-exist within a Namespace. By default, two named
   --  elements are distinguishable if (a) they have unrelated types or (b)
   --  they have related types but different names.

   overriding function Namespace
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Qualified_Name
    (Self : not null access constant UML_Part_Decomposition_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name,
   --  the qualified name is constructed from the names of the containing
   --  namespaces.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Part_Decomposition_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Part_Decomposition_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Part_Decomposition_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Part_Decompositions;
