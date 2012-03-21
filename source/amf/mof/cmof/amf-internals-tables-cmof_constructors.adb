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
with AMF.CMOF;
with AMF.Internals.CMOF_Associations;
with AMF.Internals.CMOF_Classes;
with AMF.Internals.CMOF_Comments;
with AMF.Internals.CMOF_Constraints;
with AMF.Internals.CMOF_Data_Types;
with AMF.Internals.CMOF_Element_Imports;
with AMF.Internals.CMOF_Enumeration_Literals;
with AMF.Internals.CMOF_Enumerations;
with AMF.Internals.CMOF_Expressions;
with AMF.Internals.CMOF_Opaque_Expressions;
with AMF.Internals.CMOF_Operations;
with AMF.Internals.CMOF_Package_Imports;
with AMF.Internals.CMOF_Package_Merges;
with AMF.Internals.CMOF_Packages;
with AMF.Internals.CMOF_Parameters;
with AMF.Internals.CMOF_Primitive_Types;
with AMF.Internals.CMOF_Properties;
with AMF.Internals.CMOF_Tags;
with AMF.Internals.Element_Collections;
with AMF.Internals.Tables.CMOF_Element_Table;
with AMF.Internals.Tables.CMOF_Metamodel;
with AMF.Internals.Tables.CMOF_Types;
with Matreshka.Internals.Strings;

