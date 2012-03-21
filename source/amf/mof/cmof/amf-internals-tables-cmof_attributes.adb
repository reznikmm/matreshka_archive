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

package body AMF.Internals.Tables.CMOF_Attributes is

   use type Matreshka.Internals.Strings.Shared_String_Access;

   --  Association
   --
   --     27  Association::isDerived
   --     9  Classifier::isFinalSpecialization
   --     2  NamedElement::name
   --     6  NamedElement::namespace
   --     1  Element::owner
   --     8  Type::package
   --     7  NamedElement::qualifiedName
   --     5  NamedElement::visibility
   --
   --     10  Classifier::attribute
   --     5  Namespace::elementImport
   --     29  Association::endType
   --     11  Classifier::feature
   --     12  Classifier::general
   --     4  Namespace::importedMember
   --     13  Classifier::inheritedMember
   --     8  Namespace::member
   --     30  Association::memberEnd
   --     31  Association::navigableOwnedEnd
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     28  Association::ownedEnd
   --     7  Namespace::ownedMember
   --     9  Namespace::ownedRule
   --     6  Namespace::packageImport
   --     23  Relationship::relatedElement

   --  Class
   --
   --     10  Class::isAbstract
   --     9  Classifier::isFinalSpecialization
   --     2  NamedElement::name
   --     6  NamedElement::namespace
   --     1  Element::owner
   --     8  Type::package
   --     7  NamedElement::qualifiedName
   --     5  NamedElement::visibility
   --
   --     10  Classifier::attribute
   --     5  Namespace::elementImport
   --     11  Classifier::feature
   --     12  Classifier::general
   --     4  Namespace::importedMember
   --     13  Classifier::inheritedMember
   --     8  Namespace::member
   --     14  Class::ownedAttribute
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     7  Namespace::ownedMember
   --     15  Class::ownedOperation
   --     9  Namespace::ownedRule
   --     6  Namespace::packageImport
   --     12  Class::superClass

   --  Comment
   --
   --     43  Comment::body
   --     1  Element::owner
   --
   --     40  Comment::annotatedElement
   --     2  Element::ownedComment
   --     1  Element::ownedElement

   --  Constraint
   --
   --     14  Constraint::context
   --     2  NamedElement::name
   --     6  NamedElement::namespace
   --     1  Element::owner
   --     7  NamedElement::qualifiedName
   --     13  Constraint::specification
   --     5  NamedElement::visibility
   --
   --     22  Constraint::constrainedElement
   --     2  Element::ownedComment
   --     1  Element::ownedElement

   --  DataType
   --
   --     9  Classifier::isFinalSpecialization
   --     2  NamedElement::name
   --     6  NamedElement::namespace
   --     1  Element::owner
   --     8  Type::package
   --     7  NamedElement::qualifiedName
   --     5  NamedElement::visibility
   --
   --     10  Classifier::attribute
   --     5  Namespace::elementImport
   --     11  Classifier::feature
   --     12  Classifier::general
   --     4  Namespace::importedMember
   --     13  Classifier::inheritedMember
   --     8  Namespace::member
   --     14  DataType::ownedAttribute
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     7  Namespace::ownedMember
   --     15  DataType::ownedOperation
   --     9  Namespace::ownedRule
   --     6  Namespace::packageImport

   --  ElementImport
   --
   --     16  ElementImport::alias
   --     17  ElementImport::importedElement
   --     18  ElementImport::importingNamespace
   --     1  Element::owner
   --     15  ElementImport::visibility
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     23  Relationship::relatedElement
   --     24  DirectedRelationship::source
   --     25  DirectedRelationship::target

   --  Enumeration
   --
   --     9  Classifier::isFinalSpecialization
   --     2  NamedElement::name
   --     6  NamedElement::namespace
   --     1  Element::owner
   --     8  Type::package
   --     7  NamedElement::qualifiedName
   --     5  NamedElement::visibility
   --
   --     10  Classifier::attribute
   --     5  Namespace::elementImport
   --     11  Classifier::feature
   --     12  Classifier::general
   --     4  Namespace::importedMember
   --     13  Classifier::inheritedMember
   --     8  Namespace::member
   --     14  DataType::ownedAttribute
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     16  Enumeration::ownedLiteral
   --     7  Namespace::ownedMember
   --     15  DataType::ownedOperation
   --     9  Namespace::ownedRule
   --     6  Namespace::packageImport

   --  EnumerationLiteral
   --
   --     12  EnumerationLiteral::enumeration
   --     2  NamedElement::name
   --     6  NamedElement::namespace
   --     1  Element::owner
   --     7  NamedElement::qualifiedName
   --     5  NamedElement::visibility
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement

   --  Expression
   --
   --     2  NamedElement::name
   --     6  NamedElement::namespace
   --     1  Element::owner
   --     7  NamedElement::qualifiedName
   --     23  TypedElement::type
   --     5  NamedElement::visibility
   --
   --     35  Expression::operand
   --     2  Element::ownedComment
   --     1  Element::ownedElement

   --  OpaqueExpression
   --
   --     35  OpaqueExpression::body
   --     36  OpaqueExpression::language
   --     2  NamedElement::name
   --     6  NamedElement::namespace
   --     1  Element::owner
   --     7  NamedElement::qualifiedName
   --     23  TypedElement::type
   --     5  NamedElement::visibility
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement

   --  Operation
   --
   --     40  Operation::bodyCondition
   --     29  Operation::class
   --     32  Operation::datatype
   --     11  RedefinableElement::isLeaf
   --     19  Operation::isOrdered
   --     39  Operation::isQuery
   --     20  Operation::isUnique
   --     21  Operation::lower
   --     2  NamedElement::name
   --     6  NamedElement::namespace
   --     1  Element::owner
   --     7  NamedElement::qualifiedName
   --     23  Operation::type
   --     22  Operation::upper
   --     5  NamedElement::visibility
   --
   --     5  Namespace::elementImport
   --     19  Feature::featuringClassifier
   --     4  Namespace::importedMember
   --     8  Namespace::member
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     7  Namespace::ownedMember
   --     20  Operation::ownedParameter
   --     20  BehavioralFeature::ownedParameter
   --     9  Namespace::ownedRule
   --     6  Namespace::packageImport
   --     34  Operation::postcondition
   --     33  Operation::precondition
   --     21  Operation::raisedException
   --     21  BehavioralFeature::raisedException
   --     18  RedefinableElement::redefinedElement
   --     32  Operation::redefinedOperation
   --     17  RedefinableElement::redefinitionContext

   --  Package
   --
   --     2  NamedElement::name
   --     6  NamedElement::namespace
   --     41  Package::nestingPackage
   --     1  Element::owner
   --     7  NamedElement::qualifiedName
   --     42  Package::uri
   --     5  NamedElement::visibility
   --
   --     5  Namespace::elementImport
   --     4  Namespace::importedMember
   --     8  Namespace::member
   --     38  Package::nestedPackage
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     7  Namespace::ownedMember
   --     9  Namespace::ownedRule
   --     37  Package::ownedType
   --     6  Namespace::packageImport
   --     39  Package::packageMerge
   --     36  Package::packagedElement

   --  PackageImport
   --
   --     34  PackageImport::importedPackage
   --     18  PackageImport::importingNamespace
   --     1  Element::owner
   --     15  PackageImport::visibility
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     23  Relationship::relatedElement
   --     24  DirectedRelationship::source
   --     25  DirectedRelationship::target

   --  PackageMerge
   --
   --     38  PackageMerge::mergedPackage
   --     1  Element::owner
   --     37  PackageMerge::receivingPackage
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     23  Relationship::relatedElement
   --     24  DirectedRelationship::source
   --     25  DirectedRelationship::target

   --  Parameter
   --
   --     25  Parameter::default
   --     44  Parameter::direction
   --     19  MultiplicityElement::isOrdered
   --     20  MultiplicityElement::isUnique
   --     21  MultiplicityElement::lower
   --     2  NamedElement::name
   --     6  NamedElement::namespace
   --     45  Parameter::operation
   --     1  Element::owner
   --     7  NamedElement::qualifiedName
   --     23  TypedElement::type
   --     22  MultiplicityElement::upper
   --     5  NamedElement::visibility
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement

   --  PrimitiveType
   --
   --     9  Classifier::isFinalSpecialization
   --     2  NamedElement::name
   --     6  NamedElement::namespace
   --     1  Element::owner
   --     8  Type::package
   --     7  NamedElement::qualifiedName
   --     5  NamedElement::visibility
   --
   --     10  Classifier::attribute
   --     5  Namespace::elementImport
   --     11  Classifier::feature
   --     12  Classifier::general
   --     4  Namespace::importedMember
   --     13  Classifier::inheritedMember
   --     8  Namespace::member
   --     14  DataType::ownedAttribute
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     7  Namespace::ownedMember
   --     15  DataType::ownedOperation
   --     9  Namespace::ownedRule
   --     6  Namespace::packageImport

   --  Property
   --
   --     33  Property::association
   --     29  Property::class
   --     32  Property::datatype
   --     25  Property::default
   --     26  Property::isComposite
   --     27  Property::isDerived
   --     28  Property::isDerivedUnion
   --     11  RedefinableElement::isLeaf
   --     19  MultiplicityElement::isOrdered
   --     24  Property::isReadOnly
   --     20  MultiplicityElement::isUnique
   --     21  MultiplicityElement::lower
   --     2  NamedElement::name
   --     6  NamedElement::namespace
   --     31  Property::opposite
   --     1  Element::owner
   --     30  Property::owningAssociation
   --     7  NamedElement::qualifiedName
   --     23  TypedElement::type
   --     22  MultiplicityElement::upper
   --     5  NamedElement::visibility
   --
   --     19  Feature::featuringClassifier
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     18  RedefinableElement::redefinedElement
   --     26  Property::redefinedProperty
   --     17  RedefinableElement::redefinitionContext
   --     27  Property::subsettedProperty

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
    (Self : AMF.Internals.CMOF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (16).String_Value;
   end Internal_Get_Alias;

   ------------------------------------
   -- Internal_Get_Annotated_Element --
   ------------------------------------

   function Internal_Get_Annotated_Element
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 40;
   end Internal_Get_Annotated_Element;

   ------------------------------
   -- Internal_Get_Association --
   ------------------------------

   function Internal_Get_Association
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (33).Link, Self, No_CMOF_Element);
   end Internal_Get_Association;

   ----------------------------
   -- Internal_Get_Attribute --
   ----------------------------

   function Internal_Get_Attribute
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 10;
   end Internal_Get_Attribute;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_String is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (35).String_Collection_Value;   end Internal_Get_Body;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : AMF.Internals.CMOF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (43).String_Value;
   end Internal_Get_Body;

   ---------------------------------
   -- Internal_Get_Body_Condition --
   ---------------------------------

   function Internal_Get_Body_Condition
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (40).Link, Self, No_CMOF_Element);
   end Internal_Get_Body_Condition;

   ------------------------
   -- Internal_Get_Class --
   ------------------------

   function Internal_Get_Class
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (29).Link, Self, No_CMOF_Element);
   end Internal_Get_Class;

   --------------------------------------
   -- Internal_Get_Constrained_Element --
   --------------------------------------

   function Internal_Get_Constrained_Element
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 22;
   end Internal_Get_Constrained_Element;

   --------------------------
   -- Internal_Get_Context --
   --------------------------

   function Internal_Get_Context
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (14).Link, Self, No_CMOF_Element);
   end Internal_Get_Context;

   ---------------------------
   -- Internal_Get_Datatype --
   ---------------------------

   function Internal_Get_Datatype
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (32).Link, Self, No_CMOF_Element);
   end Internal_Get_Datatype;

   --------------------------
   -- Internal_Get_Default --
   --------------------------

   function Internal_Get_Default
    (Self : AMF.Internals.CMOF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (25).String_Value;
   end Internal_Get_Default;

   ----------------------------
   -- Internal_Get_Direction --
   ----------------------------

   function Internal_Get_Direction
    (Self : AMF.Internals.CMOF_Element)
       return AMF.CMOF.CMOF_Parameter_Direction_Kind is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (44).Parameter_Direction_Value;
   end Internal_Get_Direction;

   --------------------------
   -- Internal_Get_Element --
   --------------------------

   function Internal_Get_Element
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Element;

   ---------------------------------
   -- Internal_Get_Element_Import --
   ---------------------------------

   function Internal_Get_Element_Import
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 5;
   end Internal_Get_Element_Import;

   ---------------------------
   -- Internal_Get_End_Type --
   ---------------------------

   function Internal_Get_End_Type
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 29;
   end Internal_Get_End_Type;

   ------------------------------
   -- Internal_Get_Enumeration --
   ------------------------------

   function Internal_Get_Enumeration
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (12).Link, Self, No_CMOF_Element);
   end Internal_Get_Enumeration;

   --------------------------
   -- Internal_Get_Feature --
   --------------------------

   function Internal_Get_Feature
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 11;
   end Internal_Get_Feature;

   ---------------------------------------
   -- Internal_Get_Featuring_Classifier --
   ---------------------------------------

   function Internal_Get_Featuring_Classifier
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 19;
   end Internal_Get_Featuring_Classifier;

   --------------------------
   -- Internal_Get_General --
   --------------------------

   function Internal_Get_General
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_General;

   -----------------------------------
   -- Internal_Get_Imported_Element --
   -----------------------------------

   function Internal_Get_Imported_Element
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (17).Link, Self, No_CMOF_Element);
   end Internal_Get_Imported_Element;

   ----------------------------------
   -- Internal_Get_Imported_Member --
   ----------------------------------

   function Internal_Get_Imported_Member
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Imported_Member;

   -----------------------------------
   -- Internal_Get_Imported_Package --
   -----------------------------------

   function Internal_Get_Imported_Package
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (34).Link, Self, No_CMOF_Element);
   end Internal_Get_Imported_Package;

   --------------------------------------
   -- Internal_Get_Importing_Namespace --
   --------------------------------------

   function Internal_Get_Importing_Namespace
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (18).Link, Self, No_CMOF_Element);
   end Internal_Get_Importing_Namespace;

   -----------------------------------
   -- Internal_Get_Inherited_Member --
   -----------------------------------

   function Internal_Get_Inherited_Member
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 13;
   end Internal_Get_Inherited_Member;

   ------------------------------
   -- Internal_Get_Is_Abstract --
   ------------------------------

   function Internal_Get_Is_Abstract
    (Self : AMF.Internals.CMOF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (10).Boolean_Value;
   end Internal_Get_Is_Abstract;

   -------------------------------
   -- Internal_Get_Is_Composite --
   -------------------------------

   function Internal_Get_Is_Composite
    (Self : AMF.Internals.CMOF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (26).Boolean_Value;
   end Internal_Get_Is_Composite;

   -----------------------------
   -- Internal_Get_Is_Derived --
   -----------------------------

   function Internal_Get_Is_Derived
    (Self : AMF.Internals.CMOF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (27).Boolean_Value;
   end Internal_Get_Is_Derived;

   -----------------------------------
   -- Internal_Get_Is_Derived_Union --
   -----------------------------------

   function Internal_Get_Is_Derived_Union
    (Self : AMF.Internals.CMOF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (28).Boolean_Value;
   end Internal_Get_Is_Derived_Union;

   ------------------------------------------
   -- Internal_Get_Is_Final_Specialization --
   ------------------------------------------

   function Internal_Get_Is_Final_Specialization
    (Self : AMF.Internals.CMOF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (9).Boolean_Value;
   end Internal_Get_Is_Final_Specialization;

   --------------------------
   -- Internal_Get_Is_Leaf --
   --------------------------

   function Internal_Get_Is_Leaf
    (Self : AMF.Internals.CMOF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (11).Boolean_Value;
   end Internal_Get_Is_Leaf;

   -----------------------------
   -- Internal_Get_Is_Ordered --
   -----------------------------

   function Internal_Get_Is_Ordered
    (Self : AMF.Internals.CMOF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (19).Boolean_Value;
   end Internal_Get_Is_Ordered;

   ---------------------------
   -- Internal_Get_Is_Query --
   ---------------------------

   function Internal_Get_Is_Query
    (Self : AMF.Internals.CMOF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (39).Boolean_Value;
   end Internal_Get_Is_Query;

   -------------------------------
   -- Internal_Get_Is_Read_Only --
   -------------------------------

   function Internal_Get_Is_Read_Only
    (Self : AMF.Internals.CMOF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (24).Boolean_Value;
   end Internal_Get_Is_Read_Only;

   ----------------------------
   -- Internal_Get_Is_Unique --
   ----------------------------

   function Internal_Get_Is_Unique
    (Self : AMF.Internals.CMOF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (20).Boolean_Value;
   end Internal_Get_Is_Unique;

   ---------------------------
   -- Internal_Get_Language --
   ---------------------------

   function Internal_Get_Language
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_String is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (36).String_Collection_Value;   end Internal_Get_Language;

   ------------------------
   -- Internal_Get_Lower --
   ------------------------

   function Internal_Get_Lower
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Optional_Integer is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (21).Integer_Holder_Value;
   end Internal_Get_Lower;

   -------------------------
   -- Internal_Get_Member --
   -------------------------

   function Internal_Get_Member
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_Member;

   -----------------------------
   -- Internal_Get_Member_End --
   -----------------------------

   function Internal_Get_Member_End
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 30;
   end Internal_Get_Member_End;

   ---------------------------------
   -- Internal_Get_Merged_Package --
   ---------------------------------

   function Internal_Get_Merged_Package
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (38).Link, Self, No_CMOF_Element);
   end Internal_Get_Merged_Package;

   -----------------------
   -- Internal_Get_Name --
   -----------------------

   function Internal_Get_Name
    (Self : AMF.Internals.CMOF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (2).String_Value;
   end Internal_Get_Name;

   ----------------------------
   -- Internal_Get_Namespace --
   ----------------------------

   function Internal_Get_Namespace
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (6).Link, Self, No_CMOF_Element);
   end Internal_Get_Namespace;

   --------------------------------------
   -- Internal_Get_Navigable_Owned_End --
   --------------------------------------

   function Internal_Get_Navigable_Owned_End
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 31;
   end Internal_Get_Navigable_Owned_End;

   ---------------------------------
   -- Internal_Get_Nested_Package --
   ---------------------------------

   function Internal_Get_Nested_Package
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 38;
   end Internal_Get_Nested_Package;

   ----------------------------------
   -- Internal_Get_Nesting_Package --
   ----------------------------------

   function Internal_Get_Nesting_Package
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (41).Link, Self, No_CMOF_Element);
   end Internal_Get_Nesting_Package;

   --------------------------
   -- Internal_Get_Operand --
   --------------------------

   function Internal_Get_Operand
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 35;
   end Internal_Get_Operand;

   ----------------------------
   -- Internal_Get_Operation --
   ----------------------------

   function Internal_Get_Operation
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (45).Link, Self, No_CMOF_Element);
   end Internal_Get_Operation;

   ---------------------------
   -- Internal_Get_Opposite --
   ---------------------------

   function Internal_Get_Opposite
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (31).Link, Self, No_CMOF_Element);
   end Internal_Get_Opposite;

   ----------------------------------
   -- Internal_Get_Owned_Attribute --
   ----------------------------------

   function Internal_Get_Owned_Attribute
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 14;
   end Internal_Get_Owned_Attribute;

   --------------------------------
   -- Internal_Get_Owned_Comment --
   --------------------------------

   function Internal_Get_Owned_Comment
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 2;
   end Internal_Get_Owned_Comment;

   --------------------------------
   -- Internal_Get_Owned_Element --
   --------------------------------

   function Internal_Get_Owned_Element
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 1;
   end Internal_Get_Owned_Element;

   ----------------------------
   -- Internal_Get_Owned_End --
   ----------------------------

   function Internal_Get_Owned_End
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 28;
   end Internal_Get_Owned_End;

   --------------------------------
   -- Internal_Get_Owned_Literal --
   --------------------------------

   function Internal_Get_Owned_Literal
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 16;
   end Internal_Get_Owned_Literal;

   -------------------------------
   -- Internal_Get_Owned_Member --
   -------------------------------

   function Internal_Get_Owned_Member
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 7;
   end Internal_Get_Owned_Member;

   ----------------------------------
   -- Internal_Get_Owned_Operation --
   ----------------------------------

   function Internal_Get_Owned_Operation
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 15;
   end Internal_Get_Owned_Operation;

   ----------------------------------
   -- Internal_Get_Owned_Parameter --
   ----------------------------------

   function Internal_Get_Owned_Parameter
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 20;
   end Internal_Get_Owned_Parameter;

   -----------------------------
   -- Internal_Get_Owned_Rule --
   -----------------------------

   function Internal_Get_Owned_Rule
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Owned_Rule;

   -----------------------------
   -- Internal_Get_Owned_Type --
   -----------------------------

   function Internal_Get_Owned_Type
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 37;
   end Internal_Get_Owned_Type;

   ------------------------
   -- Internal_Get_Owner --
   ------------------------

   function Internal_Get_Owner
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (1).Link, Self, No_CMOF_Element);
   end Internal_Get_Owner;

   -------------------------------------
   -- Internal_Get_Owning_Association --
   -------------------------------------

   function Internal_Get_Owning_Association
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (30).Link, Self, No_CMOF_Element);
   end Internal_Get_Owning_Association;

   --------------------------
   -- Internal_Get_Package --
   --------------------------

   function Internal_Get_Package
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (8).Link, Self, No_CMOF_Element);
   end Internal_Get_Package;

   ---------------------------------
   -- Internal_Get_Package_Import --
   ---------------------------------

   function Internal_Get_Package_Import
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_Package_Import;

   --------------------------------
   -- Internal_Get_Package_Merge --
   --------------------------------

   function Internal_Get_Package_Merge
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 39;
   end Internal_Get_Package_Merge;

   -----------------------------------
   -- Internal_Get_Packaged_Element --
   -----------------------------------

   function Internal_Get_Packaged_Element
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 36;
   end Internal_Get_Packaged_Element;

   --------------------------------
   -- Internal_Get_Postcondition --
   --------------------------------

   function Internal_Get_Postcondition
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 34;
   end Internal_Get_Postcondition;

   -------------------------------
   -- Internal_Get_Precondition --
   -------------------------------

   function Internal_Get_Precondition
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 33;
   end Internal_Get_Precondition;

   ---------------------------------
   -- Internal_Get_Qualified_Name --
   ---------------------------------

   function Internal_Get_Qualified_Name
    (Self : AMF.Internals.CMOF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (7).String_Value;
   end Internal_Get_Qualified_Name;

   -----------------------------------
   -- Internal_Get_Raised_Exception --
   -----------------------------------

   function Internal_Get_Raised_Exception
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 21;
   end Internal_Get_Raised_Exception;

   ------------------------------------
   -- Internal_Get_Receiving_Package --
   ------------------------------------

   function Internal_Get_Receiving_Package
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (37).Link, Self, No_CMOF_Element);
   end Internal_Get_Receiving_Package;

   ------------------------------------
   -- Internal_Get_Redefined_Element --
   ------------------------------------

   function Internal_Get_Redefined_Element
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 18;
   end Internal_Get_Redefined_Element;

   --------------------------------------
   -- Internal_Get_Redefined_Operation --
   --------------------------------------

   function Internal_Get_Redefined_Operation
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 32;
   end Internal_Get_Redefined_Operation;

   -------------------------------------
   -- Internal_Get_Redefined_Property --
   -------------------------------------

   function Internal_Get_Redefined_Property
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 26;
   end Internal_Get_Redefined_Property;

   ---------------------------------------
   -- Internal_Get_Redefinition_Context --
   ---------------------------------------

   function Internal_Get_Redefinition_Context
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 17;
   end Internal_Get_Redefinition_Context;

   ----------------------------------
   -- Internal_Get_Related_Element --
   ----------------------------------

   function Internal_Get_Related_Element
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 23;
   end Internal_Get_Related_Element;

   -------------------------
   -- Internal_Get_Source --
   -------------------------

   function Internal_Get_Source
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Source;

   --------------------------------
   -- Internal_Get_Specification --
   --------------------------------

   function Internal_Get_Specification
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (13).Link, Self, No_CMOF_Element);
   end Internal_Get_Specification;

   -------------------------------------
   -- Internal_Get_Subsetted_Property --
   -------------------------------------

   function Internal_Get_Subsetted_Property
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 27;
   end Internal_Get_Subsetted_Property;

   ------------------------------
   -- Internal_Get_Super_Class --
   ------------------------------

   function Internal_Get_Super_Class
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_Super_Class;

   ----------------------------
   -- Internal_Get_Tag_Owner --
   ----------------------------

   function Internal_Get_Tag_Owner
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (4).Link, Self, No_CMOF_Element);
   end Internal_Get_Tag_Owner;

   -------------------------
   -- Internal_Get_Target --
   -------------------------

   function Internal_Get_Target
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (0).Collection + 25;
   end Internal_Get_Target;

   -----------------------
   -- Internal_Get_Type --
   -----------------------

   function Internal_Get_Type
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Internals.CMOF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (23).Link, Self, No_CMOF_Element);
   end Internal_Get_Type;

   ------------------------
   -- Internal_Get_Upper --
   ------------------------

   function Internal_Get_Upper
    (Self : AMF.Internals.CMOF_Element)
       return AMF.Optional_Unlimited_Natural is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (22).Natural_Holder_Value;
   end Internal_Get_Upper;

   ----------------------
   -- Internal_Get_Uri --
   ----------------------

   function Internal_Get_Uri
    (Self : AMF.Internals.CMOF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (42).String_Value;
   end Internal_Get_Uri;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.CMOF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (3).String_Value;
   end Internal_Get_Value;

   -----------------------------
   -- Internal_Get_Visibility --
   -----------------------------

   function Internal_Get_Visibility
    (Self : AMF.Internals.CMOF_Element)
       return AMF.CMOF.CMOF_Visibility_Kind is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (15).Visibility_Value;
   end Internal_Get_Visibility;

   -----------------------------
   -- Internal_Get_Visibility --
   -----------------------------

   function Internal_Get_Visibility
    (Self : AMF.Internals.CMOF_Element)
       return AMF.CMOF.Optional_CMOF_Visibility_Kind is
   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (5).Visibility_Holder_Value;
   end Internal_Get_Visibility;

   ------------------------
   -- Internal_Set_Alias --
   ------------------------

   procedure Internal_Set_Alias
    (Self : AMF.Internals.CMOF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (16).String_Value;

      CMOF_Element_Table.Table (Self).Member (16).String_Value := To;

      if CMOF_Element_Table.Table (Self).Member (16).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (CMOF_Element_Table.Table (Self).Member (16).String_Value);
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
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        To,
        Self);
   end Internal_Set_Association;

   -----------------------
   -- Internal_Set_Body --
   -----------------------

   procedure Internal_Set_Body
    (Self : AMF.Internals.CMOF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (43).String_Value;

      CMOF_Element_Table.Table (Self).Member (43).String_Value := To;

      if CMOF_Element_Table.Table (Self).Member (43).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (CMOF_Element_Table.Table (Self).Member (43).String_Value);
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
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Self,
        To);
   end Internal_Set_Body_Condition;

   ------------------------
   -- Internal_Set_Class --
   ------------------------

   procedure Internal_Set_Class
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        To,
        Self);
   end Internal_Set_Class;

   --------------------------
   -- Internal_Set_Context --
   --------------------------

   procedure Internal_Set_Context
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        To,
        Self);
   end Internal_Set_Context;

   ---------------------------
   -- Internal_Set_Datatype --
   ---------------------------

   procedure Internal_Set_Datatype
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Datatype,
        To,
        Self);
   end Internal_Set_Datatype;

   --------------------------
   -- Internal_Set_Default --
   --------------------------

   procedure Internal_Set_Default
    (Self : AMF.Internals.CMOF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (25).String_Value;

      CMOF_Element_Table.Table (Self).Member (25).String_Value := To;

      if CMOF_Element_Table.Table (Self).Member (25).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (CMOF_Element_Table.Table (Self).Member (25).String_Value);
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
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.CMOF.CMOF_Parameter_Direction_Kind)
   is
      Old : AMF.CMOF.CMOF_Parameter_Direction_Kind;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (44).Parameter_Direction_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (44).Parameter_Direction_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Direction, Old, To);
   end Internal_Set_Direction;

   ------------------------------
   -- Internal_Set_Enumeration --
   ------------------------------

   procedure Internal_Set_Enumeration
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        To,
        Self);
   end Internal_Set_Enumeration;

   -----------------------------------
   -- Internal_Set_Imported_Element --
   -----------------------------------

   procedure Internal_Set_Imported_Element
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Imported_Element_Element_Import,
        Self,
        To);
   end Internal_Set_Imported_Element;

   -----------------------------------
   -- Internal_Set_Imported_Package --
   -----------------------------------

   procedure Internal_Set_Imported_Package
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Imported_Package_Package_Import,
        Self,
        To);
   end Internal_Set_Imported_Package;

   --------------------------------------
   -- Internal_Set_Importing_Namespace --
   --------------------------------------

   procedure Internal_Set_Importing_Namespace
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Import_Element_Import_Importing_Namespace,
        To,
        Self);
   end Internal_Set_Importing_Namespace;

   ------------------------------
   -- Internal_Set_Is_Abstract --
   ------------------------------

   procedure Internal_Set_Is_Abstract
    (Self : AMF.Internals.CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (10).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (10).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Is_Abstract, Old, To);
   end Internal_Set_Is_Abstract;

   -------------------------------
   -- Internal_Set_Is_Composite --
   -------------------------------

   procedure Internal_Set_Is_Composite
    (Self : AMF.Internals.CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (26).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (26).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Is_Composite, Old, To);
   end Internal_Set_Is_Composite;

   -----------------------------
   -- Internal_Set_Is_Derived --
   -----------------------------

   procedure Internal_Set_Is_Derived
    (Self : AMF.Internals.CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (27).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (27).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Is_Derived, Old, To);
   end Internal_Set_Is_Derived;

   -----------------------------------
   -- Internal_Set_Is_Derived_Union --
   -----------------------------------

   procedure Internal_Set_Is_Derived_Union
    (Self : AMF.Internals.CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (28).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (28).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Is_Derived_Union, Old, To);
   end Internal_Set_Is_Derived_Union;

   ------------------------------------------
   -- Internal_Set_Is_Final_Specialization --
   ------------------------------------------

   procedure Internal_Set_Is_Final_Specialization
    (Self : AMF.Internals.CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (9).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (9).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Is_Final_Specialization, Old, To);
   end Internal_Set_Is_Final_Specialization;

   --------------------------
   -- Internal_Set_Is_Leaf --
   --------------------------

   procedure Internal_Set_Is_Leaf
    (Self : AMF.Internals.CMOF_Element;
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
    (Self : AMF.Internals.CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (19).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (19).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Is_Ordered, Old, To);
   end Internal_Set_Is_Ordered;

   ---------------------------
   -- Internal_Set_Is_Query --
   ---------------------------

   procedure Internal_Set_Is_Query
    (Self : AMF.Internals.CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (39).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (39).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Is_Query, Old, To);
   end Internal_Set_Is_Query;

   -------------------------------
   -- Internal_Set_Is_Read_Only --
   -------------------------------

   procedure Internal_Set_Is_Read_Only
    (Self : AMF.Internals.CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (24).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (24).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Is_Read_Only, Old, To);
   end Internal_Set_Is_Read_Only;

   ----------------------------
   -- Internal_Set_Is_Unique --
   ----------------------------

   procedure Internal_Set_Is_Unique
    (Self : AMF.Internals.CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (20).Boolean_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (20).Boolean_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Is_Unique, Old, To);
   end Internal_Set_Is_Unique;

   ------------------------
   -- Internal_Set_Lower --
   ------------------------

   procedure Internal_Set_Lower
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Optional_Integer)
   is
      Old : AMF.Optional_Integer;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (21).Integer_Holder_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (21).Integer_Holder_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Lower, Old, To);
   end Internal_Set_Lower;

   ---------------------------------
   -- Internal_Set_Merged_Package --
   ---------------------------------

   procedure Internal_Set_Merged_Package
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Merged_Package_Package_Merge,
        Self,
        To);
   end Internal_Set_Merged_Package;

   -----------------------
   -- Internal_Set_Name --
   -----------------------

   procedure Internal_Set_Name
    (Self : AMF.Internals.CMOF_Element;
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
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Nested_Package_Nesting_Package,
        To,
        Self);
   end Internal_Set_Nesting_Package;

   ----------------------------
   -- Internal_Set_Operation --
   ----------------------------

   procedure Internal_Set_Operation
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        To,
        Self);
   end Internal_Set_Operation;

   ---------------------------
   -- Internal_Set_Opposite --
   ---------------------------

   procedure Internal_Set_Opposite
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Opposite_Property,
        Self,
        To);
   end Internal_Set_Opposite;

   -------------------------------------
   -- Internal_Set_Owning_Association --
   -------------------------------------

   procedure Internal_Set_Owning_Association
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        To,
        Self);
   end Internal_Set_Owning_Association;

   --------------------------
   -- Internal_Set_Package --
   --------------------------

   procedure Internal_Set_Package
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        To,
        Self);
   end Internal_Set_Package;

   ------------------------------------
   -- Internal_Set_Receiving_Package --
   ------------------------------------

   procedure Internal_Set_Receiving_Package
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Merge_Package_Merge_Receiving_Package,
        To,
        Self);
   end Internal_Set_Receiving_Package;

   --------------------------------
   -- Internal_Set_Specification --
   --------------------------------

   procedure Internal_Set_Specification
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Self,
        To);
   end Internal_Set_Specification;

   ----------------------------
   -- Internal_Set_Tag_Owner --
   ----------------------------

   procedure Internal_Set_Tag_Owner
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Tag_Owner_Owned_Tag,
        Self,
        To);
   end Internal_Set_Tag_Owner;

   -----------------------
   -- Internal_Set_Type --
   -----------------------

   procedure Internal_Set_Type
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Internals.CMOF_Element)
   is
      Old : AMF.Internals.CMOF_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Self,
        To);
   end Internal_Set_Type;

   ------------------------
   -- Internal_Set_Upper --
   ------------------------

   procedure Internal_Set_Upper
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.Optional_Unlimited_Natural)
   is
      Old : AMF.Optional_Unlimited_Natural;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (22).Natural_Holder_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (22).Natural_Holder_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Upper, Old, To);
   end Internal_Set_Upper;

   ----------------------
   -- Internal_Set_Uri --
   ----------------------

   procedure Internal_Set_Uri
    (Self : AMF.Internals.CMOF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (42).String_Value;

      CMOF_Element_Table.Table (Self).Member (42).String_Value := To;

      if CMOF_Element_Table.Table (Self).Member (42).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (CMOF_Element_Table.Table (Self).Member (42).String_Value);
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
    (Self : AMF.Internals.CMOF_Element;
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
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.CMOF.CMOF_Visibility_Kind)
   is
      Old : AMF.CMOF.CMOF_Visibility_Kind;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (15).Visibility_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (15).Visibility_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Import_Visibility, Old, To);
   end Internal_Set_Visibility;

   -----------------------------
   -- Internal_Set_Visibility --
   -----------------------------

   procedure Internal_Set_Visibility
    (Self : AMF.Internals.CMOF_Element;
     To   : AMF.CMOF.Optional_CMOF_Visibility_Kind)
   is
      Old : AMF.CMOF.Optional_CMOF_Visibility_Kind;

   begin
      Old := AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (5).Visibility_Holder_Value;
      AMF.Internals.Tables.CMOF_Element_Table.Table (Self).Member (5).Visibility_Holder_Value := To;

      AMF.Internals.Tables.CMOF_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Visibility, Old, To);
   end Internal_Set_Visibility;

end AMF.Internals.Tables.CMOF_Attributes;
