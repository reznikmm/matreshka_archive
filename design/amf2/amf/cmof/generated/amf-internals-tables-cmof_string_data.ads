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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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

package AMF.Internals.Tables.CMOF_String_Data is

   MS_1 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("qualifiedName");
   MS_2 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("directedRelationship");
   MS_3 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("includesMultiplicity");
   MS_4 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_operand_expression");
   MS_5 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("association_ends");
   MS_6 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The general classifiers are the classifiers referenced by the generalization relationships.");
   MS_7 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedEnd_owningAssociation");
   MS_8 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the PackageableElement whose name is to be added to a Namespace.");
   MS_9 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_precondition_preContext");
   MS_10 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("owningConstraint");
   MS_11 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("uri");
   MS_12 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("in");
   MS_13 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies a String that represents a value to be used when no argument is supplied for the Property.");
   MS_14 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_nestedPackage_nestingPackage");
   MS_15 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("redefinee");
   MS_16 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("lower");
   MS_17 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("org.omg.xmi.nsURI");
   MS_18 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query isMultivalued() checks whether this multiplicity has an upper bound greater than one.");
   MS_19 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If this operation has a return parameter, isOrdered equals the value of isOrdered for that parameter. Otherwise isOrdered is false.");
   MS_20 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query mustBeOwned() indicates whether elements of this type must have an owner. Subclasses of Element that do not require an owner must override this operation.");
   MS_21 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If this property is owned by a class, associated with a binary association, and the other end of the association is also owned by a class, then opposite gives the other end.");
   MS_22 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ParameterDirectionKind");
   MS_23 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The Attributes owned by the DataType.");
   MS_24 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("specialized_end_number");
   MS_25 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the general classifier in the Generalization relationship.");
   MS_26 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Indicates that parameter values are passed into the behavioral element by the caller.");
   MS_27 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isConsistentWith");
   MS_28 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("value_specification_boolean");
   MS_29 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The upper bound must be greater than or equal to the lower bound.");
   MS_30 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies whether the association is derived from other model elements such as other associations or constraints.");
   MS_31 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("n");
   MS_32 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The DataType that owns this Operation.");
   MS_33 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Enumeration");
   MS_34 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isQuery");
   MS_35 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("BehavioralFeature");
   MS_36 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A subsetting property may strengthen the type of the subsetted property, and its upper bound may be less.");
   MS_37 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query isDistinguishableFrom() determines whether two BehavioralFeatures may coexist in the same Namespace. It specifies that they have to have different signatures.");
   MS_38 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Subsetting may only occur when the context of the subsetting property conforms to the context of the subsetted property.");
   MS_39 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Indicates whether a parameter is being sent into or out of a behavioral element.");
   MS_40 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A comment is a textual annotation that can be attached to a set of elements.");
   MS_41 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A public element is visible to all elements that can access the contents of the namespace that owns it.");
   MS_42 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("class");
   MS_43 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isDistinguishableFrom");
   MS_44 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Relationship");
   MS_45 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_general_classifier");
   MS_46 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query bestVisibility() examines a set of VisibilityKinds, and returns public as the preferred visibility.");
   MS_47 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("binary_associations");
   MS_48 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_navigableOwnedEnd_association");
   MS_49 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("unlimitedValue");
   MS_50 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An operation can have at most one return parameter; i.e., an owned parameter with the direction set to 'return'");
   MS_51 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("tag");
   MS_52 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_member_namespace");
   MS_53 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_inheritedMember_classifier");
   MS_54 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_importedPackage_packageImport");
   MS_55 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies whether an execution of the BehavioralFeature leaves the state of the system unchanged (isQuery=true) or whether side effects may occur (isQuery=false).");
   MS_56 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The class that owns the operation.");
   MS_57 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The Element that owns this element.");
   MS_58 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The Operations owned by the DataType.");
   MS_59 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies all elements inherited by this classifier from the general classifiers.");
   MS_60 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("public");
   MS_61 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("mustBeOwned");
   MS_62 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A data type is a type whose instances are identified only by their value. A data type may contain attributes to support the modeling of structured data types.");
   MS_63 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the lower bound of the multiplicity interval.");
   MS_64 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If the language attribute is not empty, then the size of the body and language arrays must be the same.");
   MS_65 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("String");
   MS_66 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ownedType");
   MS_67 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("lower_ge_0");
   MS_68 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query unlimitedValue() gives a single UnlimitedNatural value when one can be computed.");
   MS_69 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("True when a class is abstract.");
   MS_70 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("visibility_public_or_private");
   MS_71 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An association describes a set of tuples whose values refer to typed instances. An instance of an association is called a link.A link is a tuple with one value for each end of the association, where each value is an instance of the type of the end.");
   MS_72 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query mustBeOwned() indicates whether elements of this type must have an owner.");
   MS_73 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("relatedElement");
   MS_74 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("importedPackage");
   MS_75 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query allNamespaces() gives the sequence of namespaces in which the NamedElement is nested, working outwards.");
   MS_76 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Type");
   MS_77 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("p");
   MS_78 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ns");
   MS_79 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query isNavigable() indicates whether it is possible to navigate across the property.");
   MS_80 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A primitive type defines a predefined data type, without any relevant substructure (i.e., it has no parts in the context of UML). A primitive datatype may have an algebra and operations defined outside of UML, for example, mathematically.");
   MS_81 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("tagOwner");
   MS_82 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("PackageImport");
   MS_83 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ownedAttribute");
   MS_84 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the Operations that are redefined by this Operation.");
   MS_85 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("operation");
   MS_86 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedMember_namespace");
   MS_87 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("navigableOwnedEnd");
   MS_88 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A packageable element indicates a named element that may be owned directly by a package.");
   MS_89 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("allOwnedElements");
   MS_90 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedTag_tagOwner");
   MS_91 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the contexts that this element may be redefined from.");
   MS_92 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("redefinition_context_valid");
   MS_93 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies whether the property is derived as the union of all of the properties that are constrained to subset it.");
   MS_94 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query stringValue() gives a single String value when one can be computed.");
   MS_95 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Determines where the NamedElement appears within different Namespaces within the overall model, and its accessibility.");
   MS_96 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_raisedException_behavioralFeature");
   MS_97 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isReadOnly");
   MS_98 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_subsettedProperty_property");
   MS_99 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("EnumerationLiteral");
   MS_100 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The ordered set of Elements referenced by this Constraint.");
   MS_101 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query integerValue() gives a single Integer value when one can be computed.");
   MS_102 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedComment_owningElement");
   MS_103 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the elements related by the Relationship.");
   MS_104 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("false");
   MS_105 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Association");
   MS_106 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A property is a structural feature of a classifier that characterizes instances of the classifier. A property related by ownedAttribute to a classifier (other than an association) represents an attribute and might also represent an association end. It relates an instance of the class to a value or set of values of the type of the attribute. A property related by memberEnd or its specializations to an association represents an end of the association. The type of the property is the type of the end of the association.");
   MS_107 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query separator() gives the string that is used to separate names when constructing a qualified name.");
   MS_108 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("memberEnd");
   MS_109 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("derived_union_is_derived");
   MS_110 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("context");
   MS_111 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("redefined_property_inherited");
   MS_112 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://schema.omg.org/spec/MOF/2.0/cmof.xml");
   MS_113 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query allFeatures() gives all of the features in the namespace of the classifier. In general, through mechanisms such as inheritance, this will be a larger set than feature.");
   MS_114 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A protected element is visible to elements that have a generalization relationship to the namespace that owns it.");
   MS_115 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_memberEnd_association");
   MS_116 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("This gives the superclasses of a class.");
   MS_117 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Operation");
   MS_118 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("property");
   MS_119 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Property");
   MS_120 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("bodyCondition");
   MS_121 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A value specification is the specification of a (possibly empty) set of instances, including both objects and data values.");
   MS_122 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A named element is an element in a model that may have a name.");
   MS_123 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query allOwnedElements() gives all of the direct and indirect owned elements of an element.");
   MS_124 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_postcondition_postContext");
   MS_125 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query inheritableMembers() gives all of the members of a classifier that may be inherited in one of its descendants, subject to whatever visibility restrictions apply.");
   MS_126 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_annotatedElement_comment");
   MS_127 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("redefinition_consistent");
   MS_128 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("When there is a name, and all of the containing namespaces have a name, the qualified name is constructed from the names of the containing namespaces.");
   MS_129 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A constraint is a condition or restriction expressed in natural language text or in a machine readable language for the purpose of declaring some of the semantics of an element.");
   MS_130 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the Types representing exceptions that may be raised during an invocation of this operation.");
   MS_131 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("expression");
   MS_132 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("has_owner");
   MS_133 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("separator");
   MS_134 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("spec");
   MS_135 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The ordered set of literals for this Enumeration.");
   MS_136 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the Element(s) being commented.");
   MS_137 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ownedTag");
   MS_138 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query allParents() gives all of the direct and indirect ancestors of a generalized Classifier.");
   MS_139 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("name");
   MS_140 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the targets of the DirectedRelationship.");
   MS_141 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A Boolean type is used for logical expression, consisting of the predefined values true and false.");
   MS_142 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A private element is only visible inside the namespace that owns it.");
   MS_143 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("This information is derived from the return result for this Operation.");
   MS_144 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("direction");
   MS_145 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("inheritableMembers");
   MS_146 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A property may not subset a property with the same name.");
   MS_147 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("booleanValue");
   MS_148 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("hasVisibilityOf");
   MS_149 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query isNull() returns true when it can be computed that the value is null.");
   MS_150 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("general");
   MS_151 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query importMembers() defines which of a set of PackageableElements are actually imported into the namespace. This excludes hidden ones, i.e., those which have names that conflict with names of owned members, and also excludes elements which would have the same name when imported.");
   MS_152 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the Operation owning this parameter.");
   MS_153 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Indicates that parameter values are passed as return values from a behavioral element back to the caller.");
   MS_154 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("redefined");
   MS_155 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A classifier is a classification of instances - it describes a set of instances that have features in common. A classifier can specify a generalization hierarchy by referencing its general classifiers.");
   MS_156 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("subsetted_property_names");
   MS_157 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Indicates that parameter values are passed into a behavioral element by the caller and then back out to the caller from the behavioral element.");
   MS_158 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query conformsTo() gives true for a type that conforms to another. By default, two types do not conform to each other. This query is intended to be redefined for specific conformance situations.");
   MS_159 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("true");
   MS_160 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("opposite");
   MS_161 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isLeaf");
   MS_162 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_attribute_classifier");
   MS_163 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("inheritedMember");
   MS_164 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("feature");
   MS_165 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("subsetting_context_conforms");
   MS_166 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_relatedElement_relationship");
   MS_167 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedOperation_datatype");
   MS_168 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Parameter");
   MS_169 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("elements_public_or_private");
   MS_170 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If this operation has a return parameter, isUnique equals the value of isUnique for that parameter. Otherwise isUnique is true.");
   MS_171 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("bestVisibility");
   MS_172 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the PackageMerges that are owned by this Package.");
   MS_173 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("navigable_readonly");
   MS_174 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The Classifiers that have this Feature as a feature.");
   MS_175 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A package merge defines how the contents of one package are extended by the contents of another package.");
   MS_176 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An element import identifies an element in another package, and allows the element to be referenced using its name without a qualifier.");
   MS_177 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the properties that are redefined by this property.");
   MS_178 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A behavioral feature is a feature of a classifier that specifies an aspect of the behavior of its instances.");
   MS_179 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If isDerived is true, the value of the attribute is derived from information elsewhere.");
   MS_180 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("packageMerge");
   MS_181 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isComputable");
   MS_182 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ownedOperation");
   MS_183 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("stringValue");
   MS_184 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_type_operation");
   MS_185 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isFinalSpecialization");
   MS_186 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isAbstract");
   MS_187 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedRule_context");
   MS_188 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies a String that represents a value to be used when no argument is supplied for the Parameter.");
   MS_189 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query upperBound() returns the upper bound of the multiplicity for a bounded multiplicity as an unlimited natural.");
   MS_190 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ownerFormalParam");
   MS_191 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedParameter_operation");
   MS_192 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query lowerBound() returns the lower bound of the multiplicity as an integer.");
   MS_193 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the Package that is being extended with the contents of the merged package of the PackageMerge.");
   MS_194 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedParameter_ownerFormalParam");
   MS_195 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_target_directedRelationship");
   MS_196 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query isComputable() determines whether a value specification can be computed in a model. This operation cannot be fully defined in OCL. A conforming implementation is expected to deliver true for this operation for all value specifications that it can compute, and to compute all of those for which the operation is true. A conforming implementation is expected to be able to compute the value of all literals.");
   MS_197 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedAttribute_class");
   MS_198 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("out");
   MS_199 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("language_body_size");
   MS_200 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An association specializing another association has the same number of ends as the other association.");
   MS_201 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("C");
   MS_202 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The DataType that owns this Property.");
   MS_203 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the name that should be added to the namespace of the importing package in lieu of the name of the imported packagable element. The aliased name must not clash with any other member name in the importing package. By default, no alias is used.");
   MS_204 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("not_apply_to_self");
   MS_205 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A string is a sequence of characters in some suitable character set used to display information about the model. Character sets may include non-Roman alphabets and characters.");
   MS_206 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("behavioralFeature");
   MS_207 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_element_tag");
   MS_208 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("vis");
   MS_209 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("elementImport");
   MS_210 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If this operation has a return parameter, lower equals the value of lower for that parameter. Otherwise lower is not defined.");
   MS_211 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query isConsistentWith() specifies, for any two Operations in a context in which redefinition is possible, whether redefinition would be consistent in the sense of maintaining type covariance. Other senses of consistency may be required, for example to determine consistency in the sense of contravariance. Users may define alternative queries under names different from 'isConsistentWith()', as for example, users may define a query named 'isContravariantWith()'.");
   MS_212 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("getName");
   MS_213 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A redefinable element can only redefine non-leaf redefinable elements");
   MS_214 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("redefinitionContext");
   MS_215 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query parents() gives all of the immediate ancestors of a generalized Classifier.");
   MS_216 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The lower bound must be a non-negative integer literal.");
   MS_217 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Element");
   MS_218 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An element is a constituent of a model. As such, it has the capability of owning other elements.");
   MS_219 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedOperation_class");
   MS_220 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The visibility of an ElementImport is either public or private.");
   MS_221 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("allFeatures");
   MS_222 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If isComposite is true, the object containing the attribute is a container for the object or value contained in the attribute.");
   MS_223 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("enumeration");
   MS_224 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("inout");
   MS_225 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ownedLiteral");
   MS_226 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the packageable elements that are owned by this Package.");
   MS_227 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_feature_featuringClassifier");
   MS_228 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("el");
   MS_229 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("relationship");
   MS_230 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the packaged elements that are Packages.");
   MS_231 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("target");
   MS_232 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An opaque expression is an uninterpreted textual statement that denotes a (possibly empty) set of values when evaluated in a context.");
   MS_233 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("has_qualified_name");
   MS_234 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("For a multivalued multiplicity, this attributes specifies whether the values in an instantiation of this element are unique.");
   MS_235 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the classifiers that are used as types of the ends of the association.");
   MS_236 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the Namespace that imports the members from a Package.");
   MS_237 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("subsetting_rules");
   MS_238 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_endType_association");
   MS_239 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Indicates that parameter values are passed from a behavioral element out to the caller.");
   MS_240 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A redefined property must be inherited from a more general classifier containing the redefining property.");
   MS_241 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A collection of NamedElements owned by the Namespace.");
   MS_242 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("upper");
   MS_243 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the Class that owns the Property.");
   MS_244 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("lowerBound");
   MS_245 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A bodyCondition can only be specified for a query operation.");
   MS_246 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the ordered set of formal parameters of this BehavioralFeature.");
   MS_247 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the PackageImports owned by the Namespace.");
   MS_248 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An enumeration literal is a user-defined data value for an enumeration.");
   MS_249 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("package");
   MS_250 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("not_own_self");
   MS_251 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_redefinedOperation_operation");
   MS_252 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("specification");
   MS_253 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("constrainedElement");
   MS_254 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("importingNamespace");
   MS_255 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("importedElement");
   MS_256 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A condition that must be true when evaluated in order for the constraint to be satisfied.");
   MS_257 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("specialize_type");
   MS_258 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isMultivalued");
   MS_259 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("redefinableElement");
   MS_260 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the PackageableElements that are members of this Namespace as a result of either PackageImports or ElementImports.");
   MS_261 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("element");
   MS_262 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isDerivedUnion");
   MS_263 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_superClass_class");
   MS_264 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query isAttribute() is true if the Property is defined as an attribute of some classifier.");
   MS_265 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_redefinedElement_redefinableElement");
   MS_266 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A multiplicity is a definition of an inclusive interval of non-negative integers beginning with a lower bound and ending with a (possibly infinite) upper bound. A multiplicity element embeds this information to specify the allowable cardinalities for an instantiation of this element.");
   MS_267 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("precondition");
   MS_268 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_packageImport_importingNamespace");
   MS_269 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies a sequence of operands.");
   MS_270 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("At least one of the redefinition contexts of the redefining element must be a specialization of at least one of the redefinition contexts for each redefined element.");
   MS_271 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_specification_owningConstraint");
   MS_272 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("classifier");
   MS_273 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("org.omg.xmi.nsPrefix");
   MS_274 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isComposite");
   MS_275 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("other");
   MS_276 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isOrdered");
   MS_277 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("protected");
   MS_278 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("upper_ge_lower");
   MS_279 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An unlimited natural is a primitive type representing unlimited natural values.");
   MS_280 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("receivingPackage");
   MS_281 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The redefinable element that is being redefined by this element.");
   MS_282 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query isConsistentWith() specifies, for any two Properties in a context in which redefinition is possible, whether redefinition would be logically consistent. A redefining property is consistent with a redefined property if the type of the redefining property conforms to the type of the redefined property, the multiplicity of the redefining property (if specified) is contained in the multiplicity of the redefined property, and the redefining property is derived if the redefined property is derived.");
   MS_283 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If there is no name, or one of the containing namespaces has no name, there is no qualified name.");
   MS_284 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("visibleMembers");
   MS_285 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("owningElement");
   MS_286 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("c");
   MS_287 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If a NamedElement is not owned by a Namespace, it does not have a visibility.");
   MS_288 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("excludeCollisions");
   MS_289 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An expression is a structured tree of symbols that denotes a (possibly empty) set of values when evaluated in a context.");
   MS_290 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the owning package of this classifier, if any.");
   MS_291 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("has_no_qualified_name");
   MS_292 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isNavigable");
   MS_293 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("For a multivalued multiplicity, this attribute specifies whether the values in an instantiation of this element are sequentially ordered.");
   MS_294 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A derived union is derived.");
   MS_295 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("includesCardinality");
   MS_296 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A constraint cannot be applied to itself.");
   MS_297 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("multiplicity_of_composite");
   MS_298 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A namespace is an element in a model that contains a set of named elements that can be identified by name.");
   MS_299 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("imps");
   MS_300 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("alias");
   MS_301 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("DirectedRelationship");
   MS_302 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the Package whose members are imported into a Namespace.");
   MS_303 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("DataType");
   MS_304 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A structural feature is a typed feature of a classifier that specifies the structure of instances of the classifier.");
   MS_305 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_importedMember_namespace");
   MS_306 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Note that there may be members of the Classifier that are of the type Feature but are not included in this association, e.g. inherited features.");
   MS_307 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A package is used to group elements, and provides a namespace for the grouped elements.");
   MS_308 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The ends that are owned by the association itself.");
   MS_309 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Indicates whether it is possible to further redefine a RedefinableElement. If the value is true, then it is not possible to further redefine the RedefinableElement. Note that this property is preserved through package merge operations; that is, the capability to redefine a RedefinableElement (i.e., isLeaf=false) must be preserved in the resulting RedefinableElement of a package merge operation where a RedefinableElement with isLeaf=false is merged with a matching RedefinableElement with isLeaf=true: the resulting RedefinableElement will have isLeaf=false. Default value is false.");
   MS_310 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("PackageableElement");
   MS_311 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("upperBound");
   MS_312 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Classifier");
   MS_313 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("attribute");
   MS_314 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A directed relationship represents a relationship between a collection of source model elements and a collection of target model elements.");
   MS_315 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If true, the Classifier cannot be specialized by generalization. Note that this property is preserved through package merge operations; that is, the capability to specialize a Classifier (i.e., isFinalSpecialization =false) must be preserved in the resulting Classifier of a package merge operation where a Classifier with isFinalSpecialization =false is merged with a matching Classifier with isFinalSpecialization =true: the resulting Classifier will have isFinalSpecialization =false.");
   MS_316 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("owningPackage");
   MS_317 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query visibleMembers() defines which members of a Package can be accessed outside it.");
   MS_318 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the ElementImports owned by the Namespace.");
   MS_319 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query booleanValue() gives a single Boolean value when one can be computed.");
   MS_320 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("private");
   MS_321 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("maySpecializeType");
   MS_322 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the sources of the DirectedRelationship.");
   MS_323 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("body");
   MS_324 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isAttribute");
   MS_325 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedElement_owner");
   MS_326 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("integerValue");
   MS_327 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A multiplicity of a composite aggregation must not have an upper bound greater than 1.");
   MS_328 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ownedRule");
   MS_329 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ownedMember");
   MS_330 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Parameter direction kind is an enumeration type that defines literals used to specify direction of parameters.");
   MS_331 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("All the members of a Namespace are distinguishable within it.");
   MS_332 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("conformsTo");
   MS_333 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("CMOF");
   MS_334 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An integer is a primitive type representing integer values.");
   MS_335 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("inherit");
   MS_336 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_elementImport_importingNamespace");
   MS_337 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("value");
   MS_338 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A redefinable element is an element that, when defined in the context of a classifier, can be redefined more specifically or differently in the context of another classifier that specializes (directly or indirectly) the context classifier.");
   MS_339 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("MultiplicityElement");
   MS_340 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The Elements owned by this element.");
   MS_341 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("owner");
   MS_342 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The text of the expression, possibly in multiple languages.");
   MS_343 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query includesCardinality() checks whether the specified cardinality is valid for this multiplicity.");
   MS_344 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If isReadOnly is true, the attribute may not be written to after initialization.");
   MS_345 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("TypedElement");
   MS_346 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("1");
   MS_347 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_redefinitionContext_redefinableElement");
   MS_348 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("NamedElement");
   MS_349 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("getNamesOfMember");
   MS_350 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query subsettingContext() gives the context for subsetting a property. It consists, in the case of an attribute, of the corresponding classifier, and in the case of an association end, all of the classifiers at the other ends.");
   MS_351 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("non_leaf_redefinition");
   MS_352 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If this operation has a return parameter, upper equals the value of upper for that parameter. Otherwise upper is not defined.");
   MS_353 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query hasVisibilityOf() determines whether a named element is visible in the classifier. By default all are visible. It is only called when the argument is something owned by a parent.");
   MS_354 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedLiteral_enumeration");
   MS_355 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("cmof");
   MS_356 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("nestedPackage");
   MS_357 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("redefinedProperty");
   MS_358 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Boolean");
   MS_359 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A package element is owned by a namespace that is not a package, and is visible to elements that are in the same package as its owning namespace. Only named elements that are not owned by packages can be marked as having package visibility.  Any element marked as having package visibility is visible to all elements within the nearest enclosing package (given that other owning elements have proper visibility).  Outside the nearest enclosing package, an element marked as having package visibility is not visible.");
   MS_360 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("importMembers");
   MS_361 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("postContext");
   MS_362 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("packageImport");
   MS_363 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("subsettingContext");
   MS_364 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("endType");
   MS_365 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("raisedException");
   MS_366 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("comment");
   MS_367 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The inherit operation is overridden to exclude redefined properties.");
   MS_368 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The navigable ends that are owned by the association itself.");
   MS_369 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("annotatedElement");
   MS_370 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Provides an identifier for the package that can be used for many purposes. A URI is the universally unique identification of the package following the IETF URI specification, RFC 2396 http://www.ietf.org/rfc/rfc2396.txt. UML 1.4 and MOF 1.4 were assigned URIs to their outermost package. The package URI appears in XMI files when instances of the package’s classes are serialized.");
   MS_371 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ownedEnd");
   MS_372 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Integer");
   MS_373 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("owningAssociation");
   MS_374 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_mergedPackage_packageMerge");
   MS_375 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("allParents");
   MS_376 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If an element that is owned by a package has visibility, it is public or private.");
   MS_377 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isUnique");
   MS_378 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("PrimitiveType");
   MS_379 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("superClass");
   MS_380 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A parameter is a specification of an argument used to pass information into or out of an invocation of a behavioral feature.");
   MS_381 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A name which allows the NamedElement to be identified within a hierarchy of nested Namespaces. It is constructed from the names of the containing namespaces starting at the root of the hierarchy and ending with the name of the NamedElement itself.");
   MS_382 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the upper bound of the multiplicity interval.");
   MS_383 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A collection of NamedElements identifiable within the Namespace, either by being owned or by being introduced by importing or inheritance.");
   MS_384 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_importedElement_elementImport");
   MS_385 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("preContext");
   MS_386 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query maySpecializeType() determines whether this classifier may have a generalization relationship to classifiers of the specified type. By default a classifier may specialize classifiers of the same or a more general type. It is intended to be redefined by classifiers that have different specialization constraints.");
   MS_387 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_bodyCondition_bodyContext");
   MS_388 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the Package that owns this Package.");
   MS_389 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isNull");
   MS_390 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("StructuralFeature");
   MS_391 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the properties of which this property is constrained to be a subset.");
   MS_392 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("bodyContext");
   MS_393 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Generalization hierarchies must be directed and acyclical. A classifier can not be both a transitively general and transitively specific classifier of the same classifier.");
   MS_394 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("members_distinguishable");
   MS_395 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Namespace");
   MS_396 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("RedefinableElement");
   MS_397 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query getName() returns the name under which the imported PackageableElement will be known in the importing namespace.");
   MS_398 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("at_most_one_return");
   MS_399 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A typed element is a kind of named element that represents an element with a type.");
   MS_400 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_source_directedRelationship");
   MS_401 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The visibility of a PackageImport is either public or private.");
   MS_402 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The Enumeration that this EnumerationLiteral is a member of.");
   MS_403 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("VisibilityKind");
   MS_404 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("endType is derived from the types of the member ends.");
   MS_405 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("operand");
   MS_406 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the namespace that owns the NamedElement.");
   MS_407 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("type");
   MS_408 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_packagedElement_owningPackage");
   MS_409 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Expression");
   MS_410 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The name of the NamedElement.");
   MS_411 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("When an association specializes another association, every end of the specific association corresponds to an end of the general association, and the specific end reaches the same type or a subtype of the more general end.");
   MS_412 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The attributes (i.e. the properties) owned by the class.");
   MS_413 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("OpaqueExpression");
   MS_414 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("constraint");
   MS_415 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("language");
   MS_416 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A feature declares a behavioral or structural characteristic of instances of classifiers.");
   MS_417 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("makesVisible");
   MS_418 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Tag");
   MS_419 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The Boolean query membersAreDistinguishable() determines whether all of the namespace's members are distinguishable within it.");
   MS_420 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("member");
   MS_421 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A package import is a relationship that allows the use of unqualified names to refer to package members from other namespaces.");
   MS_422 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ownedElement");
   MS_423 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An importedElement has either public visibility or no visibility at all.");
   MS_424 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("subsettedProperty");
   MS_425 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A type is a named element that is used as the type for a typed element. A type can be contained in a package.");
   MS_426 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the visibility of the imported PackageableElements within the importing Namespace, i.e., whether imported elements will in turn be visible to other packages that use that importingPackage as an importedPackage. If the PackageImport is public, the imported elements will be visible outside the package, while if it is private they will not.");
   MS_427 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Package");
   MS_428 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The inheritedMember association is derived by inheriting the inheritable members of the parents.");
   MS_429 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Only a navigable property can be marked as readOnly.");
   MS_430 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("redefinedOperation");
   MS_431 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A class describes a set of objects that share the same specifications of features, constraints, and semantics.");
   MS_432 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("source");
   MS_433 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The importedMember property is derived from the ElementImports and the PackageImports. References the PackageableElements that are members of this Namespace as a result of either PackageImports or ElementImports.");
   MS_434 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the Namespace that imports a PackageableElement from another Package.");
   MS_435 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("returnResult");
   MS_436 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Elements that must be owned must have an owner.");
   MS_437 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_packageMerge_receivingPackage");
   MS_438 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("M");
   MS_439 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("only_body_for_query");
   MS_440 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Association ends of associations with more than two ends must be owned by the association.");
   MS_441 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query isRedefinitionContextValid() specifies whether the redefinition contexts of this RedefinableElement are properly related to the redefinition contexts of the specified RedefinableElement to allow this element to redefine the other. By default at least one of the redefinition contexts of this element must be a specialization of at least one of the redefinition contexts of the specified element.");
   MS_442 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A redefining element must be consistent with each redefined element.");
   MS_443 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("featuringClassifier");
   MS_444 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The Comments owned by this element.");
   MS_445 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("public_or_private");
   MS_446 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isRedefinitionContextValid");
   MS_447 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("return");
   MS_448 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Only binary associations can be aggregations.");
   MS_449 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Comment");
   MS_450 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ownedComment");
   MS_451 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Relationship is an abstract concept that specifies some kind of relationship between elements.");
   MS_452 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query isConsistentWith() specifies, for any two RedefinableElements in a context in which redefinition is possible, whether redefinition would be logically consistent. By default, this is false; this operation must be overridden for subclasses of RedefinableElement to define the consistency conditions.");
   MS_453 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("isDerived");
   MS_454 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("nestingPackage");
   MS_455 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Feature");
   MS_456 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_opposite_property");
   MS_457 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An element may not directly or indirectly own itself.");
   MS_458 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An enumeration is a data type whose values are enumerated in the model as enumeration literals.");
   MS_459 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("inhs");
   MS_460 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_raisedException_operation");
   MS_461 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query isDistinguishableFrom() determines whether two NamedElements may logically co-exist within a Namespace. By default, two named elements are distinguishable if (a) they have unrelated types or (b) they have related types but different names.");
   MS_462 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("typedElement");
   MS_463 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("An operation is a behavioral feature of a classifier that specifies the name, type, parameters, and constraints for invoking an associated behavior.");
   MS_464 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("datatype");
   MS_465 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("visibility_needs_ownership");
   MS_466 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the visibility of the imported PackageableElement within the importing Package. The default visibility is the same as that of the imported element. If the imported element does not have a visibility, it is possible to add visibility to the element import.");
   MS_467 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("imported_element_is_public");
   MS_468 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("default");
   MS_469 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the packaged elements that are Types.");
   MS_470 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("UnlimitedNatural");
   MS_471 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A classifier may only specialize classifiers of a valid type.");
   MS_472 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedType_package");
   MS_473 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("importedMember");
   MS_474 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_constrainedElement_constraint");
   MS_475 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The operations owned by the class.");
   MS_476 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_ownedAttribute_datatype");
   MS_477 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("PackageMerge");
   MS_478 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the Package that is to be merged with the receiving package of the PackageMerge.");
   MS_479 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("redefinedElement");
   MS_480 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies a string that is the comment.");
   MS_481 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("If this operation has a return parameter, type equals the value of type for that parameter. Otherwise type is not defined.");
   MS_482 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query excludeCollisions() excludes from a set of PackageableElements any that would not be distinguishable from each other in this namespace.");
   MS_483 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the association of which this property is a member, if any.");
   MS_484 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("parents");
   MS_485 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the Types representing exceptions that may be raised during an invocation of this feature.");
   MS_486 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query getNamesOfMember() takes importing into account. It gives back the set of names that an element would have in an importing namespace, either because it is owned, or if not owned then imported individually, or if not individually then from a package.");
   MS_487 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("membersAreDistinguishable");
   MS_488 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("VisibilityKind is an enumeration type that defines literals to determine the visibility of elements in a model.");
   MS_489 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("namespace");
   MS_490 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("packagedElement");
   MS_491 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ownedParameter");
   MS_492 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("References the owning association of this property, if any.");
   MS_493 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Refers to all of the Properties that are direct (i.e. not inherited or imported) attributes of the classifier.");
   MS_494 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The value specification for a constraint must evaluate to a Boolean value.");
   MS_495 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("visibility");
   MS_496 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Class");
   MS_497 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("In the case where the property is one navigable end of a binary association with both ends navigable, this gives the other end.");
   MS_498 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query includesMultiplicity() checks whether this multiplicity includes all the cardinalities allowed by the specified multiplicity.");
   MS_499 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Each end represents participation of instances of the classifier connected to the end in links of the association.");
   MS_500 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("mergedPackage");
   MS_501 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query makesVisible() defines whether a Package makes an element visible outside itself. Elements with no visibility and elements with public visibility are made visible.");
   MS_502 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Constraint");
   MS_503 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("specialized_end_types");
   MS_504 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_redefinedProperty_property");
   MS_505 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("The query conformsTo() gives true for a classifier that defines a type that conforms to another. This is used, for example, in the specification of signature conformance for operations.");
   MS_506 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ValueSpecification");
   MS_507 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("postcondition");
   MS_508 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("allNamespaces");
   MS_509 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Specifies the languages in which the expression is stated. The interpretation of the expression body depends on the languages. If the languages are unspecified, they might be implicit from the expression body or the context. Languages are matched to body strings by order.");
   MS_510 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("A_type_typedElement");
   MS_511 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("ElementImport");
   MS_512 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("no_cycles_in_generalization");
   MS_513 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("association");

end AMF.Internals.Tables.CMOF_String_Data;
