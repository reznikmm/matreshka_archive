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
with AMF.String_Collections;
with AMF.UML.Behaviors;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Connection_Point_References.Collections;
with AMF.UML.Constraints.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Element_Imports.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Named_Elements.Collections;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Package_Imports.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Pseudostates.Collections;
with AMF.UML.Redefinable_Elements.Collections;
with AMF.UML.Regions.Collections;
with AMF.UML.State_Machines;
with AMF.UML.States;
with AMF.UML.String_Expressions;
with AMF.UML.Transitions.Collections;
with AMF.UML.Triggers.Collections;
with AMF.Visitors;

package AMF.Internals.UML_States is

   type UML_State_Proxy is
     limited new AMF.Internals.UML_Named_Elements.UML_Named_Element_Proxy
       and AMF.UML.States.UML_State with null record;

   overriding function Get_Connection
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Connection_Point_References.Collections.Set_Of_UML_Connection_Point_Reference;
   --  Getter of State::connection.
   --
   --  The entry and exit connection points used in conjunction with this
   --  (submachine) state, i.e. as targets and sources, respectively, in the
   --  region with the submachine state. A connection point reference
   --  references the corresponding definition of a connection point
   --  pseudostate in the statemachine referenced by the submachinestate.

   overriding function Get_Connection_Point
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Pseudostates.Collections.Set_Of_UML_Pseudostate;
   --  Getter of State::connectionPoint.
   --
   --  The entry and exit pseudostates of a composite state. These can only be
   --  entry or exit Pseudostates, and they must have different names. They
   --  can only be defined for composite states.

   overriding function Get_Deferrable_Trigger
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Triggers.Collections.Set_Of_UML_Trigger;
   --  Getter of State::deferrableTrigger.
   --
   --  A list of triggers that are candidates to be retained by the state
   --  machine if they trigger no transitions out of the state (not consumed).
   --  A deferred trigger is retained until the state machine reaches a state
   --  configuration where it is no longer deferred.

   overriding function Get_Do_Activity
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Behaviors.UML_Behavior_Access;
   --  Getter of State::doActivity.
   --
   --  An optional behavior that is executed while being in the state. The
   --  execution starts when this state is entered, and stops either by
   --  itself, or when the state is exited, whichever comes first.

   overriding procedure Set_Do_Activity
    (Self : not null access UML_State_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access);
   --  Setter of State::doActivity.
   --
   --  An optional behavior that is executed while being in the state. The
   --  execution starts when this state is entered, and stops either by
   --  itself, or when the state is exited, whichever comes first.

   overriding function Get_Entry
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Behaviors.UML_Behavior_Access;
   --  Getter of State::entry.
   --
   --  An optional behavior that is executed whenever this state is entered
   --  regardless of the transition taken to reach the state. If defined,
   --  entry actions are always executed to completion prior to any internal
   --  behavior or transitions performed within the state.

   overriding procedure Set_Entry
    (Self : not null access UML_State_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access);
   --  Setter of State::entry.
   --
   --  An optional behavior that is executed whenever this state is entered
   --  regardless of the transition taken to reach the state. If defined,
   --  entry actions are always executed to completion prior to any internal
   --  behavior or transitions performed within the state.

   overriding function Get_Exit
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Behaviors.UML_Behavior_Access;
   --  Getter of State::exit.
   --
   --  An optional behavior that is executed whenever this state is exited
   --  regardless of which transition was taken out of the state. If defined,
   --  exit actions are always executed to completion only after all internal
   --  activities and transition actions have completed execution.

   overriding procedure Set_Exit
    (Self : not null access UML_State_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access);
   --  Setter of State::exit.
   --
   --  An optional behavior that is executed whenever this state is exited
   --  regardless of which transition was taken out of the state. If defined,
   --  exit actions are always executed to completion only after all internal
   --  activities and transition actions have completed execution.

   overriding function Get_Is_Composite
    (Self : not null access constant UML_State_Proxy)
       return Boolean;
   --  Getter of State::isComposite.
   --
   --  A state with isComposite=true is said to be a composite state. A
   --  composite state is a state that contains at least one region.

   overriding function Get_Is_Orthogonal
    (Self : not null access constant UML_State_Proxy)
       return Boolean;
   --  Getter of State::isOrthogonal.
   --
   --  A state with isOrthogonal=true is said to be an orthogonal composite
   --  state. An orthogonal composite state contains two or more regions.

   overriding function Get_Is_Simple
    (Self : not null access constant UML_State_Proxy)
       return Boolean;
   --  Getter of State::isSimple.
   --
   --  A state with isSimple=true is said to be a simple state. A simple state
   --  does not have any regions and it does not refer to any submachine state
   --  machine.

   overriding function Get_Is_Submachine_State
    (Self : not null access constant UML_State_Proxy)
       return Boolean;
   --  Getter of State::isSubmachineState.
   --
   --  A state with isSubmachineState=true is said to be a submachine state.
   --  Such a state refers to a state machine (submachine).

   overriding function Get_Redefined_State
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.States.UML_State_Access;
   --  Getter of State::redefinedState.
   --
   --  The state of which this state is a redefinition.

   overriding procedure Set_Redefined_State
    (Self : not null access UML_State_Proxy;
     To   : AMF.UML.States.UML_State_Access);
   --  Setter of State::redefinedState.
   --
   --  The state of which this state is a redefinition.

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access;
   --  Getter of State::redefinitionContext.
   --
   --  References the classifier in which context this element may be
   --  redefined.

   overriding function Get_Region
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Regions.Collections.Set_Of_UML_Region;
   --  Getter of State::region.
   --
   --  The regions owned directly by the state.

   overriding function Get_State_Invariant
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Constraints.UML_Constraint_Access;
   --  Getter of State::stateInvariant.
   --
   --  Specifies conditions that are always true when this state is the
   --  current state. In protocol state machines, state invariants are
   --  additional conditions to the preconditions of the outgoing transitions,
   --  and to the postcondition of the incoming transitions.

   overriding procedure Set_State_Invariant
    (Self : not null access UML_State_Proxy;
     To   : AMF.UML.Constraints.UML_Constraint_Access);
   --  Setter of State::stateInvariant.
   --
   --  Specifies conditions that are always true when this state is the
   --  current state. In protocol state machines, state invariants are
   --  additional conditions to the preconditions of the outgoing transitions,
   --  and to the postcondition of the incoming transitions.

   overriding function Get_Submachine
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.State_Machines.UML_State_Machine_Access;
   --  Getter of State::submachine.
   --
   --  The state machine that is to be inserted in place of the (submachine)
   --  state.

   overriding procedure Set_Submachine
    (Self : not null access UML_State_Proxy;
     To   : AMF.UML.State_Machines.UML_State_Machine_Access);
   --  Setter of State::submachine.
   --
   --  The state machine that is to be inserted in place of the (submachine)
   --  state.

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_State_Proxy)
       return Boolean;
   --  Getter of RedefinableElement::isLeaf.
   --
   --  Indicates whether it is possible to further redefine a
   --  RedefinableElement. If the value is true, then it is not possible to
   --  further redefine the RedefinableElement. Note that this property is
   --  preserved through package merge operations; that is, the capability to
   --  redefine a RedefinableElement (i.e., isLeaf=false) must be preserved in
   --  the resulting RedefinableElement of a package merge operation where a
   --  RedefinableElement with isLeaf=false is merged with a matching
   --  RedefinableElement with isLeaf=true: the resulting RedefinableElement
   --  will have isLeaf=false. Default value is false.

   overriding procedure Set_Is_Leaf
    (Self : not null access UML_State_Proxy;
     To   : Boolean);
   --  Setter of RedefinableElement::isLeaf.
   --
   --  Indicates whether it is possible to further redefine a
   --  RedefinableElement. If the value is true, then it is not possible to
   --  further redefine the RedefinableElement. Note that this property is
   --  preserved through package merge operations; that is, the capability to
   --  redefine a RedefinableElement (i.e., isLeaf=false) must be preserved in
   --  the resulting RedefinableElement of a package merge operation where a
   --  RedefinableElement with isLeaf=false is merged with a matching
   --  RedefinableElement with isLeaf=true: the resulting RedefinableElement
   --  will have isLeaf=false. Default value is false.

   overriding function Get_Redefined_Element
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element;
   --  Getter of RedefinableElement::redefinedElement.
   --
   --  The redefinable element that is being redefined by this element.

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of RedefinableElement::redefinitionContext.
   --
   --  References the contexts that this element may be redefined from.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name
    (Self : not null access constant UML_State_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding procedure Set_Name
    (Self : not null access UML_State_Proxy;
     To   : AMF.Optional_String);
   --  Setter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_State_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_State_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a
   --  hierarchy of nested Namespaces. It is constructed from the names of the
   --  containing namespaces starting at the root of the hierarchy and ending
   --  with the name of the NamedElement itself.

   overriding function Get_Visibility
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;
   --  Getter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces
   --  within the overall model, and its accessibility.

   overriding procedure Set_Visibility
    (Self : not null access UML_State_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);
   --  Setter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces
   --  within the overall model, and its accessibility.

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function Get_Element_Import
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import;
   --  Getter of Namespace::elementImport.
   --
   --  References the ElementImports owned by the Namespace.

   overriding function Get_Imported_Member
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Getter of Namespace::importedMember.
   --
   --  References the PackageableElements that are members of this Namespace
   --  as a result of either PackageImports or ElementImports.

   overriding function Get_Member
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Getter of Namespace::member.
   --
   --  A collection of NamedElements identifiable within the Namespace, either
   --  by being owned or by being introduced by importing or inheritance.

   overriding function Get_Owned_Member
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Getter of Namespace::ownedMember.
   --
   --  A collection of NamedElements owned by the Namespace.

   overriding function Get_Owned_Rule
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;
   --  Getter of Namespace::ownedRule.
   --
   --  Specifies a set of Constraints owned by this Namespace.

   overriding function Get_Package_Import
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import;
   --  Getter of Namespace::packageImport.
   --
   --  References the PackageImports owned by the Namespace.

   overriding function Get_Container
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Regions.UML_Region_Access;
   --  Getter of Vertex::container.
   --
   --  The region that contains this vertex.

   overriding procedure Set_Container
    (Self : not null access UML_State_Proxy;
     To   : AMF.UML.Regions.UML_Region_Access);
   --  Setter of Vertex::container.
   --
   --  The region that contains this vertex.

   overriding function Get_Incoming
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition;
   --  Getter of Vertex::incoming.
   --
   --  Specifies the transitions entering this vertex.

   overriding function Get_Outgoing
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition;
   --  Getter of Vertex::outgoing.
   --
   --  Specifies the transitions departing from this vertex.

   overriding function Containing_State_Machine
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.State_Machines.UML_State_Machine_Access;
   --  Operation State::containingStateMachine.
   --
   --  The query containingStateMachine() returns the state machine that
   --  contains the state either directly or transitively.

   overriding function Is_Composite
    (Self : not null access constant UML_State_Proxy)
       return Boolean;
   --  Operation State::isComposite.
   --
   --  A composite state is a state with at least one region.

   overriding function Is_Consistent_With
    (Self : not null access constant UML_State_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;
   --  Operation State::isConsistentWith.
   --
   --  The query isConsistentWith() specifies that a redefining state is
   --  consistent with a redefined state provided that the redefining state is
   --  an extension of the redefined state: A simple state can be redefined
   --  (extended) to become a composite state (by adding a region) and a
   --  composite state can be redefined (extended) by adding regions and by
   --  adding vertices, states, and transitions to inherited regions. All
   --  states may add or replace entry, exit, and 'doActivity' actions.

   overriding function Is_Orthogonal
    (Self : not null access constant UML_State_Proxy)
       return Boolean;
   --  Operation State::isOrthogonal.
   --
   --  An orthogonal state is a composite state with at least 2 regions

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_State_Proxy;
     Redefined : AMF.UML.States.UML_State_Access)
       return Boolean;
   --  Operation State::isRedefinitionContextValid.
   --
   --  The query isRedefinitionContextValid() specifies whether the
   --  redefinition contexts of a state are properly related to the
   --  redefinition contexts of the specified state to allow this element to
   --  redefine the other. The containing region of a redefining state must
   --  redefine the containing region of the redefined state.

   overriding function Is_Simple
    (Self : not null access constant UML_State_Proxy)
       return Boolean;
   --  Operation State::isSimple.
   --
   --  A simple state is a state without any regions.

   overriding function Is_Submachine_State
    (Self : not null access constant UML_State_Proxy)
       return Boolean;
   --  Operation State::isSubmachineState.
   --
   --  Only submachine states can have a reference statemachine.

   overriding function Redefinition_Context
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access;
   --  Operation State::redefinitionContext.
   --
   --  The redefinition context of a state is the nearest containing
   --  statemachine.

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_State_Proxy;
     Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;
   --  Operation RedefinableElement::isRedefinitionContextValid.
   --
   --  The query isRedefinitionContextValid() specifies whether the
   --  redefinition contexts of this RedefinableElement are properly related
   --  to the redefinition contexts of the specified RedefinableElement to
   --  allow this element to redefine the other. By default at least one of
   --  the redefinition contexts of this element must be a specialization of
   --  at least one of the redefinition contexts of the specified element.

   overriding function All_Namespaces
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;
   --  Operation NamedElement::allNamespaces.
   --
   --  The query allNamespaces() gives the sequence of namespaces in which the
   --  NamedElement is nested, working outwards.

   overriding function All_Owning_Packages
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_State_Proxy;
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
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Qualified_Name
    (Self : not null access constant UML_State_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name,
   --  the qualified name is constructed from the names of the containing
   --  namespaces.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned
   --  elements of an element.

   overriding function Exclude_Collisions
    (Self : not null access constant UML_State_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::excludeCollisions.
   --
   --  The query excludeCollisions() excludes from a set of
   --  PackageableElements any that would not be distinguishable from each
   --  other in this namespace.

   overriding function Get_Names_Of_Member
    (Self : not null access constant UML_State_Proxy;
     Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String;
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

   overriding function Import_Members
    (Self : not null access constant UML_State_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::importMembers.
   --
   --  The query importMembers() defines which of a set of PackageableElements
   --  are actually imported into the namespace. This excludes hidden ones,
   --  i.e., those which have names that conflict with names of owned members,
   --  and also excludes elements which would have the same name when imported.

   overriding function Imported_Member
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::importedMember.
   --
   --  The importedMember property is derived from the ElementImports and the
   --  PackageImports. References the PackageableElements that are members of
   --  this Namespace as a result of either PackageImports or ElementImports.

   overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_State_Proxy)
       return Boolean;
   --  Operation Namespace::membersAreDistinguishable.
   --
   --  The Boolean query membersAreDistinguishable() determines whether all of
   --  the namespace's members are distinguishable within it.

   overriding function Owned_Member
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Operation Namespace::ownedMember.
   --
   --  Missing derivation for Namespace::/ownedMember : NamedElement

   overriding function Incoming
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition;
   --  Operation Vertex::incoming.
   --
   --  Missing derivation for Vertex::/incoming : Transition

   overriding function Outgoing
    (Self : not null access constant UML_State_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition;
   --  Operation Vertex::outgoing.
   --
   --  Missing derivation for Vertex::/outgoing : Transition

   overriding procedure Enter_Element
    (Self    : not null access constant UML_State_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_State_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_State_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_States;
