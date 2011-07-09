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
with AMF.Internals.CMOF_Associations;
with AMF.Internals.CMOF_Classes;
with AMF.Internals.CMOF_Comments;
with AMF.Internals.CMOF_Constraints;
with AMF.Internals.CMOF_Data_Types;
with AMF.Internals.CMOF_Element_Imports;
with AMF.Internals.CMOF_Enumerations;
with AMF.Internals.CMOF_Enumeration_Literals;
with AMF.Internals.CMOF_Expressions;
with AMF.Internals.CMOF_Opaque_Expressions;
with AMF.Internals.CMOF_Operations;
with AMF.Internals.CMOF_Packages;
with AMF.Internals.CMOF_Package_Imports;
with AMF.Internals.CMOF_Package_Merges;
with AMF.Internals.CMOF_Parameters;
with AMF.Internals.CMOF_Primitive_Types;
with AMF.Internals.CMOF_Properties;
with AMF.Internals.CMOF_Tags;
with AMF.Internals.Element_Collections;
with AMF.Internals.Tables.CMOF_Types;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Tables;
with Matreshka.Internals.Strings;

package body CMOF.Internals.Constructors is

   use AMF.Internals.Tables.CMOF_Types;
   use CMOF.Internals.Metamodel;
   use CMOF.Internals.Tables;
   use type AMF.Internals.AMF_Collection_Of_Element;

   ------------------------
   -- Create_Association --
   ------------------------

   function Create_Association return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Association (Elements.Last);

      return Elements.Last;
   end Create_Association;

   ------------------
   -- Create_Class --
   ------------------

   function Create_Class return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Class (Elements.Last);

      return Elements.Last;
   end Create_Class;

   --------------------
   -- Create_Comment --
   --------------------

   function Create_Comment return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Comment (Elements.Last);

      return Elements.Last;
   end Create_Comment;

   -----------------------
   -- Create_Constraint --
   -----------------------

   function Create_Constraint return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Constraint (Elements.Last);

      return Elements.Last;
   end Create_Constraint;

   ----------------------
   -- Create_Data_Type --
   ----------------------

   function Create_Data_Type return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Data_Type (Elements.Last);

      return Elements.Last;
   end Create_Data_Type;

   ---------------------------
   -- Create_Element_Import --
   ---------------------------

   function Create_Element_Import return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Element_Import (Elements.Last);

      return Elements.Last;
   end Create_Element_Import;

   ------------------------
   -- Create_Enumeration --
   ------------------------

   function Create_Enumeration return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Enumeration (Elements.Last);

      return Elements.Last;
   end Create_Enumeration;

   --------------------------------
   -- Create_Enumeration_Literal --
   --------------------------------

   function Create_Enumeration_Literal return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Enumeration_Literal (Elements.Last);

      return Elements.Last;
   end Create_Enumeration_Literal;

   -----------------------
   -- Create_Expression --
   -----------------------

   function Create_Expression return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Expression (Elements.Last);

      return Elements.Last;
   end Create_Expression;

   ------------------------------
   -- Create_Opaque_Expression --
   ------------------------------

   function Create_Opaque_Expression return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Opaque_Expression (Elements.Last);

      return Elements.Last;
   end Create_Opaque_Expression;

   ----------------------
   -- Create_Operation --
   ----------------------

   function Create_Operation return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Operation (Elements.Last);

      return Elements.Last;
   end Create_Operation;

   --------------------
   -- Create_Package --
   --------------------

   function Create_Package return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Package (Elements.Last);

      return Elements.Last;
   end Create_Package;

   ---------------------------
   -- Create_Package_Import --
   ---------------------------

   function Create_Package_Import return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Package_Import (Elements.Last);

      return Elements.Last;
   end Create_Package_Import;

   --------------------------
   -- Create_Package_Merge --
   --------------------------

   function Create_Package_Merge return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Package_Merge (Elements.Last);

      return Elements.Last;
   end Create_Package_Merge;

   ----------------------
   -- Create_Parameter --
   ----------------------

   function Create_Parameter return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Parameter (Elements.Last);

      return Elements.Last;
   end Create_Parameter;

   ---------------------------
   -- Create_Primitive_Type --
   ---------------------------

   function Create_Primitive_Type return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Primitive_Type (Elements.Last);

      return Elements.Last;
   end Create_Primitive_Type;

   ---------------------
   -- Create_Property --
   ---------------------

   function Create_Property return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Property (Elements.Last);

      return Elements.Last;
   end Create_Property;

   ----------------
   -- Create_Tag --
   ----------------

   function Create_Tag return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Tag (Elements.Last);

      return Elements.Last;
   end Create_Tag;

   ----------------------------
   -- Initialize_Association --
   ----------------------------

   procedure Initialize_Association (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Association,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Associations.CMOF_Association_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
                     4      => (M_Element, 0),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Element, 0),
                       --  package
                     7      => (M_Boolean, False),
                       --  isFinalSpecialization
                     8      => (M_Boolean, False),
                       --  isDerived
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (17));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Imported_Member,
        Elements.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Element_Import,
        Elements.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Package_Import,
        Elements.Table (Self).Member (0).Collection + 5);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Member,
        Elements.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Member,
        Elements.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Rule,
        Elements.Table (Self).Member (0).Collection + 8);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Attribute,
        Elements.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Feature,
        Elements.Table (Self).Member (0).Collection + 10);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_General,
        Elements.Table (Self).Member (0).Collection + 11);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Inherited_Member,
        Elements.Table (Self).Member (0).Collection + 12);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Relationship_Related_Element,
        Elements.Table (Self).Member (0).Collection + 13);

      --  ownedEnd

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Association_Owned_End,
        Elements.Table (Self).Member (0).Collection + 14);

      --  endType

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Association_End_Type,
        Elements.Table (Self).Member (0).Collection + 15);

      --  memberEnd

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Association_Member_End,
        Elements.Table (Self).Member (0).Collection + 16);

      --  navigableOwnedEnd

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Association_Navigable_Owned_End,
        Elements.Table (Self).Member (0).Collection + 17);
   end Initialize_Association;

   ----------------------
   -- Initialize_Class --
   ----------------------

   procedure Initialize_Class (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Class,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Classes.CMOF_Class_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
                     4      => (M_Element, 0),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Element, 0),
                       --  package
                     7      => (M_Boolean, False),
                       --  isFinalSpecialization
                     8      => (M_Boolean, False),
                       --  isAbstract
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (14));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Imported_Member,
        Elements.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Element_Import,
        Elements.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Package_Import,
        Elements.Table (Self).Member (0).Collection + 5);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Member,
        Elements.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Member,
        Elements.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Rule,
        Elements.Table (Self).Member (0).Collection + 8);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Attribute,
        Elements.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Feature,
        Elements.Table (Self).Member (0).Collection + 10);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_General,
        Elements.Table (Self).Member (0).Collection + 11);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Inherited_Member,
        Elements.Table (Self).Member (0).Collection + 12);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Class_Owned_Attribute,
        Elements.Table (Self).Member (0).Collection + 13);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Class_Owned_Operation,
        Elements.Table (Self).Member (0).Collection + 14);
   end Initialize_Class;

   ------------------------
   -- Initialize_Comment --
   ------------------------

   procedure Initialize_Comment (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Comment,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Comments.CMOF_Comment_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  body
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  annotatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Comment_Annotated_Element,
        Elements.Table (Self).Member (0).Collection + 3);
   end Initialize_Comment;

   ---------------------------
   -- Initialize_Constraint --
   ---------------------------

   procedure Initialize_Constraint (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Constraint,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Constraints.CMOF_Constraint_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
                     4      => (M_Element, 0),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Element, 0),
                       --  specification
                     7      => (M_Element, 0),
                       --  context
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  constrainedElement

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Constraint_Constrained_Element,
        Elements.Table (Self).Member (0).Collection + 3);
   end Initialize_Constraint;

   --------------------------
   -- Initialize_Data_Type --
   --------------------------

   procedure Initialize_Data_Type (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Data_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Data_Types.CMOF_Data_Type_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
                     4      => (M_Element, 0),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Element, 0),
                       --  package
                     7      => (M_Boolean, False),
                       --  isFinalSpecialization
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (14));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Imported_Member,
        Elements.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Element_Import,
        Elements.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Package_Import,
        Elements.Table (Self).Member (0).Collection + 5);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Member,
        Elements.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Member,
        Elements.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Rule,
        Elements.Table (Self).Member (0).Collection + 8);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Attribute,
        Elements.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Feature,
        Elements.Table (Self).Member (0).Collection + 10);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_General,
        Elements.Table (Self).Member (0).Collection + 11);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Inherited_Member,
        Elements.Table (Self).Member (0).Collection + 12);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Data_Type_Owned_Attribute,
        Elements.Table (Self).Member (0).Collection + 13);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Data_Type_Owned_Operation,
        Elements.Table (Self).Member (0).Collection + 14);
   end Initialize_Data_Type;

   -------------------------------
   -- Initialize_Element_Import --
   -------------------------------

   procedure Initialize_Element_Import (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Element_Import,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Element_Imports.CMOF_Element_Import_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_Visibility_Kind, CMOF.Public_Visibility),
                       --  visibility
                     3      => (M_String, null),
                       --  alias
                     4      => (M_Element, 0),
                       --  importedElement
                     5      => (M_Element, 0),
                       --  importingNamespace
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Relationship_Related_Element,
        Elements.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Directed_Relationship_Source,
        Elements.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Directed_Relationship_Target,
        Elements.Table (Self).Member (0).Collection + 5);
   end Initialize_Element_Import;

   ----------------------------
   -- Initialize_Enumeration --
   ----------------------------

   procedure Initialize_Enumeration (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Enumeration,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Enumerations.CMOF_Enumeration_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
                     4      => (M_Element, 0),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Element, 0),
                       --  package
                     7      => (M_Boolean, False),
                       --  isFinalSpecialization
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (15));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Imported_Member,
        Elements.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Element_Import,
        Elements.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Package_Import,
        Elements.Table (Self).Member (0).Collection + 5);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Member,
        Elements.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Member,
        Elements.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Rule,
        Elements.Table (Self).Member (0).Collection + 8);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Attribute,
        Elements.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Feature,
        Elements.Table (Self).Member (0).Collection + 10);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_General,
        Elements.Table (Self).Member (0).Collection + 11);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Inherited_Member,
        Elements.Table (Self).Member (0).Collection + 12);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Data_Type_Owned_Attribute,
        Elements.Table (Self).Member (0).Collection + 13);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Data_Type_Owned_Operation,
        Elements.Table (Self).Member (0).Collection + 14);

      --  ownedLiteral

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Enumeration_Owned_Literal,
        Elements.Table (Self).Member (0).Collection + 15);
   end Initialize_Enumeration;

   ------------------------------------
   -- Initialize_Enumeration_Literal --
   ------------------------------------

   procedure Initialize_Enumeration_Literal (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Enumeration_Literal,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Enumeration_Literals.CMOF_Enumeration_Literal_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
                     4      => (M_Element, 0),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Element, 0),
                       --  enumeration
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (2));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);
   end Initialize_Enumeration_Literal;

   ---------------------------
   -- Initialize_Expression --
   ---------------------------

   procedure Initialize_Expression (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Expression,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Expressions.CMOF_Expression_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
                     4      => (M_Element, 0),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Element, 0),
                       --  type
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  operand

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Expression_Operand,
        Elements.Table (Self).Member (0).Collection + 3);
   end Initialize_Expression;

   ----------------------------------
   -- Initialize_Opaque_Expression --
   ----------------------------------

   procedure Initialize_Opaque_Expression (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Opaque_Expression,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Opaque_Expressions.CMOF_Opaque_Expression_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
                     4      => (M_Element, 0),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Element, 0),
                       --  type
                     7      => (M_Collection_Of_String, 0),
                       --  body
                     8      => (M_Collection_Of_String, 0),
                       --  language
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (2));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);
   end Initialize_Opaque_Expression;

   --------------------------
   -- Initialize_Operation --
   --------------------------

   procedure Initialize_Operation (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Operation,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Operations.CMOF_Operation_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
                     4      => (M_Element, 0),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Boolean, False),
                       --  isLeaf
                     7      => (M_Boolean, False),
                       --  isQuery
                     8      => (M_Boolean, False),
                       --  isOrdered
                     9      => (M_Boolean, True),
                       --  isUnique
                     10     => (M_Integer_Holder, (False, 1)),
                       --  lower
                     11     =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     12     => (M_Element, 0),
                       --  class
                     13     => (M_Element, 0),
                       --  datatype
                     14     => (M_Element, 0),
                       --  type
                     15     => (M_Element, 0),
                       --  bodyCondition
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Redefinable_Element_Redefinition_Context,
        Elements.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Redefinable_Element_Redefined_Element,
        Elements.Table (Self).Member (0).Collection + 4);

      --  featuringClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Feature_Featuring_Classifier,
        Elements.Table (Self).Member (0).Collection + 5);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Imported_Member,
        Elements.Table (Self).Member (0).Collection + 6);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Element_Import,
        Elements.Table (Self).Member (0).Collection + 7);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Package_Import,
        Elements.Table (Self).Member (0).Collection + 8);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Member,
        Elements.Table (Self).Member (0).Collection + 9);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Member,
        Elements.Table (Self).Member (0).Collection + 10);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Rule,
        Elements.Table (Self).Member (0).Collection + 11);

      --  ownedParameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Behavioral_Feature_Owned_Parameter,
        Elements.Table (Self).Member (0).Collection + 12);

      --  raisedException

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Behavioral_Feature_Raised_Exception,
        Elements.Table (Self).Member (0).Collection + 13);

      --  redefinedOperation

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Operation_Redefined_Operation,
        Elements.Table (Self).Member (0).Collection + 14);

      --  precondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Operation_Precondition,
        Elements.Table (Self).Member (0).Collection + 15);

      --  postcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Operation_Postcondition,
        Elements.Table (Self).Member (0).Collection + 16);
   end Initialize_Operation;

   ------------------------
   -- Initialize_Package --
   ------------------------

   procedure Initialize_Package (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Package,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Packages.CMOF_Package_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
                     4      => (M_Element, 0),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Element, 0),
                       --  nestingPackage
                     7      => (M_String, null),
                       --  uri
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (12));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Imported_Member,
        Elements.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Element_Import,
        Elements.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Package_Import,
        Elements.Table (Self).Member (0).Collection + 5);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Member,
        Elements.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Member,
        Elements.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Rule,
        Elements.Table (Self).Member (0).Collection + 8);

      --  packagedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Package_Packaged_Element,
        Elements.Table (Self).Member (0).Collection + 9);

      --  ownedType

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Package_Owned_Type,
        Elements.Table (Self).Member (0).Collection + 10);

      --  nestedPackage

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Package_Nested_Package,
        Elements.Table (Self).Member (0).Collection + 11);

      --  packageMerge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Package_Package_Merge,
        Elements.Table (Self).Member (0).Collection + 12);
   end Initialize_Package;

   -------------------------------
   -- Initialize_Package_Import --
   -------------------------------

   procedure Initialize_Package_Import (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Package_Import,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Package_Imports.CMOF_Package_Import_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_Visibility_Kind, CMOF.Public_Visibility),
                       --  visibility
                     3      => (M_Element, 0),
                       --  importedPackage
                     4      => (M_Element, 0),
                       --  importingNamespace
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Relationship_Related_Element,
        Elements.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Directed_Relationship_Source,
        Elements.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Directed_Relationship_Target,
        Elements.Table (Self).Member (0).Collection + 5);
   end Initialize_Package_Import;

   ------------------------------
   -- Initialize_Package_Merge --
   ------------------------------

   procedure Initialize_Package_Merge (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Package_Merge,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Package_Merges.CMOF_Package_Merge_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_Element, 0),
                       --  receivingPackage
                     3      => (M_Element, 0),
                       --  mergedPackage
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Relationship_Related_Element,
        Elements.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Directed_Relationship_Source,
        Elements.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Directed_Relationship_Target,
        Elements.Table (Self).Member (0).Collection + 5);
   end Initialize_Package_Merge;

   --------------------------
   -- Initialize_Parameter --
   --------------------------

   procedure Initialize_Parameter (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Parameter,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Parameters.CMOF_Parameter_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
                     4      => (M_Element, 0),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Element, 0),
                       --  type
                     7      => (M_Boolean, False),
                       --  isOrdered
                     8      => (M_Boolean, True),
                       --  isUnique
                     9      => (M_Integer_Holder, (False, 1)),
                       --  lower
                     10     =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     11     => (M_String, null),
                       --  default
                     12     => (M_Parameter_Direction_Kind, CMOF.In_Direction),
                       --  direction
                     13     => (M_Element, 0),
                       --  operation
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (2));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);
   end Initialize_Parameter;

   -------------------------------
   -- Initialize_Primitive_Type --
   -------------------------------

   procedure Initialize_Primitive_Type (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Primitive_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Primitive_Types.CMOF_Primitive_Type_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
                     4      => (M_Element, 0),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Element, 0),
                       --  package
                     7      => (M_Boolean, False),
                       --  isFinalSpecialization
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (14));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Imported_Member,
        Elements.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Element_Import,
        Elements.Table (Self).Member (0).Collection + 4);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Package_Import,
        Elements.Table (Self).Member (0).Collection + 5);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Member,
        Elements.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Member,
        Elements.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Namespace_Owned_Rule,
        Elements.Table (Self).Member (0).Collection + 8);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Attribute,
        Elements.Table (Self).Member (0).Collection + 9);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Feature,
        Elements.Table (Self).Member (0).Collection + 10);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_General,
        Elements.Table (Self).Member (0).Collection + 11);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Classifier_Inherited_Member,
        Elements.Table (Self).Member (0).Collection + 12);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Data_Type_Owned_Attribute,
        Elements.Table (Self).Member (0).Collection + 13);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_CMOF_Data_Type_Owned_Operation,
        Elements.Table (Self).Member (0).Collection + 14);
   end Initialize_Primitive_Type;

   -------------------------
   -- Initialize_Property --
   -------------------------

   procedure Initialize_Property (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Property,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Properties.CMOF_Property_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Visibility_Holder_Kind, (Is_Empty => True)),
                       --  visibility
                     4      => (M_Element, 0),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Boolean, False),
                       --  isLeaf
                     7      => (M_Boolean, False),
                       --  isOrdered
                     8      => (M_Boolean, True),
                       --  isUnique
                     9      => (M_Integer_Holder, (False, 1)),
                       --  lower
                     10     =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     11     => (M_Element, 0),
                       --  type
                     12     => (M_Boolean, False),
                       --  isReadOnly
                     13     => (M_String, null),
                       --  default
                     14     => (M_Boolean, False),
                       --  isComposite
                     15     => (M_Boolean, False),
                       --  isDerived
                     16     => (M_Boolean, False),
                       --  isDerivedUnion
                     17     => (M_Element, 0),
                       --  class
                     18     => (M_Element, 0),
                       --  owningAssociation
                     19     => (M_Element, 0),
                       --  opposite
                     20     => (M_Element, 0),
                       --  datatype
                     21     => (M_Element, 0),
                       --  association
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Redefinable_Element_Redefinition_Context,
        Elements.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Redefinable_Element_Redefined_Element,
        Elements.Table (Self).Member (0).Collection + 4);

      --  featuringClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Feature_Featuring_Classifier,
        Elements.Table (Self).Member (0).Collection + 5);

      --  redefinedProperty

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Property_Redefined_Property,
        Elements.Table (Self).Member (0).Collection + 6);

      --  subsettedProperty

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Property_Subsetted_Property,
        Elements.Table (Self).Member (0).Collection + 7);
   end Initialize_Property;

   --------------------
   -- Initialize_Tag --
   --------------------

   procedure Initialize_Tag (Self   : CMOF_Element) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Tag,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.CMOF_Tags.CMOF_Tag_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                       --  name
                     3      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                       --  value
                     4      => (M_Element, 0),
                       --  tagOwner
                     others => (Kind => M_None)));
      Elements.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Element,
        Elements.Table (Self).Member (0).Collection + 1);

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Element_Owned_Comment,
        Elements.Table (Self).Member (0).Collection + 2);

      --  element

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_CMOF_Tag_Element,
        Elements.Table (Self).Member (0).Collection + 3);
   end Initialize_Tag;

end CMOF.Internals.Constructors;
