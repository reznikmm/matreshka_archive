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
with AMF.UML.Associations;
with AMF.UML.Behaviors.Collections;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Connector_Ends.Collections;
with AMF.UML.Connectors.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Redefinable_Elements.Collections;
with AMF.UML.String_Expressions;
with AMF.Visitors.UML_Iterators;
with AMF.Visitors.UML_Visitors;

package AMF.Internals.UML_Connectors is

   type UML_Connector_Proxy is
     limited new AMF.Internals.UML_Named_Elements.UML_Named_Element_Proxy
       and AMF.UML.Connectors.UML_Connector with null record;

   overriding function Get_Contract
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Behaviors.Collections.Set_Of_UML_Behavior;
   --  Getter of Connector::contract.
   --
   --  The set of Behaviors that specify the valid interaction patterns across 
   --  the connector.

   overriding function Get_End
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Connector_Ends.Collections.Ordered_Set_Of_UML_Connector_End;
   --  Getter of Connector::end.
   --
   --  A connector consists of at least two connector ends, each representing 
   --  the participation of instances of the classifiers typing the 
   --  connectable elements attached to this end. The set of connector ends is 
   --  ordered.

   overriding function Get_Kind
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.UML_Connector_Kind;
   --  Getter of Connector::kind.
   --
   --  Indicates the kind of connector. This is derived: a connector with one 
   --  or more ends connected to a Port which is not on a Part and which is 
   --  not a behavior port is a delegation; otherwise it is an assembly.

   overriding function Get_Redefined_Connector
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Connectors.Collections.Set_Of_UML_Connector;
   --  Getter of Connector::redefinedConnector.
   --
   --  A connector may be redefined when its containing classifier is 
   --  specialized. The redefining connector may have a type that specializes 
   --  the type of the redefined connector. The types of the connector ends of 
   --  the redefining connector may specialize the types of the connector ends 
   --  of the redefined connector. The properties of the connector ends of the 
   --  redefining connector may be replaced.

   overriding function Get_Type
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Associations.UML_Association_Access;
   --  Getter of Connector::type.
   --
   --  An optional association that specifies the link corresponding to this 
   --  connector.

   overriding procedure Set_Type
    (Self : not null access UML_Connector_Proxy;
     To   : AMF.UML.Associations.UML_Association_Access);
   --  Setter of Connector::type.
   --
   --  An optional association that specifies the link corresponding to this 
   --  connector.

   overriding function Get_Featuring_Classifier
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of Feature::featuringClassifier.
   --
   --  The Classifiers that have this Feature as a feature.

   overriding function Get_Is_Static
    (Self : not null access constant UML_Connector_Proxy)
       return Boolean;
   --  Getter of Feature::isStatic.
   --
   --  Specifies whether this feature characterizes individual instances 
   --  classified by the classifier (false) or the classifier itself (true).

   overriding procedure Set_Is_Static
    (Self : not null access UML_Connector_Proxy;
     To   : Boolean);
   --  Setter of Feature::isStatic.
   --
   --  Specifies whether this feature characterizes individual instances 
   --  classified by the classifier (false) or the classifier itself (true).

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Connector_Proxy)
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
    (Self : not null access UML_Connector_Proxy;
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
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element;
   --  Getter of RedefinableElement::redefinedElement.
   --
   --  The redefinable element that is being redefined by this element.

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of RedefinableElement::redefinitionContext.
   --
   --  References the contexts that this element may be redefined from.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding procedure Set_Name
    (Self : not null access UML_Connector_Proxy;
     To   : AMF.Optional_String);
   --  Setter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Connector_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a 
   --  hierarchy of nested Namespaces. It is constructed from the names of the 
   --  containing namespaces starting at the root of the hierarchy and ending 
   --  with the name of the NamedElement itself.

   overriding function Get_Visibility
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;
   --  Getter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces 
   --  within the overall model, and its accessibility.

   overriding procedure Set_Visibility
    (Self : not null access UML_Connector_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);
   --  Setter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces 
   --  within the overall model, and its accessibility.

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function Kind
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.UML_Connector_Kind;
   --  Operation Connector::kind.
   --
   --  Missing derivation for Connector::/kind : ConnectorKind

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Connector_Proxy;
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
    (Self : not null access constant UML_Connector_Proxy;
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
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;
   --  Operation NamedElement::allNamespaces.
   --
   --  The query allNamespaces() gives the sequence of namespaces in which the 
   --  NamedElement is nested, working outwards.

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly 
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Connector_Proxy;
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
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Qualified_Name
    (Self : not null access constant UML_Connector_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name, 
   --  the qualified name is constructed from the names of the containing 
   --  namespaces.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Connector_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned 
   --  elements of an element.

   overriding procedure Enter_UML_Element
    (Self    : not null access constant UML_Connector_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_UML_Element
    (Self    : not null access constant UML_Connector_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_UML_Element
    (Self     : not null access constant UML_Connector_Proxy;
     Iterator : not null access AMF.Visitors.UML_Iterators.UML_Iterator'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Connectors;
