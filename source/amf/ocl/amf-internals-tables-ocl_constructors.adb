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
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.UML;
with Matreshka.Internals.Strings;

package body AMF.Internals.Tables.OCL_Constructors is

   use AMF.Internals.Tables;
   use type AMF.Internals.AMF_Collection_Of_Element;

   -------------------------
   -- Create_OCL_Any_Type --
   -------------------------

   function Create_OCL_Any_Type return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Any_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Any_Types.OCL_Any_Type_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          11     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (False, AMF.UML.Public_Visibility)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      return Self;
   end Create_OCL_Any_Type;

   -------------------------------------------
   -- Create_OCL_Association_Class_Call_Exp --
   -------------------------------------------

   function Create_OCL_Association_Class_Call_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Association_Class_Call_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  navigationSource
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  qualifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Qualifier_A_Parent_Nav,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_OCL_Association_Class_Call_Exp;

   -------------------------
   -- Create_OCL_Bag_Type --
   -------------------------

   function Create_OCL_Bag_Type return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Bag_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Bag_Types.OCL_Bag_Type_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          17     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  elementType
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          11     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (False, AMF.UML.Public_Visibility)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      return Self;
   end Create_OCL_Bag_Type;

   ------------------------------------
   -- Create_OCL_Boolean_Literal_Exp --
   ------------------------------------

   function Create_OCL_Boolean_Literal_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Boolean_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  booleanSymbol
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Boolean_Literal_Exp;

   --------------------------------
   -- Create_OCL_Collection_Item --
   --------------------------------

   function Create_OCL_Collection_Item return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Item,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Collection_Items.OCL_Collection_Item_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  item
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Collection_Item;

   ---------------------------------------
   -- Create_OCL_Collection_Literal_Exp --
   ---------------------------------------

   function Create_OCL_Collection_Literal_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Collection_Literal_Exps.OCL_Collection_Literal_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Collection_Kind, AMF.OCL.Collection),
                       --  kind
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  part

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Literal_Exp_Part_A_Exp1,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_OCL_Collection_Literal_Exp;

   ---------------------------------
   -- Create_OCL_Collection_Range --
   ---------------------------------

   function Create_OCL_Collection_Range return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Range,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Collection_Ranges.OCL_Collection_Range_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  first
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  last
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Collection_Range;

   --------------------------------
   -- Create_OCL_Collection_Type --
   --------------------------------

   function Create_OCL_Collection_Type return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Collection_Types.OCL_Collection_Type_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          17     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  elementType
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          11     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (False, AMF.UML.Public_Visibility)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      return Self;
   end Create_OCL_Collection_Type;

   ---------------------------------
   -- Create_OCL_Enum_Literal_Exp --
   ---------------------------------

   function Create_OCL_Enum_Literal_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Enum_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Enum_Literal_Exps.OCL_Enum_Literal_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Enum_Literal_Exp;

   ----------------------------------
   -- Create_OCL_Expression_In_Ocl --
   ----------------------------------

   function Create_OCL_Expression_In_Ocl return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Expression_In_Ocls.OCL_Expression_In_Ocl_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  behavior
          11     => (AMF.Internals.Tables.OCL_Types.M_Collection_Of_String, 0),
                       --  body
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  bodyExpression
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  contextVariable
          17     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  generatedType
          12     => (AMF.Internals.Tables.OCL_Types.M_Collection_Of_String, 0),
                       --  language
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          13     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  result
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  resultVariable
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (False, AMF.UML.Public_Visibility)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  parameterVariable

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Parameter_Variable_A_Var_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_OCL_Expression_In_Ocl;

   -----------------------
   -- Create_OCL_If_Exp --
   -----------------------

   function Create_OCL_If_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_If_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_If_Exps.OCL_If_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  condition
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  elseExpression
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_If_Exp;

   ------------------------------------
   -- Create_OCL_Integer_Literal_Exp --
   ------------------------------------

   function Create_OCL_Integer_Literal_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Integer_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Integer_Literal_Exps.OCL_Integer_Literal_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Integer, 0),
                       --  integerSymbol
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Integer_Literal_Exp;

   ------------------------------------
   -- Create_OCL_Invalid_Literal_Exp --
   ------------------------------------

   function Create_OCL_Invalid_Literal_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Invalid_Literal_Exp;

   -----------------------------
   -- Create_OCL_Invalid_Type --
   -----------------------------

   function Create_OCL_Invalid_Type return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Invalid_Types.OCL_Invalid_Type_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          11     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (False, AMF.UML.Public_Visibility)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      return Self;
   end Create_OCL_Invalid_Type;

   ----------------------------
   -- Create_OCL_Iterate_Exp --
   ----------------------------

   function Create_OCL_Iterate_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Iterate_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Iterate_Exps.OCL_Iterate_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  body
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  iterator

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Iterator_A_Loop_Exp,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Iterate_Exp;

   -----------------------------
   -- Create_OCL_Iterator_Exp --
   -----------------------------

   function Create_OCL_Iterator_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Iterator_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Iterator_Exps.OCL_Iterator_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  body
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  iterator

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Iterator_A_Loop_Exp,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Iterator_Exp;

   ------------------------
   -- Create_OCL_Let_Exp --
   ------------------------

   function Create_OCL_Let_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Let_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Let_Exps.OCL_Let_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  in
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  type
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Let_Exp;

   ----------------------------
   -- Create_OCL_Message_Exp --
   ----------------------------

   function Create_OCL_Message_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Message_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Message_Exps.OCL_Message_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  calledOperation
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  sentSignal
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
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
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Argument_A_Exp2,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Message_Exp;

   -----------------------------
   -- Create_OCL_Message_Type --
   -----------------------------

   function Create_OCL_Message_Type return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Message_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Message_Types.OCL_Message_Type_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          11     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          18     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  referredOperation
          17     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  referredSignal
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (False, AMF.UML.Public_Visibility)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      return Self;
   end Create_OCL_Message_Type;

   ---------------------------------
   -- Create_OCL_Null_Literal_Exp --
   ---------------------------------

   function Create_OCL_Null_Literal_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Null_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Null_Literal_Exps.OCL_Null_Literal_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Null_Literal_Exp;

   -----------------------------------
   -- Create_OCL_Operation_Call_Exp --
   -----------------------------------

   function Create_OCL_Operation_Call_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Operation_Call_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Operation_Call_Exps.OCL_Operation_Call_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
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
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Operation_Call_Exp_Argument_A_Parent_Call,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Operation_Call_Exp;

   ---------------------------------
   -- Create_OCL_Ordered_Set_Type --
   ---------------------------------

   function Create_OCL_Ordered_Set_Type return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Ordered_Set_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Ordered_Set_Types.OCL_Ordered_Set_Type_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          17     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  elementType
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          11     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (False, AMF.UML.Public_Visibility)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      return Self;
   end Create_OCL_Ordered_Set_Type;

   ----------------------------------
   -- Create_OCL_Property_Call_Exp --
   ----------------------------------

   function Create_OCL_Property_Call_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Property_Call_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Property_Call_Exps.OCL_Property_Call_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  navigationSource
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  qualifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Qualifier_A_Parent_Nav,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_OCL_Property_Call_Exp;

   ---------------------------------
   -- Create_OCL_Real_Literal_Exp --
   ---------------------------------

   function Create_OCL_Real_Literal_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Real_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Real_Literal_Exps.OCL_Real_Literal_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Real_Literal_Exp;

   ------------------------------
   -- Create_OCL_Sequence_Type --
   ------------------------------

   function Create_OCL_Sequence_Type return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Sequence_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Sequence_Types.OCL_Sequence_Type_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          17     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  elementType
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          11     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (False, AMF.UML.Public_Visibility)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      return Self;
   end Create_OCL_Sequence_Type;

   -------------------------
   -- Create_OCL_Set_Type --
   -------------------------

   function Create_OCL_Set_Type return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Set_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Set_Types.OCL_Set_Type_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          17     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  elementType
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          11     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (False, AMF.UML.Public_Visibility)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      return Self;
   end Create_OCL_Set_Type;

   --------------------------
   -- Create_OCL_State_Exp --
   --------------------------

   function Create_OCL_State_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_State_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_State_Exps.OCL_State_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_State_Exp;

   -----------------------------------
   -- Create_OCL_String_Literal_Exp --
   -----------------------------------

   function Create_OCL_String_Literal_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_String_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_String_Literal_Exps.OCL_String_Literal_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_String_Literal_Exp;

   ----------------------------------------
   -- Create_OCL_Template_Parameter_Type --
   ----------------------------------------

   function Create_OCL_Template_Parameter_Type return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Template_Parameter_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Template_Parameter_Types.OCL_Template_Parameter_Type_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          11     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          17     => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  specification
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (False, AMF.UML.Public_Visibility)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      return Self;
   end Create_OCL_Template_Parameter_Type;

   ----------------------------------
   -- Create_OCL_Tuple_Literal_Exp --
   ----------------------------------

   function Create_OCL_Tuple_Literal_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  part

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Tuple_Literal_Exp_Part_A_Exp3,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_OCL_Tuple_Literal_Exp;

   -----------------------------------
   -- Create_OCL_Tuple_Literal_Part --
   -----------------------------------

   function Create_OCL_Tuple_Literal_Part return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Part,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  attribute
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Tuple_Literal_Part;

   ---------------------------
   -- Create_OCL_Tuple_Type --
   ---------------------------

   function Create_OCL_Tuple_Type return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Tuple_Types.OCL_Tuple_Type_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          11     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (False, AMF.UML.Public_Visibility)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      return Self;
   end Create_OCL_Tuple_Type;

   -------------------------
   -- Create_OCL_Type_Exp --
   -------------------------

   function Create_OCL_Type_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Type_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Type_Exps.OCL_Type_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Type_Exp;

   ----------------------------------------------
   -- Create_OCL_Unlimited_Natural_Literal_Exp --
   ----------------------------------------------

   function Create_OCL_Unlimited_Natural_Literal_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Unlimited_Natural_Literal_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Unlimited_Natural_Literal_Exp;

   --------------------------------------
   -- Create_OCL_Unspecified_Value_Exp --
   --------------------------------------

   function Create_OCL_Unspecified_Value_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Unspecified_Value_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Unspecified_Value_Exp;

   -------------------------
   -- Create_OCL_Variable --
   -------------------------

   function Create_OCL_Variable return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Variable,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Variables.OCL_Variable_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  initExpression
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Variable;

   -----------------------------
   -- Create_OCL_Variable_Exp --
   -----------------------------

   function Create_OCL_Variable_Exp return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Variable_Exp,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Variable_Exps.OCL_Variable_Exp_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
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
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_OCL_Variable_Exp;

   --------------------------
   -- Create_OCL_Void_Type --
   --------------------------

   function Create_OCL_Void_Type return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      OCL_Element_Table.Increment_Last;
      Self := OCL_Element_Table.Last;

      OCL_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.OCL_Types.E_OCL_Void_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.OCL_Void_Types.OCL_Void_Type_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.OCL_Types.M_None),
          12     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isAbstract
          13     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isFinalSpecialization
          11     => (AMF.Internals.Tables.OCL_Types.M_Boolean, False),
                       --  isLeaf
          2      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  name
          3      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  nameExpression
          4      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  namespace
          14     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          10     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  ownedTemplateSignature
          1      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  owningTemplateParameter
          7      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  package
          5      => (AMF.Internals.Tables.OCL_Types.M_String, null),
                       --  qualifiedName
          15     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  representation
          16     => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          9      => (AMF.Internals.Tables.OCL_Types.M_Element, No_AMF_Link),
                       --  templateParameter
          6      => (AMF.Internals.Tables.OCL_Types.M_Visibility_Kind_Holder, (False, AMF.UML.Public_Visibility)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.OCL_Types.M_None)));
      OCL_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.OCL_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 13);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client,
        OCL_Element_Table.Table (Self).Member (0).Collection + 3);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 14);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 4);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific,
        OCL_Element_Table.Table (Self).Member (0).Collection + 17);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 18);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner,
        OCL_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context,
        OCL_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 19);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace,
        OCL_Element_Table.Table (Self).Member (0).Collection + 9);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype,
        OCL_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 12);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier,
        OCL_Element_Table.Table (Self).Member (0).Collection + 22);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element,
        OCL_Element_Table.Table (Self).Member (0).Collection + 10);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject,
        OCL_Element_Table.Table (Self).Member (0).Collection + 23);

      return Self;
   end Create_OCL_Void_Type;

end AMF.Internals.Tables.OCL_Constructors;
