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
with AMF.CMOF.Holders;
with AMF.CMOF.Parameter_Direction_Kind_Holders;
with AMF.CMOF.Visibility_Kind_Holders;
with AMF.Holders.Collections;
with AMF.Holders.Elements;
with AMF.Holders.String_Collections;
with AMF.Internals.CMOF_Elements;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Holders;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.CMOF_Metamodel;
with AMF.Internals.Tables.CMOF_Element_Table;
with AMF.Internals.Tables.CMOF_Types;
with AMF.String_Collections;
with League.Holders.Booleans;

package body AMF.Internals.Tables.CMOF_Reflection is

   use AMF.Internals.Tables;
   use AMF.Internals.Tables.CMOF_Attributes;
   use AMF.Internals.Tables.CMOF_Metamodel;
   use AMF.Internals.Tables.CMOF_Types;
   use type AMF.Internals.AMF_Element;

   ---------
   -- Get --
   ---------

   function Get
    (Self     : CMOF_Element;
     Property : CMOF_Element) return League.Holders.Holder
   is

      function Association_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Association class.

      function Class_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Class class.

      function Comment_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Comment class.

      function Constraint_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Constraint class.

      function Data_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of DataType class.

      function Element_Import_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of ElementImport class.

      function Enumeration_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Enumeration class.

      function Enumeration_Literal_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of EnumerationLiteral class.

      function Expression_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Expression class.

      function Opaque_Expression_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of OpaqueExpression class.

      function Operation_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Operation class.

      function Package_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Package class.

      function Package_Import_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of PackageImport class.

      function Package_Merge_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of PackageMerge class.

      function Parameter_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Parameter class.

      function Primitive_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of PrimitiveType class.

      function Property_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Property class.

      function Tag_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Tag class.

      ---------------------
      -- Association_Get --
      ---------------------

      function Association_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Attribute (Self)));

         elsif Property = MP_CMOF_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Element_Import (Self)));

         elsif Property = MP_CMOF_Association_End_Type then
            --  Association::endType : Type

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_End_Type (Self)));

         elsif Property = MP_CMOF_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Feature (Self)));

         elsif Property = MP_CMOF_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_General (Self)));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Imported_Member (Self)));

         elsif Property = MP_CMOF_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Inherited_Member (Self)));

         elsif Property = MP_CMOF_Association_Is_Derived then
            --  Association::isDerived : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Derived (Self));

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Final_Specialization (Self));

         elsif Property = MP_CMOF_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Member (Self)));

         elsif Property = MP_CMOF_Association_Member_End then
            --  Association::memberEnd : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Member_End (Self)));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Namespace (Self)));

         elsif Property = MP_CMOF_Association_Navigable_Owned_End then
            --  Association::navigableOwnedEnd : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Navigable_Owned_End (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Association_Owned_End then
            --  Association::ownedEnd : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_End (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Member (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Rule (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Type_Package then
            --  Type::package : Package

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Package (Self)));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Package_Import (Self)));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Relationship_Related_Element then
            --  Relationship::relatedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Related_Element (Self)));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.CMOF.Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Association_Get;

      ---------------
      -- Class_Get --
      ---------------

      function Class_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Attribute (Self)));

         elsif Property = MP_CMOF_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Element_Import (Self)));

         elsif Property = MP_CMOF_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Feature (Self)));

         elsif Property = MP_CMOF_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_General (Self)));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Imported_Member (Self)));

         elsif Property = MP_CMOF_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Inherited_Member (Self)));

         elsif Property = MP_CMOF_Class_Is_Abstract then
            --  Class::isAbstract : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Abstract (Self));

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Final_Specialization (Self));

         elsif Property = MP_CMOF_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Member (Self)));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Namespace (Self)));

         elsif Property = MP_CMOF_Class_Owned_Attribute then
            --  Class::ownedAttribute : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Attribute (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Member (Self)));

         elsif Property = MP_CMOF_Class_Owned_Operation then
            --  Class::ownedOperation : Operation

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Operation (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Rule (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Type_Package then
            --  Type::package : Package

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Package (Self)));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Package_Import (Self)));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Class_Super_Class then
            --  Class::superClass : Class

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Super_Class (Self)));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.CMOF.Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Class_Get;

      -----------------
      -- Comment_Get --
      -----------------

      function Comment_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Comment_Annotated_Element then
            --  Comment::annotatedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Annotated_Element (Self)));

         elsif Property = MP_CMOF_Comment_Body then
            --  Comment::body : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Body (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         else
            raise Program_Error;
         end if;
      end Comment_Get;

      --------------------
      -- Constraint_Get --
      --------------------

      function Constraint_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Constraint_Constrained_Element then
            --  Constraint::constrainedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Constrained_Element (Self)));

         elsif Property = MP_CMOF_Constraint_Context then
            --  Constraint::context : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Context (Self)));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Namespace (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Constraint_Specification then
            --  Constraint::specification : ValueSpecification

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Specification (Self)));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.CMOF.Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Constraint_Get;

      -------------------
      -- Data_Type_Get --
      -------------------

      function Data_Type_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Attribute (Self)));

         elsif Property = MP_CMOF_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Element_Import (Self)));

         elsif Property = MP_CMOF_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Feature (Self)));

         elsif Property = MP_CMOF_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_General (Self)));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Imported_Member (Self)));

         elsif Property = MP_CMOF_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Inherited_Member (Self)));

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Final_Specialization (Self));

         elsif Property = MP_CMOF_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Member (Self)));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Namespace (Self)));

         elsif Property = MP_CMOF_Data_Type_Owned_Attribute then
            --  DataType::ownedAttribute : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Attribute (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Member (Self)));

         elsif Property = MP_CMOF_Data_Type_Owned_Operation then
            --  DataType::ownedOperation : Operation

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Operation (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Rule (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Type_Package then
            --  Type::package : Package

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Package (Self)));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Package_Import (Self)));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.CMOF.Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Data_Type_Get;

      ------------------------
      -- Element_Import_Get --
      ------------------------

      function Element_Import_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Element_Import_Alias then
            --  ElementImport::alias : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Alias (Self));

         elsif Property = MP_CMOF_Element_Import_Imported_Element then
            --  ElementImport::importedElement : PackageableElement

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Imported_Element (Self)));

         elsif Property = MP_CMOF_Element_Import_Importing_Namespace then
            --  ElementImport::importingNamespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Importing_Namespace (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Relationship_Related_Element then
            --  Relationship::relatedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Related_Element (Self)));

         elsif Property = MP_CMOF_Directed_Relationship_Source then
            --  DirectedRelationship::source : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Source (Self)));

         elsif Property = MP_CMOF_Directed_Relationship_Target then
            --  DirectedRelationship::target : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Target (Self)));

         elsif Property = MP_CMOF_Element_Import_Visibility then
            --  ElementImport::visibility : VisibilityKind

            return
              AMF.CMOF.Visibility_Kind_Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Element_Import_Get;

      ---------------------
      -- Enumeration_Get --
      ---------------------

      function Enumeration_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Attribute (Self)));

         elsif Property = MP_CMOF_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Element_Import (Self)));

         elsif Property = MP_CMOF_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Feature (Self)));

         elsif Property = MP_CMOF_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_General (Self)));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Imported_Member (Self)));

         elsif Property = MP_CMOF_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Inherited_Member (Self)));

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Final_Specialization (Self));

         elsif Property = MP_CMOF_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Member (Self)));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Namespace (Self)));

         elsif Property = MP_CMOF_Data_Type_Owned_Attribute then
            --  DataType::ownedAttribute : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Attribute (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Enumeration_Owned_Literal then
            --  Enumeration::ownedLiteral : EnumerationLiteral

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Literal (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Member (Self)));

         elsif Property = MP_CMOF_Data_Type_Owned_Operation then
            --  DataType::ownedOperation : Operation

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Operation (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Rule (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Type_Package then
            --  Type::package : Package

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Package (Self)));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Package_Import (Self)));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.CMOF.Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Enumeration_Get;

      -----------------------------
      -- Enumeration_Literal_Get --
      -----------------------------

      function Enumeration_Literal_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Enumeration_Literal_Enumeration then
            --  EnumerationLiteral::enumeration : Enumeration

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Enumeration (Self)));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Namespace (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.CMOF.Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Enumeration_Literal_Get;

      --------------------
      -- Expression_Get --
      --------------------

      function Expression_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Namespace (Self)));

         elsif Property = MP_CMOF_Expression_Operand then
            --  Expression::operand : ValueSpecification

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Operand (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Type (Self)));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.CMOF.Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Expression_Get;

      ---------------------------
      -- Opaque_Expression_Get --
      ---------------------------

      function Opaque_Expression_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Opaque_Expression_Body then
            --  OpaqueExpression::body : String

            return
              AMF.Holders.String_Collections.To_Holder
               (AMF.String_Collections.Wrap
                 (Internal_Get_Body (Self)));

         elsif Property = MP_CMOF_Opaque_Expression_Language then
            --  OpaqueExpression::language : String

            return
              AMF.Holders.String_Collections.To_Holder
               (AMF.String_Collections.Wrap
                 (Internal_Get_Language (Self)));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Namespace (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Type (Self)));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.CMOF.Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Opaque_Expression_Get;

      -------------------
      -- Operation_Get --
      -------------------

      function Operation_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Operation_Body_Condition then
            --  Operation::bodyCondition : Constraint

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Body_Condition (Self)));

         elsif Property = MP_CMOF_Operation_Class then
            --  Operation::class : Class

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Class (Self)));

         elsif Property = MP_CMOF_Operation_Datatype then
            --  Operation::datatype : DataType

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Datatype (Self)));

         elsif Property = MP_CMOF_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Element_Import (Self)));

         elsif Property = MP_CMOF_Feature_Featuring_Classifier then
            --  Feature::featuringClassifier : Classifier

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Featuring_Classifier (Self)));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Imported_Member (Self)));

         elsif Property = MP_CMOF_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Leaf (Self));

         elsif Property = MP_CMOF_Operation_Is_Ordered then
            --  Operation::isOrdered : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Ordered (Self));

         elsif Property = MP_CMOF_Operation_Is_Query then
            --  Operation::isQuery : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Query (Self));

         elsif Property = MP_CMOF_Operation_Is_Unique then
            --  Operation::isUnique : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Unique (Self));

         elsif Property = MP_CMOF_Operation_Lower then
            --  Operation::lower : Integer

            return
              AMF.Holders.To_Holder
               (Internal_Get_Lower (Self));

         elsif Property = MP_CMOF_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Member (Self)));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Namespace (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Member (Self)));

         elsif Property = MP_CMOF_Operation_Owned_Parameter then
            --  Operation::ownedParameter : Parameter

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Parameter (Self)));

         elsif Property = MP_CMOF_Behavioral_Feature_Owned_Parameter then
            --  BehavioralFeature::ownedParameter : Parameter

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Parameter (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Rule (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Package_Import (Self)));

         elsif Property = MP_CMOF_Operation_Postcondition then
            --  Operation::postcondition : Constraint

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Postcondition (Self)));

         elsif Property = MP_CMOF_Operation_Precondition then
            --  Operation::precondition : Constraint

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Precondition (Self)));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Operation_Raised_Exception then
            --  Operation::raisedException : Type

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Raised_Exception (Self)));

         elsif Property = MP_CMOF_Behavioral_Feature_Raised_Exception then
            --  BehavioralFeature::raisedException : Type

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Raised_Exception (Self)));

         elsif Property = MP_CMOF_Redefinable_Element_Redefined_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Redefined_Element (Self)));

         elsif Property = MP_CMOF_Operation_Redefined_Operation then
            --  Operation::redefinedOperation : Operation

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Redefined_Operation (Self)));

         elsif Property = MP_CMOF_Redefinable_Element_Redefinition_Context then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Redefinition_Context (Self)));

         elsif Property = MP_CMOF_Operation_Type then
            --  Operation::type : Type

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Type (Self)));

         elsif Property = MP_CMOF_Operation_Upper then
            --  Operation::upper : UnlimitedNatural

            return
              AMF.Holders.To_Holder
               (Internal_Get_Upper (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.CMOF.Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Operation_Get;

      -----------------
      -- Package_Get --
      -----------------

      function Package_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Element_Import (Self)));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Imported_Member (Self)));

         elsif Property = MP_CMOF_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Member (Self)));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Namespace (Self)));

         elsif Property = MP_CMOF_Package_Nested_Package then
            --  Package::nestedPackage : Package

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Nested_Package (Self)));

         elsif Property = MP_CMOF_Package_Nesting_Package then
            --  Package::nestingPackage : Package

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Nesting_Package (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Member (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Rule (Self)));

         elsif Property = MP_CMOF_Package_Owned_Type then
            --  Package::ownedType : Type

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Type (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Package_Import (Self)));

         elsif Property = MP_CMOF_Package_Package_Merge then
            --  Package::packageMerge : PackageMerge

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Package_Merge (Self)));

         elsif Property = MP_CMOF_Package_Packaged_Element then
            --  Package::packagedElement : PackageableElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Packaged_Element (Self)));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Package_Uri then
            --  Package::uri : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Uri (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.CMOF.Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Package_Get;

      ------------------------
      -- Package_Import_Get --
      ------------------------

      function Package_Import_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Package_Import_Imported_Package then
            --  PackageImport::importedPackage : Package

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Imported_Package (Self)));

         elsif Property = MP_CMOF_Package_Import_Importing_Namespace then
            --  PackageImport::importingNamespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Importing_Namespace (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Relationship_Related_Element then
            --  Relationship::relatedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Related_Element (Self)));

         elsif Property = MP_CMOF_Directed_Relationship_Source then
            --  DirectedRelationship::source : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Source (Self)));

         elsif Property = MP_CMOF_Directed_Relationship_Target then
            --  DirectedRelationship::target : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Target (Self)));

         elsif Property = MP_CMOF_Package_Import_Visibility then
            --  PackageImport::visibility : VisibilityKind

            return
              AMF.CMOF.Visibility_Kind_Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Package_Import_Get;

      -----------------------
      -- Package_Merge_Get --
      -----------------------

      function Package_Merge_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Package_Merge_Merged_Package then
            --  PackageMerge::mergedPackage : Package

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Merged_Package (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Package_Merge_Receiving_Package then
            --  PackageMerge::receivingPackage : Package

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Receiving_Package (Self)));

         elsif Property = MP_CMOF_Relationship_Related_Element then
            --  Relationship::relatedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Related_Element (Self)));

         elsif Property = MP_CMOF_Directed_Relationship_Source then
            --  DirectedRelationship::source : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Source (Self)));

         elsif Property = MP_CMOF_Directed_Relationship_Target then
            --  DirectedRelationship::target : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Target (Self)));

         else
            raise Program_Error;
         end if;
      end Package_Merge_Get;

      -------------------
      -- Parameter_Get --
      -------------------

      function Parameter_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Parameter_Default then
            --  Parameter::default : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Default (Self));

         elsif Property = MP_CMOF_Parameter_Direction then
            --  Parameter::direction : ParameterDirectionKind

            return
              AMF.CMOF.Parameter_Direction_Kind_Holders.To_Holder
               (Internal_Get_Direction (Self));

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Ordered then
            --  MultiplicityElement::isOrdered : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Ordered (Self));

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Unique then
            --  MultiplicityElement::isUnique : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Unique (Self));

         elsif Property = MP_CMOF_Multiplicity_Element_Lower then
            --  MultiplicityElement::lower : Integer

            return
              AMF.Holders.To_Holder
               (Internal_Get_Lower (Self));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Namespace (Self)));

         elsif Property = MP_CMOF_Parameter_Operation then
            --  Parameter::operation : Operation

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Operation (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Type (Self)));

         elsif Property = MP_CMOF_Multiplicity_Element_Upper then
            --  MultiplicityElement::upper : UnlimitedNatural

            return
              AMF.Holders.To_Holder
               (Internal_Get_Upper (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.CMOF.Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Parameter_Get;

      ------------------------
      -- Primitive_Type_Get --
      ------------------------

      function Primitive_Type_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Attribute (Self)));

         elsif Property = MP_CMOF_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Element_Import (Self)));

         elsif Property = MP_CMOF_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Feature (Self)));

         elsif Property = MP_CMOF_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_General (Self)));

         elsif Property = MP_CMOF_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Imported_Member (Self)));

         elsif Property = MP_CMOF_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Inherited_Member (Self)));

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Final_Specialization (Self));

         elsif Property = MP_CMOF_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Member (Self)));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Namespace (Self)));

         elsif Property = MP_CMOF_Data_Type_Owned_Attribute then
            --  DataType::ownedAttribute : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Attribute (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Member (Self)));

         elsif Property = MP_CMOF_Data_Type_Owned_Operation then
            --  DataType::ownedOperation : Operation

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Operation (Self)));

         elsif Property = MP_CMOF_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Rule (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Type_Package then
            --  Type::package : Package

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Package (Self)));

         elsif Property = MP_CMOF_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Package_Import (Self)));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.CMOF.Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Primitive_Type_Get;

      ------------------
      -- Property_Get --
      ------------------

      function Property_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Property_Association then
            --  Property::association : Association

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Association (Self)));

         elsif Property = MP_CMOF_Property_Class then
            --  Property::class : Class

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Class (Self)));

         elsif Property = MP_CMOF_Property_Datatype then
            --  Property::datatype : DataType

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Datatype (Self)));

         elsif Property = MP_CMOF_Property_Default then
            --  Property::default : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Default (Self));

         elsif Property = MP_CMOF_Feature_Featuring_Classifier then
            --  Feature::featuringClassifier : Classifier

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Featuring_Classifier (Self)));

         elsif Property = MP_CMOF_Property_Is_Composite then
            --  Property::isComposite : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Composite (Self));

         elsif Property = MP_CMOF_Property_Is_Derived then
            --  Property::isDerived : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Derived (Self));

         elsif Property = MP_CMOF_Property_Is_Derived_Union then
            --  Property::isDerivedUnion : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Derived_Union (Self));

         elsif Property = MP_CMOF_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Leaf (Self));

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Ordered then
            --  MultiplicityElement::isOrdered : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Ordered (Self));

         elsif Property = MP_CMOF_Property_Is_Read_Only then
            --  Property::isReadOnly : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Read_Only (Self));

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Unique then
            --  MultiplicityElement::isUnique : Boolean

            return
              League.Holders.Booleans.To_Holder
               (Internal_Get_Is_Unique (Self));

         elsif Property = MP_CMOF_Multiplicity_Element_Lower then
            --  MultiplicityElement::lower : Integer

            return
              AMF.Holders.To_Holder
               (Internal_Get_Lower (Self));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Namespace (Self)));

         elsif Property = MP_CMOF_Property_Opposite then
            --  Property::opposite : Property

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Opposite (Self)));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Property_Owning_Association then
            --  Property::owningAssociation : Association

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owning_Association (Self)));

         elsif Property = MP_CMOF_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Qualified_Name (Self));

         elsif Property = MP_CMOF_Redefinable_Element_Redefined_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Redefined_Element (Self)));

         elsif Property = MP_CMOF_Property_Redefined_Property then
            --  Property::redefinedProperty : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Redefined_Property (Self)));

         elsif Property = MP_CMOF_Redefinable_Element_Redefinition_Context then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Redefinition_Context (Self)));

         elsif Property = MP_CMOF_Property_Subsetted_Property then
            --  Property::subsettedProperty : Property

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Subsetted_Property (Self)));

         elsif Property = MP_CMOF_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Type (Self)));

         elsif Property = MP_CMOF_Multiplicity_Element_Upper then
            --  MultiplicityElement::upper : UnlimitedNatural

            return
              AMF.Holders.To_Holder
               (Internal_Get_Upper (Self));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.CMOF.Holders.To_Holder
               (Internal_Get_Visibility (Self));

         else
            raise Program_Error;
         end if;
      end Property_Get;

      -------------
      -- Tag_Get --
      -------------

      function Tag_Get return League.Holders.Holder is
      begin
         if Property = MP_CMOF_Tag_Element then
            --  Tag::element : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Element (Self)));

         elsif Property = MP_CMOF_Tag_Name then
            --  Tag::name : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Name (Self));

         elsif Property = MP_CMOF_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Comment (Self)));

         elsif Property = MP_CMOF_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.Holders.Collections.To_Holder
               (AMF.Internals.Element_Collections.Wrap
                 (Internal_Get_Owned_Element (Self)));

         elsif Property = MP_CMOF_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Owner (Self)));

         elsif Property = MP_CMOF_Tag_Tag_Owner then
            --  Tag::tagOwner : Element

            return
              AMF.Holders.Elements.To_Holder
               (AMF.Internals.Helpers.To_Element
                 (Internal_Get_Tag_Owner (Self)));

         elsif Property = MP_CMOF_Tag_Value then
            --  Tag::value : String

            return
              AMF.Internals.Holders.To_Holder
               (Internal_Get_Value (Self));

         else
            raise Program_Error;
         end if;
      end Tag_Get;

   begin
      case CMOF_Element_Table.Table (Self).Kind is
         when E_None =>
            raise Program_Error;

         when E_Association =>
            return Association_Get;

         when E_Class =>
            return Class_Get;

         when E_Comment =>
            return Comment_Get;

         when E_Constraint =>
            return Constraint_Get;

         when E_Data_Type =>
            return Data_Type_Get;

         when E_Element_Import =>
            return Element_Import_Get;

         when E_Enumeration =>
            return Enumeration_Get;

         when E_Enumeration_Literal =>
            return Enumeration_Literal_Get;

         when E_Expression =>
            return Expression_Get;

         when E_Opaque_Expression =>
            return Opaque_Expression_Get;

         when E_Operation =>
            return Operation_Get;

         when E_Package =>
            return Package_Get;

         when E_Package_Import =>
            return Package_Import_Get;

         when E_Package_Merge =>
            return Package_Merge_Get;

         when E_Parameter =>
            return Parameter_Get;

         when E_Primitive_Type =>
            return Primitive_Type_Get;

         when E_Property =>
            return Property_Get;

         when E_Tag =>
            return Tag_Get;
      end case;
   end Get;

   --------------------
   -- Get_Meta_Class --
   --------------------

   function Get_Meta_Class (Self : CMOF_Element) return CMOF_Element is
   begin
      case CMOF_Element_Table.Table (Self).Kind is
         when E_None =>
            return 0;

         when E_Association =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Association;

         when E_Class =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Class;

         when E_Comment =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Comment;

         when E_Constraint =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Constraint;

         when E_Data_Type =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Data_Type;

         when E_Element_Import =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Element_Import;

         when E_Enumeration =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Enumeration;

         when E_Enumeration_Literal =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Enumeration_Literal;

         when E_Expression =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Expression;

         when E_Opaque_Expression =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Opaque_Expression;

         when E_Operation =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Operation;

         when E_Package =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Package;

         when E_Package_Import =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Package_Import;

         when E_Package_Merge =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Package_Merge;

         when E_Parameter =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Parameter;

         when E_Primitive_Type =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Primitive_Type;

         when E_Property =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Property;

         when E_Tag =>
            return AMF.Internals.Tables.CMOF_Metamodel.MC_CMOF_Tag;
      end case;
   end Get_Meta_Class;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self     : CMOF_Element;
     Property : CMOF_Element;
     Value    : League.Holders.Holder)
   is

      procedure Association_Set;
      --  Sets attribute's value of instance of Association class.

      procedure Class_Set;
      --  Sets attribute's value of instance of Class class.

      procedure Comment_Set;
      --  Sets attribute's value of instance of Comment class.

      procedure Constraint_Set;
      --  Sets attribute's value of instance of Constraint class.

      procedure Data_Type_Set;
      --  Sets attribute's value of instance of DataType class.

      procedure Element_Import_Set;
      --  Sets attribute's value of instance of ElementImport class.

      procedure Enumeration_Set;
      --  Sets attribute's value of instance of Enumeration class.

      procedure Enumeration_Literal_Set;
      --  Sets attribute's value of instance of EnumerationLiteral class.

      procedure Expression_Set;
      --  Sets attribute's value of instance of Expression class.

      procedure Opaque_Expression_Set;
      --  Sets attribute's value of instance of OpaqueExpression class.

      procedure Operation_Set;
      --  Sets attribute's value of instance of Operation class.

      procedure Package_Set;
      --  Sets attribute's value of instance of Package class.

      procedure Package_Import_Set;
      --  Sets attribute's value of instance of PackageImport class.

      procedure Package_Merge_Set;
      --  Sets attribute's value of instance of PackageMerge class.

      procedure Parameter_Set;
      --  Sets attribute's value of instance of Parameter class.

      procedure Primitive_Type_Set;
      --  Sets attribute's value of instance of PrimitiveType class.

      procedure Property_Set;
      --  Sets attribute's value of instance of Property class.

      procedure Tag_Set;
      --  Sets attribute's value of instance of Tag class.

      ---------------------
      -- Association_Set --
      ---------------------

      procedure Association_Set is
      begin
         if Property = MP_CMOF_Association_Is_Derived then
            --  Association::isDerived : Boolean

            Internal_Set_Is_Derived (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            Internal_Set_Is_Final_Specialization (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Type_Package then
            --  Type::package : Package

            Internal_Set_Package (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Association_Set;

      ---------------
      -- Class_Set --
      ---------------

      procedure Class_Set is
      begin
         if Property = MP_CMOF_Class_Is_Abstract then
            --  Class::isAbstract : Boolean

            Internal_Set_Is_Abstract (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            Internal_Set_Is_Final_Specialization (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Type_Package then
            --  Type::package : Package

            Internal_Set_Package (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Class_Set;

      -----------------
      -- Comment_Set --
      -----------------

      procedure Comment_Set is
      begin
         if Property = MP_CMOF_Comment_Body then
            --  Comment::body : String

            Internal_Set_Body (Self, AMF.Internals.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Comment_Set;

      --------------------
      -- Constraint_Set --
      --------------------

      procedure Constraint_Set is
      begin
         if Property = MP_CMOF_Constraint_Context then
            --  Constraint::context : Namespace

            Internal_Set_Context (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Constraint_Specification then
            --  Constraint::specification : ValueSpecification

            Internal_Set_Specification (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Constraint_Set;

      -------------------
      -- Data_Type_Set --
      -------------------

      procedure Data_Type_Set is
      begin
         if Property = MP_CMOF_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            Internal_Set_Is_Final_Specialization (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Type_Package then
            --  Type::package : Package

            Internal_Set_Package (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Data_Type_Set;

      ------------------------
      -- Element_Import_Set --
      ------------------------

      procedure Element_Import_Set is
      begin
         if Property = MP_CMOF_Element_Import_Alias then
            --  ElementImport::alias : String

            Internal_Set_Alias (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Element_Import_Imported_Element then
            --  ElementImport::importedElement : PackageableElement

            Internal_Set_Imported_Element (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Element_Import_Importing_Namespace then
            --  ElementImport::importingNamespace : Namespace

            Internal_Set_Importing_Namespace (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Element_Import_Visibility then
            --  ElementImport::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Visibility_Kind_Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Element_Import_Set;

      ---------------------
      -- Enumeration_Set --
      ---------------------

      procedure Enumeration_Set is
      begin
         if Property = MP_CMOF_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            Internal_Set_Is_Final_Specialization (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Type_Package then
            --  Type::package : Package

            Internal_Set_Package (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Enumeration_Set;

      -----------------------------
      -- Enumeration_Literal_Set --
      -----------------------------

      procedure Enumeration_Literal_Set is
      begin
         if Property = MP_CMOF_Enumeration_Literal_Enumeration then
            --  EnumerationLiteral::enumeration : Enumeration

            Internal_Set_Enumeration (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Enumeration_Literal_Set;

      --------------------
      -- Expression_Set --
      --------------------

      procedure Expression_Set is
      begin
         if Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Typed_Element_Type then
            --  TypedElement::type : Type

            Internal_Set_Type (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Expression_Set;

      ---------------------------
      -- Opaque_Expression_Set --
      ---------------------------

      procedure Opaque_Expression_Set is
      begin
         if Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Typed_Element_Type then
            --  TypedElement::type : Type

            Internal_Set_Type (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Opaque_Expression_Set;

      -------------------
      -- Operation_Set --
      -------------------

      procedure Operation_Set is
      begin
         if Property = MP_CMOF_Operation_Body_Condition then
            --  Operation::bodyCondition : Constraint

            Internal_Set_Body_Condition (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Operation_Class then
            --  Operation::class : Class

            Internal_Set_Class (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Operation_Datatype then
            --  Operation::datatype : DataType

            Internal_Set_Datatype (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            Internal_Set_Is_Leaf (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Operation_Is_Query then
            --  Operation::isQuery : Boolean

            Internal_Set_Is_Query (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Operation_Set;

      -----------------
      -- Package_Set --
      -----------------

      procedure Package_Set is
      begin
         if Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Package_Nesting_Package then
            --  Package::nestingPackage : Package

            Internal_Set_Nesting_Package (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Package_Uri then
            --  Package::uri : String

            Internal_Set_Uri (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Package_Set;

      ------------------------
      -- Package_Import_Set --
      ------------------------

      procedure Package_Import_Set is
      begin
         if Property = MP_CMOF_Package_Import_Imported_Package then
            --  PackageImport::importedPackage : Package

            Internal_Set_Imported_Package (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Package_Import_Importing_Namespace then
            --  PackageImport::importingNamespace : Namespace

            Internal_Set_Importing_Namespace (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Package_Import_Visibility then
            --  PackageImport::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Visibility_Kind_Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Package_Import_Set;

      -----------------------
      -- Package_Merge_Set --
      -----------------------

      procedure Package_Merge_Set is
      begin
         if Property = MP_CMOF_Package_Merge_Merged_Package then
            --  PackageMerge::mergedPackage : Package

            Internal_Set_Merged_Package (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Package_Merge_Receiving_Package then
            --  PackageMerge::receivingPackage : Package

            Internal_Set_Receiving_Package (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         else
            raise Program_Error;
         end if;
      end Package_Merge_Set;

      -------------------
      -- Parameter_Set --
      -------------------

      procedure Parameter_Set is
      begin
         if Property = MP_CMOF_Parameter_Default then
            --  Parameter::default : String

            Internal_Set_Default (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Parameter_Direction then
            --  Parameter::direction : ParameterDirectionKind

            Internal_Set_Direction (Self, AMF.CMOF.Parameter_Direction_Kind_Holders.Element (Value));

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Ordered then
            --  MultiplicityElement::isOrdered : Boolean

            Internal_Set_Is_Ordered (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Unique then
            --  MultiplicityElement::isUnique : Boolean

            Internal_Set_Is_Unique (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Multiplicity_Element_Lower then
            --  MultiplicityElement::lower : Integer

            Internal_Set_Lower (Self, AMF.Holders.Element (Value));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Parameter_Operation then
            --  Parameter::operation : Operation

            Internal_Set_Operation (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Typed_Element_Type then
            --  TypedElement::type : Type

            Internal_Set_Type (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Multiplicity_Element_Upper then
            --  MultiplicityElement::upper : UnlimitedNatural

            Internal_Set_Upper (Self, AMF.Holders.Element (Value));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Parameter_Set;

      ------------------------
      -- Primitive_Type_Set --
      ------------------------

      procedure Primitive_Type_Set is
      begin
         if Property = MP_CMOF_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            Internal_Set_Is_Final_Specialization (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Type_Package then
            --  Type::package : Package

            Internal_Set_Package (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Primitive_Type_Set;

      ------------------
      -- Property_Set --
      ------------------

      procedure Property_Set is
      begin
         if Property = MP_CMOF_Property_Association then
            --  Property::association : Association

            Internal_Set_Association (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Property_Class then
            --  Property::class : Class

            Internal_Set_Class (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Property_Datatype then
            --  Property::datatype : DataType

            Internal_Set_Datatype (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Property_Default then
            --  Property::default : String

            Internal_Set_Default (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Property_Is_Composite then
            --  Property::isComposite : Boolean

            Internal_Set_Is_Composite (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Property_Is_Derived then
            --  Property::isDerived : Boolean

            Internal_Set_Is_Derived (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Property_Is_Derived_Union then
            --  Property::isDerivedUnion : Boolean

            Internal_Set_Is_Derived_Union (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            Internal_Set_Is_Leaf (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Ordered then
            --  MultiplicityElement::isOrdered : Boolean

            Internal_Set_Is_Ordered (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Property_Is_Read_Only then
            --  Property::isReadOnly : Boolean

            Internal_Set_Is_Read_Only (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Multiplicity_Element_Is_Unique then
            --  MultiplicityElement::isUnique : Boolean

            Internal_Set_Is_Unique (Self, League.Holders.Booleans.Element (Value));

         elsif Property = MP_CMOF_Multiplicity_Element_Lower then
            --  MultiplicityElement::lower : Integer

            Internal_Set_Lower (Self, AMF.Holders.Element (Value));

         elsif Property = MP_CMOF_Named_Element_Name then
            --  NamedElement::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Property_Owning_Association then
            --  Property::owningAssociation : Association

            Internal_Set_Owning_Association (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Typed_Element_Type then
            --  TypedElement::type : Type

            Internal_Set_Type (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Multiplicity_Element_Upper then
            --  MultiplicityElement::upper : UnlimitedNatural

            Internal_Set_Upper (Self, AMF.Holders.Element (Value));

         elsif Property = MP_CMOF_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            Internal_Set_Visibility (Self, AMF.CMOF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Property_Set;

      -------------
      -- Tag_Set --
      -------------

      procedure Tag_Set is
      begin
         if Property = MP_CMOF_Tag_Name then
            --  Tag::name : String

            Internal_Set_Name (Self, AMF.Internals.Holders.Element (Value));

         elsif Property = MP_CMOF_Tag_Tag_Owner then
            --  Tag::tagOwner : Element

            Internal_Set_Tag_Owner (Self, AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (AMF.Holders.Elements.Element (Value).all).Id);

         elsif Property = MP_CMOF_Tag_Value then
            --  Tag::value : String

            Internal_Set_Value (Self, AMF.Internals.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Tag_Set;
   begin
      case CMOF_Element_Table.Table (Self).Kind is
         when E_None =>
            raise Program_Error;

         when E_Association =>
            Association_Set;

         when E_Class =>
            Class_Set;

         when E_Comment =>
            Comment_Set;

         when E_Constraint =>
            Constraint_Set;

         when E_Data_Type =>
            Data_Type_Set;

         when E_Element_Import =>
            Element_Import_Set;

         when E_Enumeration =>
            Enumeration_Set;

         when E_Enumeration_Literal =>
            Enumeration_Literal_Set;

         when E_Expression =>
            Expression_Set;

         when E_Opaque_Expression =>
            Opaque_Expression_Set;

         when E_Operation =>
            Operation_Set;

         when E_Package =>
            Package_Set;

         when E_Package_Import =>
            Package_Import_Set;

         when E_Package_Merge =>
            Package_Merge_Set;

         when E_Parameter =>
            Parameter_Set;

         when E_Primitive_Type =>
            Primitive_Type_Set;

         when E_Property =>
            Property_Set;

         when E_Tag =>
            Tag_Set;
      end case;
   end Set;

end AMF.Internals.Tables.CMOF_Reflection;
