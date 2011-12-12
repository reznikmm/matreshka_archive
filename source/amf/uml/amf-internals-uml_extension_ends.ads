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
with AMF.Internals.UML_Properties;
with AMF.UML.Associations;
with AMF.UML.Classes;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Connectable_Element_Template_Parameters;
with AMF.UML.Connector_Ends.Collections;
with AMF.UML.Data_Types;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Deployments.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Extension_Ends;
with AMF.UML.Interfaces;
with AMF.UML.Multiplicity_Elements;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameterable_Elements;
with AMF.UML.Properties.Collections;
with AMF.UML.Redefinable_Elements.Collections;
with AMF.UML.Stereotypes;
with AMF.UML.String_Expressions;
with AMF.UML.Template_Parameters;
with AMF.UML.Types.Collections;
with AMF.UML.Value_Specifications;
with AMF.Visitors.UML_Visitors;

package AMF.Internals.UML_Extension_Ends is

   type UML_Extension_End_Proxy is
     limited new AMF.Internals.UML_Properties.UML_Property_Proxy
       and AMF.UML.Extension_Ends.UML_Extension_End with null record;

   overriding function Get_Lower
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_Integer;
   --  Getter of ExtensionEnd::lower.
   --
   --  This redefinition changes the default multiplicity of association ends, 
   --  since model elements are usually extended by 0 or 1 instance of the 
   --  extension stereotype.

   overriding procedure Set_Lower
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.Optional_Integer);
   --  Setter of ExtensionEnd::lower.
   --
   --  This redefinition changes the default multiplicity of association ends, 
   --  since model elements are usually extended by 0 or 1 instance of the 
   --  extension stereotype.

   overriding function Get_Type
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Stereotypes.UML_Stereotype_Access;
   --  Getter of ExtensionEnd::type.
   --
   --  References the type of the ExtensionEnd. Note that this association 
   --  restricts the possible types of an ExtensionEnd to only be Stereotypes.

   overriding procedure Set_Type
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Stereotypes.UML_Stereotype_Access);
   --  Setter of ExtensionEnd::type.
   --
   --  References the type of the ExtensionEnd. Note that this association 
   --  restricts the possible types of an ExtensionEnd to only be Stereotypes.

   overriding function Get_Aggregation
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.UML_Aggregation_Kind;
   --  Getter of Property::aggregation.
   --
   --  Specifies the kind of aggregation that applies to the Property.

   overriding procedure Set_Aggregation
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.UML_Aggregation_Kind);
   --  Setter of Property::aggregation.
   --
   --  Specifies the kind of aggregation that applies to the Property.

   overriding function Get_Association
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Associations.UML_Association_Access;
   --  Getter of Property::association.
   --
   --  References the association of which this property is a member, if any.

   overriding procedure Set_Association
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Associations.UML_Association_Access);
   --  Setter of Property::association.
   --
   --  References the association of which this property is a member, if any.

   overriding function Get_Association_End
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Properties.UML_Property_Access;
   --  Getter of Property::associationEnd.
   --
   --  Designates the optional association end that owns a qualifier attribute.

   overriding procedure Set_Association_End
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Properties.UML_Property_Access);
   --  Setter of Property::associationEnd.
   --
   --  Designates the optional association end that owns a qualifier attribute.

   overriding function Get_Class
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Classes.UML_Class_Access;
   --  Getter of Property::class.
   --
   --  References the Class that owns the Property.
   --  References the Class that owns the Property.

   overriding procedure Set_Class
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Classes.UML_Class_Access);
   --  Setter of Property::class.
   --
   --  References the Class that owns the Property.
   --  References the Class that owns the Property.

   overriding function Get_Datatype
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Data_Types.UML_Data_Type_Access;
   --  Getter of Property::datatype.
   --
   --  The DataType that owns this Property.

   overriding procedure Set_Datatype
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Data_Types.UML_Data_Type_Access);
   --  Setter of Property::datatype.
   --
   --  The DataType that owns this Property.

   overriding function Get_Default
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_String;
   --  Getter of Property::default.
   --
   --  A String that is evaluated to give a default value for the Property 
   --  when an object of the owning Classifier is instantiated.
   --  Specifies a String that represents a value to be used when no argument 
   --  is supplied for the Property.

   overriding procedure Set_Default
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.Optional_String);
   --  Setter of Property::default.
   --
   --  A String that is evaluated to give a default value for the Property 
   --  when an object of the owning Classifier is instantiated.
   --  Specifies a String that represents a value to be used when no argument 
   --  is supplied for the Property.

   overriding function Get_Default_Value
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;
   --  Getter of Property::defaultValue.
   --
   --  A ValueSpecification that is evaluated to give a default value for the 
   --  Property when an object of the owning Classifier is instantiated.

   overriding procedure Set_Default_Value
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);
   --  Setter of Property::defaultValue.
   --
   --  A ValueSpecification that is evaluated to give a default value for the 
   --  Property when an object of the owning Classifier is instantiated.

   overriding function Get_Interface
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Interfaces.UML_Interface_Access;
   --  Getter of Property::interface.
   --
   --  References the Interface that owns the Property

   overriding procedure Set_Interface
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Interfaces.UML_Interface_Access);
   --  Setter of Property::interface.
   --
   --  References the Interface that owns the Property

   overriding function Get_Is_Composite
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;
   --  Getter of Property::isComposite.
   --
   --  If isComposite is true, the object containing the attribute is a 
   --  container for the object or value contained in the attribute.
   --  This is a derived value, indicating whether the aggregation of the 
   --  Property is composite or not.

   overriding procedure Set_Is_Composite
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);
   --  Setter of Property::isComposite.
   --
   --  If isComposite is true, the object containing the attribute is a 
   --  container for the object or value contained in the attribute.
   --  This is a derived value, indicating whether the aggregation of the 
   --  Property is composite or not.

   overriding function Get_Is_Derived
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;
   --  Getter of Property::isDerived.
   --
   --  Specifies whether the Property is derived, i.e., whether its value or 
   --  values can be computed from other information.
   --  If isDerived is true, the value of the attribute is derived from 
   --  information elsewhere.

   overriding procedure Set_Is_Derived
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);
   --  Setter of Property::isDerived.
   --
   --  Specifies whether the Property is derived, i.e., whether its value or 
   --  values can be computed from other information.
   --  If isDerived is true, the value of the attribute is derived from 
   --  information elsewhere.

   overriding function Get_Is_Derived_Union
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;
   --  Getter of Property::isDerivedUnion.
   --
   --  Specifies whether the property is derived as the union of all of the 
   --  properties that are constrained to subset it.

   overriding procedure Set_Is_Derived_Union
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);
   --  Setter of Property::isDerivedUnion.
   --
   --  Specifies whether the property is derived as the union of all of the 
   --  properties that are constrained to subset it.

   overriding function Get_Is_ID
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;
   --  Getter of Property::isID.
   --
   --  True indicates this property can be used to uniquely identify an 
   --  instance of the containing Class.

   overriding procedure Set_Is_ID
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);
   --  Setter of Property::isID.
   --
   --  True indicates this property can be used to uniquely identify an 
   --  instance of the containing Class.

   overriding function Get_Is_Read_Only
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;
   --  Getter of Property::isReadOnly.
   --
   --  If isReadOnly is true, the attribute may not be written to after 
   --  initialization.
   --  If true, the attribute may only be read, and not written.

   overriding procedure Set_Is_Read_Only
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);
   --  Setter of Property::isReadOnly.
   --
   --  If isReadOnly is true, the attribute may not be written to after 
   --  initialization.
   --  If true, the attribute may only be read, and not written.

   overriding function Get_Opposite
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Properties.UML_Property_Access;
   --  Getter of Property::opposite.
   --
   --  In the case where the property is one navigable end of a binary 
   --  association with both ends navigable, this gives the other end.

   overriding procedure Set_Opposite
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Properties.UML_Property_Access);
   --  Setter of Property::opposite.
   --
   --  In the case where the property is one navigable end of a binary 
   --  association with both ends navigable, this gives the other end.

   overriding function Get_Owning_Association
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Associations.UML_Association_Access;
   --  Getter of Property::owningAssociation.
   --
   --  References the owning association of this property, if any.

   overriding procedure Set_Owning_Association
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Associations.UML_Association_Access);
   --  Setter of Property::owningAssociation.
   --
   --  References the owning association of this property, if any.

   overriding function Get_Qualifier
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property;
   --  Getter of Property::qualifier.
   --
   --  An optional list of ordered qualifier attributes for the end. If the 
   --  list is empty, then the Association is not qualified.

   overriding function Get_Redefined_Property
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Properties.Collections.Set_Of_UML_Property;
   --  Getter of Property::redefinedProperty.
   --
   --  References the properties that are redefined by this property.

   overriding function Get_Subsetted_Property
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Properties.Collections.Set_Of_UML_Property;
   --  Getter of Property::subsettedProperty.
   --
   --  References the properties of which this property is constrained to be a 
   --  subset.

   overriding function Get_End
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Connector_Ends.Collections.Ordered_Set_Of_UML_Connector_End;
   --  Getter of ConnectableElement::end.
   --
   --  Denotes a set of connector ends that attaches to this connectable 
   --  element.

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access;
   --  Getter of ConnectableElement::templateParameter.
   --
   --  The ConnectableElementTemplateParameter for this ConnectableElement 
   --  parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access);
   --  Setter of ConnectableElement::templateParameter.
   --
   --  The ConnectableElementTemplateParameter for this ConnectableElement 
   --  parameter.

   overriding function Get_Type
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Types.UML_Type_Access;
   --  Getter of TypedElement::type.
   --
   --  The type of the TypedElement.
   --  This information is derived from the return result for this Operation.

   overriding procedure Set_Type
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Types.UML_Type_Access);
   --  Setter of TypedElement::type.
   --
   --  The type of the TypedElement.
   --  This information is derived from the return result for this Operation.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding procedure Set_Name
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.Optional_String);
   --  Setter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a 
   --  hierarchy of nested Namespaces. It is constructed from the names of the 
   --  containing namespaces starting at the root of the hierarchy and ending 
   --  with the name of the NamedElement itself.

   overriding function Get_Visibility
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;
   --  Getter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces 
   --  within the overall model, and its accessibility.

   overriding procedure Set_Visibility
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);
   --  Setter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces 
   --  within the overall model, and its accessibility.

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding function Get_Deployed_Element
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Getter of DeploymentTarget::deployedElement.
   --
   --  The set of elements that are manifested in an Artifact that is involved 
   --  in Deployment to a DeploymentTarget.

   overriding function Get_Deployment
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Deployments.Collections.Set_Of_UML_Deployment;
   --  Getter of DeploymentTarget::deployment.
   --
   --  The set of Deployments for a DeploymentTarget.

   overriding function Get_Is_Ordered
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;
   --  Getter of MultiplicityElement::isOrdered.
   --
   --  For a multivalued multiplicity, this attribute specifies whether the 
   --  values in an instantiation of this element are sequentially ordered.

   overriding procedure Set_Is_Ordered
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);
   --  Setter of MultiplicityElement::isOrdered.
   --
   --  For a multivalued multiplicity, this attribute specifies whether the 
   --  values in an instantiation of this element are sequentially ordered.

   overriding function Get_Is_Unique
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;
   --  Getter of MultiplicityElement::isUnique.
   --
   --  For a multivalued multiplicity, this attributes specifies whether the 
   --  values in an instantiation of this element are unique.

   overriding procedure Set_Is_Unique
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);
   --  Setter of MultiplicityElement::isUnique.
   --
   --  For a multivalued multiplicity, this attributes specifies whether the 
   --  values in an instantiation of this element are unique.

   overriding function Get_Lower_Value
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;
   --  Getter of MultiplicityElement::lowerValue.
   --
   --  The specification of the lower bound for this multiplicity.

   overriding procedure Set_Lower_Value
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);
   --  Setter of MultiplicityElement::lowerValue.
   --
   --  The specification of the lower bound for this multiplicity.

   overriding function Get_Upper
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_Unlimited_Natural;
   --  Getter of MultiplicityElement::upper.
   --
   --  Specifies the upper bound of the multiplicity interval.

   overriding procedure Set_Upper
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.Optional_Unlimited_Natural);
   --  Setter of MultiplicityElement::upper.
   --
   --  Specifies the upper bound of the multiplicity interval.

   overriding function Get_Upper_Value
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;
   --  Getter of MultiplicityElement::upperValue.
   --
   --  The specification of the upper bound for this multiplicity.

   overriding procedure Set_Upper_Value
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);
   --  Setter of MultiplicityElement::upperValue.
   --
   --  The specification of the upper bound for this multiplicity.

   overriding function Get_Featuring_Classifier
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of Feature::featuringClassifier.
   --
   --  The Classifiers that have this Feature as a feature.

   overriding function Get_Is_Static
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;
   --  Getter of Feature::isStatic.
   --
   --  Specifies whether this feature characterizes individual instances 
   --  classified by the classifier (false) or the classifier itself (true).

   overriding procedure Set_Is_Static
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);
   --  Setter of Feature::isStatic.
   --
   --  Specifies whether this feature characterizes individual instances 
   --  classified by the classifier (false) or the classifier itself (true).

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Extension_End_Proxy)
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
    (Self : not null access UML_Extension_End_Proxy;
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
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element;
   --  Getter of RedefinableElement::redefinedElement.
   --
   --  The redefinable element that is being redefined by this element.

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of RedefinableElement::redefinitionContext.
   --
   --  References the contexts that this element may be redefined from.

   overriding function Lower_Bound
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_Integer;
   --  Operation ExtensionEnd::lowerBound.
   --
   --  The query lowerBound() returns the lower bound of the multiplicity as 
   --  an Integer. This is a redefinition of the default lower bound, which 
   --  normally, for MultiplicityElements, evaluates to 1 if empty.

   overriding function Default
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_String;
   --  Operation Property::default.
   --
   --  Missing derivation for Property::/default : String

   overriding function Is_Attribute
    (Self : not null access constant UML_Extension_End_Proxy;
     P : AMF.UML.Properties.UML_Property_Access)
       return Boolean;
   --  Operation Property::isAttribute.
   --
   --  The query isAttribute() is true if the Property is defined as an 
   --  attribute of some classifier.

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Extension_End_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean;
   --  Operation Property::isCompatibleWith.
   --
   --  The query isCompatibleWith() determines if this parameterable element 
   --  is compatible with the specified parameterable element. By default 
   --  parameterable element P is compatible with parameterable element Q if 
   --  the kind of P is the same or a subtype as the kind of Q. In addition, 
   --  for properties, the type must be conformant with the type of the 
   --  specified parameterable element.

   overriding function Is_Composite
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;
   --  Operation Property::isComposite.
   --
   --  The value of isComposite is true only if aggregation is composite.

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Extension_End_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;
   --  Operation Property::isConsistentWith.
   --
   --  The query isConsistentWith() specifies, for any two Properties in a 
   --  context in which redefinition is possible, whether redefinition would 
   --  be logically consistent. A redefining property is consistent with a 
   --  redefined property if the type of the redefining property conforms to 
   --  the type of the redefined property, the multiplicity of the redefining 
   --  property (if specified) is contained in the multiplicity of the 
   --  redefined property.
   --  The query isConsistentWith() specifies, for any two Properties in a 
   --  context in which redefinition is possible, whether redefinition would 
   --  be logically consistent. A redefining property is consistent with a 
   --  redefined property if the type of the redefining property conforms to 
   --  the type of the redefined property, and the multiplicity of the 
   --  redefining property (if specified) is contained in the multiplicity of 
   --  the redefined property.

   overriding function Is_Navigable
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;
   --  Operation Property::isNavigable.
   --
   --  The query isNavigable() indicates whether it is possible to navigate 
   --  across the property.

   overriding function Opposite
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Properties.UML_Property_Access;
   --  Operation Property::opposite.
   --
   --  If this property is owned by a class, associated with a binary 
   --  association, and the other end of the association is also owned by a 
   --  class, then opposite gives the other end.

   overriding function Subsetting_Context
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Types.Collections.Set_Of_UML_Type;
   --  Operation Property::subsettingContext.
   --
   --  The query subsettingContext() gives the context for subsetting a 
   --  property. It consists, in the case of an attribute, of the 
   --  corresponding classifier, and in the case of an association end, all of 
   --  the classifiers at the other ends.

   overriding function Ends
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Connector_Ends.Collections.Set_Of_UML_Connector_End;
   --  Operation ConnectableElement::end.
   --
   --  Missing derivation for ConnectableElement::/end : ConnectorEnd

   overriding function All_Namespaces
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;
   --  Operation NamedElement::allNamespaces.
   --
   --  The query allNamespaces() gives the sequence of namespaces in which the 
   --  NamedElement is nested, working outwards.

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly 
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Extension_End_Proxy;
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
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Qualified_Name
    (Self : not null access constant UML_Extension_End_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name, 
   --  the qualified name is constructed from the names of the containing 
   --  namespaces.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned 
   --  elements of an element.

   overriding function Is_Template_Parameter
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;
   --  Operation ParameterableElement::isTemplateParameter.
   --
   --  The query isTemplateParameter() determines if this parameterable 
   --  element is exposed as a formal template parameter.

   overriding function Deployed_Element
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation DeploymentTarget::deployedElement.
   --
   --  Missing derivation for DeploymentTarget::/deployedElement : 
   --  PackageableElement

   overriding function Compatible_With
    (Self : not null access constant UML_Extension_End_Proxy;
     Other : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean;
   --  Operation MultiplicityElement::compatibleWith.
   --
   --  The operation compatibleWith takes another multiplicity as input. It 
   --  checks if one multiplicity is compatible with another.

   overriding function Includes_Cardinality
    (Self : not null access constant UML_Extension_End_Proxy;
     C : Integer)
       return Boolean;
   --  Operation MultiplicityElement::includesCardinality.
   --
   --  The query includesCardinality() checks whether the specified 
   --  cardinality is valid for this multiplicity.

   overriding function Includes_Multiplicity
    (Self : not null access constant UML_Extension_End_Proxy;
     M : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean;
   --  Operation MultiplicityElement::includesMultiplicity.
   --
   --  The query includesMultiplicity() checks whether this multiplicity 
   --  includes all the cardinalities allowed by the specified multiplicity.

   overriding function Iss
    (Self : not null access constant UML_Extension_End_Proxy;
     Lowerbound : Integer;
     Upperbound : Integer)
       return Boolean;
   --  Operation MultiplicityElement::is.
   --
   --  The operation is determines if the upper and lower bound of the ranges 
   --  are the ones given.

   overriding function Is_Multivalued
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;
   --  Operation MultiplicityElement::isMultivalued.
   --
   --  The query isMultivalued() checks whether this multiplicity has an upper 
   --  bound greater than one.

   overriding function Lower
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_Integer;
   --  Operation MultiplicityElement::lower.
   --
   --  The derived lower attribute must equal the lowerBound.

   overriding function Upper
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_Unlimited_Natural;
   --  Operation MultiplicityElement::upper.
   --
   --  The derived upper attribute must equal the upperBound.

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Extension_End_Proxy;
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

   overriding procedure Enter_UML_Element
    (Self    : not null access constant UML_Extension_End_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_UML_Element
    (Self    : not null access constant UML_Extension_End_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

end AMF.Internals.UML_Extension_Ends;
