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
with CMOF.Internals.Metamodel;
with CMOF.Internals.Notification;
with CMOF.Internals.Tables;
with CMOF.Internals.Types;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body CMOF.Internals.Attributes is

   use CMOF.Internals.Metamodel;
   use CMOF.Internals.Tables;
   use CMOF.Internals.Types;
   use type AMF.Internals.AMF_Collection_Of_Element;
   use type Matreshka.Internals.Strings.Shared_String_Access;

   --  Association
   --
   --     8  Association::isDerived
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
   --    15  Association::endType
   --    10  Classifier::feature
   --    11  Classifier::general
   --     3  Namespace::importedMember
   --    12  Classifier::inheritedMember
   --     7  Namespace::member
   --    16  Association::memberEnd
   --    17  Association::navigableOwnedEnd
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --    14  Association::ownedEnd
   --     6  Namespace::ownedMember
   --     8  Namespace::ownedRule
   --     5  Namespace::packageImport
   --    13  Relationship::relatedElement

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
   --    10  Classifier::feature
   --    11  Classifier::general
   --     3  Namespace::importedMember
   --    12  Classifier::inheritedMember
   --     7  Namespace::member
   --    13  Class::ownedAttribute
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     6  Namespace::ownedMember
   --    14  Class::ownedOperation
   --     8  Namespace::ownedRule
   --     5  Namespace::packageImport
   --    11  Class::superClass

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
   --    10  Classifier::feature
   --    11  Classifier::general
   --     3  Namespace::importedMember
   --    12  Classifier::inheritedMember
   --     7  Namespace::member
   --    13  DataType::ownedAttribute
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     6  Namespace::ownedMember
   --    14  DataType::ownedOperation
   --     8  Namespace::ownedRule
   --     5  Namespace::packageImport

   --  ElementImport
   --
   --     3  ElementImport::alias
   --     4  ElementImport::importedElement
   --     5  ElementImport::importingNamespace
   --     1  Element::owner
   --     2  ElementImport::visibility
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     3  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     5  DirectedRelationship::target

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
   --    10  Classifier::feature
   --    11  Classifier::general
   --     3  Namespace::importedMember
   --    12  Classifier::inheritedMember
   --     7  Namespace::member
   --    13  DataType::ownedAttribute
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --    15  Enumeration::ownedLiteral
   --     6  Namespace::ownedMember
   --    14  DataType::ownedOperation
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
   --    15  Operation::bodyCondition
   --    12  Operation::class
   --    13  Operation::datatype
   --     6  RedefinableElement::isLeaf
   --     8  Operation::isOrdered
   --     7  Operation::isQuery
   --     9  Operation::isUnique
   --    10  Operation::lower
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --    14  Operation::type
   --    11  Operation::upper
   --     3  NamedElement::visibility
   --
   --     7  Namespace::elementImport
   --     5  Feature::featuringClassifier
   --     6  Namespace::importedMember
   --    10  Namespace::member
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     9  Namespace::ownedMember
   --    12  Operation::ownedParameter
   --    12  BehavioralFeature::ownedParameter
   --    11  Namespace::ownedRule
   --     8  Namespace::packageImport
   --    16  Operation::postcondition
   --    15  Operation::precondition
   --    13  Operation::raisedException
   --    13  BehavioralFeature::raisedException
   --     4  RedefinableElement::redefinedElement
   --    14  Operation::redefinedOperation
   --     3  RedefinableElement::redefinitionContext

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
   --    11  Package::nestedPackage
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     6  Namespace::ownedMember
   --     8  Namespace::ownedRule
   --    10  Package::ownedType
   --     5  Namespace::packageImport
   --    12  Package::packageMerge
   --     9  Package::packagedElement

   --  PackageImport
   --
   --     3  PackageImport::importedPackage
   --     4  PackageImport::importingNamespace
   --     1  Element::owner
   --     2  PackageImport::visibility
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     3  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     5  DirectedRelationship::target

   --  PackageMerge
   --
   --     3  PackageMerge::mergedPackage
   --     1  Element::owner
   --     2  PackageMerge::receivingPackage
   --
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     3  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     5  DirectedRelationship::target

   --  Parameter
   --
   --    11  Parameter::default
   --    12  Parameter::direction
   --     7  MultiplicityElement::isOrdered
   --     8  MultiplicityElement::isUnique
   --     9  MultiplicityElement::lower
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --    13  Parameter::operation
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  TypedElement::type
   --    10  MultiplicityElement::upper
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
   --    10  Classifier::feature
   --    11  Classifier::general
   --     3  Namespace::importedMember
   --    12  Classifier::inheritedMember
   --     7  Namespace::member
   --    13  DataType::ownedAttribute
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     6  Namespace::ownedMember
   --    14  DataType::ownedOperation
   --     8  Namespace::ownedRule
   --     5  Namespace::packageImport

   --  Property
   --
   --    21  Property::association
   --    17  Property::class
   --    20  Property::datatype
   --    13  Property::default
   --    14  Property::isComposite
   --    15  Property::isDerived
   --    16  Property::isDerivedUnion
   --     6  RedefinableElement::isLeaf
   --     7  MultiplicityElement::isOrdered
   --    12  Property::isReadOnly
   --     8  MultiplicityElement::isUnique
   --     9  MultiplicityElement::lower
   --     2  NamedElement::name
   --     4  NamedElement::namespace
   --    19  Property::opposite
   --     1  Element::owner
   --    18  Property::owningAssociation
   --     5  NamedElement::qualifiedName
   --    11  TypedElement::type
   --    10  MultiplicityElement::upper
   --     3  NamedElement::visibility
   --
   --     5  Feature::featuringClassifier
   --     2  Element::ownedComment
   --     1  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     6  Property::redefinedProperty
   --     3  RedefinableElement::redefinitionContext
   --     7  Property::subsettedProperty

   ------------------------
   -- Internal_Get_Alias --
   ------------------------

   function Internal_Get_Alias
    (Self : CMOF_Element) return AMF.Optional_String is
   begin
      case Elements.Table (Self).Kind is
         when E_Element_Import =>
            if Elements.Table (Self).Member (3).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (3).String_Value));
            end if;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Alias;

   ------------------------------------
   -- Internal_Get_Annotated_Element --
   ------------------------------------

   function Internal_Get_Annotated_Element
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Comment =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Annotated_Element;

   ------------------------------
   -- Internal_Get_Association --
   ------------------------------

   function Internal_Get_Association
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            return Elements.Table (Self).Member (21).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Association;

   ----------------------------
   -- Internal_Get_Attribute --
   ----------------------------

   function Internal_Get_Attribute
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 9;

         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 9;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 9;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 9;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 9;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Attribute;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : CMOF_Element) return Collection_Of_CMOF_String is
   begin
      case Elements.Table (Self).Kind is
         when E_Opaque_Expression =>
            return Elements.Table (Self).Member (7).String_Collection_Value;
         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Body;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : CMOF_Element) return AMF.Optional_String is
   begin
      case Elements.Table (Self).Kind is
         when E_Comment =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Body;

   ---------------------------------
   -- Internal_Get_Body_Condition --
   ---------------------------------

   function Internal_Get_Body_Condition
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (15).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Body_Condition;

   ------------------------
   -- Internal_Get_Class --
   ------------------------

   function Internal_Get_Class
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (12).Element;

         when E_Property =>
            return Elements.Table (Self).Member (17).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Class;

   --------------------------------------
   -- Internal_Get_Constrained_Element --
   --------------------------------------

   function Internal_Get_Constrained_Element
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Constraint =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Constrained_Element;

   --------------------------
   -- Internal_Get_Context --
   --------------------------

   function Internal_Get_Context
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Constraint =>
            return Elements.Table (Self).Member (7).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Context;

   ---------------------------
   -- Internal_Get_Datatype --
   ---------------------------

   function Internal_Get_Datatype
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (13).Element;

         when E_Property =>
            return Elements.Table (Self).Member (20).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Datatype;

   --------------------------
   -- Internal_Get_Default --
   --------------------------

   function Internal_Get_Default
    (Self : CMOF_Element) return AMF.Optional_String is
   begin
      case Elements.Table (Self).Kind is
         when E_Parameter =>
            if Elements.Table (Self).Member (11).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (11).String_Value));
            end if;

         when E_Property =>
            if Elements.Table (Self).Member (13).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (13).String_Value));
            end if;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Default;

   ----------------------------
   -- Internal_Get_Direction --
   ----------------------------

   function Internal_Get_Direction
    (Self : CMOF_Element) return CMOF_Parameter_Direction_Kind is
   begin
      case Elements.Table (Self).Kind is
         when E_Parameter =>
            return Elements.Table (Self).Member (12).Parameter_Direction_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Direction;

   ---------------------------------
   -- Internal_Get_Element_Import --
   ---------------------------------

   function Internal_Get_Element_Import
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 4;

         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 4;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 4;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 4;

         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 7;

         when E_Package =>
            return Elements.Table (Self).Member (0).Collection + 4;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 4;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Element_Import;

   ---------------------------
   -- Internal_Get_End_Type --
   ---------------------------

   function Internal_Get_End_Type
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 15;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_End_Type;

   ------------------------------
   -- Internal_Get_Enumeration --
   ------------------------------

   function Internal_Get_Enumeration
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Enumeration_Literal =>
            return Elements.Table (Self).Member (6).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Enumeration;

   --------------------------
   -- Internal_Get_Feature --
   --------------------------

   function Internal_Get_Feature
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 10;

         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 10;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 10;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 10;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 10;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Feature;

   ---------------------------------------
   -- Internal_Get_Featuring_Classifier --
   ---------------------------------------

   function Internal_Get_Featuring_Classifier
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 5;

         when E_Property =>
            return Elements.Table (Self).Member (0).Collection + 5;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Featuring_Classifier;

   --------------------------
   -- Internal_Get_General --
   --------------------------

   function Internal_Get_General
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 11;

         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 11;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 11;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 11;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 11;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_General;

   -----------------------------------
   -- Internal_Get_Imported_Element --
   -----------------------------------

   function Internal_Get_Imported_Element
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Element_Import =>
            return Elements.Table (Self).Member (4).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Imported_Element;

   ----------------------------------
   -- Internal_Get_Imported_Member --
   ----------------------------------

   function Internal_Get_Imported_Member
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 6;

         when E_Package =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Imported_Member;

   -----------------------------------
   -- Internal_Get_Imported_Package --
   -----------------------------------

   function Internal_Get_Imported_Package
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Package_Import =>
            return Elements.Table (Self).Member (3).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Imported_Package;

   --------------------------------------
   -- Internal_Get_Importing_Namespace --
   --------------------------------------

   function Internal_Get_Importing_Namespace
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Element_Import =>
            return Elements.Table (Self).Member (5).Element;

         when E_Package_Import =>
            return Elements.Table (Self).Member (4).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Importing_Namespace;

   -----------------------------------
   -- Internal_Get_Inherited_Member --
   -----------------------------------

   function Internal_Get_Inherited_Member
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 12;

         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 12;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 12;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 12;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 12;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Inherited_Member;

   ------------------------------
   -- Internal_Get_Is_Abstract --
   ------------------------------

   function Internal_Get_Is_Abstract
    (Self : CMOF_Element) return Boolean is
   begin
      case Elements.Table (Self).Kind is
         when E_Class =>
            return Elements.Table (Self).Member (8).Boolean_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Is_Abstract;

   -------------------------------
   -- Internal_Get_Is_Composite --
   -------------------------------

   function Internal_Get_Is_Composite
    (Self : CMOF_Element) return Boolean is
   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            return Elements.Table (Self).Member (14).Boolean_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Is_Composite;

   -----------------------------
   -- Internal_Get_Is_Derived --
   -----------------------------

   function Internal_Get_Is_Derived
    (Self : CMOF_Element) return Boolean is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (8).Boolean_Value;

         when E_Property =>
            return Elements.Table (Self).Member (15).Boolean_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Is_Derived;

   -----------------------------------
   -- Internal_Get_Is_Derived_Union --
   -----------------------------------

   function Internal_Get_Is_Derived_Union
    (Self : CMOF_Element) return Boolean is
   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            return Elements.Table (Self).Member (16).Boolean_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Is_Derived_Union;

   ------------------------------------------
   -- Internal_Get_Is_Final_Specialization --
   ------------------------------------------

   function Internal_Get_Is_Final_Specialization
    (Self : CMOF_Element) return Boolean is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (7).Boolean_Value;

         when E_Class =>
            return Elements.Table (Self).Member (7).Boolean_Value;

         when E_Data_Type =>
            return Elements.Table (Self).Member (7).Boolean_Value;

         when E_Enumeration =>
            return Elements.Table (Self).Member (7).Boolean_Value;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (7).Boolean_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Is_Final_Specialization;

   --------------------------
   -- Internal_Get_Is_Leaf --
   --------------------------

   function Internal_Get_Is_Leaf
    (Self : CMOF_Element) return Boolean is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (6).Boolean_Value;

         when E_Property =>
            return Elements.Table (Self).Member (6).Boolean_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Is_Leaf;

   -----------------------------
   -- Internal_Get_Is_Ordered --
   -----------------------------

   function Internal_Get_Is_Ordered
    (Self : CMOF_Element) return Boolean is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (8).Boolean_Value;

         when E_Parameter =>
            return Elements.Table (Self).Member (7).Boolean_Value;

         when E_Property =>
            return Elements.Table (Self).Member (7).Boolean_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Is_Ordered;

   ---------------------------
   -- Internal_Get_Is_Query --
   ---------------------------

   function Internal_Get_Is_Query
    (Self : CMOF_Element) return Boolean is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (7).Boolean_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Is_Query;

   -------------------------------
   -- Internal_Get_Is_Read_Only --
   -------------------------------

   function Internal_Get_Is_Read_Only
    (Self : CMOF_Element) return Boolean is
   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            return Elements.Table (Self).Member (12).Boolean_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Is_Read_Only;

   ----------------------------
   -- Internal_Get_Is_Unique --
   ----------------------------

   function Internal_Get_Is_Unique
    (Self : CMOF_Element) return Boolean is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (9).Boolean_Value;

         when E_Parameter =>
            return Elements.Table (Self).Member (8).Boolean_Value;

         when E_Property =>
            return Elements.Table (Self).Member (8).Boolean_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Is_Unique;

   ---------------------------
   -- Internal_Get_Language --
   ---------------------------

   function Internal_Get_Language
    (Self : CMOF_Element) return Collection_Of_CMOF_String is
   begin
      case Elements.Table (Self).Kind is
         when E_Opaque_Expression =>
            return Elements.Table (Self).Member (8).String_Collection_Value;
         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Language;

   ------------------------
   -- Internal_Get_Lower --
   ------------------------

   function Internal_Get_Lower
    (Self : CMOF_Element) return AMF.Optional_Integer is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (10).Integer_Holder_Value;

         when E_Parameter =>
            return Elements.Table (Self).Member (9).Integer_Holder_Value;

         when E_Property =>
            return Elements.Table (Self).Member (9).Integer_Holder_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Lower;

   -------------------------
   -- Internal_Get_Member --
   -------------------------

   function Internal_Get_Member
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 7;

         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 7;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 7;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 7;

         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 10;

         when E_Package =>
            return Elements.Table (Self).Member (0).Collection + 7;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 7;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Member;

   -----------------------------
   -- Internal_Get_Member_End --
   -----------------------------

   function Internal_Get_Member_End
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 16;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Member_End;

   ---------------------------------
   -- Internal_Get_Merged_Package --
   ---------------------------------

   function Internal_Get_Merged_Package
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Package_Merge =>
            return Elements.Table (Self).Member (3).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Merged_Package;

   -----------------------
   -- Internal_Get_Name --
   -----------------------

   function Internal_Get_Name
    (Self : CMOF_Element) return AMF.Optional_String is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when E_Class =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when E_Constraint =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when E_Data_Type =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when E_Enumeration =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when E_Enumeration_Literal =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when E_Expression =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when E_Opaque_Expression =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when E_Operation =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when E_Package =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when E_Parameter =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when E_Primitive_Type =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when E_Property =>
            if Elements.Table (Self).Member (2).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Name;

   ----------------------------
   -- Internal_Get_Namespace --
   ----------------------------

   function Internal_Get_Namespace
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (4).Element;

         when E_Class =>
            return Elements.Table (Self).Member (4).Element;

         when E_Constraint =>
            return Elements.Table (Self).Member (4).Element;

         when E_Data_Type =>
            return Elements.Table (Self).Member (4).Element;

         when E_Enumeration =>
            return Elements.Table (Self).Member (4).Element;

         when E_Enumeration_Literal =>
            return Elements.Table (Self).Member (4).Element;

         when E_Expression =>
            return Elements.Table (Self).Member (4).Element;

         when E_Opaque_Expression =>
            return Elements.Table (Self).Member (4).Element;

         when E_Operation =>
            return Elements.Table (Self).Member (4).Element;

         when E_Package =>
            return Elements.Table (Self).Member (4).Element;

         when E_Parameter =>
            return Elements.Table (Self).Member (4).Element;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (4).Element;

         when E_Property =>
            return Elements.Table (Self).Member (4).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Namespace;

   --------------------------------------
   -- Internal_Get_Navigable_Owned_End --
   --------------------------------------

   function Internal_Get_Navigable_Owned_End
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 17;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Navigable_Owned_End;

   ---------------------------------
   -- Internal_Get_Nested_Package --
   ---------------------------------

   function Internal_Get_Nested_Package
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Package =>
            return Elements.Table (Self).Member (0).Collection + 11;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Nested_Package;

   ----------------------------------
   -- Internal_Get_Nesting_Package --
   ----------------------------------

   function Internal_Get_Nesting_Package
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Package =>
            return Elements.Table (Self).Member (6).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Nesting_Package;

   --------------------------
   -- Internal_Get_Operand --
   --------------------------

   function Internal_Get_Operand
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Expression =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Operand;

   ----------------------------
   -- Internal_Get_Operation --
   ----------------------------

   function Internal_Get_Operation
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Parameter =>
            return Elements.Table (Self).Member (13).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Operation;

   ---------------------------
   -- Internal_Get_Opposite --
   ---------------------------

   function Internal_Get_Opposite
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            return Elements.Table (Self).Member (19).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Opposite;

   ----------------------------------
   -- Internal_Get_Owned_Attribute --
   ----------------------------------

   function Internal_Get_Owned_Attribute
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 13;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 13;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 13;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 13;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owned_Attribute;

   --------------------------------
   -- Internal_Get_Owned_Comment --
   --------------------------------

   function Internal_Get_Owned_Comment
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Comment =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Constraint =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Element_Import =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Enumeration_Literal =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Expression =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Opaque_Expression =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Package =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Package_Import =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Package_Merge =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Parameter =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when E_Property =>
            return Elements.Table (Self).Member (0).Collection + 2;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owned_Comment;

   --------------------------------
   -- Internal_Get_Owned_Element --
   --------------------------------

   function Internal_Get_Owned_Element
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Comment =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Constraint =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Element_Import =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Enumeration_Literal =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Expression =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Opaque_Expression =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Package =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Package_Import =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Package_Merge =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Parameter =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when E_Property =>
            return Elements.Table (Self).Member (0).Collection + 1;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owned_Element;

   ----------------------------
   -- Internal_Get_Owned_End --
   ----------------------------

   function Internal_Get_Owned_End
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 14;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owned_End;

   --------------------------------
   -- Internal_Get_Owned_Literal --
   --------------------------------

   function Internal_Get_Owned_Literal
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 15;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owned_Literal;

   -------------------------------
   -- Internal_Get_Owned_Member --
   -------------------------------

   function Internal_Get_Owned_Member
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 6;

         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 6;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 6;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 6;

         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 9;

         when E_Package =>
            return Elements.Table (Self).Member (0).Collection + 6;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 6;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owned_Member;

   ----------------------------------
   -- Internal_Get_Owned_Operation --
   ----------------------------------

   function Internal_Get_Owned_Operation
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 14;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 14;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 14;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 14;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owned_Operation;

   ----------------------------------
   -- Internal_Get_Owned_Parameter --
   ----------------------------------

   function Internal_Get_Owned_Parameter
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 12;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owned_Parameter;

   -----------------------------
   -- Internal_Get_Owned_Rule --
   -----------------------------

   function Internal_Get_Owned_Rule
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 8;

         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 8;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 8;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 8;

         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 11;

         when E_Package =>
            return Elements.Table (Self).Member (0).Collection + 8;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 8;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owned_Rule;

   -----------------------------
   -- Internal_Get_Owned_Type --
   -----------------------------

   function Internal_Get_Owned_Type
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Package =>
            return Elements.Table (Self).Member (0).Collection + 10;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owned_Type;

   ------------------------
   -- Internal_Get_Owner --
   ------------------------

   function Internal_Get_Owner
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (1).Element;

         when E_Class =>
            return Elements.Table (Self).Member (1).Element;

         when E_Comment =>
            return Elements.Table (Self).Member (1).Element;

         when E_Constraint =>
            return Elements.Table (Self).Member (1).Element;

         when E_Data_Type =>
            return Elements.Table (Self).Member (1).Element;

         when E_Element_Import =>
            return Elements.Table (Self).Member (1).Element;

         when E_Enumeration =>
            return Elements.Table (Self).Member (1).Element;

         when E_Enumeration_Literal =>
            return Elements.Table (Self).Member (1).Element;

         when E_Expression =>
            return Elements.Table (Self).Member (1).Element;

         when E_Opaque_Expression =>
            return Elements.Table (Self).Member (1).Element;

         when E_Operation =>
            return Elements.Table (Self).Member (1).Element;

         when E_Package =>
            return Elements.Table (Self).Member (1).Element;

         when E_Package_Import =>
            return Elements.Table (Self).Member (1).Element;

         when E_Package_Merge =>
            return Elements.Table (Self).Member (1).Element;

         when E_Parameter =>
            return Elements.Table (Self).Member (1).Element;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (1).Element;

         when E_Property =>
            return Elements.Table (Self).Member (1).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owner;

   -------------------------------------
   -- Internal_Get_Owning_Association --
   -------------------------------------

   function Internal_Get_Owning_Association
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            return Elements.Table (Self).Member (18).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owning_Association;

   --------------------------
   -- Internal_Get_Package --
   --------------------------

   function Internal_Get_Package
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (6).Element;

         when E_Class =>
            return Elements.Table (Self).Member (6).Element;

         when E_Data_Type =>
            return Elements.Table (Self).Member (6).Element;

         when E_Enumeration =>
            return Elements.Table (Self).Member (6).Element;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (6).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Package;

   ---------------------------------
   -- Internal_Get_Package_Import --
   ---------------------------------

   function Internal_Get_Package_Import
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 5;

         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 5;

         when E_Data_Type =>
            return Elements.Table (Self).Member (0).Collection + 5;

         when E_Enumeration =>
            return Elements.Table (Self).Member (0).Collection + 5;

         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 8;

         when E_Package =>
            return Elements.Table (Self).Member (0).Collection + 5;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (0).Collection + 5;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Package_Import;

   --------------------------------
   -- Internal_Get_Package_Merge --
   --------------------------------

   function Internal_Get_Package_Merge
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Package =>
            return Elements.Table (Self).Member (0).Collection + 12;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Package_Merge;

   -----------------------------------
   -- Internal_Get_Packaged_Element --
   -----------------------------------

   function Internal_Get_Packaged_Element
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Package =>
            return Elements.Table (Self).Member (0).Collection + 9;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Packaged_Element;

   --------------------------------
   -- Internal_Get_Postcondition --
   --------------------------------

   function Internal_Get_Postcondition
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 16;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Postcondition;

   -------------------------------
   -- Internal_Get_Precondition --
   -------------------------------

   function Internal_Get_Precondition
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 15;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Precondition;

   ---------------------------------
   -- Internal_Get_Qualified_Name --
   ---------------------------------

   function Internal_Get_Qualified_Name
    (Self : CMOF_Element) return AMF.Optional_String is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            if Elements.Table (Self).Member (5).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (5).String_Value));
            end if;

         when E_Class =>
            if Elements.Table (Self).Member (5).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (5).String_Value));
            end if;

         when E_Constraint =>
            if Elements.Table (Self).Member (5).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (5).String_Value));
            end if;

         when E_Data_Type =>
            if Elements.Table (Self).Member (5).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (5).String_Value));
            end if;

         when E_Enumeration =>
            if Elements.Table (Self).Member (5).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (5).String_Value));
            end if;

         when E_Enumeration_Literal =>
            if Elements.Table (Self).Member (5).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (5).String_Value));
            end if;

         when E_Expression =>
            if Elements.Table (Self).Member (5).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (5).String_Value));
            end if;

         when E_Opaque_Expression =>
            if Elements.Table (Self).Member (5).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (5).String_Value));
            end if;

         when E_Operation =>
            if Elements.Table (Self).Member (5).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (5).String_Value));
            end if;

         when E_Package =>
            if Elements.Table (Self).Member (5).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (5).String_Value));
            end if;

         when E_Parameter =>
            if Elements.Table (Self).Member (5).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (5).String_Value));
            end if;

         when E_Primitive_Type =>
            if Elements.Table (Self).Member (5).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (5).String_Value));
            end if;

         when E_Property =>
            if Elements.Table (Self).Member (5).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (5).String_Value));
            end if;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Qualified_Name;

   -----------------------------------
   -- Internal_Get_Raised_Exception --
   -----------------------------------

   function Internal_Get_Raised_Exception
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 13;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Raised_Exception;

   ------------------------------------
   -- Internal_Get_Receiving_Package --
   ------------------------------------

   function Internal_Get_Receiving_Package
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Package_Merge =>
            return Elements.Table (Self).Member (2).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Receiving_Package;

   ------------------------------------
   -- Internal_Get_Redefined_Element --
   ------------------------------------

   function Internal_Get_Redefined_Element
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 4;

         when E_Property =>
            return Elements.Table (Self).Member (0).Collection + 4;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Redefined_Element;

   --------------------------------------
   -- Internal_Get_Redefined_Operation --
   --------------------------------------

   function Internal_Get_Redefined_Operation
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 14;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Redefined_Operation;

   -------------------------------------
   -- Internal_Get_Redefined_Property --
   -------------------------------------

   function Internal_Get_Redefined_Property
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            return Elements.Table (Self).Member (0).Collection + 6;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Redefined_Property;

   ---------------------------------------
   -- Internal_Get_Redefinition_Context --
   ---------------------------------------

   function Internal_Get_Redefinition_Context
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when E_Property =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Redefinition_Context;

   ----------------------------------
   -- Internal_Get_Related_Element --
   ----------------------------------

   function Internal_Get_Related_Element
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (0).Collection + 13;

         when E_Element_Import =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when E_Package_Import =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when E_Package_Merge =>
            return Elements.Table (Self).Member (0).Collection + 3;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Related_Element;

   -------------------------
   -- Internal_Get_Source --
   -------------------------

   function Internal_Get_Source
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Element_Import =>
            return Elements.Table (Self).Member (0).Collection + 4;

         when E_Package_Import =>
            return Elements.Table (Self).Member (0).Collection + 4;

         when E_Package_Merge =>
            return Elements.Table (Self).Member (0).Collection + 4;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Source;

   --------------------------------
   -- Internal_Get_Specification --
   --------------------------------

   function Internal_Get_Specification
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Constraint =>
            return Elements.Table (Self).Member (6).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Specification;

   -------------------------------------
   -- Internal_Get_Subsetted_Property --
   -------------------------------------

   function Internal_Get_Subsetted_Property
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            return Elements.Table (Self).Member (0).Collection + 7;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Subsetted_Property;

   ------------------------------
   -- Internal_Get_Super_Class --
   ------------------------------

   function Internal_Get_Super_Class
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Class =>
            return Elements.Table (Self).Member (0).Collection + 11;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Super_Class;

   -------------------------
   -- Internal_Get_Target --
   -------------------------

   function Internal_Get_Target
    (Self : CMOF_Element) return Collection_Of_CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Element_Import =>
            return Elements.Table (Self).Member (0).Collection + 5;

         when E_Package_Import =>
            return Elements.Table (Self).Member (0).Collection + 5;

         when E_Package_Merge =>
            return Elements.Table (Self).Member (0).Collection + 5;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Target;

   -----------------------
   -- Internal_Get_Type --
   -----------------------

   function Internal_Get_Type
    (Self : CMOF_Element) return CMOF_Element is
   begin
      case Elements.Table (Self).Kind is
         when E_Expression =>
            return Elements.Table (Self).Member (6).Element;

         when E_Opaque_Expression =>
            return Elements.Table (Self).Member (6).Element;

         when E_Operation =>
            return Elements.Table (Self).Member (14).Element;

         when E_Parameter =>
            return Elements.Table (Self).Member (6).Element;

         when E_Property =>
            return Elements.Table (Self).Member (11).Element;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Type;

   ------------------------
   -- Internal_Get_Upper --
   ------------------------

   function Internal_Get_Upper
    (Self : CMOF_Element) return AMF.Optional_Unlimited_Natural is
   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            return Elements.Table (Self).Member (11).Natural_Holder_Value;

         when E_Parameter =>
            return Elements.Table (Self).Member (10).Natural_Holder_Value;

         when E_Property =>
            return Elements.Table (Self).Member (10).Natural_Holder_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Upper;

   ----------------------
   -- Internal_Get_Uri --
   ----------------------

   function Internal_Get_Uri
    (Self : CMOF_Element) return AMF.Optional_String is
   begin
      case Elements.Table (Self).Kind is
         when E_Package =>
            if Elements.Table (Self).Member (7).String_Value = null then
               return (Is_Empty => True);

            else
               return
                (False,
                 League.Strings.Internals.Create
                  (Elements.Table (Self).Member (7).String_Value));
            end if;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Uri;

   -----------------------------
   -- Internal_Get_Visibility --
   -----------------------------

   function Internal_Get_Visibility
    (Self : CMOF_Element) return CMOF_Visibility_Kind is
   begin
      case Elements.Table (Self).Kind is
         when E_Element_Import =>
            return Elements.Table (Self).Member (2).Visibility_Value;

         when E_Package_Import =>
            return Elements.Table (Self).Member (2).Visibility_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Visibility;

   -----------------------------
   -- Internal_Get_Visibility --
   -----------------------------

   function Internal_Get_Visibility
    (Self : CMOF_Element) return AMF.CMOF.Optional_CMOF_Visibility_Kind is
   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            return Elements.Table (Self).Member (3).Visibility_Holder_Value;

         when E_Class =>
            return Elements.Table (Self).Member (3).Visibility_Holder_Value;

         when E_Constraint =>
            return Elements.Table (Self).Member (3).Visibility_Holder_Value;

         when E_Data_Type =>
            return Elements.Table (Self).Member (3).Visibility_Holder_Value;

         when E_Enumeration =>
            return Elements.Table (Self).Member (3).Visibility_Holder_Value;

         when E_Enumeration_Literal =>
            return Elements.Table (Self).Member (3).Visibility_Holder_Value;

         when E_Expression =>
            return Elements.Table (Self).Member (3).Visibility_Holder_Value;

         when E_Opaque_Expression =>
            return Elements.Table (Self).Member (3).Visibility_Holder_Value;

         when E_Operation =>
            return Elements.Table (Self).Member (3).Visibility_Holder_Value;

         when E_Package =>
            return Elements.Table (Self).Member (3).Visibility_Holder_Value;

         when E_Parameter =>
            return Elements.Table (Self).Member (3).Visibility_Holder_Value;

         when E_Primitive_Type =>
            return Elements.Table (Self).Member (3).Visibility_Holder_Value;

         when E_Property =>
            return Elements.Table (Self).Member (3).Visibility_Holder_Value;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Visibility;

   ------------------------
   -- Internal_Set_Alias --
   ------------------------

   procedure Internal_Set_Alias
    (Self : CMOF_Element;
     To   : AMF.Optional_String)
   is
      Old : AMF.Optional_String;

   begin
      case Elements.Table (Self).Kind is
         when E_Element_Import =>
            if Elements.Table (Self).Member (3).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (3).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (3).String_Value := null;

            else
               Elements.Table (Self).Member (3).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (3).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Element_Import_Alias, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Alias;

   ------------------------------
   -- Internal_Set_Association --
   ------------------------------

   procedure Internal_Set_Association
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            Old := Elements.Table (Self).Member (21).Element;
            Elements.Table (Self).Member (21).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Property_Association, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Association;

   -----------------------
   -- Internal_Set_Body --
   -----------------------

   procedure Internal_Set_Body
    (Self : CMOF_Element;
     To   : AMF.Optional_String)
   is
      Old : AMF.Optional_String;

   begin
      case Elements.Table (Self).Kind is
         when E_Comment =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Comment_Body, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Body;

   ---------------------------------
   -- Internal_Set_Body_Condition --
   ---------------------------------

   procedure Internal_Set_Body_Condition
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            Old := Elements.Table (Self).Member (15).Element;
            Elements.Table (Self).Member (15).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Operation_Body_Condition, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Body_Condition;

   ------------------------
   -- Internal_Set_Class --
   ------------------------

   procedure Internal_Set_Class
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            Old := Elements.Table (Self).Member (12).Element;
            Elements.Table (Self).Member (12).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Operation_Class, Old, To);

         when E_Property =>
            Old := Elements.Table (Self).Member (17).Element;
            Elements.Table (Self).Member (17).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Property_Class, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Class;

   --------------------------
   -- Internal_Set_Context --
   --------------------------

   procedure Internal_Set_Context
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Constraint =>
            Old := Elements.Table (Self).Member (7).Element;
            Elements.Table (Self).Member (7).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Constraint_Context, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Context;

   ---------------------------
   -- Internal_Set_Datatype --
   ---------------------------

   procedure Internal_Set_Datatype
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            Old := Elements.Table (Self).Member (13).Element;
            Elements.Table (Self).Member (13).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Operation_Datatype, Old, To);

         when E_Property =>
            Old := Elements.Table (Self).Member (20).Element;
            Elements.Table (Self).Member (20).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Property_Datatype, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Datatype;

   --------------------------
   -- Internal_Set_Default --
   --------------------------

   procedure Internal_Set_Default
    (Self : CMOF_Element;
     To   : AMF.Optional_String)
   is
      Old : AMF.Optional_String;

   begin
      case Elements.Table (Self).Kind is
         when E_Parameter =>
            if Elements.Table (Self).Member (11).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (11).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (11).String_Value := null;

            else
               Elements.Table (Self).Member (11).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (11).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Parameter_Default, Old, To);

         when E_Property =>
            if Elements.Table (Self).Member (13).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (13).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (13).String_Value := null;

            else
               Elements.Table (Self).Member (13).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (13).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Property_Default, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Default;

   ----------------------------
   -- Internal_Set_Direction --
   ----------------------------

   procedure Internal_Set_Direction
    (Self : CMOF_Element;
     To   : CMOF_Parameter_Direction_Kind)
   is
      Old : CMOF_Parameter_Direction_Kind;

   begin
      case Elements.Table (Self).Kind is
         when E_Parameter =>
            Old := Elements.Table (Self).Member (12).Parameter_Direction_Value;
            Elements.Table (Self).Member (12).Parameter_Direction_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Parameter_Direction, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Direction;

   ------------------------------
   -- Internal_Set_Enumeration --
   ------------------------------

   procedure Internal_Set_Enumeration
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Enumeration_Literal =>
            Old := Elements.Table (Self).Member (6).Element;
            Elements.Table (Self).Member (6).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Enumeration_Literal_Enumeration, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Enumeration;

   -----------------------------------
   -- Internal_Set_Imported_Element --
   -----------------------------------

   procedure Internal_Set_Imported_Element
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Element_Import =>
            Old := Elements.Table (Self).Member (4).Element;
            Elements.Table (Self).Member (4).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Element_Import_Imported_Element, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Imported_Element;

   -----------------------------------
   -- Internal_Set_Imported_Package --
   -----------------------------------

   procedure Internal_Set_Imported_Package
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Package_Import =>
            Old := Elements.Table (Self).Member (3).Element;
            Elements.Table (Self).Member (3).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Package_Import_Imported_Package, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Imported_Package;

   --------------------------------------
   -- Internal_Set_Importing_Namespace --
   --------------------------------------

   procedure Internal_Set_Importing_Namespace
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Element_Import =>
            Old := Elements.Table (Self).Member (5).Element;
            Elements.Table (Self).Member (5).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Element_Import_Importing_Namespace, Old, To);

         when E_Package_Import =>
            Old := Elements.Table (Self).Member (4).Element;
            Elements.Table (Self).Member (4).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Package_Import_Importing_Namespace, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Importing_Namespace;

   ------------------------------
   -- Internal_Set_Is_Abstract --
   ------------------------------

   procedure Internal_Set_Is_Abstract
    (Self : CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      case Elements.Table (Self).Kind is
         when E_Class =>
            Old := Elements.Table (Self).Member (8).Boolean_Value;
            Elements.Table (Self).Member (8).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Class_Is_Abstract, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Is_Abstract;

   -------------------------------
   -- Internal_Set_Is_Composite --
   -------------------------------

   procedure Internal_Set_Is_Composite
    (Self : CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            Old := Elements.Table (Self).Member (14).Boolean_Value;
            Elements.Table (Self).Member (14).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Property_Is_Composite, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Is_Composite;

   -----------------------------
   -- Internal_Set_Is_Derived --
   -----------------------------

   procedure Internal_Set_Is_Derived
    (Self : CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            Old := Elements.Table (Self).Member (8).Boolean_Value;
            Elements.Table (Self).Member (8).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Association_Is_Derived, Old, To);

         when E_Property =>
            Old := Elements.Table (Self).Member (15).Boolean_Value;
            Elements.Table (Self).Member (15).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Property_Is_Derived, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Is_Derived;

   -----------------------------------
   -- Internal_Set_Is_Derived_Union --
   -----------------------------------

   procedure Internal_Set_Is_Derived_Union
    (Self : CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            Old := Elements.Table (Self).Member (16).Boolean_Value;
            Elements.Table (Self).Member (16).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Property_Is_Derived_Union, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Is_Derived_Union;

   ------------------------------------------
   -- Internal_Set_Is_Final_Specialization --
   ------------------------------------------

   procedure Internal_Set_Is_Final_Specialization
    (Self : CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            Old := Elements.Table (Self).Member (7).Boolean_Value;
            Elements.Table (Self).Member (7).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Classifier_Is_Final_Specialization, Old, To);

         when E_Class =>
            Old := Elements.Table (Self).Member (7).Boolean_Value;
            Elements.Table (Self).Member (7).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Classifier_Is_Final_Specialization, Old, To);

         when E_Data_Type =>
            Old := Elements.Table (Self).Member (7).Boolean_Value;
            Elements.Table (Self).Member (7).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Classifier_Is_Final_Specialization, Old, To);

         when E_Enumeration =>
            Old := Elements.Table (Self).Member (7).Boolean_Value;
            Elements.Table (Self).Member (7).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Classifier_Is_Final_Specialization, Old, To);

         when E_Primitive_Type =>
            Old := Elements.Table (Self).Member (7).Boolean_Value;
            Elements.Table (Self).Member (7).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Classifier_Is_Final_Specialization, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Is_Final_Specialization;

   --------------------------
   -- Internal_Set_Is_Leaf --
   --------------------------

   procedure Internal_Set_Is_Leaf
    (Self : CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            Old := Elements.Table (Self).Member (6).Boolean_Value;
            Elements.Table (Self).Member (6).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Redefinable_Element_Is_Leaf, Old, To);

         when E_Property =>
            Old := Elements.Table (Self).Member (6).Boolean_Value;
            Elements.Table (Self).Member (6).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Redefinable_Element_Is_Leaf, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Is_Leaf;

   -----------------------------
   -- Internal_Set_Is_Ordered --
   -----------------------------

   procedure Internal_Set_Is_Ordered
    (Self : CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            Old := Elements.Table (Self).Member (8).Boolean_Value;
            Elements.Table (Self).Member (8).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Operation_Is_Ordered, Old, To);

         when E_Parameter =>
            Old := Elements.Table (Self).Member (7).Boolean_Value;
            Elements.Table (Self).Member (7).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Multiplicity_Element_Is_Ordered, Old, To);

         when E_Property =>
            Old := Elements.Table (Self).Member (7).Boolean_Value;
            Elements.Table (Self).Member (7).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Multiplicity_Element_Is_Ordered, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Is_Ordered;

   ---------------------------
   -- Internal_Set_Is_Query --
   ---------------------------

   procedure Internal_Set_Is_Query
    (Self : CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            Old := Elements.Table (Self).Member (7).Boolean_Value;
            Elements.Table (Self).Member (7).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Operation_Is_Query, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Is_Query;

   -------------------------------
   -- Internal_Set_Is_Read_Only --
   -------------------------------

   procedure Internal_Set_Is_Read_Only
    (Self : CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            Old := Elements.Table (Self).Member (12).Boolean_Value;
            Elements.Table (Self).Member (12).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Property_Is_Read_Only, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Is_Read_Only;

   ----------------------------
   -- Internal_Set_Is_Unique --
   ----------------------------

   procedure Internal_Set_Is_Unique
    (Self : CMOF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            Old := Elements.Table (Self).Member (9).Boolean_Value;
            Elements.Table (Self).Member (9).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Operation_Is_Unique, Old, To);

         when E_Parameter =>
            Old := Elements.Table (Self).Member (8).Boolean_Value;
            Elements.Table (Self).Member (8).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Multiplicity_Element_Is_Unique, Old, To);

         when E_Property =>
            Old := Elements.Table (Self).Member (8).Boolean_Value;
            Elements.Table (Self).Member (8).Boolean_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Multiplicity_Element_Is_Unique, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Is_Unique;

   ------------------------
   -- Internal_Set_Lower --
   ------------------------

   procedure Internal_Set_Lower
    (Self : CMOF_Element;
     To   : AMF.Optional_Integer)
   is
      Old : AMF.Optional_Integer;

   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            Old := Elements.Table (Self).Member (10).Integer_Holder_Value;
            Elements.Table (Self).Member (10).Integer_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Operation_Lower, Old, To);

         when E_Parameter =>
            Old := Elements.Table (Self).Member (9).Integer_Holder_Value;
            Elements.Table (Self).Member (9).Integer_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Multiplicity_Element_Lower, Old, To);

         when E_Property =>
            Old := Elements.Table (Self).Member (9).Integer_Holder_Value;
            Elements.Table (Self).Member (9).Integer_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Multiplicity_Element_Lower, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Lower;

   ---------------------------------
   -- Internal_Set_Merged_Package --
   ---------------------------------

   procedure Internal_Set_Merged_Package
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Package_Merge =>
            Old := Elements.Table (Self).Member (3).Element;
            Elements.Table (Self).Member (3).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Package_Merge_Merged_Package, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Merged_Package;

   -----------------------
   -- Internal_Set_Name --
   -----------------------

   procedure Internal_Set_Name
    (Self : CMOF_Element;
     To   : AMF.Optional_String)
   is
      Old : AMF.Optional_String;

   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Name, Old, To);

         when E_Class =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Name, Old, To);

         when E_Constraint =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Name, Old, To);

         when E_Data_Type =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Name, Old, To);

         when E_Enumeration =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Name, Old, To);

         when E_Enumeration_Literal =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Name, Old, To);

         when E_Expression =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Name, Old, To);

         when E_Opaque_Expression =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Name, Old, To);

         when E_Operation =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Name, Old, To);

         when E_Package =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Name, Old, To);

         when E_Parameter =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Name, Old, To);

         when E_Primitive_Type =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Name, Old, To);

         when E_Property =>
            if Elements.Table (Self).Member (2).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (2).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (2).String_Value := null;

            else
               Elements.Table (Self).Member (2).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (2).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Name, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Name;

   ----------------------------------
   -- Internal_Set_Nesting_Package --
   ----------------------------------

   procedure Internal_Set_Nesting_Package
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Package =>
            Old := Elements.Table (Self).Member (6).Element;
            Elements.Table (Self).Member (6).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Package_Nesting_Package, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Nesting_Package;

   ----------------------------
   -- Internal_Set_Operation --
   ----------------------------

   procedure Internal_Set_Operation
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Parameter =>
            Old := Elements.Table (Self).Member (13).Element;
            Elements.Table (Self).Member (13).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Parameter_Operation, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Operation;

   ---------------------------
   -- Internal_Set_Opposite --
   ---------------------------

   procedure Internal_Set_Opposite
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            Old := Elements.Table (Self).Member (19).Element;
            Elements.Table (Self).Member (19).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Property_Opposite, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Opposite;

   -------------------------------------
   -- Internal_Set_Owning_Association --
   -------------------------------------

   procedure Internal_Set_Owning_Association
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Property =>
            Old := Elements.Table (Self).Member (18).Element;
            Elements.Table (Self).Member (18).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Property_Owning_Association, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Owning_Association;

   --------------------------
   -- Internal_Set_Package --
   --------------------------

   procedure Internal_Set_Package
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            Old := Elements.Table (Self).Member (6).Element;
            Elements.Table (Self).Member (6).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Type_Package, Old, To);

         when E_Class =>
            Old := Elements.Table (Self).Member (6).Element;
            Elements.Table (Self).Member (6).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Type_Package, Old, To);

         when E_Data_Type =>
            Old := Elements.Table (Self).Member (6).Element;
            Elements.Table (Self).Member (6).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Type_Package, Old, To);

         when E_Enumeration =>
            Old := Elements.Table (Self).Member (6).Element;
            Elements.Table (Self).Member (6).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Type_Package, Old, To);

         when E_Primitive_Type =>
            Old := Elements.Table (Self).Member (6).Element;
            Elements.Table (Self).Member (6).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Type_Package, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Package;

   ------------------------------------
   -- Internal_Set_Receiving_Package --
   ------------------------------------

   procedure Internal_Set_Receiving_Package
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Package_Merge =>
            Old := Elements.Table (Self).Member (2).Element;
            Elements.Table (Self).Member (2).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Package_Merge_Receiving_Package, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Receiving_Package;

   --------------------------------
   -- Internal_Set_Specification --
   --------------------------------

   procedure Internal_Set_Specification
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Constraint =>
            Old := Elements.Table (Self).Member (6).Element;
            Elements.Table (Self).Member (6).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Constraint_Specification, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Specification;

   -----------------------
   -- Internal_Set_Type --
   -----------------------

   procedure Internal_Set_Type
    (Self : CMOF_Element;
     To   : CMOF_Element)
   is
      Old : CMOF_Element;

   begin
      case Elements.Table (Self).Kind is
         when E_Expression =>
            Old := Elements.Table (Self).Member (6).Element;
            Elements.Table (Self).Member (6).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Typed_Element_Type, Old, To);

         when E_Opaque_Expression =>
            Old := Elements.Table (Self).Member (6).Element;
            Elements.Table (Self).Member (6).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Typed_Element_Type, Old, To);

         when E_Operation =>
            Old := Elements.Table (Self).Member (14).Element;
            Elements.Table (Self).Member (14).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Operation_Type, Old, To);

         when E_Parameter =>
            Old := Elements.Table (Self).Member (6).Element;
            Elements.Table (Self).Member (6).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Typed_Element_Type, Old, To);

         when E_Property =>
            Old := Elements.Table (Self).Member (11).Element;
            Elements.Table (Self).Member (11).Element := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Typed_Element_Type, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Type;

   ------------------------
   -- Internal_Set_Upper --
   ------------------------

   procedure Internal_Set_Upper
    (Self : CMOF_Element;
     To   : AMF.Optional_Unlimited_Natural)
   is
      Old : AMF.Optional_Unlimited_Natural;

   begin
      case Elements.Table (Self).Kind is
         when E_Operation =>
            Old := Elements.Table (Self).Member (11).Natural_Holder_Value;
            Elements.Table (Self).Member (11).Natural_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Operation_Upper, Old, To);

         when E_Parameter =>
            Old := Elements.Table (Self).Member (10).Natural_Holder_Value;
            Elements.Table (Self).Member (10).Natural_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Multiplicity_Element_Upper, Old, To);

         when E_Property =>
            Old := Elements.Table (Self).Member (10).Natural_Holder_Value;
            Elements.Table (Self).Member (10).Natural_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Multiplicity_Element_Upper, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Upper;

   ----------------------
   -- Internal_Set_Uri --
   ----------------------

   procedure Internal_Set_Uri
    (Self : CMOF_Element;
     To   : AMF.Optional_String)
   is
      Old : AMF.Optional_String;

   begin
      case Elements.Table (Self).Kind is
         when E_Package =>
            if Elements.Table (Self).Member (7).String_Value /= null then
               Old :=
                (False,
                 League.Strings.Internals.Wrap
                  (Elements.Table (Self).Member (7).String_Value));
            end if;

            if To.Is_Empty then
               Elements.Table (Self).Member (7).String_Value := null;

            else
               Elements.Table (Self).Member (7).String_Value :=
                 League.Strings.Internals.Internal (To.Value);
               Matreshka.Internals.Strings.Reference
                (Elements.Table (Self).Member (7).String_Value);
            end if;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Package_Uri, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Uri;

   -----------------------------
   -- Internal_Set_Visibility --
   -----------------------------

   procedure Internal_Set_Visibility
    (Self : CMOF_Element;
     To   : CMOF_Visibility_Kind)
   is
      Old : CMOF_Visibility_Kind;

   begin
      case Elements.Table (Self).Kind is
         when E_Element_Import =>
            Old := Elements.Table (Self).Member (2).Visibility_Value;
            Elements.Table (Self).Member (2).Visibility_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Element_Import_Visibility, Old, To);

         when E_Package_Import =>
            Old := Elements.Table (Self).Member (2).Visibility_Value;
            Elements.Table (Self).Member (2).Visibility_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Package_Import_Visibility, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Visibility;

   -----------------------------
   -- Internal_Set_Visibility --
   -----------------------------

   procedure Internal_Set_Visibility
    (Self : CMOF_Element;
     To   : AMF.CMOF.Optional_CMOF_Visibility_Kind)
   is
      Old : AMF.CMOF.Optional_CMOF_Visibility_Kind;

   begin
      case Elements.Table (Self).Kind is
         when E_Association =>
            Old := Elements.Table (Self).Member (3).Visibility_Holder_Value;
            Elements.Table (Self).Member (3).Visibility_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Visibility, Old, To);

         when E_Class =>
            Old := Elements.Table (Self).Member (3).Visibility_Holder_Value;
            Elements.Table (Self).Member (3).Visibility_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Visibility, Old, To);

         when E_Constraint =>
            Old := Elements.Table (Self).Member (3).Visibility_Holder_Value;
            Elements.Table (Self).Member (3).Visibility_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Visibility, Old, To);

         when E_Data_Type =>
            Old := Elements.Table (Self).Member (3).Visibility_Holder_Value;
            Elements.Table (Self).Member (3).Visibility_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Visibility, Old, To);

         when E_Enumeration =>
            Old := Elements.Table (Self).Member (3).Visibility_Holder_Value;
            Elements.Table (Self).Member (3).Visibility_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Visibility, Old, To);

         when E_Enumeration_Literal =>
            Old := Elements.Table (Self).Member (3).Visibility_Holder_Value;
            Elements.Table (Self).Member (3).Visibility_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Visibility, Old, To);

         when E_Expression =>
            Old := Elements.Table (Self).Member (3).Visibility_Holder_Value;
            Elements.Table (Self).Member (3).Visibility_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Visibility, Old, To);

         when E_Opaque_Expression =>
            Old := Elements.Table (Self).Member (3).Visibility_Holder_Value;
            Elements.Table (Self).Member (3).Visibility_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Visibility, Old, To);

         when E_Operation =>
            Old := Elements.Table (Self).Member (3).Visibility_Holder_Value;
            Elements.Table (Self).Member (3).Visibility_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Visibility, Old, To);

         when E_Package =>
            Old := Elements.Table (Self).Member (3).Visibility_Holder_Value;
            Elements.Table (Self).Member (3).Visibility_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Visibility, Old, To);

         when E_Parameter =>
            Old := Elements.Table (Self).Member (3).Visibility_Holder_Value;
            Elements.Table (Self).Member (3).Visibility_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Visibility, Old, To);

         when E_Primitive_Type =>
            Old := Elements.Table (Self).Member (3).Visibility_Holder_Value;
            Elements.Table (Self).Member (3).Visibility_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Visibility, Old, To);

         when E_Property =>
            Old := Elements.Table (Self).Member (3).Visibility_Holder_Value;
            Elements.Table (Self).Member (3).Visibility_Holder_Value := To;

            Notification.Notify_Attribute_Set
             (Self, MP_CMOF_Named_Element_Visibility, Old, To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Visibility;

end CMOF.Internals.Attributes;
