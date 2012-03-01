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
with Interfaces;

with AMF.Internals.Tables.CMOF_Metamodel;
with AMF.Internals.Tables.CMOF_Types;

package AMF.Internals.Tables.CMOF_Attribute_Mappings is

   use AMF.Internals.Tables.CMOF_Types;
   use AMF.Internals.Tables.CMOF_Metamodel;

   Collection_Offset : constant
     array (AMF.Internals.Tables.CMOF_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 34 .. 78)
       of AMF.Internals.AMF_Collection_Of_Element :=
        (E_None =>
          (others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Association =>
          (43     => 9,     --  Classifier::attribute
           58     => 4,     --  Namespace::elementImport
           34     => 15,    --  Association::endType
           44     => 10,    --  Classifier::feature
           45     => 11,    --  Classifier::general
           59     => 3,     --  Namespace::importedMember
           46     => 12,    --  Classifier::inheritedMember
           60     => 7,     --  Namespace::member
           35     => 16,    --  Association::memberEnd
           36     => 17,    --  Association::navigableOwnedEnd
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           37     => 14,    --  Association::ownedEnd
           61     => 6,     --  Namespace::ownedMember
           62     => 8,     --  Namespace::ownedRule
           63     => 5,     --  Namespace::packageImport
           77     => 13,    --  Relationship::relatedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Class =>
          (43     => 9,     --  Classifier::attribute
           58     => 4,     --  Namespace::elementImport
           44     => 10,    --  Classifier::feature
           45     => 11,    --  Classifier::general
           59     => 3,     --  Namespace::importedMember
           46     => 12,    --  Classifier::inheritedMember
           60     => 7,     --  Namespace::member
           40     => 13,    --  Class::ownedAttribute
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           61     => 6,     --  Namespace::ownedMember
           41     => 14,    --  Class::ownedOperation
           62     => 8,     --  Namespace::ownedRule
           63     => 5,     --  Namespace::packageImport
           42     => 11,    --  Class::superClass
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Comment =>
          (47     => 3,     --  Comment::annotatedElement
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Constraint =>
          (48     => 3,     --  Constraint::constrainedElement
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Data_Type =>
          (43     => 9,     --  Classifier::attribute
           58     => 4,     --  Namespace::elementImport
           44     => 10,    --  Classifier::feature
           45     => 11,    --  Classifier::general
           59     => 3,     --  Namespace::importedMember
           46     => 12,    --  Classifier::inheritedMember
           60     => 7,     --  Namespace::member
           49     => 13,    --  DataType::ownedAttribute
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           61     => 6,     --  Namespace::ownedMember
           50     => 14,    --  DataType::ownedOperation
           62     => 8,     --  Namespace::ownedRule
           63     => 5,     --  Namespace::packageImport
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Element_Import =>
          (53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           77     => 3,     --  Relationship::relatedElement
           51     => 4,     --  DirectedRelationship::source
           52     => 5,     --  DirectedRelationship::target
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Enumeration =>
          (43     => 9,     --  Classifier::attribute
           58     => 4,     --  Namespace::elementImport
           44     => 10,    --  Classifier::feature
           45     => 11,    --  Classifier::general
           59     => 3,     --  Namespace::importedMember
           46     => 12,    --  Classifier::inheritedMember
           60     => 7,     --  Namespace::member
           49     => 13,    --  DataType::ownedAttribute
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           55     => 15,    --  Enumeration::ownedLiteral
           61     => 6,     --  Namespace::ownedMember
           50     => 14,    --  DataType::ownedOperation
           62     => 8,     --  Namespace::ownedRule
           63     => 5,     --  Namespace::packageImport
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Enumeration_Literal =>
          (53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Expression =>
          (56     => 3,     --  Expression::operand
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Opaque_Expression =>
          (53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Operation =>
          (58     => 7,     --  Namespace::elementImport
           57     => 5,     --  Feature::featuringClassifier
           59     => 6,     --  Namespace::importedMember
           60     => 10,    --  Namespace::member
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           61     => 9,     --  Namespace::ownedMember
           64     => 12,    --  Operation::ownedParameter
           38     => 12,    --  BehavioralFeature::ownedParameter
           62     => 11,    --  Namespace::ownedRule
           63     => 8,     --  Namespace::packageImport
           65     => 16,    --  Operation::postcondition
           66     => 15,    --  Operation::precondition
           67     => 13,    --  Operation::raisedException
           39     => 13,    --  BehavioralFeature::raisedException
           75     => 4,     --  RedefinableElement::redefinedElement
           68     => 14,    --  Operation::redefinedOperation
           76     => 3,     --  RedefinableElement::redefinitionContext
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package =>
          (58     => 4,     --  Namespace::elementImport
           59     => 3,     --  Namespace::importedMember
           60     => 7,     --  Namespace::member
           69     => 11,    --  Package::nestedPackage
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           61     => 6,     --  Namespace::ownedMember
           62     => 8,     --  Namespace::ownedRule
           70     => 10,    --  Package::ownedType
           63     => 5,     --  Namespace::packageImport
           71     => 12,    --  Package::packageMerge
           72     => 9,     --  Package::packagedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package_Import =>
          (53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           77     => 3,     --  Relationship::relatedElement
           51     => 4,     --  DirectedRelationship::source
           52     => 5,     --  DirectedRelationship::target
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package_Merge =>
          (53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           77     => 3,     --  Relationship::relatedElement
           51     => 4,     --  DirectedRelationship::source
           52     => 5,     --  DirectedRelationship::target
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Parameter =>
          (53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Primitive_Type =>
          (43     => 9,     --  Classifier::attribute
           58     => 4,     --  Namespace::elementImport
           44     => 10,    --  Classifier::feature
           45     => 11,    --  Classifier::general
           59     => 3,     --  Namespace::importedMember
           46     => 12,    --  Classifier::inheritedMember
           60     => 7,     --  Namespace::member
           49     => 13,    --  DataType::ownedAttribute
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           61     => 6,     --  Namespace::ownedMember
           50     => 14,    --  DataType::ownedOperation
           62     => 8,     --  Namespace::ownedRule
           63     => 5,     --  Namespace::packageImport
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Property =>
          (57     => 5,     --  Feature::featuringClassifier
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           75     => 4,     --  RedefinableElement::redefinedElement
           73     => 6,     --  Property::redefinedProperty
           76     => 3,     --  RedefinableElement::redefinitionContext
           74     => 7,     --  Property::subsettedProperty
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Tag =>
          (78     => 3,     --  Tag::element
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0));

   Member_Offset : constant
     array (AMF.Internals.Tables.CMOF_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 79 .. 135) of Natural :=
        (E_None =>
          (others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Association =>
          (79     => 8,     --  Association::isDerived
           81     => 7,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 6,     --  Type::package
           97     => 5,     --  NamedElement::qualifiedName
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Class =>
          (80     => 8,     --  Class::isAbstract
           81     => 7,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 6,     --  Type::package
           97     => 5,     --  NamedElement::qualifiedName
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Comment =>
          (82     => 2,     --  Comment::body
           85     => 1,     --  Element::owner
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Constraint =>
          (83     => 7,     --  Constraint::context
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           97     => 5,     --  NamedElement::qualifiedName
           84     => 6,     --  Constraint::specification
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Data_Type =>
          (81     => 7,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 6,     --  Type::package
           97     => 5,     --  NamedElement::qualifiedName
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Element_Import =>
          (86     => 3,     --  ElementImport::alias
           87     => 4,     --  ElementImport::importedElement
           88     => 5,     --  ElementImport::importingNamespace
           85     => 1,     --  Element::owner
           89     => 2,     --  ElementImport::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Enumeration =>
          (81     => 7,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 6,     --  Type::package
           97     => 5,     --  NamedElement::qualifiedName
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Enumeration_Literal =>
          (90     => 6,     --  EnumerationLiteral::enumeration
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           97     => 5,     --  NamedElement::qualifiedName
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Expression =>
          (95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           97     => 5,     --  NamedElement::qualifiedName
           135    => 6,     --  TypedElement::type
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Opaque_Expression =>
          (99     => 7,     --  OpaqueExpression::body
           100    => 8,     --  OpaqueExpression::language
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           97     => 5,     --  NamedElement::qualifiedName
           135    => 6,     --  TypedElement::type
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Operation =>
          (101    => 15,    --  Operation::bodyCondition
           102    => 12,    --  Operation::class
           103    => 13,    --  Operation::datatype
           130    => 6,     --  RedefinableElement::isLeaf
           104    => 8,     --  Operation::isOrdered
           105    => 7,     --  Operation::isQuery
           106    => 9,     --  Operation::isUnique
           107    => 10,    --  Operation::lower
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           97     => 5,     --  NamedElement::qualifiedName
           108    => 14,    --  Operation::type
           109    => 11,    --  Operation::upper
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package =>
          (95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           110    => 6,     --  Package::nestingPackage
           85     => 1,     --  Element::owner
           97     => 5,     --  NamedElement::qualifiedName
           111    => 7,     --  Package::uri
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package_Import =>
          (112    => 3,     --  PackageImport::importedPackage
           113    => 4,     --  PackageImport::importingNamespace
           85     => 1,     --  Element::owner
           114    => 2,     --  PackageImport::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package_Merge =>
          (115    => 3,     --  PackageMerge::mergedPackage
           85     => 1,     --  Element::owner
           116    => 2,     --  PackageMerge::receivingPackage
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Parameter =>
          (117    => 11,    --  Parameter::default
           118    => 12,    --  Parameter::direction
           91     => 7,     --  MultiplicityElement::isOrdered
           92     => 8,     --  MultiplicityElement::isUnique
           93     => 9,     --  MultiplicityElement::lower
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           119    => 13,    --  Parameter::operation
           85     => 1,     --  Element::owner
           97     => 5,     --  NamedElement::qualifiedName
           135    => 6,     --  TypedElement::type
           94     => 10,    --  MultiplicityElement::upper
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Primitive_Type =>
          (81     => 7,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 6,     --  Type::package
           97     => 5,     --  NamedElement::qualifiedName
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Property =>
          (120    => 21,    --  Property::association
           121    => 17,    --  Property::class
           122    => 20,    --  Property::datatype
           123    => 13,    --  Property::default
           124    => 14,    --  Property::isComposite
           125    => 15,    --  Property::isDerived
           126    => 16,    --  Property::isDerivedUnion
           130    => 6,     --  RedefinableElement::isLeaf
           91     => 7,     --  MultiplicityElement::isOrdered
           127    => 12,    --  Property::isReadOnly
           92     => 8,     --  MultiplicityElement::isUnique
           93     => 9,     --  MultiplicityElement::lower
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           128    => 19,    --  Property::opposite
           85     => 1,     --  Element::owner
           129    => 18,    --  Property::owningAssociation
           97     => 5,     --  NamedElement::qualifiedName
           135    => 11,    --  TypedElement::type
           94     => 10,    --  MultiplicityElement::upper
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Tag =>
          (131    => 2,     --  Tag::name
           85     => 1,     --  Element::owner
           132    => 4,     --  Tag::tagOwner
           133    => 3,     --  Tag::value
           others => 0));

end AMF.Internals.Tables.CMOF_Attribute_Mappings;
