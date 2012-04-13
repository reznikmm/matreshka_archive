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
with AMF.UML.Activities;
with AMF.UML.Activity_Edges.Collections;
with AMF.UML.Activity_Groups.Collections;
with AMF.UML.Activity_Nodes.Collections;
with AMF.UML.Activity_Partitions.Collections;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Clauses.Collections;
with AMF.UML.Conditional_Nodes;
with AMF.UML.Constraints.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Element_Imports.Collections;
with AMF.UML.Exception_Handlers.Collections;
with AMF.UML.Input_Pins.Collections;
with AMF.UML.Interruptible_Activity_Regions.Collections;
with AMF.UML.Named_Elements.Collections;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Output_Pins.Collections;
with AMF.UML.Package_Imports.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Redefinable_Elements.Collections;
with AMF.UML.String_Expressions;
with AMF.UML.Structured_Activity_Nodes;
with AMF.UML.Variables.Collections;
with AMF.Visitors;

package AMF.Internals.UML_Conditional_Nodes is

   type UML_Conditional_Node_Proxy is
     limited new AMF.Internals.UML_Named_Elements.UML_Named_Element_Proxy
       and AMF.UML.Conditional_Nodes.UML_Conditional_Node with null record;

   overriding function Get_Clause
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Clauses.Collections.Set_Of_UML_Clause;
   --  Getter of ConditionalNode::clause.
   --
   --  Set of clauses composing the conditional.

   overriding function Get_Is_Assured
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return Boolean;
   --  Getter of ConditionalNode::isAssured.
   --
   --  If true, the modeler asserts that at least one test will succeed.

   overriding procedure Set_Is_Assured
    (Self : not null access UML_Conditional_Node_Proxy;
     To   : Boolean);
   --  Setter of ConditionalNode::isAssured.
   --
   --  If true, the modeler asserts that at least one test will succeed.

   overriding function Get_Is_Determinate
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return Boolean;
   --  Getter of ConditionalNode::isDeterminate.
   --
   --  If true, the modeler asserts that at most one test will succeed.

   overriding procedure Set_Is_Determinate
    (Self : not null access UML_Conditional_Node_Proxy;
     To   : Boolean);
   --  Setter of ConditionalNode::isDeterminate.
   --
   --  If true, the modeler asserts that at most one test will succeed.

   overriding function Get_Result
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Output_Pins.Collections.Ordered_Set_Of_UML_Output_Pin;
   --  Getter of ConditionalNode::result.
   --
   --  A list of output pins that constitute the data flow outputs of the
   --  conditional.

   overriding function Get_Activity
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Activities.UML_Activity_Access;
   --  Getter of StructuredActivityNode::activity.
   --
   --  Activity immediately containing the node.

   overriding procedure Set_Activity
    (Self : not null access UML_Conditional_Node_Proxy;
     To   : AMF.UML.Activities.UML_Activity_Access);
   --  Setter of StructuredActivityNode::activity.
   --
   --  Activity immediately containing the node.

   overriding function Get_Edge
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge;
   --  Getter of StructuredActivityNode::edge.
   --
   --  Edges immediately contained in the structured node.

   overriding function Get_Must_Isolate
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return Boolean;
   --  Getter of StructuredActivityNode::mustIsolate.
   --
   --  If true, then the actions in the node execute in isolation from actions
   --  outside the node.

   overriding procedure Set_Must_Isolate
    (Self : not null access UML_Conditional_Node_Proxy;
     To   : Boolean);
   --  Setter of StructuredActivityNode::mustIsolate.
   --
   --  If true, then the actions in the node execute in isolation from actions
   --  outside the node.

   overriding function Get_Node
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node;
   --  Getter of StructuredActivityNode::node.
   --
   --  Nodes immediately contained in the group.

   overriding function Get_Structured_Node_Input
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Input_Pins.Collections.Set_Of_UML_Input_Pin;
   --  Getter of StructuredActivityNode::structuredNodeInput.
   --

   overriding function Get_Structured_Node_Output
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Output_Pins.Collections.Set_Of_UML_Output_Pin;
   --  Getter of StructuredActivityNode::structuredNodeOutput.
   --

   overriding function Get_Variable
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Variables.Collections.Set_Of_UML_Variable;
   --  Getter of StructuredActivityNode::variable.
   --
   --  A variable defined in the scope of the structured activity node. It has
   --  no value and may not be accessed

   overriding function Get_Element_Import
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import;
   --  Getter of Namespace::elementImport.
   --
   --  References the ElementImports owned by the Namespace.

   overriding function Get_Imported_Member
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Getter of Namespace::importedMember.
   --
   --  References the PackageableElements that are members of this Namespace
   --  as a result of either PackageImports or ElementImports.

   overriding function Get_Member
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Getter of Namespace::member.
   --
   --  A collection of NamedElements identifiable within the Namespace, either
   --  by being owned or by being introduced by importing or inheritance.

   overriding function Get_Owned_Member
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Getter of Namespace::ownedMember.
   --
   --  A collection of NamedElements owned by the Namespace.

   overriding function Get_Owned_Rule
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;
   --  Getter of Namespace::ownedRule.
   --
   --  Specifies a set of Constraints owned by this Namespace.

   overriding function Get_Package_Import
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import;
   --  Getter of Namespace::packageImport.
   --
   --  References the PackageImports owned by the Namespace.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding procedure Set_Name
    (Self : not null access UML_Conditional_Node_Proxy;
     To   : AMF.Optional_String);
   --  Setter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Conditional_Node_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a
   --  hierarchy of nested Namespaces. It is constructed from the names of the
   --  containing namespaces starting at the root of the hierarchy and ending
   --  with the name of the NamedElement itself.

   overriding function Get_Visibility
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;
   --  Getter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces
   --  within the overall model, and its accessibility.

   overriding procedure Set_Visibility
    (Self : not null access UML_Conditional_Node_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);
   --  Setter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces
   --  within the overall model, and its accessibility.

   overriding function Get_Contained_Edge
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge;
   --  Getter of ActivityGroup::containedEdge.
   --
   --  Edges immediately contained in the group.

   overriding function Get_Contained_Node
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node;
   --  Getter of ActivityGroup::containedNode.
   --
   --  Nodes immediately contained in the group.

   overriding function Get_In_Activity
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Activities.UML_Activity_Access;
   --  Getter of ActivityGroup::inActivity.
   --
   --  Activity containing the group.

   overriding procedure Set_In_Activity
    (Self : not null access UML_Conditional_Node_Proxy;
     To   : AMF.UML.Activities.UML_Activity_Access);
   --  Setter of ActivityGroup::inActivity.
   --
   --  Activity containing the group.

   overriding function Get_Subgroup
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Activity_Groups.Collections.Set_Of_UML_Activity_Group;
   --  Getter of ActivityGroup::subgroup.
   --
   --  Groups immediately contained in the group.

   overriding function Get_Super_Group
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Activity_Groups.UML_Activity_Group_Access;
   --  Getter of ActivityGroup::superGroup.
   --
   --  Group immediately containing the group.

   overriding function Get_Context
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access;
   --  Getter of Action::context.
   --
   --  The classifier that owns the behavior of which this action is a part.

   overriding function Get_Input
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Input_Pins.Collections.Ordered_Set_Of_UML_Input_Pin;
   --  Getter of Action::input.
   --
   --  The ordered set of input pins connected to the Action. These are among
   --  the total set of inputs.

   overriding function Get_Is_Locally_Reentrant
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return Boolean;
   --  Getter of Action::isLocallyReentrant.
   --
   --  If true, the action can begin a new, concurrent execution, even if
   --  there is already another execution of the action ongoing. If false, the
   --  action cannot begin a new execution until any previous execution has
   --  completed.

   overriding procedure Set_Is_Locally_Reentrant
    (Self : not null access UML_Conditional_Node_Proxy;
     To   : Boolean);
   --  Setter of Action::isLocallyReentrant.
   --
   --  If true, the action can begin a new, concurrent execution, even if
   --  there is already another execution of the action ongoing. If false, the
   --  action cannot begin a new execution until any previous execution has
   --  completed.

   overriding function Get_Local_Postcondition
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;
   --  Getter of Action::localPostcondition.
   --
   --  Constraint that must be satisfied when executed is completed.

   overriding function Get_Local_Precondition
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;
   --  Getter of Action::localPrecondition.
   --
   --  Constraint that must be satisfied when execution is started.

   overriding function Get_Output
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Output_Pins.Collections.Ordered_Set_Of_UML_Output_Pin;
   --  Getter of Action::output.
   --
   --  The ordered set of output pins connected to the Action. The action
   --  places its results onto pins in this set.

   overriding function Get_Handler
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Exception_Handlers.Collections.Set_Of_UML_Exception_Handler;
   --  Getter of ExecutableNode::handler.
   --
   --  A set of exception handlers that are examined if an uncaught exception
   --  propagates to the outer level of the executable node.

   overriding function Get_In_Group
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Activity_Groups.Collections.Set_Of_UML_Activity_Group;
   --  Getter of ActivityNode::inGroup.
   --
   --  Groups containing the node.

   overriding function Get_In_Interruptible_Region
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Interruptible_Activity_Regions.Collections.Set_Of_UML_Interruptible_Activity_Region;
   --  Getter of ActivityNode::inInterruptibleRegion.
   --
   --  Interruptible regions containing the node.

   overriding function Get_In_Partition
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Activity_Partitions.Collections.Set_Of_UML_Activity_Partition;
   --  Getter of ActivityNode::inPartition.
   --
   --  Partitions containing the node.

   overriding function Get_In_Structured_Node
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access;
   --  Getter of ActivityNode::inStructuredNode.
   --
   --  Structured activity node containing the node.

   overriding procedure Set_In_Structured_Node
    (Self : not null access UML_Conditional_Node_Proxy;
     To   : AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access);
   --  Setter of ActivityNode::inStructuredNode.
   --
   --  Structured activity node containing the node.

   overriding function Get_Incoming
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge;
   --  Getter of ActivityNode::incoming.
   --
   --  Edges that have the node as target.

   overriding function Get_Outgoing
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge;
   --  Getter of ActivityNode::outgoing.
   --
   --  Edges that have the node as source.

   overriding function Get_Redefined_Node
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node;
   --  Getter of ActivityNode::redefinedNode.
   --
   --  Inherited nodes replaced by this node in a specialization of the
   --  activity.

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Conditional_Node_Proxy)
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
    (Self : not null access UML_Conditional_Node_Proxy;
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
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element;
   --  Getter of RedefinableElement::redefinedElement.
   --
   --  The redefinable element that is being redefined by this element.

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of RedefinableElement::redefinitionContext.
   --
   --  References the contexts that this element may be redefined from.

   overriding function Exclude_Collisions
    (Self : not null access constant UML_Conditional_Node_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::excludeCollisions.
   --
   --  The query excludeCollisions() excludes from a set of
   --  PackageableElements any that would not be distinguishable from each
   --  other in this namespace.

   overriding function Get_Names_Of_Member
    (Self : not null access constant UML_Conditional_Node_Proxy;
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
    (Self : not null access constant UML_Conditional_Node_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::importMembers.
   --
   --  The query importMembers() defines which of a set of PackageableElements
   --  are actually imported into the namespace. This excludes hidden ones,
   --  i.e., those which have names that conflict with names of owned members,
   --  and also excludes elements which would have the same name when imported.

   overriding function Imported_Member
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::importedMember.
   --
   --  The importedMember property is derived from the ElementImports and the
   --  PackageImports. References the PackageableElements that are members of
   --  this Namespace as a result of either PackageImports or ElementImports.

   overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return Boolean;
   --  Operation Namespace::membersAreDistinguishable.
   --
   --  The Boolean query membersAreDistinguishable() determines whether all of
   --  the namespace's members are distinguishable within it.

   overriding function Owned_Member
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Operation Namespace::ownedMember.
   --
   --  Missing derivation for Namespace::/ownedMember : NamedElement

   overriding function All_Namespaces
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;
   --  Operation NamedElement::allNamespaces.
   --
   --  The query allNamespaces() gives the sequence of namespaces in which the
   --  NamedElement is nested, working outwards.

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Conditional_Node_Proxy;
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
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Qualified_Name
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name,
   --  the qualified name is constructed from the names of the containing
   --  namespaces.

   overriding function Context
    (Self : not null access constant UML_Conditional_Node_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access;
   --  Operation Action::context.
   --
   --  Missing derivation for Action::/context : Classifier

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Conditional_Node_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;
   --  Operation RedefinableElement::isConsistentWith.
   --
   --  The query isConsistentWith() specifies, for any two RedefinableElements
   --  in a context in which redefinition is possible, whether redefinition
   --  would be logically consistent. By default, this is false; this
   --  operation must be overridden for subclasses of RedefinableElement to
   --  define the consistency conditions.

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Conditional_Node_Proxy;
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

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Conditional_Node_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Conditional_Node_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Conditional_Node_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Conditional_Nodes;
