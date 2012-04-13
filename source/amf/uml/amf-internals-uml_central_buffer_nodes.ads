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
with AMF.UML.Activities;
with AMF.UML.Activity_Edges.Collections;
with AMF.UML.Activity_Groups.Collections;
with AMF.UML.Activity_Nodes.Collections;
with AMF.UML.Activity_Partitions.Collections;
with AMF.UML.Behaviors;
with AMF.UML.Central_Buffer_Nodes;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Interruptible_Activity_Regions.Collections;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Redefinable_Elements.Collections;
with AMF.UML.States.Collections;
with AMF.UML.String_Expressions;
with AMF.UML.Structured_Activity_Nodes;
with AMF.UML.Types;
with AMF.UML.Value_Specifications;
with AMF.Visitors;

package AMF.Internals.UML_Central_Buffer_Nodes is

   type UML_Central_Buffer_Node_Proxy is
     limited new AMF.Internals.UML_Named_Elements.UML_Named_Element_Proxy
       and AMF.UML.Central_Buffer_Nodes.UML_Central_Buffer_Node with null record;

   overriding function Get_In_State
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.States.Collections.Set_Of_UML_State;
   --  Getter of ObjectNode::inState.
   --
   --  The required states of the object available at this point in the
   --  activity.

   overriding function Get_Is_Control_Type
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return Boolean;
   --  Getter of ObjectNode::isControlType.
   --
   --  Tells whether the type of the object node is to be treated as control.

   overriding procedure Set_Is_Control_Type
    (Self : not null access UML_Central_Buffer_Node_Proxy;
     To   : Boolean);
   --  Setter of ObjectNode::isControlType.
   --
   --  Tells whether the type of the object node is to be treated as control.

   overriding function Get_Ordering
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.UML_Object_Node_Ordering_Kind;
   --  Getter of ObjectNode::ordering.
   --
   --  Tells whether and how the tokens in the object node are ordered for
   --  selection to traverse edges outgoing from the object node.

   overriding procedure Set_Ordering
    (Self : not null access UML_Central_Buffer_Node_Proxy;
     To   : AMF.UML.UML_Object_Node_Ordering_Kind);
   --  Setter of ObjectNode::ordering.
   --
   --  Tells whether and how the tokens in the object node are ordered for
   --  selection to traverse edges outgoing from the object node.

   overriding function Get_Selection
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Behaviors.UML_Behavior_Access;
   --  Getter of ObjectNode::selection.
   --
   --  Selects tokens for outgoing edges.

   overriding procedure Set_Selection
    (Self : not null access UML_Central_Buffer_Node_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access);
   --  Setter of ObjectNode::selection.
   --
   --  Selects tokens for outgoing edges.

   overriding function Get_Upper_Bound
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;
   --  Getter of ObjectNode::upperBound.
   --
   --  The maximum number of tokens allowed in the node. Objects cannot flow
   --  into the node if the upper bound is reached.

   overriding procedure Set_Upper_Bound
    (Self : not null access UML_Central_Buffer_Node_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);
   --  Setter of ObjectNode::upperBound.
   --
   --  The maximum number of tokens allowed in the node. Objects cannot flow
   --  into the node if the upper bound is reached.

   overriding function Get_Activity
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Activities.UML_Activity_Access;
   --  Getter of ActivityNode::activity.
   --
   --  Activity containing the node.

   overriding procedure Set_Activity
    (Self : not null access UML_Central_Buffer_Node_Proxy;
     To   : AMF.UML.Activities.UML_Activity_Access);
   --  Setter of ActivityNode::activity.
   --
   --  Activity containing the node.

   overriding function Get_In_Group
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Activity_Groups.Collections.Set_Of_UML_Activity_Group;
   --  Getter of ActivityNode::inGroup.
   --
   --  Groups containing the node.

   overriding function Get_In_Interruptible_Region
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Interruptible_Activity_Regions.Collections.Set_Of_UML_Interruptible_Activity_Region;
   --  Getter of ActivityNode::inInterruptibleRegion.
   --
   --  Interruptible regions containing the node.

   overriding function Get_In_Partition
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Activity_Partitions.Collections.Set_Of_UML_Activity_Partition;
   --  Getter of ActivityNode::inPartition.
   --
   --  Partitions containing the node.

   overriding function Get_In_Structured_Node
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access;
   --  Getter of ActivityNode::inStructuredNode.
   --
   --  Structured activity node containing the node.

   overriding procedure Set_In_Structured_Node
    (Self : not null access UML_Central_Buffer_Node_Proxy;
     To   : AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access);
   --  Setter of ActivityNode::inStructuredNode.
   --
   --  Structured activity node containing the node.

   overriding function Get_Incoming
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge;
   --  Getter of ActivityNode::incoming.
   --
   --  Edges that have the node as target.

   overriding function Get_Outgoing
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge;
   --  Getter of ActivityNode::outgoing.
   --
   --  Edges that have the node as source.

   overriding function Get_Redefined_Node
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node;
   --  Getter of ActivityNode::redefinedNode.
   --
   --  Inherited nodes replaced by this node in a specialization of the
   --  activity.

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
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
    (Self : not null access UML_Central_Buffer_Node_Proxy;
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
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element;
   --  Getter of RedefinableElement::redefinedElement.
   --
   --  The redefinable element that is being redefined by this element.

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of RedefinableElement::redefinitionContext.
   --
   --  References the contexts that this element may be redefined from.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding procedure Set_Name
    (Self : not null access UML_Central_Buffer_Node_Proxy;
     To   : AMF.Optional_String);
   --  Setter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Central_Buffer_Node_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a
   --  hierarchy of nested Namespaces. It is constructed from the names of the
   --  containing namespaces starting at the root of the hierarchy and ending
   --  with the name of the NamedElement itself.

   overriding function Get_Visibility
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;
   --  Getter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces
   --  within the overall model, and its accessibility.

   overriding procedure Set_Visibility
    (Self : not null access UML_Central_Buffer_Node_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);
   --  Setter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces
   --  within the overall model, and its accessibility.

   overriding function Get_Type
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Types.UML_Type_Access;
   --  Getter of TypedElement::type.
   --
   --  The type of the TypedElement.
   --  This information is derived from the return result for this Operation.

   overriding procedure Set_Type
    (Self : not null access UML_Central_Buffer_Node_Proxy;
     To   : AMF.UML.Types.UML_Type_Access);
   --  Setter of TypedElement::type.
   --
   --  The type of the TypedElement.
   --  This information is derived from the return result for this Operation.

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Central_Buffer_Node_Proxy;
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
    (Self : not null access constant UML_Central_Buffer_Node_Proxy;
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
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;
   --  Operation NamedElement::allNamespaces.
   --
   --  The query allNamespaces() gives the sequence of namespaces in which the
   --  NamedElement is nested, working outwards.

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Central_Buffer_Node_Proxy;
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
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Qualified_Name
    (Self : not null access constant UML_Central_Buffer_Node_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name,
   --  the qualified name is constructed from the names of the containing
   --  namespaces.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Central_Buffer_Node_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Central_Buffer_Node_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Central_Buffer_Node_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Central_Buffer_Nodes;
