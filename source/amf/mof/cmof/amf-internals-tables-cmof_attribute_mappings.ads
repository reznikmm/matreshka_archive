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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Internals.Tables.CMOF_Types;

package AMF.Internals.Tables.CMOF_Attribute_Mappings is

   pragma Preelaborate;

   CMOF_Collection_Offset : constant
     array (AMF.Internals.Tables.CMOF_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 34 .. 78)
       of AMF.Internals.AMF_Collection_Of_Element :=
        (AMF.Internals.Tables.CMOF_Types.E_None =>
          (others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Association =>
          (43     => 10,    --  Classifier::attribute
           58     => 5,     --  Namespace::elementImport
           34     => 29,    --  Association::endType
           44     => 11,    --  Classifier::feature
           45     => 12,    --  Classifier::general
           59     => 4,     --  Namespace::importedMember
           46     => 13,    --  Classifier::inheritedMember
           60     => 8,     --  Namespace::member
           35     => 30,    --  Association::memberEnd
           36     => 31,    --  Association::navigableOwnedEnd
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           37     => 28,    --  Association::ownedEnd
           61     => 7,     --  Namespace::ownedMember
           62     => 9,     --  Namespace::ownedRule
           63     => 6,     --  Namespace::packageImport
           77     => 23,    --  Relationship::relatedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Class =>
          (43     => 10,    --  Classifier::attribute
           58     => 5,     --  Namespace::elementImport
           44     => 11,    --  Classifier::feature
           45     => 12,    --  Classifier::general
           59     => 4,     --  Namespace::importedMember
           46     => 13,    --  Classifier::inheritedMember
           60     => 8,     --  Namespace::member
           40     => 14,    --  Class::ownedAttribute
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           61     => 7,     --  Namespace::ownedMember
           41     => 15,    --  Class::ownedOperation
           62     => 9,     --  Namespace::ownedRule
           63     => 6,     --  Namespace::packageImport
           42     => 12,    --  Class::superClass
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Comment =>
          (47     => 40,    --  Comment::annotatedElement
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Constraint =>
          (48     => 22,    --  Constraint::constrainedElement
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Data_Type =>
          (43     => 10,    --  Classifier::attribute
           58     => 5,     --  Namespace::elementImport
           44     => 11,    --  Classifier::feature
           45     => 12,    --  Classifier::general
           59     => 4,     --  Namespace::importedMember
           46     => 13,    --  Classifier::inheritedMember
           60     => 8,     --  Namespace::member
           49     => 14,    --  DataType::ownedAttribute
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           61     => 7,     --  Namespace::ownedMember
           50     => 15,    --  DataType::ownedOperation
           62     => 9,     --  Namespace::ownedRule
           63     => 6,     --  Namespace::packageImport
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Element_Import =>
          (53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           77     => 23,    --  Relationship::relatedElement
           51     => 24,    --  DirectedRelationship::source
           52     => 25,    --  DirectedRelationship::target
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Enumeration =>
          (43     => 10,    --  Classifier::attribute
           58     => 5,     --  Namespace::elementImport
           44     => 11,    --  Classifier::feature
           45     => 12,    --  Classifier::general
           59     => 4,     --  Namespace::importedMember
           46     => 13,    --  Classifier::inheritedMember
           60     => 8,     --  Namespace::member
           49     => 14,    --  DataType::ownedAttribute
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           55     => 16,    --  Enumeration::ownedLiteral
           61     => 7,     --  Namespace::ownedMember
           50     => 15,    --  DataType::ownedOperation
           62     => 9,     --  Namespace::ownedRule
           63     => 6,     --  Namespace::packageImport
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Enumeration_Literal =>
          (53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Expression =>
          (56     => 35,    --  Expression::operand
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Opaque_Expression =>
          (53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Operation =>
          (58     => 5,     --  Namespace::elementImport
           57     => 19,    --  Feature::featuringClassifier
           59     => 4,     --  Namespace::importedMember
           60     => 8,     --  Namespace::member
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           61     => 7,     --  Namespace::ownedMember
           64     => 20,    --  Operation::ownedParameter
           38     => 20,    --  BehavioralFeature::ownedParameter
           62     => 9,     --  Namespace::ownedRule
           63     => 6,     --  Namespace::packageImport
           65     => 34,    --  Operation::postcondition
           66     => 33,    --  Operation::precondition
           67     => 21,    --  Operation::raisedException
           39     => 21,    --  BehavioralFeature::raisedException
           75     => 18,    --  RedefinableElement::redefinedElement
           68     => 32,    --  Operation::redefinedOperation
           76     => 17,    --  RedefinableElement::redefinitionContext
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package =>
          (58     => 5,     --  Namespace::elementImport
           59     => 4,     --  Namespace::importedMember
           60     => 8,     --  Namespace::member
           69     => 38,    --  Package::nestedPackage
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           61     => 7,     --  Namespace::ownedMember
           62     => 9,     --  Namespace::ownedRule
           70     => 37,    --  Package::ownedType
           63     => 6,     --  Namespace::packageImport
           71     => 39,    --  Package::packageMerge
           72     => 36,    --  Package::packagedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package_Import =>
          (53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           77     => 23,    --  Relationship::relatedElement
           51     => 24,    --  DirectedRelationship::source
           52     => 25,    --  DirectedRelationship::target
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package_Merge =>
          (53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           77     => 23,    --  Relationship::relatedElement
           51     => 24,    --  DirectedRelationship::source
           52     => 25,    --  DirectedRelationship::target
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Parameter =>
          (53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Primitive_Type =>
          (43     => 10,    --  Classifier::attribute
           58     => 5,     --  Namespace::elementImport
           44     => 11,    --  Classifier::feature
           45     => 12,    --  Classifier::general
           59     => 4,     --  Namespace::importedMember
           46     => 13,    --  Classifier::inheritedMember
           60     => 8,     --  Namespace::member
           49     => 14,    --  DataType::ownedAttribute
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           61     => 7,     --  Namespace::ownedMember
           50     => 15,    --  DataType::ownedOperation
           62     => 9,     --  Namespace::ownedRule
           63     => 6,     --  Namespace::packageImport
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Property =>
          (57     => 19,    --  Feature::featuringClassifier
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           75     => 18,    --  RedefinableElement::redefinedElement
           73     => 26,    --  Property::redefinedProperty
           76     => 17,    --  RedefinableElement::redefinitionContext
           74     => 27,    --  Property::subsettedProperty
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Tag =>
          (78     => 3,     --  Tag::element
           53     => 2,     --  Element::ownedComment
           54     => 1,     --  Element::ownedElement
           others => 0));

   CMOF_Member_Offset : constant
     array (AMF.Internals.Tables.CMOF_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 79 .. 135) of Natural :=
        (AMF.Internals.Tables.CMOF_Types.E_None =>
          (others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Association =>
          (79     => 27,    --  Association::isDerived
           81     => 9,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 6,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 8,     --  Type::package
           97     => 7,     --  NamedElement::qualifiedName
           98     => 5,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Class =>
          (80     => 10,    --  Class::isAbstract
           81     => 9,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 6,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 8,     --  Type::package
           97     => 7,     --  NamedElement::qualifiedName
           98     => 5,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Comment =>
          (82     => 43,    --  Comment::body
           85     => 1,     --  Element::owner
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Constraint =>
          (83     => 14,    --  Constraint::context
           95     => 2,     --  NamedElement::name
           96     => 6,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           97     => 7,     --  NamedElement::qualifiedName
           84     => 13,    --  Constraint::specification
           98     => 5,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Data_Type =>
          (81     => 9,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 6,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 8,     --  Type::package
           97     => 7,     --  NamedElement::qualifiedName
           98     => 5,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Element_Import =>
          (86     => 16,    --  ElementImport::alias
           87     => 17,    --  ElementImport::importedElement
           88     => 18,    --  ElementImport::importingNamespace
           85     => 1,     --  Element::owner
           89     => 15,    --  ElementImport::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Enumeration =>
          (81     => 9,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 6,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 8,     --  Type::package
           97     => 7,     --  NamedElement::qualifiedName
           98     => 5,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Enumeration_Literal =>
          (90     => 12,    --  EnumerationLiteral::enumeration
           95     => 2,     --  NamedElement::name
           96     => 6,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           97     => 7,     --  NamedElement::qualifiedName
           98     => 5,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Expression =>
          (95     => 2,     --  NamedElement::name
           96     => 6,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           97     => 7,     --  NamedElement::qualifiedName
           135    => 23,    --  TypedElement::type
           98     => 5,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Opaque_Expression =>
          (99     => 35,    --  OpaqueExpression::body
           100    => 36,    --  OpaqueExpression::language
           95     => 2,     --  NamedElement::name
           96     => 6,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           97     => 7,     --  NamedElement::qualifiedName
           135    => 23,    --  TypedElement::type
           98     => 5,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Operation =>
          (101    => 40,    --  Operation::bodyCondition
           102    => 29,    --  Operation::class
           103    => 32,    --  Operation::datatype
           130    => 11,    --  RedefinableElement::isLeaf
           104    => 19,    --  Operation::isOrdered
           105    => 39,    --  Operation::isQuery
           106    => 20,    --  Operation::isUnique
           107    => 21,    --  Operation::lower
           95     => 2,     --  NamedElement::name
           96     => 6,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           97     => 7,     --  NamedElement::qualifiedName
           108    => 23,    --  Operation::type
           109    => 22,    --  Operation::upper
           98     => 5,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package =>
          (95     => 2,     --  NamedElement::name
           96     => 6,     --  NamedElement::namespace
           110    => 41,    --  Package::nestingPackage
           85     => 1,     --  Element::owner
           97     => 7,     --  NamedElement::qualifiedName
           111    => 42,    --  Package::uri
           98     => 5,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package_Import =>
          (112    => 34,    --  PackageImport::importedPackage
           113    => 18,    --  PackageImport::importingNamespace
           85     => 1,     --  Element::owner
           114    => 15,    --  PackageImport::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package_Merge =>
          (115    => 38,    --  PackageMerge::mergedPackage
           85     => 1,     --  Element::owner
           116    => 37,    --  PackageMerge::receivingPackage
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Parameter =>
          (117    => 25,    --  Parameter::default
           118    => 44,    --  Parameter::direction
           91     => 19,    --  MultiplicityElement::isOrdered
           92     => 20,    --  MultiplicityElement::isUnique
           93     => 21,    --  MultiplicityElement::lower
           95     => 2,     --  NamedElement::name
           96     => 6,     --  NamedElement::namespace
           119    => 45,    --  Parameter::operation
           85     => 1,     --  Element::owner
           97     => 7,     --  NamedElement::qualifiedName
           135    => 23,    --  TypedElement::type
           94     => 22,    --  MultiplicityElement::upper
           98     => 5,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Primitive_Type =>
          (81     => 9,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 6,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 8,     --  Type::package
           97     => 7,     --  NamedElement::qualifiedName
           98     => 5,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Property =>
          (120    => 33,    --  Property::association
           121    => 29,    --  Property::class
           122    => 32,    --  Property::datatype
           123    => 25,    --  Property::default
           124    => 26,    --  Property::isComposite
           125    => 27,    --  Property::isDerived
           126    => 28,    --  Property::isDerivedUnion
           130    => 11,    --  RedefinableElement::isLeaf
           91     => 19,    --  MultiplicityElement::isOrdered
           127    => 24,    --  Property::isReadOnly
           92     => 20,    --  MultiplicityElement::isUnique
           93     => 21,    --  MultiplicityElement::lower
           95     => 2,     --  NamedElement::name
           96     => 6,     --  NamedElement::namespace
           128    => 31,    --  Property::opposite
           85     => 1,     --  Element::owner
           129    => 30,    --  Property::owningAssociation
           97     => 7,     --  NamedElement::qualifiedName
           135    => 23,    --  TypedElement::type
           94     => 22,    --  MultiplicityElement::upper
           98     => 5,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Tag =>
          (131    => 2,     --  Tag::name
           85     => 1,     --  Element::owner
           132    => 4,     --  Tag::tagOwner
           133    => 3,     --  Tag::value
           others => 0));

end AMF.Internals.Tables.CMOF_Attribute_Mappings;