package body AMF.Internals.Tables.CMOF_Constructors is

   use AMF.Internals.Tables;
   use type AMF.Internals.AMF_Collection_Of_Element;

   ------------------------
   -- Create_Association --
   ------------------------

   function Create_Association return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Association,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Associations.CMOF_Association_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          27     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isDerived
          9      => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isFinalSpecialization
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  name
          6      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  package
          7      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  qualifiedName
          5      => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 10);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 5);

      --  endType

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_End_Type,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 29);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 11);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_General,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 12);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 4);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Inherited_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 13);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 8);

      --  memberEnd

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 30);

      --  navigableOwnedEnd

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Navigable_Owned_End,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 31);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedEnd

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 28);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 9);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 6);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Relationship_Related_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 23);

      return Self;
   end Create_Association;

   ------------------
   -- Create_Class --
   ------------------

   function Create_Class return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Class,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Classes.CMOF_Class_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          10     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isAbstract
          9      => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isFinalSpecialization
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  name
          6      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  package
          7      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  qualifiedName
          5      => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 10);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 5);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 11);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_General,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 12);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 4);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Inherited_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 13);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 14);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 15);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 9);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 6);

      return Self;
   end Create_Class;

   --------------------
   -- Create_Comment --
   --------------------

   function Create_Comment return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Comment,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Comments.CMOF_Comment_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          43     => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  body
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  annotatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 40);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      return Self;
   end Create_Comment;

   -----------------------
   -- Create_Constraint --
   -----------------------

   function Create_Constraint return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Constraint,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Constraints.CMOF_Constraint_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          14     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  context
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  name
          6      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          7      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  qualifiedName
          13     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  specification
          5      => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  constrainedElement

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 22);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      return Self;
   end Create_Constraint;

   ----------------------
   -- Create_Data_Type --
   ----------------------

   function Create_Data_Type return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Data_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Data_Types.CMOF_Data_Type_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          9      => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isFinalSpecialization
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  name
          6      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  package
          7      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  qualifiedName
          5      => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 10);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 5);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 11);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_General,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 12);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 4);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Inherited_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 13);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Data_Type_Owned_Attribute,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 14);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Data_Type_Owned_Operation,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 15);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 9);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 6);

      return Self;
   end Create_Data_Type;

   ---------------------------
   -- Create_Element_Import --
   ---------------------------

   function Create_Element_Import return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Element_Import,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Element_Imports.CMOF_Element_Import_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          16     => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  alias
          17     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  importedElement
          18     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  importingNamespace
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          15     => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Kind, AMF.CMOF.Public_Visibility),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Relationship_Related_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 23);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Source,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 24);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Target,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 25);

      return Self;
   end Create_Element_Import;

   ------------------------
   -- Create_Enumeration --
   ------------------------

   function Create_Enumeration return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Enumeration,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Enumerations.CMOF_Enumeration_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          9      => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isFinalSpecialization
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  name
          6      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  package
          7      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  qualifiedName
          5      => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 10);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 5);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 11);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_General,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 12);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 4);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Inherited_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 13);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Data_Type_Owned_Attribute,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 14);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedLiteral

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 16);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Data_Type_Owned_Operation,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 15);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 9);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 6);

      return Self;
   end Create_Enumeration;

   --------------------------------
   -- Create_Enumeration_Literal --
   --------------------------------

   function Create_Enumeration_Literal return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Enumeration_Literal,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Enumeration_Literals.CMOF_Enumeration_Literal_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          12     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  enumeration
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  name
          6      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          7      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  qualifiedName
          5      => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      return Self;
   end Create_Enumeration_Literal;

   -----------------------
   -- Create_Expression --
   -----------------------

   function Create_Expression return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Expression,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Expressions.CMOF_Expression_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  name
          6      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          7      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  qualifiedName
          23     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  type
          5      => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  operand

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Expression_Operand,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 35);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      return Self;
   end Create_Expression;

   ------------------------------
   -- Create_Opaque_Expression --
   ------------------------------

   function Create_Opaque_Expression return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Opaque_Expression,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Opaque_Expressions.CMOF_Opaque_Expression_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          35     => (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_String, 0),
                       --  body
          36     => (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_String, 0),
                       --  language
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  name
          6      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          7      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  qualifiedName
          23     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  type
          5      => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      return Self;
   end Create_Opaque_Expression;

   ----------------------
   -- Create_Operation --
   ----------------------

   function Create_Operation return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Operation,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Operations.CMOF_Operation_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          40     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  bodyCondition
          29     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  class
          32     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  datatype
          11     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isLeaf
          19     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isOrdered
          39     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isQuery
          20     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, True),
                       --  isUnique
          21     => (AMF.Internals.Tables.CMOF_Types.M_Integer_Holder, (False, 1)),
                       --  lower
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  name
          6      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          7      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  qualifiedName
          23     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  type
          22     => (AMF.Internals.Tables.CMOF_Types.M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
          5      => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 5);

      --  featuringClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 19);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 4);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedParameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Behavioral_Feature_Owned_Parameter,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 20);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 9);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 6);

      --  postcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Postcondition,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 34);

      --  precondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Precondition,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 33);

      --  raisedException

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Behavioral_Feature_Raised_Exception,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 18);

      --  redefinedOperation

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Redefined_Operation,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 32);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefinition_Context,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 17);

      return Self;
   end Create_Operation;

   --------------------
   -- Create_Package --
   --------------------

   function Create_Package return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Package,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Packages.CMOF_Package_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  name
          6      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  namespace
          41     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  nestingPackage
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          7      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  qualifiedName
          42     => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  uri
          5      => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 5);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 4);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 8);

      --  nestedPackage

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Nested_Package,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 38);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 9);

      --  ownedType

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 37);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 6);

      --  packageMerge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Package_Merge,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 39);

      --  packagedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 36);

      return Self;
   end Create_Package;

   ---------------------------
   -- Create_Package_Import --
   ---------------------------

   function Create_Package_Import return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Package_Import,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Package_Imports.CMOF_Package_Import_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          34     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  importedPackage
          18     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  importingNamespace
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          15     => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Kind, AMF.CMOF.Public_Visibility),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Relationship_Related_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 23);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Source,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 24);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Target,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 25);

      return Self;
   end Create_Package_Import;

   --------------------------
   -- Create_Package_Merge --
   --------------------------

   function Create_Package_Merge return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Package_Merge,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Package_Merges.CMOF_Package_Merge_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          38     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  mergedPackage
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          37     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  receivingPackage
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Relationship_Related_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 23);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Source,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 24);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Target,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 25);

      return Self;
   end Create_Package_Merge;

   ----------------------
   -- Create_Parameter --
   ----------------------

   function Create_Parameter return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Parameter,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Parameters.CMOF_Parameter_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          25     => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  default
          44     => (AMF.Internals.Tables.CMOF_Types.M_Parameter_Direction_Kind, AMF.CMOF.In_Parameter),
                       --  direction
          19     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isOrdered
          20     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, True),
                       --  isUnique
          21     => (AMF.Internals.Tables.CMOF_Types.M_Integer_Holder, (False, 1)),
                       --  lower
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  name
          6      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  namespace
          45     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  operation
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          7      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  qualifiedName
          23     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  type
          22     => (AMF.Internals.Tables.CMOF_Types.M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
          5      => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      return Self;
   end Create_Parameter;

   ---------------------------
   -- Create_Primitive_Type --
   ---------------------------

   function Create_Primitive_Type return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Primitive_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Primitive_Types.CMOF_Primitive_Type_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          9      => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isFinalSpecialization
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  name
          6      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  namespace
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          8      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  package
          7      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  qualifiedName
          5      => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 10);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 5);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 11);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_General,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 12);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 4);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Inherited_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 13);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Data_Type_Owned_Attribute,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 14);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Data_Type_Owned_Operation,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 15);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 9);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 6);

      return Self;
   end Create_Primitive_Type;

   ---------------------
   -- Create_Property --
   ---------------------

   function Create_Property return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Property,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Properties.CMOF_Property_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          33     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  association
          29     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  class
          32     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  datatype
          25     => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  default
          26     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isComposite
          27     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isDerived
          28     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isDerivedUnion
          11     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isLeaf
          19     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isOrdered
          24     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, False),
                       --  isReadOnly
          20     => (AMF.Internals.Tables.CMOF_Types.M_Boolean, True),
                       --  isUnique
          21     => (AMF.Internals.Tables.CMOF_Types.M_Integer_Holder, (False, 1)),
                       --  lower
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  name
          6      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  namespace
          31     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  opposite
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          30     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owningAssociation
          7      => (AMF.Internals.Tables.CMOF_Types.M_String, null),
                       --  qualifiedName
          23     => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  type
          22     => (AMF.Internals.Tables.CMOF_Types.M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
          5      => (AMF.Internals.Tables.CMOF_Types.M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  featuringClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 19);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefined_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 18);

      --  redefinedProperty

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 26);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefinable_Element_Redefinition_Context,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 17);

      --  subsettedProperty

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 27);

      return Self;
   end Create_Property;

   ----------------
   -- Create_Tag --
   ----------------

   function Create_Tag return AMF.Internals.CMOF_Element is
      Self : AMF.Internals.CMOF_Element;

   begin
      CMOF_Element_Table.Increment_Last;
      Self := CMOF_Element_Table.Last;

      CMOF_Element_Table.Table (Self) :=
       (Kind     => AMF.Internals.Tables.CMOF_Types.E_Tag,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Tags.CMOF_Tag_Proxy'(Id => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.CMOF_Types.M_None),
          2      => (AMF.Internals.Tables.CMOF_Types.M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                       --  name
          1      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  owner
          4      => (AMF.Internals.Tables.CMOF_Types.M_Element, No_AMF_Link),
                       --  tagOwner
          3      => (AMF.Internals.Tables.CMOF_Types.M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                       --  value
          others => (Kind => AMF.Internals.Tables.CMOF_Types.M_None)));
      CMOF_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.CMOF_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  element

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 3);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        CMOF_Element_Table.Table (Self).Member (0).Collection + 1);

      return Self;
   end Create_Tag;

end AMF.Internals.Tables.CMOF_Constructors;
