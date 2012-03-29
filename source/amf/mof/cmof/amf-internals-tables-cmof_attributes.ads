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
with AMF.CMOF;
with Matreshka.Internals.Strings;

package AMF.Internals.Tables.CMOF_Attributes is

   function Internal_Get_Alias
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Alias
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  ElementImport => ElementImport::alias

   function Internal_Get_Annotated_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Comment => Comment::annotatedElement

   function Internal_Get_Association
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Association
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Property => Property::association

   function Internal_Get_Attribute
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Classifier::attribute
   --  Class => Classifier::attribute
   --  DataType => Classifier::attribute
   --  Enumeration => Classifier::attribute
   --  PrimitiveType => Classifier::attribute

   function Internal_Get_Body
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String;
   --  OpaqueExpression => OpaqueExpression::body

   function Internal_Get_Body
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Body
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Comment => Comment::body

   function Internal_Get_Body_Condition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Body_Condition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Operation => Operation::bodyCondition

   function Internal_Get_Class
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Class
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Operation => Operation::class
   --  Property => Property::class

   function Internal_Get_Constrained_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Constraint => Constraint::constrainedElement

   function Internal_Get_Context
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Context
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Constraint => Constraint::context

   function Internal_Get_Datatype
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Datatype
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Operation => Operation::datatype
   --  Property => Property::datatype

   function Internal_Get_Default
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Default
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Parameter => Parameter::default
   --  Property => Property::default

   function Internal_Get_Direction
    (Self : AMF.Internals.AMF_Element)
       return AMF.CMOF.CMOF_Parameter_Direction_Kind;
   procedure Internal_Set_Direction
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.CMOF.CMOF_Parameter_Direction_Kind);
   --  Parameter => Parameter::direction

   function Internal_Get_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Tag => Tag::element

   function Internal_Get_Element_Import
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Namespace::elementImport
   --  Class => Namespace::elementImport
   --  DataType => Namespace::elementImport
   --  Enumeration => Namespace::elementImport
   --  Operation => Namespace::elementImport
   --  Package => Namespace::elementImport
   --  PrimitiveType => Namespace::elementImport

   function Internal_Get_End_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Association::endType

   function Internal_Get_Enumeration
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Enumeration
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  EnumerationLiteral => EnumerationLiteral::enumeration

   function Internal_Get_Feature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Classifier::feature
   --  Class => Classifier::feature
   --  DataType => Classifier::feature
   --  Enumeration => Classifier::feature
   --  PrimitiveType => Classifier::feature

   function Internal_Get_Featuring_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Operation => Feature::featuringClassifier
   --  Property => Feature::featuringClassifier

   function Internal_Get_General
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Classifier::general
   --  Class => Classifier::general
   --  DataType => Classifier::general
   --  Enumeration => Classifier::general
   --  PrimitiveType => Classifier::general

   function Internal_Get_Imported_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Imported_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ElementImport => ElementImport::importedElement

   function Internal_Get_Imported_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Namespace::importedMember
   --  Class => Namespace::importedMember
   --  DataType => Namespace::importedMember
   --  Enumeration => Namespace::importedMember
   --  Operation => Namespace::importedMember
   --  Package => Namespace::importedMember
   --  PrimitiveType => Namespace::importedMember

   function Internal_Get_Imported_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Imported_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  PackageImport => PackageImport::importedPackage

   function Internal_Get_Importing_Namespace
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Importing_Namespace
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ElementImport => ElementImport::importingNamespace
   --  PackageImport => PackageImport::importingNamespace

   function Internal_Get_Inherited_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Classifier::inheritedMember
   --  Class => Classifier::inheritedMember
   --  DataType => Classifier::inheritedMember
   --  Enumeration => Classifier::inheritedMember
   --  PrimitiveType => Classifier::inheritedMember

   function Internal_Get_Is_Abstract
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Abstract
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Class => Class::isAbstract

   function Internal_Get_Is_Composite
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Composite
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Property => Property::isComposite

   function Internal_Get_Is_Derived
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Derived
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Association => Association::isDerived
   --  Property => Property::isDerived

   function Internal_Get_Is_Derived_Union
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Derived_Union
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Property => Property::isDerivedUnion

   function Internal_Get_Is_Final_Specialization
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Final_Specialization
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Association => Classifier::isFinalSpecialization
   --  Class => Classifier::isFinalSpecialization
   --  DataType => Classifier::isFinalSpecialization
   --  Enumeration => Classifier::isFinalSpecialization
   --  PrimitiveType => Classifier::isFinalSpecialization

   function Internal_Get_Is_Leaf
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Leaf
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Operation => RedefinableElement::isLeaf
   --  Property => RedefinableElement::isLeaf

   function Internal_Get_Is_Ordered
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Ordered
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Operation => Operation::isOrdered
   --  Parameter => MultiplicityElement::isOrdered
   --  Property => MultiplicityElement::isOrdered

   function Internal_Get_Is_Query
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Query
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Operation => Operation::isQuery

   function Internal_Get_Is_Read_Only
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Read_Only
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Property => Property::isReadOnly

   function Internal_Get_Is_Unique
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Unique
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Operation => Operation::isUnique
   --  Parameter => MultiplicityElement::isUnique
   --  Property => MultiplicityElement::isUnique

   function Internal_Get_Language
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String;
   --  OpaqueExpression => OpaqueExpression::language

   function Internal_Get_Lower
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Integer;
   procedure Internal_Set_Lower
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Integer);
   --  Operation => Operation::lower
   --  Parameter => MultiplicityElement::lower
   --  Property => MultiplicityElement::lower

   function Internal_Get_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Namespace::member
   --  Class => Namespace::member
   --  DataType => Namespace::member
   --  Enumeration => Namespace::member
   --  Operation => Namespace::member
   --  Package => Namespace::member
   --  PrimitiveType => Namespace::member

   function Internal_Get_Member_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Association::memberEnd

   function Internal_Get_Merged_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Merged_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  PackageMerge => PackageMerge::mergedPackage

   function Internal_Get_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Name
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Association => NamedElement::name
   --  Class => NamedElement::name
   --  Constraint => NamedElement::name
   --  DataType => NamedElement::name
   --  Enumeration => NamedElement::name
   --  EnumerationLiteral => NamedElement::name
   --  Expression => NamedElement::name
   --  OpaqueExpression => NamedElement::name
   --  Operation => NamedElement::name
   --  Package => NamedElement::name
   --  Parameter => NamedElement::name
   --  PrimitiveType => NamedElement::name
   --  Property => NamedElement::name
   --  Tag => Tag::name

   function Internal_Get_Namespace
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   --  Association => NamedElement::namespace
   --  Class => NamedElement::namespace
   --  Constraint => NamedElement::namespace
   --  DataType => NamedElement::namespace
   --  Enumeration => NamedElement::namespace
   --  EnumerationLiteral => NamedElement::namespace
   --  Expression => NamedElement::namespace
   --  OpaqueExpression => NamedElement::namespace
   --  Operation => NamedElement::namespace
   --  Package => NamedElement::namespace
   --  Parameter => NamedElement::namespace
   --  PrimitiveType => NamedElement::namespace
   --  Property => NamedElement::namespace

   function Internal_Get_Navigable_Owned_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Association::navigableOwnedEnd

   function Internal_Get_Nested_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Package => Package::nestedPackage

   function Internal_Get_Nesting_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Nesting_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Package => Package::nestingPackage

   function Internal_Get_Operand
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Expression => Expression::operand

   function Internal_Get_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Operation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Parameter => Parameter::operation

   function Internal_Get_Opposite
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Opposite
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Property => Property::opposite

   function Internal_Get_Owned_Attribute
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Class => Class::ownedAttribute
   --  DataType => DataType::ownedAttribute
   --  Enumeration => DataType::ownedAttribute
   --  PrimitiveType => DataType::ownedAttribute

   function Internal_Get_Owned_Comment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Element::ownedComment
   --  Class => Element::ownedComment
   --  Comment => Element::ownedComment
   --  Constraint => Element::ownedComment
   --  DataType => Element::ownedComment
   --  ElementImport => Element::ownedComment
   --  Enumeration => Element::ownedComment
   --  EnumerationLiteral => Element::ownedComment
   --  Expression => Element::ownedComment
   --  OpaqueExpression => Element::ownedComment
   --  Operation => Element::ownedComment
   --  Package => Element::ownedComment
   --  PackageImport => Element::ownedComment
   --  PackageMerge => Element::ownedComment
   --  Parameter => Element::ownedComment
   --  PrimitiveType => Element::ownedComment
   --  Property => Element::ownedComment
   --  Tag => Element::ownedComment

   function Internal_Get_Owned_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Element::ownedElement
   --  Class => Element::ownedElement
   --  Comment => Element::ownedElement
   --  Constraint => Element::ownedElement
   --  DataType => Element::ownedElement
   --  ElementImport => Element::ownedElement
   --  Enumeration => Element::ownedElement
   --  EnumerationLiteral => Element::ownedElement
   --  Expression => Element::ownedElement
   --  OpaqueExpression => Element::ownedElement
   --  Operation => Element::ownedElement
   --  Package => Element::ownedElement
   --  PackageImport => Element::ownedElement
   --  PackageMerge => Element::ownedElement
   --  Parameter => Element::ownedElement
   --  PrimitiveType => Element::ownedElement
   --  Property => Element::ownedElement
   --  Tag => Element::ownedElement

   function Internal_Get_Owned_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Association::ownedEnd

   function Internal_Get_Owned_Literal
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Enumeration => Enumeration::ownedLiteral

   function Internal_Get_Owned_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Namespace::ownedMember
   --  Class => Namespace::ownedMember
   --  DataType => Namespace::ownedMember
   --  Enumeration => Namespace::ownedMember
   --  Operation => Namespace::ownedMember
   --  Package => Namespace::ownedMember
   --  PrimitiveType => Namespace::ownedMember

   function Internal_Get_Owned_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Class => Class::ownedOperation
   --  DataType => DataType::ownedOperation
   --  Enumeration => DataType::ownedOperation
   --  PrimitiveType => DataType::ownedOperation

   function Internal_Get_Owned_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Operation => Operation::ownedParameter

   function Internal_Get_Owned_Rule
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Namespace::ownedRule
   --  Class => Namespace::ownedRule
   --  DataType => Namespace::ownedRule
   --  Enumeration => Namespace::ownedRule
   --  Operation => Namespace::ownedRule
   --  Package => Namespace::ownedRule
   --  PrimitiveType => Namespace::ownedRule

   function Internal_Get_Owned_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Package => Package::ownedType

   function Internal_Get_Owner
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   --  Association => Element::owner
   --  Class => Element::owner
   --  Comment => Element::owner
   --  Constraint => Element::owner
   --  DataType => Element::owner
   --  ElementImport => Element::owner
   --  Enumeration => Element::owner
   --  EnumerationLiteral => Element::owner
   --  Expression => Element::owner
   --  OpaqueExpression => Element::owner
   --  Operation => Element::owner
   --  Package => Element::owner
   --  PackageImport => Element::owner
   --  PackageMerge => Element::owner
   --  Parameter => Element::owner
   --  PrimitiveType => Element::owner
   --  Property => Element::owner
   --  Tag => Element::owner

   function Internal_Get_Owning_Association
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Owning_Association
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Property => Property::owningAssociation

   function Internal_Get_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Association => Type::package
   --  Class => Type::package
   --  DataType => Type::package
   --  Enumeration => Type::package
   --  PrimitiveType => Type::package

   function Internal_Get_Package_Import
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Namespace::packageImport
   --  Class => Namespace::packageImport
   --  DataType => Namespace::packageImport
   --  Enumeration => Namespace::packageImport
   --  Operation => Namespace::packageImport
   --  Package => Namespace::packageImport
   --  PrimitiveType => Namespace::packageImport

   function Internal_Get_Package_Merge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Package => Package::packageMerge

   function Internal_Get_Packaged_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Package => Package::packagedElement

   function Internal_Get_Postcondition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Operation => Operation::postcondition

   function Internal_Get_Precondition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Operation => Operation::precondition

   function Internal_Get_Qualified_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   --  Association => NamedElement::qualifiedName
   --  Class => NamedElement::qualifiedName
   --  Constraint => NamedElement::qualifiedName
   --  DataType => NamedElement::qualifiedName
   --  Enumeration => NamedElement::qualifiedName
   --  EnumerationLiteral => NamedElement::qualifiedName
   --  Expression => NamedElement::qualifiedName
   --  OpaqueExpression => NamedElement::qualifiedName
   --  Operation => NamedElement::qualifiedName
   --  Package => NamedElement::qualifiedName
   --  Parameter => NamedElement::qualifiedName
   --  PrimitiveType => NamedElement::qualifiedName
   --  Property => NamedElement::qualifiedName

   function Internal_Get_Raised_Exception
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Operation => Operation::raisedException

   function Internal_Get_Receiving_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Receiving_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  PackageMerge => PackageMerge::receivingPackage

   function Internal_Get_Redefined_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Operation => RedefinableElement::redefinedElement
   --  Property => RedefinableElement::redefinedElement

   function Internal_Get_Redefined_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Operation => Operation::redefinedOperation

   function Internal_Get_Redefined_Property
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Property => Property::redefinedProperty

   function Internal_Get_Redefinition_Context
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Operation => RedefinableElement::redefinitionContext
   --  Property => RedefinableElement::redefinitionContext

   function Internal_Get_Related_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Relationship::relatedElement
   --  ElementImport => Relationship::relatedElement
   --  PackageImport => Relationship::relatedElement
   --  PackageMerge => Relationship::relatedElement

   function Internal_Get_Source
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ElementImport => DirectedRelationship::source
   --  PackageImport => DirectedRelationship::source
   --  PackageMerge => DirectedRelationship::source

   function Internal_Get_Specification
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Specification
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Constraint => Constraint::specification

   function Internal_Get_Subsetted_Property
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Property => Property::subsettedProperty

   function Internal_Get_Super_Class
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Class => Class::superClass

   function Internal_Get_Tag_Owner
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Tag_Owner
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Tag => Tag::tagOwner

   function Internal_Get_Target
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ElementImport => DirectedRelationship::target
   --  PackageImport => DirectedRelationship::target
   --  PackageMerge => DirectedRelationship::target

   function Internal_Get_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Type
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Expression => TypedElement::type
   --  OpaqueExpression => TypedElement::type
   --  Operation => Operation::type
   --  Parameter => TypedElement::type
   --  Property => TypedElement::type

   function Internal_Get_Upper
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Unlimited_Natural;
   procedure Internal_Set_Upper
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Unlimited_Natural);
   --  Operation => Operation::upper
   --  Parameter => MultiplicityElement::upper
   --  Property => MultiplicityElement::upper

   function Internal_Get_Uri
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Uri
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Package => Package::uri

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Tag => Tag::value

   function Internal_Get_Visibility
    (Self : AMF.Internals.AMF_Element)
       return AMF.CMOF.CMOF_Visibility_Kind;
   procedure Internal_Set_Visibility
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.CMOF.CMOF_Visibility_Kind);
   --  ElementImport => ElementImport::visibility
   --  PackageImport => PackageImport::visibility

   function Internal_Get_Visibility
    (Self : AMF.Internals.AMF_Element)
       return AMF.CMOF.Optional_CMOF_Visibility_Kind;
   procedure Internal_Set_Visibility
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.CMOF.Optional_CMOF_Visibility_Kind);
   --  Association => NamedElement::visibility
   --  Class => NamedElement::visibility
   --  Constraint => NamedElement::visibility
   --  DataType => NamedElement::visibility
   --  Enumeration => NamedElement::visibility
   --  EnumerationLiteral => NamedElement::visibility
   --  Expression => NamedElement::visibility
   --  OpaqueExpression => NamedElement::visibility
   --  Operation => NamedElement::visibility
   --  Package => NamedElement::visibility
   --  Parameter => NamedElement::visibility
   --  PrimitiveType => NamedElement::visibility
   --  Property => NamedElement::visibility

end AMF.Internals.Tables.CMOF_Attributes;
