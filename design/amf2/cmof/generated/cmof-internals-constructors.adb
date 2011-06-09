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
with Cmof.Internals.Extents;
with CMOF.Internals.Tables;
with CMOF.Internals.Types;
with Matreshka.Internals.Strings;

package body CMOF.Internals.Constructors is

   use Cmof.Internals.Extents;
   use CMOF.Internals.Tables;
   use CMOF.Internals.Types;

   ------------------------
   -- Create_Association --
   ------------------------

   function Create_Association (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Association (Elements.Last, Extent);

      return Elements.Last;
   end Create_Association;

   ------------------
   -- Create_Class --
   ------------------

   function Create_Class (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Class (Elements.Last, Extent);

      return Elements.Last;
   end Create_Class;

   --------------------
   -- Create_Comment --
   --------------------

   function Create_Comment (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Comment (Elements.Last, Extent);

      return Elements.Last;
   end Create_Comment;

   -----------------------
   -- Create_Constraint --
   -----------------------

   function Create_Constraint (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Constraint (Elements.Last, Extent);

      return Elements.Last;
   end Create_Constraint;

   ----------------------
   -- Create_Data_Type --
   ----------------------

   function Create_Data_Type (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Data_Type (Elements.Last, Extent);

      return Elements.Last;
   end Create_Data_Type;

   ---------------------------
   -- Create_Element_Import --
   ---------------------------

   function Create_Element_Import (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Element_Import (Elements.Last, Extent);

      return Elements.Last;
   end Create_Element_Import;

   ------------------------
   -- Create_Enumeration --
   ------------------------

   function Create_Enumeration (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Enumeration (Elements.Last, Extent);

      return Elements.Last;
   end Create_Enumeration;

   --------------------------------
   -- Create_Enumeration_Literal --
   --------------------------------

   function Create_Enumeration_Literal (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Enumeration_Literal (Elements.Last, Extent);

      return Elements.Last;
   end Create_Enumeration_Literal;

   -----------------------
   -- Create_Expression --
   -----------------------

   function Create_Expression (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Expression (Elements.Last, Extent);

      return Elements.Last;
   end Create_Expression;

   ------------------------------
   -- Create_Opaque_Expression --
   ------------------------------

   function Create_Opaque_Expression (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Opaque_Expression (Elements.Last, Extent);

      return Elements.Last;
   end Create_Opaque_Expression;

   ----------------------
   -- Create_Operation --
   ----------------------

   function Create_Operation (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Operation (Elements.Last, Extent);

      return Elements.Last;
   end Create_Operation;

   --------------------
   -- Create_Package --
   --------------------

   function Create_Package (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Package (Elements.Last, Extent);

      return Elements.Last;
   end Create_Package;

   ---------------------------
   -- Create_Package_Import --
   ---------------------------

   function Create_Package_Import (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Package_Import (Elements.Last, Extent);

      return Elements.Last;
   end Create_Package_Import;

   --------------------------
   -- Create_Package_Merge --
   --------------------------

   function Create_Package_Merge (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Package_Merge (Elements.Last, Extent);

      return Elements.Last;
   end Create_Package_Merge;

   ----------------------
   -- Create_Parameter --
   ----------------------

   function Create_Parameter (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Parameter (Elements.Last, Extent);

      return Elements.Last;
   end Create_Parameter;

   ---------------------------
   -- Create_Primitive_Type --
   ---------------------------

   function Create_Primitive_Type (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Primitive_Type (Elements.Last, Extent);

      return Elements.Last;
   end Create_Primitive_Type;

   ---------------------
   -- Create_Property --
   ---------------------

   function Create_Property (Extent : CMOF_Extent) return CMOF_Element is
   begin
      Elements.Increment_Last;
      Initialize_Property (Elements.Last, Extent);

      return Elements.Last;
   end Create_Property;

   ----------------------------
   -- Initialize_Association --
   ----------------------------

   procedure Initialize_Association
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Association,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 17);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Set_Collection          --  attribute
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  feature
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Set_Collection          --  general
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Set_Collection          --  inheritedMember
       (Elements.Table (Self).Member (0).Collection + 12);
      Initialize_Set_Collection          --  relatedElement
       (Elements.Table (Self).Member (0).Collection + 13);
      Initialize_Ordered_Set_Collection  --  ownedEnd
       (Elements.Table (Self).Member (0).Collection + 14);
      Initialize_Set_Collection          --  endType
       (Elements.Table (Self).Member (0).Collection + 15);
      Initialize_Ordered_Set_Collection  --  memberEnd
       (Elements.Table (Self).Member (0).Collection + 16);
      Initialize_Set_Collection          --  navigableOwnedEnd
       (Elements.Table (Self).Member (0).Collection + 17);
      Internal_Append (Extent, Self);
   end Initialize_Association;

   ----------------------
   -- Initialize_Class --
   ----------------------

   procedure Initialize_Class
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Class,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 14);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Set_Collection          --  attribute
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  feature
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Set_Collection          --  general
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Set_Collection          --  inheritedMember
       (Elements.Table (Self).Member (0).Collection + 12);
      Initialize_Ordered_Set_Collection  --  ownedAttribute
       (Elements.Table (Self).Member (0).Collection + 13);
      Initialize_Ordered_Set_Collection  --  ownedOperation
       (Elements.Table (Self).Member (0).Collection + 14);
      Internal_Append (Extent, Self);
   end Initialize_Class;

   ------------------------
   -- Initialize_Comment --
   ------------------------

   procedure Initialize_Comment
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Comment,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_String, null),
                       --  body
                     others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 3);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  annotatedElement
       (Elements.Table (Self).Member (0).Collection + 3);
      Internal_Append (Extent, Self);
   end Initialize_Comment;

   ---------------------------
   -- Initialize_Constraint --
   ---------------------------

   procedure Initialize_Constraint
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Constraint,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 3);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Ordered_Set_Collection  --  constrainedElement
       (Elements.Table (Self).Member (0).Collection + 3);
      Internal_Append (Extent, Self);
   end Initialize_Constraint;

   --------------------------
   -- Initialize_Data_Type --
   --------------------------

   procedure Initialize_Data_Type
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Data_Type,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 14);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Set_Collection          --  attribute
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  feature
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Set_Collection          --  general
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Set_Collection          --  inheritedMember
       (Elements.Table (Self).Member (0).Collection + 12);
      Initialize_Ordered_Set_Collection  --  ownedAttribute
       (Elements.Table (Self).Member (0).Collection + 13);
      Initialize_Ordered_Set_Collection  --  ownedOperation
       (Elements.Table (Self).Member (0).Collection + 14);
      Internal_Append (Extent, Self);
   end Initialize_Data_Type;

   -------------------------------
   -- Initialize_Element_Import --
   -------------------------------

   procedure Initialize_Element_Import
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Element_Import,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 5);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  relatedElement
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  source
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  target
       (Elements.Table (Self).Member (0).Collection + 5);
      Internal_Append (Extent, Self);
   end Initialize_Element_Import;

   ----------------------------
   -- Initialize_Enumeration --
   ----------------------------

   procedure Initialize_Enumeration
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Enumeration,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 15);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Set_Collection          --  attribute
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  feature
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Set_Collection          --  general
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Set_Collection          --  inheritedMember
       (Elements.Table (Self).Member (0).Collection + 12);
      Initialize_Ordered_Set_Collection  --  ownedAttribute
       (Elements.Table (Self).Member (0).Collection + 13);
      Initialize_Ordered_Set_Collection  --  ownedOperation
       (Elements.Table (Self).Member (0).Collection + 14);
      Initialize_Ordered_Set_Collection  --  ownedLiteral
       (Elements.Table (Self).Member (0).Collection + 15);
      Internal_Append (Extent, Self);
   end Initialize_Enumeration;

   ------------------------------------
   -- Initialize_Enumeration_Literal --
   ------------------------------------

   procedure Initialize_Enumeration_Literal
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Enumeration_Literal,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 2);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Internal_Append (Extent, Self);
   end Initialize_Enumeration_Literal;

   ---------------------------
   -- Initialize_Expression --
   ---------------------------

   procedure Initialize_Expression
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Expression,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 3);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Ordered_Set_Collection  --  operand
       (Elements.Table (Self).Member (0).Collection + 3);
      Internal_Append (Extent, Self);
   end Initialize_Expression;

   ----------------------------------
   -- Initialize_Opaque_Expression --
   ----------------------------------

   procedure Initialize_Opaque_Expression
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Opaque_Expression,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 2);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Internal_Append (Extent, Self);
   end Initialize_Opaque_Expression;

   --------------------------
   -- Initialize_Operation --
   --------------------------

   procedure Initialize_Operation
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Operation,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 16);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  redefinitionContext
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  redefinedElement
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  featuringClassifier
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Ordered_Set_Collection  --  ownedParameter
       (Elements.Table (Self).Member (0).Collection + 12);
      Initialize_Set_Collection          --  raisedException
       (Elements.Table (Self).Member (0).Collection + 13);
      Initialize_Set_Collection          --  redefinedOperation
       (Elements.Table (Self).Member (0).Collection + 14);
      Initialize_Set_Collection          --  precondition
       (Elements.Table (Self).Member (0).Collection + 15);
      Initialize_Set_Collection          --  postcondition
       (Elements.Table (Self).Member (0).Collection + 16);
      Internal_Append (Extent, Self);
   end Initialize_Operation;

   ------------------------
   -- Initialize_Package --
   ------------------------

   procedure Initialize_Package
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Package,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 12);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Set_Collection          --  packagedElement
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  ownedType
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Set_Collection          --  nestedPackage
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Set_Collection          --  packageMerge
       (Elements.Table (Self).Member (0).Collection + 12);
      Internal_Append (Extent, Self);
   end Initialize_Package;

   -------------------------------
   -- Initialize_Package_Import --
   -------------------------------

   procedure Initialize_Package_Import
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Package_Import,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 5);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  relatedElement
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  source
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  target
       (Elements.Table (Self).Member (0).Collection + 5);
      Internal_Append (Extent, Self);
   end Initialize_Package_Import;

   ------------------------------
   -- Initialize_Package_Merge --
   ------------------------------

   procedure Initialize_Package_Merge
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Package_Merge,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, 0),
                       --  owner
                     2      => (M_Element, 0),
                       --  receivingPackage
                     3      => (M_Element, 0),
                       --  mergedPackage
                     others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 5);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  relatedElement
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  source
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  target
       (Elements.Table (Self).Member (0).Collection + 5);
      Internal_Append (Extent, Self);
   end Initialize_Package_Merge;

   --------------------------
   -- Initialize_Parameter --
   --------------------------

   procedure Initialize_Parameter
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Parameter,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 2);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Internal_Append (Extent, Self);
   end Initialize_Parameter;

   -------------------------------
   -- Initialize_Primitive_Type --
   -------------------------------

   procedure Initialize_Primitive_Type
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Primitive_Type,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 14);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Set_Collection          --  attribute
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  feature
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Set_Collection          --  general
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Set_Collection          --  inheritedMember
       (Elements.Table (Self).Member (0).Collection + 12);
      Initialize_Ordered_Set_Collection  --  ownedAttribute
       (Elements.Table (Self).Member (0).Collection + 13);
      Initialize_Ordered_Set_Collection  --  ownedOperation
       (Elements.Table (Self).Member (0).Collection + 14);
      Internal_Append (Extent, Self);
   end Initialize_Primitive_Type;

   -------------------------
   -- Initialize_Property --
   -------------------------

   procedure Initialize_Property
    (Self   : CMOF_Element;
     Extent : CMOF_Extent) is
   begin
      Elements.Table (Self) :=
       (Kind     => E_Property,
        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Extent   => 0,
        Previous => 0,
        Next     => 0,
        Proxy    => null,
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
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 7);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  redefinitionContext
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  redefinedElement
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  featuringClassifier
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  redefinedProperty
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  subsettedProperty
       (Elements.Table (Self).Member (0).Collection + 7);
      Internal_Append (Extent, Self);
   end Initialize_Property;

end CMOF.Internals.Constructors;
