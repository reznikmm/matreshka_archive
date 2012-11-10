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
with AMF.Internals.Links;
with AMF.Internals.Tables.CMOF_Element_Table;
with AMF.Internals.Tables.CMOF_Metamodel;
with AMF.Internals.Tables.CMOF_Notification;
with AMF.Internals.Tables.CMOF_Types;

package body AMF.Internals.Tables.CMOF_Attributes is

   use type Matreshka.Internals.Strings.Shared_String_Access;

   --  Association
   --
   --     13  Association::isDerived
   --     7  Classifier::isFinalSpecialization
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     6  Type::package
   --     5  NamedElement::qualifiedName
   --     3  NamedElement::visibility
   --
   --     9  Classifier::attribute
   --     4  Namespace::elementImport
   --     15  Association::endType
   --     10  Classifier::feature
   --     11  Classifier::general
   --     3  Namespace::importedMember
   --     12  Classifier::inheritedMember
   --     7  Namespace::member
   --     16  Association::memberEnd
   --     17  Association::navigableOwnedEnd
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     14  Association::ownedEnd
   --     6  Namespace::ownedMember
   --     8  Namespace::ownedRule
   --     5  Namespace::packageImport
   --     13  Relationship::relatedElement

   --  Class
   --
   --     8  Class::isAbstract
   --     7  Classifier::isFinalSpecialization
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     6  Type::package
   --     5  NamedElement::qualifiedName
   --     3  NamedElement::visibility
   --
   --     9  Classifier::attribute
   --     4  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     3  Namespace::importedMember
   --     12  Classifier::inheritedMember
   --     7  Namespace::member
   --     13  Class::ownedAttribute
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     6  Namespace::ownedMember
   --     14  Class::ownedOperation
   --     8  Namespace::ownedRule
   --     5  Namespace::packageImport
   --     11  Class::superClass

   --  Comment
   --
   --     2  Comment::body
   --     1  Element::owner
   --
   --     3  Comment::annotatedElement
   --     2  Element::ownedComment
   --     1  Element::ownedElement

   --  Constraint
   --
   --     7  Constraint::context
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  Constraint::specification
   --     3  NamedElement::visibility
   --
   --     3  Constraint::constrainedElement
   --     2  Element::ownedComment
   --     1  Element::ownedElement

   --  DataType
   --
   --     7  Classifier::isFinalSpecialization
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     6  Type::package
   --     5  NamedElement::qualifiedName
   --     3  NamedElement::visibility
   --
   --     9  Classifier::attribute
   --     4  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     3  Namespace::importedMember
   --     12  Classifier::inheritedMember
   --     7  Namespace::member
   --     13  DataType::ownedAttribute
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     6  Namespace::ownedMember
   --     14  DataType::ownedOperation
   --     8  Namespace::ownedRule
   --     5  Namespace::packageImport

   --  ElementImport
   --
   --     4  ElementImport::alias
   --     5  ElementImport::importedElement
   --     3  ElementImport::importingNamespace
   --     1  Element::owner
   --     2  ElementImport::visibility
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     13  Relationship::relatedElement
   --     3  DirectedRelationship::source
   --     4  DirectedRelationship::target

   --  Enumeration
   --
   --     7  Classifier::isFinalSpecialization
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     6  Type::package
   --     5  NamedElement::qualifiedName
   --     3  NamedElement::visibility
   --
   --     9  Classifier::attribute
   --     4  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     3  Namespace::importedMember
   --     12  Classifier::inheritedMember
   --     7  Namespace::member
   --     13  DataType::ownedAttribute
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     15  Enumeration::ownedLiteral
   --     6  Namespace::ownedMember
   --     14  DataType::ownedOperation
   --     8  Namespace::ownedRule
   --     5  Namespace::packageImport

   --  EnumerationLiteral
   --
   --     6  EnumerationLiteral::enumeration
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     3  NamedElement::visibility
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement

   --  Expression
   --
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  TypedElement::type
   --     3  NamedElement::visibility
   --
   --     3  Expression::operand
   --     2  Element::ownedComment
   --     1  Element::ownedElement

   --  OpaqueExpression
   --
   --     7  OpaqueExpression::body
   --     8  OpaqueExpression::language
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  TypedElement::type
   --     3  NamedElement::visibility
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement

   --  Operation
   --
   --     13  Operation::bodyCondition
   --     14  Operation::class
   --     15  Operation::datatype
   --     11  RedefinableElement::isLeaf
   --     7  Operation::isOrdered
   --     12  Operation::isQuery
   --     8  Operation::isUnique
   --     9  Operation::lower
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  Operation::type
   --     10  Operation::upper
   --     3  NamedElement::visibility
   --
   --     4  Namespace::elementImport
   --     11  Feature::featuringClassifier
   --     3  Namespace::importedMember
   --     7  Namespace::member
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     6  Namespace::ownedMember
   --     12  Operation::ownedParameter
   --     12  BehavioralFeature::ownedParameter
   --     8  Namespace::ownedRule
   --     5  Namespace::packageImport
   --     16  Operation::postcondition
   --     15  Operation::precondition
   --     13  Operation::raisedException
   --     13  BehavioralFeature::raisedException
   --     10  RedefinableElement::redefinedElement
   --     14  Operation::redefinedOperation
   --     9  RedefinableElement::redefinitionContext

   --  Package
   --
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     6  Package::nestingPackage
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  Package::uri
   --     3  NamedElement::visibility
   --
   --     4  Namespace::elementImport
   --     3  Namespace::importedMember
   --     7  Namespace::member
   --     11  Package::nestedPackage
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     6  Namespace::ownedMember
   --     8  Namespace::ownedRule
   --     10  Package::ownedType
   --     5  Namespace::packageImport
   --     12  Package::packageMerge
   --     9  Package::packagedElement

   --  PackageImport
   --
   --     4  PackageImport::importedPackage
   --     3  PackageImport::importingNamespace
   --     1  Element::owner
   --     2  PackageImport::visibility
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     13  Relationship::relatedElement
   --     3  DirectedRelationship::source
   --     4  DirectedRelationship::target

   --  PackageMerge
   --
   --     3  PackageMerge::mergedPackage
   --     1  Element::owner
   --     2  PackageMerge::receivingPackage
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     13  Relationship::relatedElement
   --     3  DirectedRelationship::source
   --     4  DirectedRelationship::target

   --  Parameter
   --
   --     12  Parameter::default
   --     11  Parameter::direction
   --     7  MultiplicityElement::isOrdered
   --     8  MultiplicityElement::isUnique
   --     9  MultiplicityElement::lower
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     13  Parameter::operation
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  TypedElement::type
   --     10  MultiplicityElement::upper
   --     3  NamedElement::visibility
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement

   --  PrimitiveType
   --
   --     7  Classifier::isFinalSpecialization
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     6  Type::package
   --     5  NamedElement::qualifiedName
   --     3  NamedElement::visibility
   --
   --     9  Classifier::attribute
   --     4  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     3  Namespace::importedMember
   --     12  Classifier::inheritedMember
   --     7  Namespace::member
   --     13  DataType::ownedAttribute
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     6  Namespace::ownedMember
   --     14  DataType::ownedOperation
   --     8  Namespace::ownedRule
   --     5  Namespace::packageImport

   --  Property
   --
   --     21  Property::association
   --     14  Property::class
   --     15  Property::datatype
   --     12  Property::default
   --     17  Property::isComposite
   --     13  Property::isDerived
   --     18  Property::isDerivedUnion
   --     11  RedefinableElement::isLeaf
   --     7  MultiplicityElement::isOrdered
   --     16  Property::isReadOnly
   --     8  MultiplicityElement::isUnique
   --     9  MultiplicityElement::lower
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     20  Property::opposite
   --     1  Element::owner
   --     19  Property::owningAssociation
   --     5  NamedElement::qualifiedName
   --     6  TypedElement::type
   --     10  MultiplicityElement::upper
   --     3  NamedElement::visibility
   --
   --     11  Feature::featuringClassifier
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     10  RedefinableElement::redefinedElement
   --     3  Property::redefinedProperty
   --     9  RedefinableElement::redefinitionContext
   --     4  Property::subsettedProperty

   --  Tag
   --
   --     2  Tag::name
   --     1  Element::owner
   --     4  Tag::tagOwner
   --     3  Tag::value
   --
   --     3  Tag::element
   --     2  Element::ownedComment
   --     1  Element::ownedElement

   ------------------------
   -- Internal_Get_Alias --
   ------------------------

   function Internal_Get_Alias
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (4).String_Value;
   end Internal_Get_Alias;

   ------------------------------------
   -- Internal_Get_Annotated_Element --
   ------------------------------------

   function Internal_Get_Annotated_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Annotated_Element;

   ------------------------------
   -- Internal_Get_Association --
   ------------------------------

   function Internal_Get_Association
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (21).Link, Self);
   end Internal_Get_Association;

   ----------------------------
   -- Internal_Get_Attribute --
   ----------------------------

   function Internal_Get_Attribute
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Attribute;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (7).String_Collection;
   end Internal_Get_Body;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (2).String_Value;
   end Internal_Get_Body;

   ---------------------------------
   -- Internal_Get_Body_Condition --
   ---------------------------------

   function Internal_Get_Body_Condition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (13).Link, Self);
   end Internal_Get_Body_Condition;

   ------------------------
   -- Internal_Get_Class --
   ------------------------

   function Internal_Get_Class
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (14).Link, Self);
   end Internal_Get_Class;

   --------------------------------------
   -- Internal_Get_Constrained_Element --
   --------------------------------------

   function Internal_Get_Constrained_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Constrained_Element;

   --------------------------
   -- Internal_Get_Context --
   --------------------------

   function Internal_Get_Context
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Context;

   ---------------------------
   -- Internal_Get_Datatype --
   ---------------------------

   function Internal_Get_Datatype
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (15).Link, Self);
   end Internal_Get_Datatype;

   --------------------------
   -- Internal_Get_Default --
   --------------------------

   function Internal_Get_Default
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (12).String_Value;
   end Internal_Get_Default;

   ----------------------------
   -- Internal_Get_Direction --
   ----------------------------

   function Internal_Get_Direction
    (Self : AMF.Internals.AMF_Element)
       return AMF.CMOF.CMOF_Parameter_Direction_Kind is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (11).Parameter_Direction_Kind_Value;
   end Internal_Get_Direction;

   --------------------------
   -- Internal_Get_Element --
   --------------------------

   function Internal_Get_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Element;

   ---------------------------------
   -- Internal_Get_Element_Import --
   ---------------------------------

   function Internal_Get_Element_Import
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Element_Import;

   ---------------------------
   -- Internal_Get_End_Type --
   ---------------------------

   function Internal_Get_End_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 15;
   end Internal_Get_End_Type;

   ------------------------------
   -- Internal_Get_Enumeration --
   ------------------------------

   function Internal_Get_Enumeration
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (6).Link, Self);
   end Internal_Get_Enumeration;

   --------------------------
   -- Internal_Get_Feature --
   --------------------------

   function Internal_Get_Feature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 10;
   end Internal_Get_Feature;

   ---------------------------------------
   -- Internal_Get_Featuring_Classifier --
   ---------------------------------------

   function Internal_Get_Featuring_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 11;
   end Internal_Get_Featuring_Classifier;

   --------------------------
   -- Internal_Get_General --
   --------------------------

   function Internal_Get_General
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 11;
   end Internal_Get_General;

   -----------------------------------
   -- Internal_Get_Imported_Element --
   -----------------------------------

   function Internal_Get_Imported_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (5).Link, Self);
   end Internal_Get_Imported_Element;

   ----------------------------------
   -- Internal_Get_Imported_Member --
   ----------------------------------

   function Internal_Get_Imported_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Imported_Member;

   -----------------------------------
   -- Internal_Get_Imported_Package --
   -----------------------------------

   function Internal_Get_Imported_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (4).Link, Self);
   end Internal_Get_Imported_Package;

   --------------------------------------
   -- Internal_Get_Importing_Namespace --
   --------------------------------------

   function Internal_Get_Importing_Namespace
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (3).Link, Self);
   end Internal_Get_Importing_Namespace;

   -----------------------------------
   -- Internal_Get_Inherited_Member --
   -----------------------------------

   function Internal_Get_Inherited_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_Inherited_Member;

   ------------------------------
   -- Internal_Get_Is_Abstract --
   ------------------------------

   function Internal_Get_Is_Abstract
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (8).Boolean_Value;
   end Internal_Get_Is_Abstract;

   -------------------------------
   -- Internal_Get_Is_Composite --
   -------------------------------

   function Internal_Get_Is_Composite
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (17).Boolean_Value;
   end Internal_Get_Is_Composite;

   -----------------------------
   -- Internal_Get_Is_Derived --
   -----------------------------

   function Internal_Get_Is_Derived
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (13).Boolean_Value;
   end Internal_Get_Is_Derived;

   -----------------------------------
   -- Internal_Get_Is_Derived_Union --
   -----------------------------------

   function Internal_Get_Is_Derived_Union
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (18).Boolean_Value;
   end Internal_Get_Is_Derived_Union;

   ------------------------------------------
   -- Internal_Get_Is_Final_Specialization --
   ------------------------------------------

   function Internal_Get_Is_Final_Specialization
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (7).Boolean_Value;
   end Internal_Get_Is_Final_Specialization;

   --------------------------
   -- Internal_Get_Is_Leaf --
   --------------------------

   function Internal_Get_Is_Leaf
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (11).Boolean_Value;
   end Internal_Get_Is_Leaf;

   -----------------------------
   -- Internal_Get_Is_Ordered --
   -----------------------------

   function Internal_Get_Is_Ordered
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (7).Boolean_Value;
   end Internal_Get_Is_Ordered;

   ---------------------------
   -- Internal_Get_Is_Query --
   ---------------------------

   function Internal_Get_Is_Query
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (12).Boolean_Value;
   end Internal_Get_Is_Query;

   -------------------------------
   -- Internal_Get_Is_Read_Only --
   -------------------------------

   function Internal_Get_Is_Read_Only
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (16).Boolean_Value;
   end Internal_Get_Is_Read_Only;

   ----------------------------
   -- Internal_Get_Is_Unique --
   ----------------------------

   function Internal_Get_Is_Unique
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (8).Boolean_Value;
   end Internal_Get_Is_Unique;

   ---------------------------
   -- Internal_Get_Language --
   ---------------------------

   function Internal_Get_Language
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (8).String_Collection;
   end Internal_Get_Language;

   ------------------------
   -- Internal_Get_Lower --
   ------------------------

   function Internal_Get_Lower
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Integer is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (9).Integer_Holder;
   end Internal_Get_Lower;

   -------------------------
   -- Internal_Get_Member --
   -------------------------

   function Internal_Get_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 7;
   end Internal_Get_Member;

   -----------------------------
   -- Internal_Get_Member_End --
   -----------------------------

   function Internal_Get_Member_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 16;
   end Internal_Get_Member_End;

   ---------------------------------
   -- Internal_Get_Merged_Package --
   ---------------------------------

   function Internal_Get_Merged_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (3).Link, Self);
   end Internal_Get_Merged_Package;

   -----------------------
   -- Internal_Get_Name --
   -----------------------

   function Internal_Get_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (2).String_Value;
   end Internal_Get_Name;

   ----------------------------
   -- Internal_Get_Namespace --
   ----------------------------

   function Internal_Get_Namespace
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (4).Link, Self);
   end Internal_Get_Namespace;

   --------------------------------------
   -- Internal_Get_Navigable_Owned_End --
   --------------------------------------

   function Internal_Get_Navigable_Owned_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 17;
   end Internal_Get_Navigable_Owned_End;

   ---------------------------------
   -- Internal_Get_Nested_Package --
   ---------------------------------

   function Internal_Get_Nested_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 11;
   end Internal_Get_Nested_Package;

   ----------------------------------
   -- Internal_Get_Nesting_Package --
   ----------------------------------

   function Internal_Get_Nesting_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (6).Link, Self);
   end Internal_Get_Nesting_Package;

   --------------------------
   -- Internal_Get_Operand --
   --------------------------

   function Internal_Get_Operand
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Operand;

   ----------------------------
   -- Internal_Get_Operation --
   ----------------------------

   function Internal_Get_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (13).Link, Self);
   end Internal_Get_Operation;

   ---------------------------
   -- Internal_Get_Opposite --
   ---------------------------

   function Internal_Get_Opposite
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (20).Link, Self);
   end Internal_Get_Opposite;

   ----------------------------------
   -- Internal_Get_Owned_Attribute --
   ----------------------------------

   function Internal_Get_Owned_Attribute
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 13;
   end Internal_Get_Owned_Attribute;

   --------------------------------
   -- Internal_Get_Owned_Comment --
   --------------------------------

   function Internal_Get_Owned_Comment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 2;
   end Internal_Get_Owned_Comment;

   --------------------------------
   -- Internal_Get_Owned_Element --
   --------------------------------

   function Internal_Get_Owned_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 1;
   end Internal_Get_Owned_Element;

   ----------------------------
   -- Internal_Get_Owned_End --
   ----------------------------

   function Internal_Get_Owned_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 14;
   end Internal_Get_Owned_End;

   --------------------------------
   -- Internal_Get_Owned_Literal --
   --------------------------------

   function Internal_Get_Owned_Literal
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 15;
   end Internal_Get_Owned_Literal;

   -------------------------------
   -- Internal_Get_Owned_Member --
   -------------------------------

   function Internal_Get_Owned_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_Owned_Member;

   ----------------------------------
   -- Internal_Get_Owned_Operation --
   ----------------------------------

   function Internal_Get_Owned_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 14;
   end Internal_Get_Owned_Operation;

   ----------------------------------
   -- Internal_Get_Owned_Parameter --
   ----------------------------------

   function Internal_Get_Owned_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_Owned_Parameter;

   -----------------------------
   -- Internal_Get_Owned_Rule --
   -----------------------------

   function Internal_Get_Owned_Rule
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_Owned_Rule;

   -----------------------------
   -- Internal_Get_Owned_Type --
   -----------------------------

   function Internal_Get_Owned_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 10;
   end Internal_Get_Owned_Type;

   ------------------------
   -- Internal_Get_Owner --
   ------------------------

   function Internal_Get_Owner
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Owner;

   -------------------------------------
   -- Internal_Get_Owning_Association --
   -------------------------------------

   function Internal_Get_Owning_Association
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (19).Link, Self);
   end Internal_Get_Owning_Association;

   --------------------------
   -- Internal_Get_Package --
   --------------------------

   function Internal_Get_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (6).Link, Self);
   end Internal_Get_Package;

   ---------------------------------
   -- Internal_Get_Package_Import --
   ---------------------------------

   function Internal_Get_Package_Import
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 5;
   end Internal_Get_Package_Import;

   --------------------------------
   -- Internal_Get_Package_Merge --
   --------------------------------

   function Internal_Get_Package_Merge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_Package_Merge;

   -----------------------------------
   -- Internal_Get_Packaged_Element --
   -----------------------------------

   function Internal_Get_Packaged_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Packaged_Element;

   --------------------------------
   -- Internal_Get_Postcondition --
   --------------------------------

   function Internal_Get_Postcondition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 16;
   end Internal_Get_Postcondition;

   -------------------------------
   -- Internal_Get_Precondition --
   -------------------------------

   function Internal_Get_Precondition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 15;
   end Internal_Get_Precondition;

   ---------------------------------
   -- Internal_Get_Qualified_Name --
   ---------------------------------

   function Internal_Get_Qualified_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (5).String_Value;
   end Internal_Get_Qualified_Name;

   -----------------------------------
   -- Internal_Get_Raised_Exception --
   -----------------------------------

   function Internal_Get_Raised_Exception
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 13;
   end Internal_Get_Raised_Exception;

   ------------------------------------
   -- Internal_Get_Receiving_Package --
   ------------------------------------

   function Internal_Get_Receiving_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Receiving_Package;

   ------------------------------------
   -- Internal_Get_Redefined_Element --
   ------------------------------------

   function Internal_Get_Redefined_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 10;
   end Internal_Get_Redefined_Element;

   --------------------------------------
   -- Internal_Get_Redefined_Operation --
   --------------------------------------

   function Internal_Get_Redefined_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 14;
   end Internal_Get_Redefined_Operation;

   -------------------------------------
   -- Internal_Get_Redefined_Property --
   -------------------------------------

   function Internal_Get_Redefined_Property
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Redefined_Property;

   ---------------------------------------
   -- Internal_Get_Redefinition_Context --
   ---------------------------------------

   function Internal_Get_Redefinition_Context
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Redefinition_Context;

   ----------------------------------
   -- Internal_Get_Related_Element --
   ----------------------------------

   function Internal_Get_Related_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 13;
   end Internal_Get_Related_Element;

   -------------------------
   -- Internal_Get_Source --
   -------------------------

   function Internal_Get_Source
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Source;

   --------------------------------
   -- Internal_Get_Specification --
   --------------------------------

   function Internal_Get_Specification
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (6).Link, Self);
   end Internal_Get_Specification;

   -------------------------------------
   -- Internal_Get_Subsetted_Property --
   -------------------------------------

   function Internal_Get_Subsetted_Property
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Subsetted_Property;

   ------------------------------
   -- Internal_Get_Super_Class --
   ------------------------------

   function Internal_Get_Super_Class
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 11;
   end Internal_Get_Super_Class;

   ----------------------------
   -- Internal_Get_Tag_Owner --
   ----------------------------

   function Internal_Get_Tag_Owner
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (4).Link, Self);
   end Internal_Get_Tag_Owner;

   -------------------------
   -- Internal_Get_Target --
   -------------------------

   function Internal_Get_Target
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Target;

   -----------------------
   -- Internal_Get_Type --
   -----------------------

   function Internal_Get_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (6).Link, Self);
   end Internal_Get_Type;

   ------------------------
   -- Internal_Get_Upper --
   ------------------------

   function Internal_Get_Upper
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Unlimited_Natural is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (10).Unlimited_Natural_Holder;
   end Internal_Get_Upper;

   ----------------------
   -- Internal_Get_Uri --
   ----------------------

   function Internal_Get_Uri
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (7).String_Value;
   end Internal_Get_Uri;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (3).String_Value;
   end Internal_Get_Value;

   -----------------------------
   -- Internal_Get_Visibility --
   -----------------------------

   function Internal_Get_Visibility
    (Self : AMF.Internals.AMF_Element)
       return AMF.CMOF.CMOF_Visibility_Kind is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (2).Visibility_Kind_Value;
   end Internal_Get_Visibility;

   -----------------------------
   -- Internal_Get_Visibility --
   -----------------------------

   function Internal_Get_Visibility
    (Self : AMF.Internals.AMF_Element)
       return AMF.CMOF.Optional_CMOF_Visibility_Kind is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (3).Visibility_Kind_Holder;
   end Internal_Get_Visibility;

   ------------------------
   -- Internal_Set_Alias --
   ------------------------

   procedure Internal_Set_Alias
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (4).String_Value;

      CMOF_Element_Table.Table (Self).Member (4).String_Value := To;

      if CMOF_Element_Table.Table (Self).Member (4).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (CMOF_Element_Table.Table (Self).Member (4).String_Value);
      end if;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Import_Alias, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Alias;

   ------------------------------
   -- Internal_Set_Association --
   ------------------------------

   procedure Internal_Set_Association
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Association;

   -----------------------
   -- Internal_Set_Body --
   -----------------------

   procedure Internal_Set_Body
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (2).String_Value;

      CMOF_Element_Table.Table (Self).Member (2).String_Value := To;

      if CMOF_Element_Table.Table (Self).Member (2).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (CMOF_Element_Table.Table (Self).Member (2).String_Value);
      end if;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Body, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Body;

   ---------------------------------
   -- Internal_Set_Body_Condition --
   ---------------------------------

   procedure Internal_Set_Body_Condition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Operation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Body_Condition;

   ------------------------
   -- Internal_Set_Class --
   ------------------------

   procedure Internal_Set_Class
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Operation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
              To,
              Self);

         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Class;

   --------------------------
   -- Internal_Set_Context --
   --------------------------

   procedure Internal_Set_Context
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Context;

   ---------------------------
   -- Internal_Set_Datatype --
   ---------------------------

   procedure Internal_Set_Datatype
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Operation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Datatype,
              To,
              Self);

         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Datatype,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Datatype;

   --------------------------
   -- Internal_Set_Default --
   --------------------------

   procedure Internal_Set_Default
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (12).String_Value;

      CMOF_Element_Table.Table (Self).Member (12).String_Value := To;

      if CMOF_Element_Table.Table (Self).Member (12).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (CMOF_Element_Table.Table (Self).Member (12).String_Value);
      end if;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Default, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Default;

   ----------------------------
   -- Internal_Set_Direction --
   ----------------------------

   procedure Internal_Set_Direction
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.CMOF.CMOF_Parameter_Direction_Kind)
   is
      Old : AMF.CMOF.CMOF_Parameter_Direction_Kind;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (11).Parameter_Direction_Kind_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (11).Parameter_Direction_Kind_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Direction, Old, To);
   end Internal_Set_Direction;

   ------------------------------
   -- Internal_Set_Enumeration --
   ------------------------------

   procedure Internal_Set_Enumeration
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Enumeration_Literal =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Enumeration;

   -----------------------------------
   -- Internal_Set_Imported_Element --
   -----------------------------------

   procedure Internal_Set_Imported_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Element_Import =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Imported_Element_Element_Import,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Imported_Element;

   -----------------------------------
   -- Internal_Set_Imported_Package --
   -----------------------------------

   procedure Internal_Set_Imported_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Package_Import =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Imported_Package_Package_Import,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Imported_Package;

   --------------------------------------
   -- Internal_Set_Importing_Namespace --
   --------------------------------------

   procedure Internal_Set_Importing_Namespace
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Element_Import =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Import_Element_Import_Importing_Namespace,
              To,
              Self);

         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Package_Import =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Import_Package_Import_Importing_Namespace,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Importing_Namespace;

   ------------------------------
   -- Internal_Set_Is_Abstract --
   ------------------------------

   procedure Internal_Set_Is_Abstract
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (8).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (8).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Is_Abstract, Old, To);
   end Internal_Set_Is_Abstract;

   -------------------------------
   -- Internal_Set_Is_Composite --
   -------------------------------

   procedure Internal_Set_Is_Composite
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (17).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (17).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Is_Composite, Old, To);
   end Internal_Set_Is_Composite;

   -----------------------------
   -- Internal_Set_Is_Derived --
   -----------------------------

   procedure Internal_Set_Is_Derived
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (13).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (13).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Is_Derived, Old, To);
   end Internal_Set_Is_Derived;

   -----------------------------------
   -- Internal_Set_Is_Derived_Union --
   -----------------------------------

   procedure Internal_Set_Is_Derived_Union
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (18).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (18).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Is_Derived_Union, Old, To);
   end Internal_Set_Is_Derived_Union;

   ------------------------------------------
   -- Internal_Set_Is_Final_Specialization --
   ------------------------------------------

   procedure Internal_Set_Is_Final_Specialization
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (7).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (7).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Is_Final_Specialization, Old, To);
   end Internal_Set_Is_Final_Specialization;

   --------------------------
   -- Internal_Set_Is_Leaf --
   --------------------------

   procedure Internal_Set_Is_Leaf
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (11).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (11).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Is_Leaf, Old, To);
   end Internal_Set_Is_Leaf;

   -----------------------------
   -- Internal_Set_Is_Ordered --
   -----------------------------

   procedure Internal_Set_Is_Ordered
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (7).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (7).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Is_Ordered, Old, To);
   end Internal_Set_Is_Ordered;

   ---------------------------
   -- Internal_Set_Is_Query --
   ---------------------------

   procedure Internal_Set_Is_Query
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (12).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (12).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Is_Query, Old, To);
   end Internal_Set_Is_Query;

   -------------------------------
   -- Internal_Set_Is_Read_Only --
   -------------------------------

   procedure Internal_Set_Is_Read_Only
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (16).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (16).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Is_Read_Only, Old, To);
   end Internal_Set_Is_Read_Only;

   ----------------------------
   -- Internal_Set_Is_Unique --
   ----------------------------

   procedure Internal_Set_Is_Unique
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (8).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (8).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Is_Unique, Old, To);
   end Internal_Set_Is_Unique;

   ------------------------
   -- Internal_Set_Lower --
   ------------------------

   procedure Internal_Set_Lower
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Integer)
   is
      Old : AMF.Optional_Integer;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (9).Integer_Holder;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (9).Integer_Holder := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Lower, Old, To);
   end Internal_Set_Lower;

   ---------------------------------
   -- Internal_Set_Merged_Package --
   ---------------------------------

   procedure Internal_Set_Merged_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Package_Merge =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Merged_Package_Package_Merge,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Merged_Package;

   -----------------------
   -- Internal_Set_Name --
   -----------------------

   procedure Internal_Set_Name
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (2).String_Value;

      CMOF_Element_Table.Table (Self).Member (2).String_Value := To;

      if CMOF_Element_Table.Table (Self).Member (2).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (CMOF_Element_Table.Table (Self).Member (2).String_Value);
      end if;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Name, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Name;

   ----------------------------------
   -- Internal_Set_Nesting_Package --
   ----------------------------------

   procedure Internal_Set_Nesting_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Package =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Nested_Package_Nesting_Package,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Nesting_Package;

   ----------------------------
   -- Internal_Set_Operation --
   ----------------------------

   procedure Internal_Set_Operation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Operation;

   ---------------------------
   -- Internal_Set_Opposite --
   ---------------------------

   procedure Internal_Set_Opposite
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Opposite_Property,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Opposite;

   -------------------------------------
   -- Internal_Set_Owning_Association --
   -------------------------------------

   procedure Internal_Set_Owning_Association
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Owning_Association;

   --------------------------
   -- Internal_Set_Package --
   --------------------------

   procedure Internal_Set_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Association =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Data_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Enumeration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Primitive_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Package;

   ------------------------------------
   -- Internal_Set_Receiving_Package --
   ------------------------------------

   procedure Internal_Set_Receiving_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Package_Merge =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Merge_Package_Merge_Receiving_Package,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Receiving_Package;

   --------------------------------
   -- Internal_Set_Specification --
   --------------------------------

   procedure Internal_Set_Specification
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Specification;

   ----------------------------
   -- Internal_Set_Tag_Owner --
   ----------------------------

   procedure Internal_Set_Tag_Owner
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Tag =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Tag_Owner_Owned_Tag,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Tag_Owner;

   -----------------------
   -- Internal_Set_Type --
   -----------------------

   procedure Internal_Set_Type
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Opaque_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Operation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Operation,
              Self,
              To);

         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.CMOF_Types.E_CMOF_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Type;

   ------------------------
   -- Internal_Set_Upper --
   ------------------------

   procedure Internal_Set_Upper
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Unlimited_Natural)
   is
      Old : AMF.Optional_Unlimited_Natural;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (10).Unlimited_Natural_Holder;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (10).Unlimited_Natural_Holder := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Upper, Old, To);
   end Internal_Set_Upper;

   ----------------------
   -- Internal_Set_Uri --
   ----------------------

   procedure Internal_Set_Uri
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (7).String_Value;

      CMOF_Element_Table.Table (Self).Member (7).String_Value := To;

      if CMOF_Element_Table.Table (Self).Member (7).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (CMOF_Element_Table.Table (Self).Member (7).String_Value);
      end if;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Uri, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Uri;

   ------------------------
   -- Internal_Set_Value --
   ------------------------

   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old :=
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (3).String_Value;

      CMOF_Element_Table.Table (Self).Member (3).String_Value := To;
      Matreshka.Internals.Strings.Reference
       (CMOF_Element_Table.Table (Self).Member (3).String_Value);

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Value, Old, To);
      Matreshka.Internals.Strings.Dereference (Old);
   end Internal_Set_Value;

   -----------------------------
   -- Internal_Set_Visibility --
   -----------------------------

   procedure Internal_Set_Visibility
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.CMOF.CMOF_Visibility_Kind)
   is
      Old : AMF.CMOF.CMOF_Visibility_Kind;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (2).Visibility_Kind_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (2).Visibility_Kind_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Import_Visibility, Old, To);
   end Internal_Set_Visibility;

   -----------------------------
   -- Internal_Set_Visibility --
   -----------------------------

   procedure Internal_Set_Visibility
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.CMOF.Optional_CMOF_Visibility_Kind)
   is
      Old : AMF.CMOF.Optional_CMOF_Visibility_Kind;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (3).Visibility_Kind_Holder;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (3).Visibility_Kind_Holder := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Visibility, Old, To);
   end Internal_Set_Visibility;

end AMF.Internals.Tables.CMOF_Attributes;
