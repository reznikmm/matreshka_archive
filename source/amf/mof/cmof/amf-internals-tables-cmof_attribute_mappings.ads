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
          (43     => 9,     --  Classifier::attribute
           58     => 4,     --  Namespace::elementImport
           34     => 14,    --  Association::endType
           44     => 10,    --  Classifier::feature
           45     => 11,    --  Classifier::general
           59     => 3,     --  Namespace::importedMember
           46     => 12,    --  Classifier::inheritedMember
           60     => 7,     --  Namespace::member
           35     => 15,    --  Association::memberEnd
           36     => 16,    --  Association::navigableOwnedEnd
           53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           37     => 17,    --  Association::ownedEnd
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
           53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           61     => 6,     --  Namespace::ownedMember
           41     => 14,    --  Class::ownedOperation
           62     => 8,     --  Namespace::ownedRule
           63     => 5,     --  Namespace::packageImport
           42     => 11,    --  Class::superClass
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Comment =>
          (47     => 3,     --  Comment::annotatedElement
           53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Constraint =>
          (48     => 3,     --  Constraint::constrainedElement
           53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
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
           53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           61     => 6,     --  Namespace::ownedMember
           50     => 14,    --  DataType::ownedOperation
           62     => 8,     --  Namespace::ownedRule
           63     => 5,     --  Namespace::packageImport
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Element_Import =>
          (53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           77     => 13,    --  Relationship::relatedElement
           51     => 3,     --  DirectedRelationship::source
           52     => 4,     --  DirectedRelationship::target
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
           53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           55     => 15,    --  Enumeration::ownedLiteral
           61     => 6,     --  Namespace::ownedMember
           50     => 14,    --  DataType::ownedOperation
           62     => 8,     --  Namespace::ownedRule
           63     => 5,     --  Namespace::packageImport
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Enumeration_Literal =>
          (53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Expression =>
          (56     => 3,     --  Expression::operand
           53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Opaque_Expression =>
          (53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Operation =>
          (58     => 4,     --  Namespace::elementImport
           57     => 11,    --  Feature::featuringClassifier
           59     => 3,     --  Namespace::importedMember
           60     => 7,     --  Namespace::member
           53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           61     => 6,     --  Namespace::ownedMember
           64     => 12,    --  Operation::ownedParameter
           38     => 12,    --  BehavioralFeature::ownedParameter
           62     => 8,     --  Namespace::ownedRule
           63     => 5,     --  Namespace::packageImport
           65     => 16,    --  Operation::postcondition
           66     => 14,    --  Operation::precondition
           67     => 15,    --  Operation::raisedException
           39     => 15,    --  BehavioralFeature::raisedException
           75     => 10,    --  RedefinableElement::redefinedElement
           68     => 13,    --  Operation::redefinedOperation
           76     => 9,     --  RedefinableElement::redefinitionContext
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package =>
          (58     => 4,     --  Namespace::elementImport
           59     => 3,     --  Namespace::importedMember
           60     => 7,     --  Namespace::member
           69     => 12,    --  Package::nestedPackage
           53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           61     => 6,     --  Namespace::ownedMember
           62     => 8,     --  Namespace::ownedRule
           70     => 11,    --  Package::ownedType
           63     => 5,     --  Namespace::packageImport
           71     => 9,     --  Package::packageMerge
           72     => 10,    --  Package::packagedElement
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package_Import =>
          (53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           77     => 13,    --  Relationship::relatedElement
           51     => 3,     --  DirectedRelationship::source
           52     => 4,     --  DirectedRelationship::target
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package_Merge =>
          (53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           77     => 13,    --  Relationship::relatedElement
           51     => 3,     --  DirectedRelationship::source
           52     => 4,     --  DirectedRelationship::target
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Parameter =>
          (53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
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
           53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           61     => 6,     --  Namespace::ownedMember
           50     => 14,    --  DataType::ownedOperation
           62     => 8,     --  Namespace::ownedRule
           63     => 5,     --  Namespace::packageImport
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Property =>
          (57     => 11,    --  Feature::featuringClassifier
           53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           75     => 10,    --  RedefinableElement::redefinedElement
           73     => 3,     --  Property::redefinedProperty
           76     => 9,     --  RedefinableElement::redefinitionContext
           74     => 4,     --  Property::subsettedProperty
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Tag =>
          (78     => 3,     --  Tag::element
           53     => 1,     --  Element::ownedComment
           54     => 2,     --  Element::ownedElement
           others => 0));

   CMOF_Member_Offset : constant
     array (AMF.Internals.Tables.CMOF_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 79 .. 135) of Natural :=
        (AMF.Internals.Tables.CMOF_Types.E_None =>
          (others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Association =>
          (79     => 14,    --  Association::isDerived
           81     => 6,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 7,     --  Type::package
           97     => 5,     --  NamedElement::qualifiedName
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Class =>
          (80     => 8,     --  Class::isAbstract
           81     => 6,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 7,     --  Type::package
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
          (81     => 6,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 7,     --  Type::package
           97     => 5,     --  NamedElement::qualifiedName
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Element_Import =>
          (86     => 5,     --  ElementImport::alias
           87     => 4,     --  ElementImport::importedElement
           88     => 2,     --  ElementImport::importingNamespace
           85     => 1,     --  Element::owner
           89     => 3,     --  ElementImport::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Enumeration =>
          (81     => 6,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 7,     --  Type::package
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
          (99     => 8,     --  OpaqueExpression::body
           100    => 7,     --  OpaqueExpression::language
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           97     => 5,     --  NamedElement::qualifiedName
           135    => 6,     --  TypedElement::type
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Operation =>
          (101    => 14,    --  Operation::bodyCondition
           102    => 13,    --  Operation::class
           103    => 11,    --  Operation::datatype
           130    => 12,    --  RedefinableElement::isLeaf
           104    => 8,     --  Operation::isOrdered
           105    => 15,    --  Operation::isQuery
           106    => 9,     --  Operation::isUnique
           107    => 10,    --  Operation::lower
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           97     => 5,     --  NamedElement::qualifiedName
           108    => 6,     --  Operation::type
           109    => 7,     --  Operation::upper
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package =>
          (95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           110    => 7,     --  Package::nestingPackage
           85     => 1,     --  Element::owner
           97     => 5,     --  NamedElement::qualifiedName
           111    => 6,     --  Package::uri
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package_Import =>
          (112    => 4,     --  PackageImport::importedPackage
           113    => 2,     --  PackageImport::importingNamespace
           85     => 1,     --  Element::owner
           114    => 3,     --  PackageImport::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Package_Merge =>
          (115    => 2,     --  PackageMerge::mergedPackage
           85     => 1,     --  Element::owner
           116    => 3,     --  PackageMerge::receivingPackage
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Parameter =>
          (117    => 15,    --  Parameter::default
           118    => 11,    --  Parameter::direction
           91     => 8,     --  MultiplicityElement::isOrdered
           92     => 9,     --  MultiplicityElement::isUnique
           93     => 10,    --  MultiplicityElement::lower
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           119    => 12,    --  Parameter::operation
           85     => 1,     --  Element::owner
           97     => 5,     --  NamedElement::qualifiedName
           135    => 6,     --  TypedElement::type
           94     => 7,     --  MultiplicityElement::upper
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Primitive_Type =>
          (81     => 6,     --  Classifier::isFinalSpecialization
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           85     => 1,     --  Element::owner
           134    => 7,     --  Type::package
           97     => 5,     --  NamedElement::qualifiedName
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Property =>
          (120    => 17,    --  Property::association
           121    => 13,    --  Property::class
           122    => 11,    --  Property::datatype
           123    => 15,    --  Property::default
           124    => 20,    --  Property::isComposite
           125    => 14,    --  Property::isDerived
           126    => 19,    --  Property::isDerivedUnion
           130    => 12,    --  RedefinableElement::isLeaf
           91     => 8,     --  MultiplicityElement::isOrdered
           127    => 21,    --  Property::isReadOnly
           92     => 9,     --  MultiplicityElement::isUnique
           93     => 10,    --  MultiplicityElement::lower
           95     => 2,     --  NamedElement::name
           96     => 4,     --  NamedElement::namespace
           128    => 16,    --  Property::opposite
           85     => 1,     --  Element::owner
           129    => 18,    --  Property::owningAssociation
           97     => 5,     --  NamedElement::qualifiedName
           135    => 6,     --  TypedElement::type
           94     => 7,     --  MultiplicityElement::upper
           98     => 3,     --  NamedElement::visibility
           others => 0),
         AMF.Internals.Tables.CMOF_Types.E_Tag =>
          (131    => 2,     --  Tag::name
           85     => 1,     --  Element::owner
           132    => 4,     --  Tag::tagOwner
           133    => 3,     --  Tag::value
           others => 0));

end AMF.Internals.Tables.CMOF_Attribute_Mappings;
