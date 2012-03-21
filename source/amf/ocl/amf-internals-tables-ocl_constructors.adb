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
with AMF.Internals.Element_Collections;
with AMF.Internals.OCL_Any_Types;
with AMF.Internals.OCL_Association_Class_Call_Exps;
with AMF.Internals.OCL_Bag_Types;
with AMF.Internals.OCL_Boolean_Literal_Exps;
with AMF.Internals.OCL_Collection_Items;
with AMF.Internals.OCL_Collection_Literal_Exps;
with AMF.Internals.OCL_Collection_Ranges;
with AMF.Internals.OCL_Collection_Types;
with AMF.Internals.OCL_Enum_Literal_Exps;
with AMF.Internals.OCL_Expression_In_Ocls;
with AMF.Internals.OCL_If_Exps;
with AMF.Internals.OCL_Integer_Literal_Exps;
with AMF.Internals.OCL_Invalid_Literal_Exps;
with AMF.Internals.OCL_Invalid_Types;
with AMF.Internals.OCL_Iterate_Exps;
with AMF.Internals.OCL_Iterator_Exps;
with AMF.Internals.OCL_Let_Exps;
with AMF.Internals.OCL_Message_Exps;
with AMF.Internals.OCL_Message_Types;
with AMF.Internals.OCL_Null_Literal_Exps;
with AMF.Internals.OCL_Operation_Call_Exps;
with AMF.Internals.OCL_Ordered_Set_Types;
with AMF.Internals.OCL_Property_Call_Exps;
with AMF.Internals.OCL_Real_Literal_Exps;
with AMF.Internals.OCL_Sequence_Types;
with AMF.Internals.OCL_Set_Types;
with AMF.Internals.OCL_State_Exps;
with AMF.Internals.OCL_String_Literal_Exps;
with AMF.Internals.OCL_Template_Parameter_Types;
with AMF.Internals.OCL_Tuple_Literal_Exps;
with AMF.Internals.OCL_Tuple_Literal_Parts;
with AMF.Internals.OCL_Tuple_Types;
with AMF.Internals.OCL_Type_Exps;
with AMF.Internals.OCL_Unlimited_Natural_Literal_Exps;
with AMF.Internals.OCL_Unspecified_Value_Exps;
with AMF.Internals.OCL_Variable_Exps;
with AMF.Internals.OCL_Variables;
with AMF.Internals.OCL_Void_Types;
with AMF.Internals.Tables.OCL_Element_Table;
with AMF.Internals.Tables.OCL_Metamodel;
with AMF.Internals.Tables.OCL_Types;
with AMF.Internals.Tables.UML_Metamodel;
with AMF.OCL;
with Matreshka.Internals.Strings;

