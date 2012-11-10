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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.Internals.Tables.OCL_Element_Table;
with AMF.Internals.Tables.OCL_Metamodel;
with AMF.Internals.Tables.OCL_Notification;
with AMF.Internals.Tables.OCL_Types;
with AMF.Internals.Tables.Primitive_Types_Notification;
with AMF.Internals.Tables.UML_Metamodel;
with AMF.Internals.Tables.UML_Notification;

package body AMF.Internals.Tables.OCL_Attributes is

   use type Matreshka.Internals.Strings.Shared_String_Access;

   --  AnyType
   --
   --     12  Classifier::isAbstract
   --     13  Classifier::isFinalSpecialization
   --     11  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Classifier::ownedTemplateSignature
   --     10  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     7  Type::package
   --     5  NamedElement::qualifiedName
   --     14  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     13  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     14  Classifier::collaborationUse
   --     4  Namespace::elementImport
   --     15  Classifier::feature
   --     16  Classifier::general
   --     17  Classifier::generalization
   --     5  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     6  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     7  Namespace::ownedMember
   --     8  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     9  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     11  RedefinableElement::redefinedElement
   --     12  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     10  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  AssociationClassCallExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     9  NavigationCallExp::navigationSource
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     10  AssociationClassCallExp::referredAssociationClass
   --     8  CallExp::source
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  NavigationCallExp::qualifier

   --  BagType
   --
   --     15  CollectionType::elementType
   --     12  Classifier::isAbstract
   --     13  Classifier::isFinalSpecialization
   --     11  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Classifier::ownedTemplateSignature
   --     10  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     7  Type::package
   --     5  NamedElement::qualifiedName
   --     14  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     13  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     14  Classifier::collaborationUse
   --     4  Namespace::elementImport
   --     15  Classifier::feature
   --     16  Classifier::general
   --     17  Classifier::generalization
   --     5  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     6  Namespace::member
   --     24  DataType::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     7  Namespace::ownedMember
   --     25  DataType::ownedOperation
   --     8  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     9  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     11  RedefinableElement::redefinedElement
   --     12  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     10  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  BooleanLiteralExp
   --
   --     8  BooleanLiteralExp::booleanSymbol
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  CollectionItem
   --
   --     8  CollectionItem::item
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  CollectionLiteralExp
   --
   --     8  CollectionLiteralExp::kind
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  CollectionLiteralExp::part

   --  CollectionRange
   --
   --     8  CollectionRange::first
   --     9  CollectionRange::last
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  CollectionType
   --
   --     15  CollectionType::elementType
   --     12  Classifier::isAbstract
   --     13  Classifier::isFinalSpecialization
   --     11  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Classifier::ownedTemplateSignature
   --     10  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     7  Type::package
   --     5  NamedElement::qualifiedName
   --     14  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     13  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     14  Classifier::collaborationUse
   --     4  Namespace::elementImport
   --     15  Classifier::feature
   --     16  Classifier::general
   --     17  Classifier::generalization
   --     5  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     6  Namespace::member
   --     24  DataType::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     7  Namespace::ownedMember
   --     25  DataType::ownedOperation
   --     8  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     9  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     11  RedefinableElement::redefinedElement
   --     12  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     10  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  EnumLiteralExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     8  EnumLiteralExp::referredEnumLiteral
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  ExpressionInOcl
   --
   --     11  OpaqueExpression::behavior
   --     12  OpaqueExpression::body
   --     14  ExpressionInOcl::bodyExpression
   --     15  ExpressionInOcl::contextVariable
   --     17  ExpressionInOcl::generatedType
   --     13  OpaqueExpression::language
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     10  OpaqueExpression::result
   --     16  ExpressionInOcl::resultVariable
   --     9  ParameterableElement::templateParameter
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  ExpressionInOcl::parameterVariable

   --  IfExp
   --
   --     8  IfExp::condition
   --     10  IfExp::elseExpression
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     9  IfExp::thenExpression
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  IntegerLiteralExp
   --
   --     8  IntegerLiteralExp::integerSymbol
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  InvalidLiteralExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  InvalidType
   --
   --     12  Classifier::isAbstract
   --     13  Classifier::isFinalSpecialization
   --     11  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Classifier::ownedTemplateSignature
   --     10  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     7  Type::package
   --     5  NamedElement::qualifiedName
   --     14  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     13  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     14  Classifier::collaborationUse
   --     4  Namespace::elementImport
   --     15  Classifier::feature
   --     16  Classifier::general
   --     17  Classifier::generalization
   --     5  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     6  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     7  Namespace::ownedMember
   --     8  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     9  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     11  RedefinableElement::redefinedElement
   --     12  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     10  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  IterateExp
   --
   --     9  LoopExp::body
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     10  IterateExp::result
   --     8  CallExp::source
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  LoopExp::iterator
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  IteratorExp
   --
   --     9  LoopExp::body
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     8  CallExp::source
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  LoopExp::iterator
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  LetExp
   --
   --     8  LetExp::in
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  TypedElement::type
   --     9  LetExp::variable
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  MessageExp
   --
   --     9  MessageExp::calledOperation
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     10  MessageExp::sentSignal
   --     8  MessageExp::target
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     4  MessageExp::argument
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  MessageType
   --
   --     12  Classifier::isAbstract
   --     13  Classifier::isFinalSpecialization
   --     11  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Classifier::ownedTemplateSignature
   --     10  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     7  Type::package
   --     5  NamedElement::qualifiedName
   --     15  MessageType::referredOperation
   --     16  MessageType::referredSignal
   --     14  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     13  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     14  Classifier::collaborationUse
   --     4  Namespace::elementImport
   --     15  Classifier::feature
   --     16  Classifier::general
   --     17  Classifier::generalization
   --     5  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     6  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     7  Namespace::ownedMember
   --     8  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     9  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     11  RedefinableElement::redefinedElement
   --     12  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     10  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  NullLiteralExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  OperationCallExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     15  OperationCallExp::referredOperation
   --     8  CallExp::source
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     4  OperationCallExp::argument
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  OrderedSetType
   --
   --     15  CollectionType::elementType
   --     12  Classifier::isAbstract
   --     13  Classifier::isFinalSpecialization
   --     11  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Classifier::ownedTemplateSignature
   --     10  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     7  Type::package
   --     5  NamedElement::qualifiedName
   --     14  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     13  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     14  Classifier::collaborationUse
   --     4  Namespace::elementImport
   --     15  Classifier::feature
   --     16  Classifier::general
   --     17  Classifier::generalization
   --     5  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     6  Namespace::member
   --     24  DataType::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     7  Namespace::ownedMember
   --     25  DataType::ownedOperation
   --     8  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     9  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     11  RedefinableElement::redefinedElement
   --     12  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     10  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  PropertyCallExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     9  NavigationCallExp::navigationSource
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     10  PropertyCallExp::referredProperty
   --     8  CallExp::source
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  NavigationCallExp::qualifier

   --  RealLiteralExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     8  RealLiteralExp::realSymbol
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  SequenceType
   --
   --     15  CollectionType::elementType
   --     12  Classifier::isAbstract
   --     13  Classifier::isFinalSpecialization
   --     11  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Classifier::ownedTemplateSignature
   --     10  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     7  Type::package
   --     5  NamedElement::qualifiedName
   --     14  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     13  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     14  Classifier::collaborationUse
   --     4  Namespace::elementImport
   --     15  Classifier::feature
   --     16  Classifier::general
   --     17  Classifier::generalization
   --     5  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     6  Namespace::member
   --     24  DataType::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     7  Namespace::ownedMember
   --     25  DataType::ownedOperation
   --     8  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     9  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     11  RedefinableElement::redefinedElement
   --     12  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     10  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  SetType
   --
   --     15  CollectionType::elementType
   --     12  Classifier::isAbstract
   --     13  Classifier::isFinalSpecialization
   --     11  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Classifier::ownedTemplateSignature
   --     10  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     7  Type::package
   --     5  NamedElement::qualifiedName
   --     14  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     13  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     14  Classifier::collaborationUse
   --     4  Namespace::elementImport
   --     15  Classifier::feature
   --     16  Classifier::general
   --     17  Classifier::generalization
   --     5  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     6  Namespace::member
   --     24  DataType::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     7  Namespace::ownedMember
   --     25  DataType::ownedOperation
   --     8  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     9  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     11  RedefinableElement::redefinedElement
   --     12  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     10  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  StateExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     8  StateExp::referredState
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  StringLiteralExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     8  StringLiteralExp::stringSymbol
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TemplateParameterType
   --
   --     12  Classifier::isAbstract
   --     13  Classifier::isFinalSpecialization
   --     11  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Classifier::ownedTemplateSignature
   --     10  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     7  Type::package
   --     5  NamedElement::qualifiedName
   --     14  Classifier::representation
   --     15  TemplateParameterType::specification
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     13  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     14  Classifier::collaborationUse
   --     4  Namespace::elementImport
   --     15  Classifier::feature
   --     16  Classifier::general
   --     17  Classifier::generalization
   --     5  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     6  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     7  Namespace::ownedMember
   --     8  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     9  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     11  RedefinableElement::redefinedElement
   --     12  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     10  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  TupleLiteralExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  TupleLiteralExp::part

   --  TupleLiteralPart
   --
   --     8  TupleLiteralPart::attribute
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TupleType
   --
   --     12  Classifier::isAbstract
   --     13  Classifier::isFinalSpecialization
   --     11  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Classifier::ownedTemplateSignature
   --     10  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     7  Type::package
   --     5  NamedElement::qualifiedName
   --     14  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     13  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     14  Classifier::collaborationUse
   --     4  Namespace::elementImport
   --     15  Classifier::feature
   --     16  Classifier::general
   --     17  Classifier::generalization
   --     5  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     6  Namespace::member
   --     24  DataType::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     7  Namespace::ownedMember
   --     25  DataType::ownedOperation
   --     8  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     9  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     11  RedefinableElement::redefinedElement
   --     12  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     10  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  TypeExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     8  TypeExp::referredType
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  UnlimitedNaturalLiteralExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  TypedElement::type
   --     8  UnlimitedNaturalLiteralExp::unlimitedNaturalSymbol
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  UnspecifiedValueExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Variable
   --
   --     8  Variable::initExpression
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     9  Variable::representedParameter
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  VariableExp
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     8  VariableExp::referredVariable
   --     7  TypedElement::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  VoidType
   --
   --     12  Classifier::isAbstract
   --     13  Classifier::isFinalSpecialization
   --     11  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Classifier::ownedTemplateSignature
   --     10  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     7  Type::package
   --     5  NamedElement::qualifiedName
   --     14  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     13  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     14  Classifier::collaborationUse
   --     4  Namespace::elementImport
   --     15  Classifier::feature
   --     16  Classifier::general
   --     17  Classifier::generalization
   --     5  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     6  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     7  Namespace::ownedMember
   --     8  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     9  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     11  RedefinableElement::redefinedElement
   --     12  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     10  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   ---------------------------
   -- Internal_Get_Argument --
   ---------------------------

   function Internal_Get_Argument
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Argument;

   ----------------------------
   -- Internal_Get_Attribute --
   ----------------------------

   function Internal_Get_Attribute
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Attribute;

   ----------------------------
   -- Internal_Get_Attribute --
   ----------------------------

   function Internal_Get_Attribute
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 13;
   end Internal_Get_Attribute;

   ---------------------------
   -- Internal_Get_Behavior --
   ---------------------------

   function Internal_Get_Behavior
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Behavior;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Body;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (12).String_Collection;
   end Internal_Get_Body;

   ----------------------------------
   -- Internal_Get_Body_Expression --
   ----------------------------------

   function Internal_Get_Body_Expression
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (14).Link, Self);
   end Internal_Get_Body_Expression;

   ---------------------------------
   -- Internal_Get_Boolean_Symbol --
   ---------------------------------

   function Internal_Get_Boolean_Symbol
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Boolean_Value;
   end Internal_Get_Boolean_Symbol;

   -----------------------------------
   -- Internal_Get_Called_Operation --
   -----------------------------------

   function Internal_Get_Called_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Called_Operation;

   ------------------------------------
   -- Internal_Get_Client_Dependency --
   ------------------------------------

   function Internal_Get_Client_Dependency
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Client_Dependency;

   ------------------------------------
   -- Internal_Get_Collaboration_Use --
   ------------------------------------

   function Internal_Get_Collaboration_Use
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 14;
   end Internal_Get_Collaboration_Use;

   ----------------------------
   -- Internal_Get_Condition --
   ----------------------------

   function Internal_Get_Condition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Condition;

   -----------------------------------
   -- Internal_Get_Context_Variable --
   -----------------------------------

   function Internal_Get_Context_Variable
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (15).Link, Self);
   end Internal_Get_Context_Variable;

   ---------------------------------
   -- Internal_Get_Element_Import --
   ---------------------------------

   function Internal_Get_Element_Import
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Element_Import;

   -------------------------------
   -- Internal_Get_Element_Type --
   -------------------------------

   function Internal_Get_Element_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (15).Link, Self);
   end Internal_Get_Element_Type;

   ----------------------------------
   -- Internal_Get_Else_Expression --
   ----------------------------------

   function Internal_Get_Else_Expression
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Else_Expression;

   --------------------------
   -- Internal_Get_Feature --
   --------------------------

   function Internal_Get_Feature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 15;
   end Internal_Get_Feature;

   ------------------------
   -- Internal_Get_First --
   ------------------------

   function Internal_Get_First
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_First;

   --------------------------
   -- Internal_Get_General --
   --------------------------

   function Internal_Get_General
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 16;
   end Internal_Get_General;

   ---------------------------------
   -- Internal_Get_Generalization --
   ---------------------------------

   function Internal_Get_Generalization
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 17;
   end Internal_Get_Generalization;

   ---------------------------------
   -- Internal_Get_Generated_Type --
   ---------------------------------

   function Internal_Get_Generated_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (17).Link, Self);
   end Internal_Get_Generated_Type;

   ----------------------------------
   -- Internal_Get_Imported_Member --
   ----------------------------------

   function Internal_Get_Imported_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 5;
   end Internal_Get_Imported_Member;

   ---------------------
   -- Internal_Get_In --
   ---------------------

   function Internal_Get_In
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_In;

   -----------------------------------
   -- Internal_Get_Inherited_Member --
   -----------------------------------

   function Internal_Get_Inherited_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 18;
   end Internal_Get_Inherited_Member;

   ----------------------------------
   -- Internal_Get_Init_Expression --
   ----------------------------------

   function Internal_Get_Init_Expression
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Init_Expression;

   ---------------------------------
   -- Internal_Get_Integer_Symbol --
   ---------------------------------

   function Internal_Get_Integer_Symbol
    (Self : AMF.Internals.AMF_Element)
       return Integer is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Integer_Value;
   end Internal_Get_Integer_Symbol;

   ------------------------------
   -- Internal_Get_Is_Abstract --
   ------------------------------

   function Internal_Get_Is_Abstract
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (12).Boolean_Value;
   end Internal_Get_Is_Abstract;

   ------------------------------------------
   -- Internal_Get_Is_Final_Specialization --
   ------------------------------------------

   function Internal_Get_Is_Final_Specialization
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (13).Boolean_Value;
   end Internal_Get_Is_Final_Specialization;

   --------------------------
   -- Internal_Get_Is_Leaf --
   --------------------------

   function Internal_Get_Is_Leaf
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (11).Boolean_Value;
   end Internal_Get_Is_Leaf;

   -----------------------
   -- Internal_Get_Item --
   -----------------------

   function Internal_Get_Item
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Item;

   ---------------------------
   -- Internal_Get_Iterator --
   ---------------------------

   function Internal_Get_Iterator
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Iterator;

   -----------------------
   -- Internal_Get_Kind --
   -----------------------

   function Internal_Get_Kind
    (Self : AMF.Internals.AMF_Element)
       return AMF.OCL.OCL_Collection_Kind is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Collection_Kind_Value;
   end Internal_Get_Kind;

   ---------------------------
   -- Internal_Get_Language --
   ---------------------------

   function Internal_Get_Language
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (13).String_Collection;
   end Internal_Get_Language;

   -----------------------
   -- Internal_Get_Last --
   -----------------------

   function Internal_Get_Last
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Last;

   -------------------------
   -- Internal_Get_Member --
   -------------------------

   function Internal_Get_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_Member;

   -----------------------
   -- Internal_Get_Name --
   -----------------------

   function Internal_Get_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (2).String_Value;
   end Internal_Get_Name;

   ----------------------------------
   -- Internal_Get_Name_Expression --
   ----------------------------------

   function Internal_Get_Name_Expression
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (3).Link, Self);
   end Internal_Get_Name_Expression;

   ----------------------------
   -- Internal_Get_Namespace --
   ----------------------------

   function Internal_Get_Namespace
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (4).Link, Self);
   end Internal_Get_Namespace;

   ------------------------------------
   -- Internal_Get_Navigation_Source --
   ------------------------------------

   function Internal_Get_Navigation_Source
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Navigation_Source;

   ----------------------------------
   -- Internal_Get_Owned_Attribute --
   ----------------------------------

   function Internal_Get_Owned_Attribute
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Owned_Attribute;

   --------------------------------
   -- Internal_Get_Owned_Comment --
   --------------------------------

   function Internal_Get_Owned_Comment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 1;
   end Internal_Get_Owned_Comment;

   --------------------------------
   -- Internal_Get_Owned_Element --
   --------------------------------

   function Internal_Get_Owned_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 2;
   end Internal_Get_Owned_Element;

   -------------------------------
   -- Internal_Get_Owned_Member --
   -------------------------------

   function Internal_Get_Owned_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 7;
   end Internal_Get_Owned_Member;

   ----------------------------------
   -- Internal_Get_Owned_Operation --
   ----------------------------------

   function Internal_Get_Owned_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 25;
   end Internal_Get_Owned_Operation;

   -----------------------------
   -- Internal_Get_Owned_Rule --
   -----------------------------

   function Internal_Get_Owned_Rule
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_Owned_Rule;

   -------------------------------------------
   -- Internal_Get_Owned_Template_Signature --
   -------------------------------------------

   function Internal_Get_Owned_Template_Signature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Owned_Template_Signature;

   ---------------------------------
   -- Internal_Get_Owned_Use_Case --
   ---------------------------------

   function Internal_Get_Owned_Use_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 19;
   end Internal_Get_Owned_Use_Case;

   ------------------------
   -- Internal_Get_Owner --
   ------------------------

   function Internal_Get_Owner
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Owner;

   --------------------------------------------
   -- Internal_Get_Owning_Template_Parameter --
   --------------------------------------------

   function Internal_Get_Owning_Template_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Owning_Template_Parameter;

   --------------------------
   -- Internal_Get_Package --
   --------------------------

   function Internal_Get_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Package;

   ---------------------------------
   -- Internal_Get_Package_Import --
   ---------------------------------

   function Internal_Get_Package_Import
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Package_Import;

   -------------------------------------
   -- Internal_Get_Parameter_Variable --
   -------------------------------------

   function Internal_Get_Parameter_Variable
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Parameter_Variable;

   -----------------------
   -- Internal_Get_Part --
   -----------------------

   function Internal_Get_Part
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Part;

   -----------------------------------
   -- Internal_Get_Powertype_Extent --
   -----------------------------------

   function Internal_Get_Powertype_Extent
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 20;
   end Internal_Get_Powertype_Extent;

   ---------------------------------
   -- Internal_Get_Qualified_Name --
   ---------------------------------

   function Internal_Get_Qualified_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (5).String_Value;
   end Internal_Get_Qualified_Name;

   ----------------------------
   -- Internal_Get_Qualifier --
   ----------------------------

   function Internal_Get_Qualifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Qualifier;

   ------------------------------
   -- Internal_Get_Real_Symbol --
   ------------------------------

   function Internal_Get_Real_Symbol
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Real_Value;
   end Internal_Get_Real_Symbol;

   ---------------------------------------
   -- Internal_Get_Redefined_Classifier --
   ---------------------------------------

   function Internal_Get_Redefined_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 21;
   end Internal_Get_Redefined_Classifier;

   ------------------------------------
   -- Internal_Get_Redefined_Element --
   ------------------------------------

   function Internal_Get_Redefined_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 11;
   end Internal_Get_Redefined_Element;

   ---------------------------------------
   -- Internal_Get_Redefinition_Context --
   ---------------------------------------

   function Internal_Get_Redefinition_Context
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_Redefinition_Context;

   ---------------------------------------------
   -- Internal_Get_Referred_Association_Class --
   ---------------------------------------------

   function Internal_Get_Referred_Association_Class
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Referred_Association_Class;

   ----------------------------------------
   -- Internal_Get_Referred_Enum_Literal --
   ----------------------------------------

   function Internal_Get_Referred_Enum_Literal
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Referred_Enum_Literal;

   -------------------------------------
   -- Internal_Get_Referred_Operation --
   -------------------------------------

   function Internal_Get_Referred_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (15).Link, Self);
   end Internal_Get_Referred_Operation;

   ------------------------------------
   -- Internal_Get_Referred_Property --
   ------------------------------------

   function Internal_Get_Referred_Property
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Referred_Property;

   ----------------------------------
   -- Internal_Get_Referred_Signal --
   ----------------------------------

   function Internal_Get_Referred_Signal
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (16).Link, Self);
   end Internal_Get_Referred_Signal;

   ---------------------------------
   -- Internal_Get_Referred_State --
   ---------------------------------

   function Internal_Get_Referred_State
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Referred_State;

   --------------------------------
   -- Internal_Get_Referred_Type --
   --------------------------------

   function Internal_Get_Referred_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Referred_Type;

   ------------------------------------
   -- Internal_Get_Referred_Variable --
   ------------------------------------

   function Internal_Get_Referred_Variable
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Referred_Variable;

   ---------------------------------
   -- Internal_Get_Representation --
   ---------------------------------

   function Internal_Get_Representation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (14).Link, Self);
   end Internal_Get_Representation;

   ----------------------------------------
   -- Internal_Get_Represented_Parameter --
   ----------------------------------------

   function Internal_Get_Represented_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Represented_Parameter;

   -------------------------
   -- Internal_Get_Result --
   -------------------------

   function Internal_Get_Result
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Result;

   ----------------------------------
   -- Internal_Get_Result_Variable --
   ----------------------------------

   function Internal_Get_Result_Variable
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (16).Link, Self);
   end Internal_Get_Result_Variable;

   ------------------------------
   -- Internal_Get_Sent_Signal --
   ------------------------------

   function Internal_Get_Sent_Signal
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Sent_Signal;

   -------------------------
   -- Internal_Get_Source --
   -------------------------

   function Internal_Get_Source
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Source;

   --------------------------------
   -- Internal_Get_Specification --
   --------------------------------

   function Internal_Get_Specification
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (15).String_Value;
   end Internal_Get_Specification;

   --------------------------------
   -- Internal_Get_String_Symbol --
   --------------------------------

   function Internal_Get_String_Symbol
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).String_Value;
   end Internal_Get_String_Symbol;

   -------------------------------
   -- Internal_Get_Substitution --
   -------------------------------

   function Internal_Get_Substitution
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 22;
   end Internal_Get_Substitution;

   -------------------------
   -- Internal_Get_Target --
   -------------------------

   function Internal_Get_Target
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Target;

   -----------------------------------
   -- Internal_Get_Template_Binding --
   -----------------------------------

   function Internal_Get_Template_Binding
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 10;
   end Internal_Get_Template_Binding;

   -------------------------------------
   -- Internal_Get_Template_Parameter --
   -------------------------------------

   function Internal_Get_Template_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Template_Parameter;

   ----------------------------------
   -- Internal_Get_Then_Expression --
   ----------------------------------

   function Internal_Get_Then_Expression
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Then_Expression;

   -----------------------
   -- Internal_Get_Type --
   -----------------------

   function Internal_Get_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Type;

   -------------------------------------------
   -- Internal_Get_Unlimited_Natural_Symbol --
   -------------------------------------------

   function Internal_Get_Unlimited_Natural_Symbol
    (Self : AMF.Internals.AMF_Element)
       return AMF.Unlimited_Natural is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Unlimited_Natural_Value;
   end Internal_Get_Unlimited_Natural_Symbol;

   ---------------------------
   -- Internal_Get_Use_Case --
   ---------------------------

   function Internal_Get_Use_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (0).Collection + 23;
   end Internal_Get_Use_Case;

   ---------------------------
   -- Internal_Get_Variable --
   ---------------------------

   function Internal_Get_Variable
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Variable;

   -----------------------------
   -- Internal_Get_Visibility --
   -----------------------------

   function Internal_Get_Visibility
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.Optional_UML_Visibility_Kind is
   begin
      return AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (6).Visibility_Kind_Holder;
   end Internal_Get_Visibility;

   ----------------------------
   -- Internal_Set_Attribute --
   ----------------------------

   procedure Internal_Set_Attribute
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Part =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Property_Attribute_Tuple_Literal_Part,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Attribute;

   ---------------------------
   -- Internal_Set_Behavior --
   ---------------------------

   procedure Internal_Set_Behavior
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavior_Behavior_Opaque_Expression,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Behavior;

   -----------------------
   -- Internal_Set_Body --
   -----------------------

   procedure Internal_Set_Body
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterate_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Body_Loop_Body_Owner,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterator_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Body_Loop_Body_Owner,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Body;

   ----------------------------------
   -- Internal_Set_Body_Expression --
   ----------------------------------

   procedure Internal_Set_Body_Expression
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Body_Expression_Top_Expression,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Body_Expression;

   ---------------------------------
   -- Internal_Set_Boolean_Symbol --
   ---------------------------------

   procedure Internal_Set_Boolean_Symbol
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Boolean_Value;
      AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Boolean_Literal_Exp_Boolean_Symbol, Old, To);
   end Internal_Set_Boolean_Symbol;

   -----------------------------------
   -- Internal_Set_Called_Operation --
   -----------------------------------

   procedure Internal_Set_Called_Operation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Call_Operation_Action_Called_Operation_Message_Exp,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Called_Operation;

   ----------------------------
   -- Internal_Set_Condition --
   ----------------------------

   procedure Internal_Set_Condition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_If_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Condition_If_Owner,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Condition;

   -----------------------------------
   -- Internal_Set_Context_Variable --
   -----------------------------------

   procedure Internal_Set_Context_Variable
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Variable_Context_Variable_Self_Owner,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Context_Variable;

   -------------------------------
   -- Internal_Set_Element_Type --
   -------------------------------

   procedure Internal_Set_Element_Type
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Bag_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Classifier_Element_Type_Collection_Type,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Classifier_Element_Type_Collection_Type,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Ordered_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Classifier_Element_Type_Collection_Type,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Sequence_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Classifier_Element_Type_Collection_Type,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Classifier_Element_Type_Collection_Type,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Element_Type;

   ----------------------------------
   -- Internal_Set_Else_Expression --
   ----------------------------------

   procedure Internal_Set_Else_Expression
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_If_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Else_Expression_Else_Owner,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Else_Expression;

   ------------------------
   -- Internal_Set_First --
   ------------------------

   procedure Internal_Set_First
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Range =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_First_First_Owner,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_First;

   ---------------------------------
   -- Internal_Set_Generated_Type --
   ---------------------------------

   procedure Internal_Set_Generated_Type
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Classifier_Generated_Type_Owning_Classifier,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Generated_Type;

   ---------------------
   -- Internal_Set_In --
   ---------------------

   procedure Internal_Set_In
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Let_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_In_Let_Exp,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_In;

   ----------------------------------
   -- Internal_Set_Init_Expression --
   ----------------------------------

   procedure Internal_Set_Init_Expression
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Variable =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Init_Expression_Initialized_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Init_Expression;

   ---------------------------------
   -- Internal_Set_Integer_Symbol --
   ---------------------------------

   procedure Internal_Set_Integer_Symbol
    (Self : AMF.Internals.AMF_Element;
     To   : Integer)
   is
      Old : Integer;

   begin
      Old := AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Integer_Value;
      AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Integer_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Integer_Literal_Exp_Integer_Symbol, Old, To);
   end Internal_Set_Integer_Symbol;

   ------------------------------
   -- Internal_Set_Is_Abstract --
   ------------------------------

   procedure Internal_Set_Is_Abstract
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (12).Boolean_Value;
      AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (12).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract, Old, To);
   end Internal_Set_Is_Abstract;

   ------------------------------------------
   -- Internal_Set_Is_Final_Specialization --
   ------------------------------------------

   procedure Internal_Set_Is_Final_Specialization
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (13).Boolean_Value;
      AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (13).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization, Old, To);
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
      Old := AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (11).Boolean_Value;
      AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (11).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf, Old, To);
   end Internal_Set_Is_Leaf;

   -----------------------
   -- Internal_Set_Item --
   -----------------------

   procedure Internal_Set_Item
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Item =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Item_Collection_Item,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Item;

   -----------------------
   -- Internal_Set_Kind --
   -----------------------

   procedure Internal_Set_Kind
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.OCL.OCL_Collection_Kind)
   is
      Old : AMF.OCL.OCL_Collection_Kind;

   begin
      Old := AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Collection_Kind_Value;
      AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Collection_Kind_Value := To;

      AMF.Internals.Tables.OCL_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Literal_Exp_Kind, Old, To);
   end Internal_Set_Kind;

   -----------------------
   -- Internal_Set_Last --
   -----------------------

   procedure Internal_Set_Last
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Range =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Last_Last_Owner,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Last;

   -----------------------
   -- Internal_Set_Name --
   -----------------------

   procedure Internal_Set_Name
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (2).String_Value;

      OCL_Element_Table.Table (Self).Member (2).String_Value := To;

      if OCL_Element_Table.Table (Self).Member (2).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (OCL_Element_Table.Table (Self).Member (2).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Name;

   ----------------------------------
   -- Internal_Set_Name_Expression --
   ----------------------------------

   procedure Internal_Set_Name_Expression
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Any_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Association_Class_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Bag_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Boolean_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Item =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Range =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Enum_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_If_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Integer_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterate_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterator_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Let_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Null_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Operation_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Ordered_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Property_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Real_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Sequence_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_State_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_String_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Template_Parameter_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Part =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Type_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Unlimited_Natural_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Unspecified_Value_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Variable =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Variable_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Void_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Name_Expression;

   ------------------------------------
   -- Internal_Set_Navigation_Source --
   ------------------------------------

   procedure Internal_Set_Navigation_Source
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Association_Class_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Property_Navigation_Source_Navigation_Call_Exp,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Property_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Property_Navigation_Source_Navigation_Call_Exp,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Navigation_Source;

   -------------------------------------------
   -- Internal_Set_Owned_Template_Signature --
   -------------------------------------------

   procedure Internal_Set_Owned_Template_Signature
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Any_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Template_Signature_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Bag_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Template_Signature_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Template_Signature_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Template_Signature_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Template_Signature_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Ordered_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Template_Signature_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Sequence_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Template_Signature_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Template_Signature_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Template_Parameter_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Template_Signature_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Template_Signature_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Void_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Template_Signature_Owned_Template_Signature_Classifier,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Owned_Template_Signature;

   --------------------------------------------
   -- Internal_Set_Owning_Template_Parameter --
   --------------------------------------------

   procedure Internal_Set_Owning_Template_Parameter
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Any_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Bag_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Ordered_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Sequence_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Template_Parameter_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Void_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Owning_Template_Parameter;

   --------------------------
   -- Internal_Set_Package --
   --------------------------

   procedure Internal_Set_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Any_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Bag_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Ordered_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Sequence_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Template_Parameter_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Void_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Owned_Type_Package,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Package;

   ------------------------------
   -- Internal_Set_Real_Symbol --
   ------------------------------

   procedure Internal_Set_Real_Symbol
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real)
   is
      Old : AMF.Real;

   begin
      Old := AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Real_Value;
      AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Real_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Real_Literal_Exp_Real_Symbol, Old, To);
   end Internal_Set_Real_Symbol;

   ---------------------------------------------
   -- Internal_Set_Referred_Association_Class --
   ---------------------------------------------

   procedure Internal_Set_Referred_Association_Class
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Association_Class_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Association_Class_Referred_Association_Class_Referring_Exp,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Referred_Association_Class;

   ----------------------------------------
   -- Internal_Set_Referred_Enum_Literal --
   ----------------------------------------

   procedure Internal_Set_Referred_Enum_Literal
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Enum_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Enumeration_Literal_Referred_Enum_Literal_Literal_Exp,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Referred_Enum_Literal;

   -------------------------------------
   -- Internal_Set_Referred_Operation --
   -------------------------------------

   procedure Internal_Set_Referred_Operation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Operation_Referred_Operation_Message_Type,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Operation_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Operation_Referred_Operation_Refering_Exp,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Referred_Operation;

   ------------------------------------
   -- Internal_Set_Referred_Property --
   ------------------------------------

   procedure Internal_Set_Referred_Property
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Property_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Property_Referred_Property_Refering_Exp,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Referred_Property;

   ----------------------------------
   -- Internal_Set_Referred_Signal --
   ----------------------------------

   procedure Internal_Set_Referred_Signal
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Signal_Referred_Signal_Message_Type,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Referred_Signal;

   ---------------------------------
   -- Internal_Set_Referred_State --
   ---------------------------------

   procedure Internal_Set_Referred_State
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_State_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_State_Referred_State_State_Exp,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Referred_State;

   --------------------------------
   -- Internal_Set_Referred_Type --
   --------------------------------

   procedure Internal_Set_Referred_Type
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Type_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Classifier_Referred_Type_Type_Exp,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Referred_Type;

   ------------------------------------
   -- Internal_Set_Referred_Variable --
   ------------------------------------

   procedure Internal_Set_Referred_Variable
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Variable_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Variable_Referred_Variable_Refering_Exp,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Referred_Variable;

   ---------------------------------
   -- Internal_Set_Representation --
   ---------------------------------

   procedure Internal_Set_Representation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Any_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Collaboration_Use_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Bag_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Collaboration_Use_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Collaboration_Use_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Collaboration_Use_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Collaboration_Use_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Ordered_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Collaboration_Use_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Sequence_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Collaboration_Use_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Collaboration_Use_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Template_Parameter_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Collaboration_Use_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Collaboration_Use_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Void_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Collaboration_Use_Representation_Classifier,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Representation;

   ----------------------------------------
   -- Internal_Set_Represented_Parameter --
   ----------------------------------------

   procedure Internal_Set_Represented_Parameter
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Variable =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Parameter_Represented_Parameter_Variable,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Represented_Parameter;

   ----------------------------------
   -- Internal_Set_Result_Variable --
   ----------------------------------

   procedure Internal_Set_Result_Variable
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Variable_Result_Variable_Result_Owner,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Result_Variable;

   ------------------------------
   -- Internal_Set_Sent_Signal --
   ------------------------------

   procedure Internal_Set_Sent_Signal
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Send_Signal_Action_Sent_Signal_Message_Exp,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Sent_Signal;

   -------------------------
   -- Internal_Set_Source --
   -------------------------

   procedure Internal_Set_Source
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Association_Class_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Source_Applied_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterate_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Source_Applied_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterator_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Source_Applied_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Operation_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Source_Applied_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Property_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Source_Applied_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Source;

   --------------------------------
   -- Internal_Set_Specification --
   --------------------------------

   procedure Internal_Set_Specification
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (15).String_Value;

      OCL_Element_Table.Table (Self).Member (15).String_Value := To;

      if OCL_Element_Table.Table (Self).Member (15).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (OCL_Element_Table.Table (Self).Member (15).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Template_Parameter_Type_Specification, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Specification;

   --------------------------------
   -- Internal_Set_String_Symbol --
   --------------------------------

   procedure Internal_Set_String_Symbol
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old :=
        AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).String_Value;

      OCL_Element_Table.Table (Self).Member (8).String_Value := To;
      Matreshka.Internals.Strings.Reference
       (OCL_Element_Table.Table (Self).Member (8).String_Value);

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.OCL_Metamodel.MP_OCL_String_Literal_Exp_String_Symbol, Old, To);
      Matreshka.Internals.Strings.Dereference (Old);
   end Internal_Set_String_Symbol;

   -------------------------
   -- Internal_Set_Target --
   -------------------------

   procedure Internal_Set_Target
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Target_Message_Exp,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Target;

   -------------------------------------
   -- Internal_Set_Template_Parameter --
   -------------------------------------

   procedure Internal_Set_Template_Parameter
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Any_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Bag_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Ordered_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Sequence_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Set_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Template_Parameter_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Void_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Template_Parameter_Parametered_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Template_Parameter;

   ----------------------------------
   -- Internal_Set_Then_Expression --
   ----------------------------------

   procedure Internal_Set_Then_Expression
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_If_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Ocl_Expression_Then_Expression_Then_Owner,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Then_Expression;

   -----------------------
   -- Internal_Set_Type --
   -----------------------

   procedure Internal_Set_Type
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Association_Class_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Boolean_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Item =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Range =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Enum_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_If_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Integer_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterate_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterator_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Let_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Null_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Operation_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Property_Call_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Real_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_State_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_String_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Part =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Type_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Unlimited_Natural_Literal_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Unspecified_Value_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Variable =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.OCL_Types.E_OCL_Variable_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Type;

   -------------------------------------------
   -- Internal_Set_Unlimited_Natural_Symbol --
   -------------------------------------------

   procedure Internal_Set_Unlimited_Natural_Symbol
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Unlimited_Natural)
   is
      Old : AMF.Unlimited_Natural;

   begin
      Old := AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Unlimited_Natural_Value;
      AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (8).Unlimited_Natural_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Unlimited_Natural_Literal_Exp_Unlimited_Natural_Symbol, Old, To);
   end Internal_Set_Unlimited_Natural_Symbol;

   ---------------------------
   -- Internal_Set_Variable --
   ---------------------------

   procedure Internal_Set_Variable
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_OCL_Let_Exp =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.OCL_Metamodel.MA_OCL_Variable_Variable_Let_Exp,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Variable;

   -----------------------------
   -- Internal_Set_Visibility --
   -----------------------------

   procedure Internal_Set_Visibility
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.Optional_UML_Visibility_Kind)
   is
      Old : AMF.UML.Optional_UML_Visibility_Kind;

   begin
      Old := AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (6).Visibility_Kind_Holder;
      AMF.Internals.Tables.OCL_Element_Table.Table (Self).Member (6).Visibility_Kind_Holder := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility, Old, To);
   end Internal_Set_Visibility;

end AMF.Internals.Tables.OCL_Attributes;
