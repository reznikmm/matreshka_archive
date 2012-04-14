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
with AMF.UML.Connection_Point_References;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Pseudostates.Collections;
with AMF.UML.Regions;
with AMF.UML.State_Machines;
with AMF.UML.States;
with AMF.UML.String_Expressions;
with AMF.UML.Transitions.Collections;
with AMF.Visitors;

package AMF.Internals.UML_Connection_Point_References is

   type UML_Connection_Point_Reference_Proxy is
     limited new AMF.Internals.UML_Named_Elements.UML_Named_Element_Proxy
       and AMF.UML.Connection_Point_References.UML_Connection_Point_Reference with null record;

   overriding function Get_Entry
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Pseudostates.Collections.Set_Of_UML_Pseudostate;
   --  Getter of ConnectionPointReference::entry.
   --
   --  The entryPoint kind pseudo states corresponding to this connection
   --  point.

   overriding function Get_Exit
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Pseudostates.Collections.Set_Of_UML_Pseudostate;
   --  Getter of ConnectionPointReference::exit.
   --
   --  The exitPoints kind pseudo states corresponding to this connection
   --  point.

   overriding function Get_State
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.States.UML_State_Access;
   --  Getter of ConnectionPointReference::state.
   --
   --  The State in which the connection point refreshens are defined.

   overriding procedure Set_State
    (Self : not null access UML_Connection_Point_Reference_Proxy;
     To   : AMF.UML.States.UML_State_Access);
   --  Setter of ConnectionPointReference::state.
   --
   --  The State in which the connection point refreshens are defined.

   overriding function Get_Container
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Regions.UML_Region_Access;
   --  Getter of Vertex::container.
   --
   --  The region that contains this vertex.

   overriding procedure Set_Container
    (Self : not null access UML_Connection_Point_Reference_Proxy;
     To   : AMF.UML.Regions.UML_Region_Access);
   --  Setter of Vertex::container.
   --
   --  The region that contains this vertex.

   overriding function Get_Incoming
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition;
   --  Getter of Vertex::incoming.
   --
   --  Specifies the transitions entering this vertex.

   overriding function Get_Outgoing
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition;
   --  Getter of Vertex::outgoing.
   --
   --  Specifies the transitions departing from this vertex.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding procedure Set_Name
    (Self : not null access UML_Connection_Point_Reference_Proxy;
     To   : AMF.Optional_String);
   --  Setter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Connection_Point_Reference_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a
   --  hierarchy of nested Namespaces. It is constructed from the names of the
   --  containing namespaces starting at the root of the hierarchy and ending
   --  with the name of the NamedElement itself.

   overriding function Containing_State_Machine
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.State_Machines.UML_State_Machine_Access;
   --  Operation Vertex::containingStateMachine.
   --
   --  The operation containingStateMachine() returns the state machine in
   --  which this Vertex is defined

   overriding function Incoming
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition;
   --  Operation Vertex::incoming.
   --
   --  Missing derivation for Vertex::/incoming : Transition

   overriding function Outgoing
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition;
   --  Operation Vertex::outgoing.
   --
   --  Missing derivation for Vertex::/outgoing : Transition

   overriding function All_Namespaces
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;
   --  Operation NamedElement::allNamespaces.
   --
   --  The query allNamespaces() gives the sequence of namespaces in which the
   --  NamedElement is nested, working outwards.

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Connection_Point_Reference_Proxy;
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
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Qualified_Name
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name,
   --  the qualified name is constructed from the names of the containing
   --  namespaces.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Connection_Point_Reference_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Connection_Point_Reference_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Connection_Point_Reference_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Connection_Point_References;
