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
with AMF.OCL;
with AMF.UML;
with Matreshka.Internals.Strings;

package AMF.Internals.Tables.OCL_Attributes is

   function Internal_Get_Argument
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  MessageExp => MessageExp::argument
   --  OperationCallExp => OperationCallExp::argument

   function Internal_Get_Attribute
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Attribute
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  TupleLiteralPart => TupleLiteralPart::attribute

   function Internal_Get_Attribute
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Classifier::attribute
   --  BagType => Classifier::attribute
   --  CollectionType => Classifier::attribute
   --  InvalidType => Classifier::attribute
   --  MessageType => Classifier::attribute
   --  OrderedSetType => Classifier::attribute
   --  SequenceType => Classifier::attribute
   --  SetType => Classifier::attribute
   --  TemplateParameterType => Classifier::attribute
   --  TupleType => Classifier::attribute
   --  VoidType => Classifier::attribute

   function Internal_Get_Behavior
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Behavior
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  ExpressionInOcl => OpaqueExpression::behavior

   function Internal_Get_Body
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Body
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  IterateExp => LoopExp::body
   --  IteratorExp => LoopExp::body

   function Internal_Get_Body
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_String;
   --  ExpressionInOcl => OpaqueExpression::body

   function Internal_Get_Body_Expression
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Body_Expression
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  ExpressionInOcl => ExpressionInOcl::bodyExpression

   function Internal_Get_Boolean_Symbol
    (Self : AMF.Internals.OCL_Element)
       return Boolean;
   procedure Internal_Set_Boolean_Symbol
    (Self : AMF.Internals.OCL_Element;
     To   : Boolean);
   --  BooleanLiteralExp => BooleanLiteralExp::booleanSymbol

   function Internal_Get_Called_Operation
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Called_Operation
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  MessageExp => MessageExp::calledOperation

   function Internal_Get_Client_Dependency
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => NamedElement::clientDependency
   --  AssociationClassCallExp => NamedElement::clientDependency
   --  BagType => NamedElement::clientDependency
   --  BooleanLiteralExp => NamedElement::clientDependency
   --  CollectionItem => NamedElement::clientDependency
   --  CollectionLiteralExp => NamedElement::clientDependency
   --  CollectionRange => NamedElement::clientDependency
   --  CollectionType => NamedElement::clientDependency
   --  EnumLiteralExp => NamedElement::clientDependency
   --  ExpressionInOcl => NamedElement::clientDependency
   --  IfExp => NamedElement::clientDependency
   --  IntegerLiteralExp => NamedElement::clientDependency
   --  InvalidLiteralExp => NamedElement::clientDependency
   --  InvalidType => NamedElement::clientDependency
   --  IterateExp => NamedElement::clientDependency
   --  IteratorExp => NamedElement::clientDependency
   --  LetExp => NamedElement::clientDependency
   --  MessageExp => NamedElement::clientDependency
   --  MessageType => NamedElement::clientDependency
   --  NullLiteralExp => NamedElement::clientDependency
   --  OperationCallExp => NamedElement::clientDependency
   --  OrderedSetType => NamedElement::clientDependency
   --  PropertyCallExp => NamedElement::clientDependency
   --  RealLiteralExp => NamedElement::clientDependency
   --  SequenceType => NamedElement::clientDependency
   --  SetType => NamedElement::clientDependency
   --  StateExp => NamedElement::clientDependency
   --  StringLiteralExp => NamedElement::clientDependency
   --  TemplateParameterType => NamedElement::clientDependency
   --  TupleLiteralExp => NamedElement::clientDependency
   --  TupleLiteralPart => NamedElement::clientDependency
   --  TupleType => NamedElement::clientDependency
   --  TypeExp => NamedElement::clientDependency
   --  UnlimitedNaturalLiteralExp => NamedElement::clientDependency
   --  UnspecifiedValueExp => NamedElement::clientDependency
   --  Variable => NamedElement::clientDependency
   --  VariableExp => NamedElement::clientDependency
   --  VoidType => NamedElement::clientDependency

   function Internal_Get_Collaboration_Use
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Classifier::collaborationUse
   --  BagType => Classifier::collaborationUse
   --  CollectionType => Classifier::collaborationUse
   --  InvalidType => Classifier::collaborationUse
   --  MessageType => Classifier::collaborationUse
   --  OrderedSetType => Classifier::collaborationUse
   --  SequenceType => Classifier::collaborationUse
   --  SetType => Classifier::collaborationUse
   --  TemplateParameterType => Classifier::collaborationUse
   --  TupleType => Classifier::collaborationUse
   --  VoidType => Classifier::collaborationUse

   function Internal_Get_Condition
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Condition
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  IfExp => IfExp::condition

   function Internal_Get_Context_Variable
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Context_Variable
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  ExpressionInOcl => ExpressionInOcl::contextVariable

   function Internal_Get_Element_Import
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Namespace::elementImport
   --  BagType => Namespace::elementImport
   --  CollectionType => Namespace::elementImport
   --  InvalidType => Namespace::elementImport
   --  MessageType => Namespace::elementImport
   --  OrderedSetType => Namespace::elementImport
   --  SequenceType => Namespace::elementImport
   --  SetType => Namespace::elementImport
   --  TemplateParameterType => Namespace::elementImport
   --  TupleType => Namespace::elementImport
   --  VoidType => Namespace::elementImport

   function Internal_Get_Element_Type
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Element_Type
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  BagType => CollectionType::elementType
   --  CollectionType => CollectionType::elementType
   --  OrderedSetType => CollectionType::elementType
   --  SequenceType => CollectionType::elementType
   --  SetType => CollectionType::elementType

   function Internal_Get_Else_Expression
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Else_Expression
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  IfExp => IfExp::elseExpression

   function Internal_Get_Feature
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Classifier::feature
   --  BagType => Classifier::feature
   --  CollectionType => Classifier::feature
   --  InvalidType => Classifier::feature
   --  MessageType => Classifier::feature
   --  OrderedSetType => Classifier::feature
   --  SequenceType => Classifier::feature
   --  SetType => Classifier::feature
   --  TemplateParameterType => Classifier::feature
   --  TupleType => Classifier::feature
   --  VoidType => Classifier::feature

   function Internal_Get_First
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_First
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  CollectionRange => CollectionRange::first

   function Internal_Get_General
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Classifier::general
   --  BagType => Classifier::general
   --  CollectionType => Classifier::general
   --  InvalidType => Classifier::general
   --  MessageType => Classifier::general
   --  OrderedSetType => Classifier::general
   --  SequenceType => Classifier::general
   --  SetType => Classifier::general
   --  TemplateParameterType => Classifier::general
   --  TupleType => Classifier::general
   --  VoidType => Classifier::general

   function Internal_Get_Generalization
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Classifier::generalization
   --  BagType => Classifier::generalization
   --  CollectionType => Classifier::generalization
   --  InvalidType => Classifier::generalization
   --  MessageType => Classifier::generalization
   --  OrderedSetType => Classifier::generalization
   --  SequenceType => Classifier::generalization
   --  SetType => Classifier::generalization
   --  TemplateParameterType => Classifier::generalization
   --  TupleType => Classifier::generalization
   --  VoidType => Classifier::generalization

   function Internal_Get_Generated_Type
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Generated_Type
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  ExpressionInOcl => ExpressionInOcl::generatedType

   function Internal_Get_Imported_Member
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Namespace::importedMember
   --  BagType => Namespace::importedMember
   --  CollectionType => Namespace::importedMember
   --  InvalidType => Namespace::importedMember
   --  MessageType => Namespace::importedMember
   --  OrderedSetType => Namespace::importedMember
   --  SequenceType => Namespace::importedMember
   --  SetType => Namespace::importedMember
   --  TemplateParameterType => Namespace::importedMember
   --  TupleType => Namespace::importedMember
   --  VoidType => Namespace::importedMember

   function Internal_Get_In
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_In
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  LetExp => LetExp::in

   function Internal_Get_Inherited_Member
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Classifier::inheritedMember
   --  BagType => Classifier::inheritedMember
   --  CollectionType => Classifier::inheritedMember
   --  InvalidType => Classifier::inheritedMember
   --  MessageType => Classifier::inheritedMember
   --  OrderedSetType => Classifier::inheritedMember
   --  SequenceType => Classifier::inheritedMember
   --  SetType => Classifier::inheritedMember
   --  TemplateParameterType => Classifier::inheritedMember
   --  TupleType => Classifier::inheritedMember
   --  VoidType => Classifier::inheritedMember

   function Internal_Get_Init_Expression
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Init_Expression
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  Variable => Variable::initExpression

   function Internal_Get_Integer_Symbol
    (Self : AMF.Internals.OCL_Element)
       return Integer;
   procedure Internal_Set_Integer_Symbol
    (Self : AMF.Internals.OCL_Element;
     To   : Integer);
   --  IntegerLiteralExp => IntegerLiteralExp::integerSymbol

   function Internal_Get_Is_Abstract
    (Self : AMF.Internals.OCL_Element)
       return Boolean;
   procedure Internal_Set_Is_Abstract
    (Self : AMF.Internals.OCL_Element;
     To   : Boolean);
   --  AnyType => Classifier::isAbstract
   --  BagType => Classifier::isAbstract
   --  CollectionType => Classifier::isAbstract
   --  InvalidType => Classifier::isAbstract
   --  MessageType => Classifier::isAbstract
   --  OrderedSetType => Classifier::isAbstract
   --  SequenceType => Classifier::isAbstract
   --  SetType => Classifier::isAbstract
   --  TemplateParameterType => Classifier::isAbstract
   --  TupleType => Classifier::isAbstract
   --  VoidType => Classifier::isAbstract

   function Internal_Get_Is_Final_Specialization
    (Self : AMF.Internals.OCL_Element)
       return Boolean;
   procedure Internal_Set_Is_Final_Specialization
    (Self : AMF.Internals.OCL_Element;
     To   : Boolean);
   --  AnyType => Classifier::isFinalSpecialization
   --  BagType => Classifier::isFinalSpecialization
   --  CollectionType => Classifier::isFinalSpecialization
   --  InvalidType => Classifier::isFinalSpecialization
   --  MessageType => Classifier::isFinalSpecialization
   --  OrderedSetType => Classifier::isFinalSpecialization
   --  SequenceType => Classifier::isFinalSpecialization
   --  SetType => Classifier::isFinalSpecialization
   --  TemplateParameterType => Classifier::isFinalSpecialization
   --  TupleType => Classifier::isFinalSpecialization
   --  VoidType => Classifier::isFinalSpecialization

   function Internal_Get_Is_Leaf
    (Self : AMF.Internals.OCL_Element)
       return Boolean;
   procedure Internal_Set_Is_Leaf
    (Self : AMF.Internals.OCL_Element;
     To   : Boolean);
   --  AnyType => RedefinableElement::isLeaf
   --  BagType => RedefinableElement::isLeaf
   --  CollectionType => RedefinableElement::isLeaf
   --  InvalidType => RedefinableElement::isLeaf
   --  MessageType => RedefinableElement::isLeaf
   --  OrderedSetType => RedefinableElement::isLeaf
   --  SequenceType => RedefinableElement::isLeaf
   --  SetType => RedefinableElement::isLeaf
   --  TemplateParameterType => RedefinableElement::isLeaf
   --  TupleType => RedefinableElement::isLeaf
   --  VoidType => RedefinableElement::isLeaf

   function Internal_Get_Item
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Item
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  CollectionItem => CollectionItem::item

   function Internal_Get_Iterator
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  IterateExp => LoopExp::iterator
   --  IteratorExp => LoopExp::iterator

   function Internal_Get_Kind
    (Self : AMF.Internals.OCL_Element)
       return AMF.OCL.OCL_Collection_Kind;
   procedure Internal_Set_Kind
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.OCL.OCL_Collection_Kind);
   --  CollectionLiteralExp => CollectionLiteralExp::kind

   function Internal_Get_Language
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_String;
   --  ExpressionInOcl => OpaqueExpression::language

   function Internal_Get_Last
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Last
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  CollectionRange => CollectionRange::last

   function Internal_Get_Member
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Namespace::member
   --  BagType => Namespace::member
   --  CollectionType => Namespace::member
   --  InvalidType => Namespace::member
   --  MessageType => Namespace::member
   --  OrderedSetType => Namespace::member
   --  SequenceType => Namespace::member
   --  SetType => Namespace::member
   --  TemplateParameterType => Namespace::member
   --  TupleType => Namespace::member
   --  VoidType => Namespace::member

   function Internal_Get_Name
    (Self : AMF.Internals.OCL_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Name
    (Self : AMF.Internals.OCL_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  AnyType => NamedElement::name
   --  AssociationClassCallExp => NamedElement::name
   --  BagType => NamedElement::name
   --  BooleanLiteralExp => NamedElement::name
   --  CollectionItem => NamedElement::name
   --  CollectionLiteralExp => NamedElement::name
   --  CollectionRange => NamedElement::name
   --  CollectionType => NamedElement::name
   --  EnumLiteralExp => NamedElement::name
   --  ExpressionInOcl => NamedElement::name
   --  IfExp => NamedElement::name
   --  IntegerLiteralExp => NamedElement::name
   --  InvalidLiteralExp => NamedElement::name
   --  InvalidType => NamedElement::name
   --  IterateExp => NamedElement::name
   --  IteratorExp => NamedElement::name
   --  LetExp => NamedElement::name
   --  MessageExp => NamedElement::name
   --  MessageType => NamedElement::name
   --  NullLiteralExp => NamedElement::name
   --  OperationCallExp => NamedElement::name
   --  OrderedSetType => NamedElement::name
   --  PropertyCallExp => NamedElement::name
   --  RealLiteralExp => NamedElement::name
   --  SequenceType => NamedElement::name
   --  SetType => NamedElement::name
   --  StateExp => NamedElement::name
   --  StringLiteralExp => NamedElement::name
   --  TemplateParameterType => NamedElement::name
   --  TupleLiteralExp => NamedElement::name
   --  TupleLiteralPart => NamedElement::name
   --  TupleType => NamedElement::name
   --  TypeExp => NamedElement::name
   --  UnlimitedNaturalLiteralExp => NamedElement::name
   --  UnspecifiedValueExp => NamedElement::name
   --  Variable => NamedElement::name
   --  VariableExp => NamedElement::name
   --  VoidType => NamedElement::name

   function Internal_Get_Name_Expression
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Name_Expression
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  AnyType => NamedElement::nameExpression
   --  AssociationClassCallExp => NamedElement::nameExpression
   --  BagType => NamedElement::nameExpression
   --  BooleanLiteralExp => NamedElement::nameExpression
   --  CollectionItem => NamedElement::nameExpression
   --  CollectionLiteralExp => NamedElement::nameExpression
   --  CollectionRange => NamedElement::nameExpression
   --  CollectionType => NamedElement::nameExpression
   --  EnumLiteralExp => NamedElement::nameExpression
   --  ExpressionInOcl => NamedElement::nameExpression
   --  IfExp => NamedElement::nameExpression
   --  IntegerLiteralExp => NamedElement::nameExpression
   --  InvalidLiteralExp => NamedElement::nameExpression
   --  InvalidType => NamedElement::nameExpression
   --  IterateExp => NamedElement::nameExpression
   --  IteratorExp => NamedElement::nameExpression
   --  LetExp => NamedElement::nameExpression
   --  MessageExp => NamedElement::nameExpression
   --  MessageType => NamedElement::nameExpression
   --  NullLiteralExp => NamedElement::nameExpression
   --  OperationCallExp => NamedElement::nameExpression
   --  OrderedSetType => NamedElement::nameExpression
   --  PropertyCallExp => NamedElement::nameExpression
   --  RealLiteralExp => NamedElement::nameExpression
   --  SequenceType => NamedElement::nameExpression
   --  SetType => NamedElement::nameExpression
   --  StateExp => NamedElement::nameExpression
   --  StringLiteralExp => NamedElement::nameExpression
   --  TemplateParameterType => NamedElement::nameExpression
   --  TupleLiteralExp => NamedElement::nameExpression
   --  TupleLiteralPart => NamedElement::nameExpression
   --  TupleType => NamedElement::nameExpression
   --  TypeExp => NamedElement::nameExpression
   --  UnlimitedNaturalLiteralExp => NamedElement::nameExpression
   --  UnspecifiedValueExp => NamedElement::nameExpression
   --  Variable => NamedElement::nameExpression
   --  VariableExp => NamedElement::nameExpression
   --  VoidType => NamedElement::nameExpression

   function Internal_Get_Namespace
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   --  AnyType => NamedElement::namespace
   --  AssociationClassCallExp => NamedElement::namespace
   --  BagType => NamedElement::namespace
   --  BooleanLiteralExp => NamedElement::namespace
   --  CollectionItem => NamedElement::namespace
   --  CollectionLiteralExp => NamedElement::namespace
   --  CollectionRange => NamedElement::namespace
   --  CollectionType => NamedElement::namespace
   --  EnumLiteralExp => NamedElement::namespace
   --  ExpressionInOcl => NamedElement::namespace
   --  IfExp => NamedElement::namespace
   --  IntegerLiteralExp => NamedElement::namespace
   --  InvalidLiteralExp => NamedElement::namespace
   --  InvalidType => NamedElement::namespace
   --  IterateExp => NamedElement::namespace
   --  IteratorExp => NamedElement::namespace
   --  LetExp => NamedElement::namespace
   --  MessageExp => NamedElement::namespace
   --  MessageType => NamedElement::namespace
   --  NullLiteralExp => NamedElement::namespace
   --  OperationCallExp => NamedElement::namespace
   --  OrderedSetType => NamedElement::namespace
   --  PropertyCallExp => NamedElement::namespace
   --  RealLiteralExp => NamedElement::namespace
   --  SequenceType => NamedElement::namespace
   --  SetType => NamedElement::namespace
   --  StateExp => NamedElement::namespace
   --  StringLiteralExp => NamedElement::namespace
   --  TemplateParameterType => NamedElement::namespace
   --  TupleLiteralExp => NamedElement::namespace
   --  TupleLiteralPart => NamedElement::namespace
   --  TupleType => NamedElement::namespace
   --  TypeExp => NamedElement::namespace
   --  UnlimitedNaturalLiteralExp => NamedElement::namespace
   --  UnspecifiedValueExp => NamedElement::namespace
   --  Variable => NamedElement::namespace
   --  VariableExp => NamedElement::namespace
   --  VoidType => NamedElement::namespace

   function Internal_Get_Navigation_Source
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Navigation_Source
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  AssociationClassCallExp => NavigationCallExp::navigationSource
   --  PropertyCallExp => NavigationCallExp::navigationSource

   function Internal_Get_Owned_Attribute
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  BagType => DataType::ownedAttribute
   --  CollectionType => DataType::ownedAttribute
   --  OrderedSetType => DataType::ownedAttribute
   --  SequenceType => DataType::ownedAttribute
   --  SetType => DataType::ownedAttribute
   --  TupleType => DataType::ownedAttribute

   function Internal_Get_Owned_Comment
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Element::ownedComment
   --  AssociationClassCallExp => Element::ownedComment
   --  BagType => Element::ownedComment
   --  BooleanLiteralExp => Element::ownedComment
   --  CollectionItem => Element::ownedComment
   --  CollectionLiteralExp => Element::ownedComment
   --  CollectionRange => Element::ownedComment
   --  CollectionType => Element::ownedComment
   --  EnumLiteralExp => Element::ownedComment
   --  ExpressionInOcl => Element::ownedComment
   --  IfExp => Element::ownedComment
   --  IntegerLiteralExp => Element::ownedComment
   --  InvalidLiteralExp => Element::ownedComment
   --  InvalidType => Element::ownedComment
   --  IterateExp => Element::ownedComment
   --  IteratorExp => Element::ownedComment
   --  LetExp => Element::ownedComment
   --  MessageExp => Element::ownedComment
   --  MessageType => Element::ownedComment
   --  NullLiteralExp => Element::ownedComment
   --  OperationCallExp => Element::ownedComment
   --  OrderedSetType => Element::ownedComment
   --  PropertyCallExp => Element::ownedComment
   --  RealLiteralExp => Element::ownedComment
   --  SequenceType => Element::ownedComment
   --  SetType => Element::ownedComment
   --  StateExp => Element::ownedComment
   --  StringLiteralExp => Element::ownedComment
   --  TemplateParameterType => Element::ownedComment
   --  TupleLiteralExp => Element::ownedComment
   --  TupleLiteralPart => Element::ownedComment
   --  TupleType => Element::ownedComment
   --  TypeExp => Element::ownedComment
   --  UnlimitedNaturalLiteralExp => Element::ownedComment
   --  UnspecifiedValueExp => Element::ownedComment
   --  Variable => Element::ownedComment
   --  VariableExp => Element::ownedComment
   --  VoidType => Element::ownedComment

   function Internal_Get_Owned_Element
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Element::ownedElement
   --  AssociationClassCallExp => Element::ownedElement
   --  BagType => Element::ownedElement
   --  BooleanLiteralExp => Element::ownedElement
   --  CollectionItem => Element::ownedElement
   --  CollectionLiteralExp => Element::ownedElement
   --  CollectionRange => Element::ownedElement
   --  CollectionType => Element::ownedElement
   --  EnumLiteralExp => Element::ownedElement
   --  ExpressionInOcl => Element::ownedElement
   --  IfExp => Element::ownedElement
   --  IntegerLiteralExp => Element::ownedElement
   --  InvalidLiteralExp => Element::ownedElement
   --  InvalidType => Element::ownedElement
   --  IterateExp => Element::ownedElement
   --  IteratorExp => Element::ownedElement
   --  LetExp => Element::ownedElement
   --  MessageExp => Element::ownedElement
   --  MessageType => Element::ownedElement
   --  NullLiteralExp => Element::ownedElement
   --  OperationCallExp => Element::ownedElement
   --  OrderedSetType => Element::ownedElement
   --  PropertyCallExp => Element::ownedElement
   --  RealLiteralExp => Element::ownedElement
   --  SequenceType => Element::ownedElement
   --  SetType => Element::ownedElement
   --  StateExp => Element::ownedElement
   --  StringLiteralExp => Element::ownedElement
   --  TemplateParameterType => Element::ownedElement
   --  TupleLiteralExp => Element::ownedElement
   --  TupleLiteralPart => Element::ownedElement
   --  TupleType => Element::ownedElement
   --  TypeExp => Element::ownedElement
   --  UnlimitedNaturalLiteralExp => Element::ownedElement
   --  UnspecifiedValueExp => Element::ownedElement
   --  Variable => Element::ownedElement
   --  VariableExp => Element::ownedElement
   --  VoidType => Element::ownedElement

   function Internal_Get_Owned_Member
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Namespace::ownedMember
   --  BagType => Namespace::ownedMember
   --  CollectionType => Namespace::ownedMember
   --  InvalidType => Namespace::ownedMember
   --  MessageType => Namespace::ownedMember
   --  OrderedSetType => Namespace::ownedMember
   --  SequenceType => Namespace::ownedMember
   --  SetType => Namespace::ownedMember
   --  TemplateParameterType => Namespace::ownedMember
   --  TupleType => Namespace::ownedMember
   --  VoidType => Namespace::ownedMember

   function Internal_Get_Owned_Operation
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  BagType => DataType::ownedOperation
   --  CollectionType => DataType::ownedOperation
   --  OrderedSetType => DataType::ownedOperation
   --  SequenceType => DataType::ownedOperation
   --  SetType => DataType::ownedOperation
   --  TupleType => DataType::ownedOperation

   function Internal_Get_Owned_Rule
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Namespace::ownedRule
   --  BagType => Namespace::ownedRule
   --  CollectionType => Namespace::ownedRule
   --  InvalidType => Namespace::ownedRule
   --  MessageType => Namespace::ownedRule
   --  OrderedSetType => Namespace::ownedRule
   --  SequenceType => Namespace::ownedRule
   --  SetType => Namespace::ownedRule
   --  TemplateParameterType => Namespace::ownedRule
   --  TupleType => Namespace::ownedRule
   --  VoidType => Namespace::ownedRule

   function Internal_Get_Owned_Template_Signature
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Owned_Template_Signature
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  AnyType => Classifier::ownedTemplateSignature
   --  BagType => Classifier::ownedTemplateSignature
   --  CollectionType => Classifier::ownedTemplateSignature
   --  InvalidType => Classifier::ownedTemplateSignature
   --  MessageType => Classifier::ownedTemplateSignature
   --  OrderedSetType => Classifier::ownedTemplateSignature
   --  SequenceType => Classifier::ownedTemplateSignature
   --  SetType => Classifier::ownedTemplateSignature
   --  TemplateParameterType => Classifier::ownedTemplateSignature
   --  TupleType => Classifier::ownedTemplateSignature
   --  VoidType => Classifier::ownedTemplateSignature

   function Internal_Get_Owned_Use_Case
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Classifier::ownedUseCase
   --  BagType => Classifier::ownedUseCase
   --  CollectionType => Classifier::ownedUseCase
   --  InvalidType => Classifier::ownedUseCase
   --  MessageType => Classifier::ownedUseCase
   --  OrderedSetType => Classifier::ownedUseCase
   --  SequenceType => Classifier::ownedUseCase
   --  SetType => Classifier::ownedUseCase
   --  TemplateParameterType => Classifier::ownedUseCase
   --  TupleType => Classifier::ownedUseCase
   --  VoidType => Classifier::ownedUseCase

   function Internal_Get_Owner
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   --  AnyType => Element::owner
   --  AssociationClassCallExp => Element::owner
   --  BagType => Element::owner
   --  BooleanLiteralExp => Element::owner
   --  CollectionItem => Element::owner
   --  CollectionLiteralExp => Element::owner
   --  CollectionRange => Element::owner
   --  CollectionType => Element::owner
   --  EnumLiteralExp => Element::owner
   --  ExpressionInOcl => Element::owner
   --  IfExp => Element::owner
   --  IntegerLiteralExp => Element::owner
   --  InvalidLiteralExp => Element::owner
   --  InvalidType => Element::owner
   --  IterateExp => Element::owner
   --  IteratorExp => Element::owner
   --  LetExp => Element::owner
   --  MessageExp => Element::owner
   --  MessageType => Element::owner
   --  NullLiteralExp => Element::owner
   --  OperationCallExp => Element::owner
   --  OrderedSetType => Element::owner
   --  PropertyCallExp => Element::owner
   --  RealLiteralExp => Element::owner
   --  SequenceType => Element::owner
   --  SetType => Element::owner
   --  StateExp => Element::owner
   --  StringLiteralExp => Element::owner
   --  TemplateParameterType => Element::owner
   --  TupleLiteralExp => Element::owner
   --  TupleLiteralPart => Element::owner
   --  TupleType => Element::owner
   --  TypeExp => Element::owner
   --  UnlimitedNaturalLiteralExp => Element::owner
   --  UnspecifiedValueExp => Element::owner
   --  Variable => Element::owner
   --  VariableExp => Element::owner
   --  VoidType => Element::owner

   function Internal_Get_Owning_Template_Parameter
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Owning_Template_Parameter
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  AnyType => ParameterableElement::owningTemplateParameter
   --  BagType => ParameterableElement::owningTemplateParameter
   --  CollectionType => ParameterableElement::owningTemplateParameter
   --  ExpressionInOcl => ParameterableElement::owningTemplateParameter
   --  InvalidType => ParameterableElement::owningTemplateParameter
   --  MessageType => ParameterableElement::owningTemplateParameter
   --  OrderedSetType => ParameterableElement::owningTemplateParameter
   --  SequenceType => ParameterableElement::owningTemplateParameter
   --  SetType => ParameterableElement::owningTemplateParameter
   --  TemplateParameterType => ParameterableElement::owningTemplateParameter
   --  TupleType => ParameterableElement::owningTemplateParameter
   --  VoidType => ParameterableElement::owningTemplateParameter

   function Internal_Get_Package
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Package
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  AnyType => Type::package
   --  BagType => Type::package
   --  CollectionType => Type::package
   --  InvalidType => Type::package
   --  MessageType => Type::package
   --  OrderedSetType => Type::package
   --  SequenceType => Type::package
   --  SetType => Type::package
   --  TemplateParameterType => Type::package
   --  TupleType => Type::package
   --  VoidType => Type::package

   function Internal_Get_Package_Import
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Namespace::packageImport
   --  BagType => Namespace::packageImport
   --  CollectionType => Namespace::packageImport
   --  InvalidType => Namespace::packageImport
   --  MessageType => Namespace::packageImport
   --  OrderedSetType => Namespace::packageImport
   --  SequenceType => Namespace::packageImport
   --  SetType => Namespace::packageImport
   --  TemplateParameterType => Namespace::packageImport
   --  TupleType => Namespace::packageImport
   --  VoidType => Namespace::packageImport

   function Internal_Get_Parameter_Variable
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ExpressionInOcl => ExpressionInOcl::parameterVariable

   function Internal_Get_Part
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  CollectionLiteralExp => CollectionLiteralExp::part
   --  TupleLiteralExp => TupleLiteralExp::part

   function Internal_Get_Powertype_Extent
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Classifier::powertypeExtent
   --  BagType => Classifier::powertypeExtent
   --  CollectionType => Classifier::powertypeExtent
   --  InvalidType => Classifier::powertypeExtent
   --  MessageType => Classifier::powertypeExtent
   --  OrderedSetType => Classifier::powertypeExtent
   --  SequenceType => Classifier::powertypeExtent
   --  SetType => Classifier::powertypeExtent
   --  TemplateParameterType => Classifier::powertypeExtent
   --  TupleType => Classifier::powertypeExtent
   --  VoidType => Classifier::powertypeExtent

   function Internal_Get_Qualified_Name
    (Self : AMF.Internals.OCL_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   --  AnyType => NamedElement::qualifiedName
   --  AssociationClassCallExp => NamedElement::qualifiedName
   --  BagType => NamedElement::qualifiedName
   --  BooleanLiteralExp => NamedElement::qualifiedName
   --  CollectionItem => NamedElement::qualifiedName
   --  CollectionLiteralExp => NamedElement::qualifiedName
   --  CollectionRange => NamedElement::qualifiedName
   --  CollectionType => NamedElement::qualifiedName
   --  EnumLiteralExp => NamedElement::qualifiedName
   --  ExpressionInOcl => NamedElement::qualifiedName
   --  IfExp => NamedElement::qualifiedName
   --  IntegerLiteralExp => NamedElement::qualifiedName
   --  InvalidLiteralExp => NamedElement::qualifiedName
   --  InvalidType => NamedElement::qualifiedName
   --  IterateExp => NamedElement::qualifiedName
   --  IteratorExp => NamedElement::qualifiedName
   --  LetExp => NamedElement::qualifiedName
   --  MessageExp => NamedElement::qualifiedName
   --  MessageType => NamedElement::qualifiedName
   --  NullLiteralExp => NamedElement::qualifiedName
   --  OperationCallExp => NamedElement::qualifiedName
   --  OrderedSetType => NamedElement::qualifiedName
   --  PropertyCallExp => NamedElement::qualifiedName
   --  RealLiteralExp => NamedElement::qualifiedName
   --  SequenceType => NamedElement::qualifiedName
   --  SetType => NamedElement::qualifiedName
   --  StateExp => NamedElement::qualifiedName
   --  StringLiteralExp => NamedElement::qualifiedName
   --  TemplateParameterType => NamedElement::qualifiedName
   --  TupleLiteralExp => NamedElement::qualifiedName
   --  TupleLiteralPart => NamedElement::qualifiedName
   --  TupleType => NamedElement::qualifiedName
   --  TypeExp => NamedElement::qualifiedName
   --  UnlimitedNaturalLiteralExp => NamedElement::qualifiedName
   --  UnspecifiedValueExp => NamedElement::qualifiedName
   --  Variable => NamedElement::qualifiedName
   --  VariableExp => NamedElement::qualifiedName
   --  VoidType => NamedElement::qualifiedName

   function Internal_Get_Qualifier
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AssociationClassCallExp => NavigationCallExp::qualifier
   --  PropertyCallExp => NavigationCallExp::qualifier

   function Internal_Get_Real_Symbol
    (Self : AMF.Internals.OCL_Element)
       return AMF.Real;
   procedure Internal_Set_Real_Symbol
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Real);
   --  RealLiteralExp => RealLiteralExp::realSymbol

   function Internal_Get_Redefined_Classifier
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Classifier::redefinedClassifier
   --  BagType => Classifier::redefinedClassifier
   --  CollectionType => Classifier::redefinedClassifier
   --  InvalidType => Classifier::redefinedClassifier
   --  MessageType => Classifier::redefinedClassifier
   --  OrderedSetType => Classifier::redefinedClassifier
   --  SequenceType => Classifier::redefinedClassifier
   --  SetType => Classifier::redefinedClassifier
   --  TemplateParameterType => Classifier::redefinedClassifier
   --  TupleType => Classifier::redefinedClassifier
   --  VoidType => Classifier::redefinedClassifier

   function Internal_Get_Redefined_Element
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => RedefinableElement::redefinedElement
   --  BagType => RedefinableElement::redefinedElement
   --  CollectionType => RedefinableElement::redefinedElement
   --  InvalidType => RedefinableElement::redefinedElement
   --  MessageType => RedefinableElement::redefinedElement
   --  OrderedSetType => RedefinableElement::redefinedElement
   --  SequenceType => RedefinableElement::redefinedElement
   --  SetType => RedefinableElement::redefinedElement
   --  TemplateParameterType => RedefinableElement::redefinedElement
   --  TupleType => RedefinableElement::redefinedElement
   --  VoidType => RedefinableElement::redefinedElement

   function Internal_Get_Redefinition_Context
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => RedefinableElement::redefinitionContext
   --  BagType => RedefinableElement::redefinitionContext
   --  CollectionType => RedefinableElement::redefinitionContext
   --  InvalidType => RedefinableElement::redefinitionContext
   --  MessageType => RedefinableElement::redefinitionContext
   --  OrderedSetType => RedefinableElement::redefinitionContext
   --  SequenceType => RedefinableElement::redefinitionContext
   --  SetType => RedefinableElement::redefinitionContext
   --  TemplateParameterType => RedefinableElement::redefinitionContext
   --  TupleType => RedefinableElement::redefinitionContext
   --  VoidType => RedefinableElement::redefinitionContext

   function Internal_Get_Referred_Association_Class
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Referred_Association_Class
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  AssociationClassCallExp => AssociationClassCallExp::referredAssociationClass

   function Internal_Get_Referred_Enum_Literal
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Referred_Enum_Literal
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  EnumLiteralExp => EnumLiteralExp::referredEnumLiteral

   function Internal_Get_Referred_Operation
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Referred_Operation
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  MessageType => MessageType::referredOperation
   --  OperationCallExp => OperationCallExp::referredOperation

   function Internal_Get_Referred_Property
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Referred_Property
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  PropertyCallExp => PropertyCallExp::referredProperty

   function Internal_Get_Referred_Signal
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Referred_Signal
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  MessageType => MessageType::referredSignal

   function Internal_Get_Referred_State
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Referred_State
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  StateExp => StateExp::referredState

   function Internal_Get_Referred_Type
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Referred_Type
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  TypeExp => TypeExp::referredType

   function Internal_Get_Referred_Variable
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Referred_Variable
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  VariableExp => VariableExp::referredVariable

   function Internal_Get_Representation
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Representation
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  AnyType => Classifier::representation
   --  BagType => Classifier::representation
   --  CollectionType => Classifier::representation
   --  InvalidType => Classifier::representation
   --  MessageType => Classifier::representation
   --  OrderedSetType => Classifier::representation
   --  SequenceType => Classifier::representation
   --  SetType => Classifier::representation
   --  TemplateParameterType => Classifier::representation
   --  TupleType => Classifier::representation
   --  VoidType => Classifier::representation

   function Internal_Get_Represented_Parameter
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Represented_Parameter
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  Variable => Variable::representedParameter

   function Internal_Get_Result
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   --  ExpressionInOcl => OpaqueExpression::result
   --  IterateExp => IterateExp::result

   function Internal_Get_Result_Variable
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Result_Variable
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  ExpressionInOcl => ExpressionInOcl::resultVariable

   function Internal_Get_Sent_Signal
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Sent_Signal
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  MessageExp => MessageExp::sentSignal

   function Internal_Get_Source
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Source
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  AssociationClassCallExp => CallExp::source
   --  IterateExp => CallExp::source
   --  IteratorExp => CallExp::source
   --  OperationCallExp => CallExp::source
   --  PropertyCallExp => CallExp::source

   function Internal_Get_Specification
    (Self : AMF.Internals.OCL_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Specification
    (Self : AMF.Internals.OCL_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  TemplateParameterType => TemplateParameterType::specification

   function Internal_Get_String_Symbol
    (Self : AMF.Internals.OCL_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_String_Symbol
    (Self : AMF.Internals.OCL_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  StringLiteralExp => StringLiteralExp::stringSymbol

   function Internal_Get_Substitution
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Classifier::substitution
   --  BagType => Classifier::substitution
   --  CollectionType => Classifier::substitution
   --  InvalidType => Classifier::substitution
   --  MessageType => Classifier::substitution
   --  OrderedSetType => Classifier::substitution
   --  SequenceType => Classifier::substitution
   --  SetType => Classifier::substitution
   --  TemplateParameterType => Classifier::substitution
   --  TupleType => Classifier::substitution
   --  VoidType => Classifier::substitution

   function Internal_Get_Target
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Target
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  MessageExp => MessageExp::target

   function Internal_Get_Template_Binding
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => TemplateableElement::templateBinding
   --  BagType => TemplateableElement::templateBinding
   --  CollectionType => TemplateableElement::templateBinding
   --  InvalidType => TemplateableElement::templateBinding
   --  MessageType => TemplateableElement::templateBinding
   --  OrderedSetType => TemplateableElement::templateBinding
   --  SequenceType => TemplateableElement::templateBinding
   --  SetType => TemplateableElement::templateBinding
   --  TemplateParameterType => TemplateableElement::templateBinding
   --  TupleType => TemplateableElement::templateBinding
   --  VoidType => TemplateableElement::templateBinding

   function Internal_Get_Template_Parameter
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Template_Parameter
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  AnyType => Classifier::templateParameter
   --  BagType => Classifier::templateParameter
   --  CollectionType => Classifier::templateParameter
   --  ExpressionInOcl => ParameterableElement::templateParameter
   --  InvalidType => Classifier::templateParameter
   --  MessageType => Classifier::templateParameter
   --  OrderedSetType => Classifier::templateParameter
   --  SequenceType => Classifier::templateParameter
   --  SetType => Classifier::templateParameter
   --  TemplateParameterType => Classifier::templateParameter
   --  TupleType => Classifier::templateParameter
   --  VoidType => Classifier::templateParameter

   function Internal_Get_Then_Expression
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Then_Expression
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  IfExp => IfExp::thenExpression

   function Internal_Get_Type
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Type
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  AssociationClassCallExp => TypedElement::type
   --  BooleanLiteralExp => TypedElement::type
   --  CollectionItem => TypedElement::type
   --  CollectionLiteralExp => TypedElement::type
   --  CollectionRange => TypedElement::type
   --  EnumLiteralExp => TypedElement::type
   --  ExpressionInOcl => TypedElement::type
   --  IfExp => TypedElement::type
   --  IntegerLiteralExp => TypedElement::type
   --  InvalidLiteralExp => TypedElement::type
   --  IterateExp => TypedElement::type
   --  IteratorExp => TypedElement::type
   --  LetExp => TypedElement::type
   --  MessageExp => TypedElement::type
   --  NullLiteralExp => TypedElement::type
   --  OperationCallExp => TypedElement::type
   --  PropertyCallExp => TypedElement::type
   --  RealLiteralExp => TypedElement::type
   --  StateExp => TypedElement::type
   --  StringLiteralExp => TypedElement::type
   --  TupleLiteralExp => TypedElement::type
   --  TupleLiteralPart => TypedElement::type
   --  TypeExp => TypedElement::type
   --  UnlimitedNaturalLiteralExp => TypedElement::type
   --  UnspecifiedValueExp => TypedElement::type
   --  Variable => TypedElement::type
   --  VariableExp => TypedElement::type

   function Internal_Get_Unlimited_Natural_Symbol
    (Self : AMF.Internals.OCL_Element)
       return AMF.Unlimited_Natural;
   procedure Internal_Set_Unlimited_Natural_Symbol
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Unlimited_Natural);
   --  UnlimitedNaturalLiteralExp => UnlimitedNaturalLiteralExp::unlimitedNaturalSymbol

   function Internal_Get_Use_Case
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AnyType => Classifier::useCase
   --  BagType => Classifier::useCase
   --  CollectionType => Classifier::useCase
   --  InvalidType => Classifier::useCase
   --  MessageType => Classifier::useCase
   --  OrderedSetType => Classifier::useCase
   --  SequenceType => Classifier::useCase
   --  SetType => Classifier::useCase
   --  TemplateParameterType => Classifier::useCase
   --  TupleType => Classifier::useCase
   --  VoidType => Classifier::useCase

   function Internal_Get_Variable
    (Self : AMF.Internals.OCL_Element)
       return AMF.Internals.OCL_Element;
   procedure Internal_Set_Variable
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.Internals.OCL_Element);
   --  LetExp => LetExp::variable

   function Internal_Get_Visibility
    (Self : AMF.Internals.OCL_Element)
       return AMF.UML.Optional_UML_Visibility_Kind;
   procedure Internal_Set_Visibility
    (Self : AMF.Internals.OCL_Element;
     To   : AMF.UML.Optional_UML_Visibility_Kind);
   --  AnyType => NamedElement::visibility
   --  AssociationClassCallExp => NamedElement::visibility
   --  BagType => NamedElement::visibility
   --  BooleanLiteralExp => NamedElement::visibility
   --  CollectionItem => NamedElement::visibility
   --  CollectionLiteralExp => NamedElement::visibility
   --  CollectionRange => NamedElement::visibility
   --  CollectionType => NamedElement::visibility
   --  EnumLiteralExp => NamedElement::visibility
   --  ExpressionInOcl => NamedElement::visibility
   --  IfExp => NamedElement::visibility
   --  IntegerLiteralExp => NamedElement::visibility
   --  InvalidLiteralExp => NamedElement::visibility
   --  InvalidType => NamedElement::visibility
   --  IterateExp => NamedElement::visibility
   --  IteratorExp => NamedElement::visibility
   --  LetExp => NamedElement::visibility
   --  MessageExp => NamedElement::visibility
   --  MessageType => NamedElement::visibility
   --  NullLiteralExp => NamedElement::visibility
   --  OperationCallExp => NamedElement::visibility
   --  OrderedSetType => NamedElement::visibility
   --  PropertyCallExp => NamedElement::visibility
   --  RealLiteralExp => NamedElement::visibility
   --  SequenceType => NamedElement::visibility
   --  SetType => NamedElement::visibility
   --  StateExp => NamedElement::visibility
   --  StringLiteralExp => NamedElement::visibility
   --  TemplateParameterType => NamedElement::visibility
   --  TupleLiteralExp => NamedElement::visibility
   --  TupleLiteralPart => NamedElement::visibility
   --  TupleType => NamedElement::visibility
   --  TypeExp => NamedElement::visibility
   --  UnlimitedNaturalLiteralExp => NamedElement::visibility
   --  UnspecifiedValueExp => NamedElement::visibility
   --  Variable => NamedElement::visibility
   --  VariableExp => NamedElement::visibility
   --  VoidType => NamedElement::visibility

end AMF.Internals.Tables.OCL_Attributes;