package body AMF.Internals.Tables.OCL_Constructors is

   use AMF.Internals.Tables;
   use type AMF.Internals.AMF_Collection_Of_Element;

   ---------------------
   -- Create_Any_Type --
   ---------------------

   function Create_Any_Type return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Any_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Any_Types.OCL_Any_Type_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          10     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          11     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Any_Type;

   ---------------------------------------
   -- Create_Association_Class_Call_Exp --
   ---------------------------------------

   function Create_Association_Class_Call_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Association_Class_Call_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  navigationSource
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  referredAssociationClass
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  source
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  qualifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Qualifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Association_Class_Call_Exp;

   ---------------------
   -- Create_Bag_Type --
   ---------------------

   function Create_Bag_Type return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Bag_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Bag_Types.OCL_Bag_Type_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  elementType
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          10     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          11     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation,
        OCL_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Bag_Type;

   --------------------------------
   -- Create_Boolean_Literal_Exp --
   --------------------------------

   function Create_Boolean_Literal_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Boolean_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  booleanSymbol
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Boolean_Literal_Exp;

   ----------------------------
   -- Create_Collection_Item --
   ----------------------------

   function Create_Collection_Item return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Collection_Item,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Collection_Items.OCL_Collection_Item_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  item
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Collection_Item;

   -----------------------------------
   -- Create_Collection_Literal_Exp --
   -----------------------------------

   function Create_Collection_Literal_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Collection_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Collection_Literal_Exps.OCL_Collection_Literal_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Collection_Kind, AMF.OCL.Collection),
                       --  kind
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  part

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Literal_Exp_Part,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Collection_Literal_Exp;

   -----------------------------
   -- Create_Collection_Range --
   -----------------------------

   function Create_Collection_Range return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Collection_Range,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Collection_Ranges.OCL_Collection_Range_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  first
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  last
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Collection_Range;

   ----------------------------
   -- Create_Collection_Type --
   ----------------------------

   function Create_Collection_Type return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Collection_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Collection_Types.OCL_Collection_Type_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  elementType
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          10     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          11     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation,
        OCL_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Collection_Type;

   -----------------------------
   -- Create_Enum_Literal_Exp --
   -----------------------------

   function Create_Enum_Literal_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Enum_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Enum_Literal_Exps.OCL_Enum_Literal_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  referredEnumLiteral
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Enum_Literal_Exp;

   ------------------------------
   -- Create_Expression_In_Ocl --
   ------------------------------

   function Create_Expression_In_Ocl return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Expression_In_Ocl,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Expression_In_Ocls.OCL_Expression_In_Ocl_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          12     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  behavior
          15     => (AMF.Internals.Tables.OCL_Types.M_Collection_Of_String, 0),
                       --  body
          17     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  bodyExpression
          13     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  contextVariable
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  generatedType
          11     => (AMF.Internals.Tables.OCL_Types.M_Collection_Of_String, 0),
                       --  language
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  result
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  resultVariable
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  parameterVariable

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Parameter_Variable,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Expression_In_Ocl;

   -------------------
   -- Create_If_Exp --
   -------------------

   function Create_If_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_If_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_If_Exps.OCL_If_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  condition
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  elseExpression
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  thenExpression
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_If_Exp;

   --------------------------------
   -- Create_Integer_Literal_Exp --
   --------------------------------

   function Create_Integer_Literal_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Integer_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Integer_Literal_Exps.OCL_Integer_Literal_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Integer, 0),
                       --  integerSymbol
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Integer_Literal_Exp;

   --------------------------------
   -- Create_Invalid_Literal_Exp --
   --------------------------------

   function Create_Invalid_Literal_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Invalid_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Invalid_Literal_Exp;

   -------------------------
   -- Create_Invalid_Type --
   -------------------------

   function Create_Invalid_Type return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Invalid_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Invalid_Types.OCL_Invalid_Type_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          10     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          11     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Invalid_Type;

   ------------------------
   -- Create_Iterate_Exp --
   ------------------------

   function Create_Iterate_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Iterate_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Iterate_Exps.OCL_Iterate_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  body
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  result
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  source
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  iterator

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Iterator,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Iterate_Exp;

   -------------------------
   -- Create_Iterator_Exp --
   -------------------------

   function Create_Iterator_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Iterator_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Iterator_Exps.OCL_Iterator_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  body
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  source
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  iterator

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Iterator,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Iterator_Exp;

   --------------------
   -- Create_Let_Exp --
   --------------------

   function Create_Let_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Let_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Let_Exps.OCL_Let_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  in
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  variable
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Let_Exp;

   ------------------------
   -- Create_Message_Exp --
   ------------------------

   function Create_Message_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Message_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Message_Exps.OCL_Message_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  calledOperation
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  sentSignal
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  target
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  argument

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Argument,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Message_Exp;

   -------------------------
   -- Create_Message_Type --
   -------------------------

   function Create_Message_Type return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Message_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Message_Types.OCL_Message_Type_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          10     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          11     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  referredOperation
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  referredSignal
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Message_Type;

   -----------------------------
   -- Create_Null_Literal_Exp --
   -----------------------------

   function Create_Null_Literal_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Null_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Null_Literal_Exps.OCL_Null_Literal_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Null_Literal_Exp;

   -------------------------------
   -- Create_Operation_Call_Exp --
   -------------------------------

   function Create_Operation_Call_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Operation_Call_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Operation_Call_Exps.OCL_Operation_Call_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  referredOperation
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  source
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  argument

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Operation_Call_Exp_Argument,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Operation_Call_Exp;

   -----------------------------
   -- Create_Ordered_Set_Type --
   -----------------------------

   function Create_Ordered_Set_Type return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Ordered_Set_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Ordered_Set_Types.OCL_Ordered_Set_Type_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  elementType
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          10     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          11     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation,
        OCL_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Ordered_Set_Type;

   ------------------------------
   -- Create_Property_Call_Exp --
   ------------------------------

   function Create_Property_Call_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Property_Call_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Property_Call_Exps.OCL_Property_Call_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  navigationSource
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  referredProperty
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  source
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  qualifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Qualifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Property_Call_Exp;

   -----------------------------
   -- Create_Real_Literal_Exp --
   -----------------------------

   function Create_Real_Literal_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Real_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Real_Literal_Exps.OCL_Real_Literal_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          8      => (AMF.Internals.Tables.OCL_Types.M_Real, 0.0),
                       --  realSymbol
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Real_Literal_Exp;

   --------------------------
   -- Create_Sequence_Type --
   --------------------------

   function Create_Sequence_Type return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Sequence_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Sequence_Types.OCL_Sequence_Type_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  elementType
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          10     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          11     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation,
        OCL_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Sequence_Type;

   ---------------------
   -- Create_Set_Type --
   ---------------------

   function Create_Set_Type return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Set_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Set_Types.OCL_Set_Type_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  elementType
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          10     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          11     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation,
        OCL_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Set_Type;

   ----------------------
   -- Create_State_Exp --
   ----------------------

   function Create_State_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_State_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_State_Exps.OCL_State_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  referredState
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_State_Exp;

   -------------------------------
   -- Create_String_Literal_Exp --
   -------------------------------

   function Create_String_Literal_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_String_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_String_Literal_Exps.OCL_String_Literal_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          8      => (AMF.Internals.Tables.OCL_Types.M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                       --  stringSymbol
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_String_Literal_Exp;

   ------------------------------------
   -- Create_Template_Parameter_Type --
   ------------------------------------

   function Create_Template_Parameter_Type return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Template_Parameter_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Template_Parameter_Types.OCL_Template_Parameter_Type_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          10     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          11     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          15     => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  specification
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Template_Parameter_Type;

   ------------------------------
   -- Create_Tuple_Literal_Exp --
   ------------------------------

   function Create_Tuple_Literal_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Tuple_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  part

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Tuple_Literal_Exp_Part,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Tuple_Literal_Exp;

   -------------------------------
   -- Create_Tuple_Literal_Part --
   -------------------------------

   function Create_Tuple_Literal_Part return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Tuple_Literal_Part,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  attribute
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Tuple_Literal_Part;

   -----------------------
   -- Create_Tuple_Type --
   -----------------------

   function Create_Tuple_Type return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Tuple_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Tuple_Types.OCL_Tuple_Type_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          10     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          11     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation,
        OCL_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Tuple_Type;

   ---------------------
   -- Create_Type_Exp --
   ---------------------

   function Create_Type_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Type_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Type_Exps.OCL_Type_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  referredType
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Type_Exp;

   ------------------------------------------
   -- Create_Unlimited_Natural_Literal_Exp --
   ------------------------------------------

   function Create_Unlimited_Natural_Literal_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Unlimited_Natural_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          8      => (AMF.Internals.Tables.OCL_Types.M_Unlimited_Natural, (False, 0)),
                       --  unlimitedNaturalSymbol
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Unlimited_Natural_Literal_Exp;

   ----------------------------------
   -- Create_Unspecified_Value_Exp --
   ----------------------------------

   function Create_Unspecified_Value_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Unspecified_Value_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Unspecified_Value_Exp;

   ---------------------
   -- Create_Variable --
   ---------------------

   function Create_Variable return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Variable,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Variables.OCL_Variable_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  initExpression
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representedParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Variable;

   -------------------------
   -- Create_Variable_Exp --
   -------------------------

   function Create_Variable_Exp return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Variable_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Variable_Exps.OCL_Variable_Exp_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  referredVariable
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Variable_Exp;

   ----------------------
   -- Create_Void_Type --
   ----------------------

   function Create_Void_Type return AMF.Internals.OCL_Element is
      Self : AMF.Internals.OCL_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_Void_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Void_Types.OCL_Void_Type_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          10     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          5      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          11     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          3      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Void_Type;

end AMF.Internals.Tables.OCL_Constructors;
