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
with AMF.Holders.Elements;
with AMF.Holders.Reals;
with AMF.Holders.Unlimited_Naturals;
with AMF.Internals.Helpers;
with AMF.Internals.Holders.OCL_Holders;
with AMF.Internals.Holders.UML_Holders;
with AMF.Internals.Tables.OCL_Element_Table;
with AMF.Internals.Tables.OCL_Metamodel;
with AMF.Internals.Tables.OCL_Types;
with AMF.Internals.Tables.UML_Metamodel;
with AMF.OCL.Any_Types;
with AMF.OCL.Association_Class_Call_Exps;
with AMF.OCL.Bag_Types;
with AMF.OCL.Boolean_Literal_Exps;
with AMF.OCL.Collection_Items;
with AMF.OCL.Collection_Literal_Exps;
with AMF.OCL.Collection_Literal_Parts.Collections;
with AMF.OCL.Collection_Ranges;
with AMF.OCL.Collection_Types;
with AMF.OCL.Enum_Literal_Exps;
with AMF.OCL.Expression_In_Ocls;
with AMF.OCL.Holders.Collection_Kinds;
with AMF.OCL.If_Exps;
with AMF.OCL.Integer_Literal_Exps;
with AMF.OCL.Invalid_Literal_Exps;
with AMF.OCL.Invalid_Types;
with AMF.OCL.Iterate_Exps;
with AMF.OCL.Iterator_Exps;
with AMF.OCL.Let_Exps;
with AMF.OCL.Message_Exps;
with AMF.OCL.Message_Types;
with AMF.OCL.Null_Literal_Exps;
with AMF.OCL.Ocl_Expressions.Collections;
with AMF.OCL.Operation_Call_Exps;
with AMF.OCL.Ordered_Set_Types;
with AMF.OCL.Property_Call_Exps;
with AMF.OCL.Real_Literal_Exps;
with AMF.OCL.Sequence_Types;
with AMF.OCL.Set_Types;
with AMF.OCL.State_Exps;
with AMF.OCL.String_Literal_Exps;
with AMF.OCL.Template_Parameter_Types;
with AMF.OCL.Tuple_Literal_Exps;
with AMF.OCL.Tuple_Literal_Parts.Collections;
with AMF.OCL.Tuple_Types;
with AMF.OCL.Type_Exps;
with AMF.OCL.Unlimited_Natural_Literal_Exps;
with AMF.OCL.Unspecified_Value_Exps;
with AMF.OCL.Variable_Exps;
with AMF.OCL.Variables.Collections;
with AMF.OCL.Void_Types;
with AMF.String_Collections.Internals;
with AMF.UML.Association_Classes;
with AMF.UML.Behaviors;
with AMF.UML.Call_Operation_Actions;
with AMF.UML.Classifier_Template_Parameters;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Collaboration_Uses.Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Constraints.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Element_Imports.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Enumeration_Literals;
with AMF.UML.Features.Collections;
with AMF.UML.Generalization_Sets.Collections;
with AMF.UML.Generalizations.Collections;
with AMF.UML.Holders.Visibility_Kinds;
with AMF.UML.Named_Elements.Collections;
with AMF.UML.Namespaces;
with AMF.UML.Operations.Collections;
with AMF.UML.Package_Imports.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages;
with AMF.UML.Parameters;
with AMF.UML.Properties.Collections;
with AMF.UML.Redefinable_Elements.Collections;
with AMF.UML.Redefinable_Template_Signatures;
with AMF.UML.Send_Signal_Actions;
with AMF.UML.Signals;
with AMF.UML.States;
with AMF.UML.String_Expressions;
with AMF.UML.Substitutions.Collections;
with AMF.UML.Template_Bindings.Collections;
with AMF.UML.Template_Parameters;
with AMF.UML.Template_Signatures;
with AMF.UML.Types;
with AMF.UML.Use_Cases.Collections;
with League.Holders.Booleans;
with League.Holders.Integers;

package body AMF.Internals.Tables.OCL_Reflection is

   ---------
   -- Get --
   ---------

   function Get
    (Self     : OCL_Element;
     Property : CMOF_Element) return League.Holders.Holder
   is

      function Any_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of AnyType class.

      function Association_Class_Call_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of AssociationClassCallExp class.

      function Bag_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of BagType class.

      function Boolean_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of BooleanLiteralExp class.

      function Collection_Item_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of CollectionItem class.

      function Collection_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of CollectionLiteralExp class.

      function Collection_Range_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of CollectionRange class.

      function Collection_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of CollectionType class.

      function Enum_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of EnumLiteralExp class.

      function Expression_In_Ocl_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of ExpressionInOcl class.

      function If_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of IfExp class.

      function Integer_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of IntegerLiteralExp class.

      function Invalid_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of InvalidLiteralExp class.

      function Invalid_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of InvalidType class.

      function Iterate_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of IterateExp class.

      function Iterator_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of IteratorExp class.

      function Let_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of LetExp class.

      function Message_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of MessageExp class.

      function Message_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of MessageType class.

      function Null_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of NullLiteralExp class.

      function Operation_Call_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of OperationCallExp class.

      function Ordered_Set_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of OrderedSetType class.

      function Property_Call_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of PropertyCallExp class.

      function Real_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of RealLiteralExp class.

      function Sequence_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of SequenceType class.

      function Set_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of SetType class.

      function State_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of StateExp class.

      function String_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of StringLiteralExp class.

      function Template_Parameter_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TemplateParameterType class.

      function Tuple_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TupleLiteralExp class.

      function Tuple_Literal_Part_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TupleLiteralPart class.

      function Tuple_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TupleType class.

      function Type_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TypeExp class.

      function Unlimited_Natural_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of UnlimitedNaturalLiteralExp class.

      function Unspecified_Value_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of UnspecifiedValueExp class.

      function Variable_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Variable class.

      function Variable_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of VariableExp class.

      function Void_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of VoidType class.

      ------------------
      -- Any_Type_Get --
      ------------------

      function Any_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Inherited_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Abstract);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Final_Specialization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Leaf);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent then
            --  Classifier::powertypeExtent : GeneralizationSet

            return
              AMF.UML.Generalization_Sets.Collections.UML_Generalization_Set_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Powertype_Extent);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case then
            --  Classifier::useCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Any_Type_Get;

      ------------------------------------
      -- Association_Class_Call_Exp_Get --
      ------------------------------------

      function Association_Class_Call_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Navigation_Source then
            --  NavigationCallExp::navigationSource : Property

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Properties.UML_Property_Access'
                 (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Navigation_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Qualifier then
            --  NavigationCallExp::qualifier : OclExpression

            return
              AMF.OCL.Ocl_Expressions.Collections.OCL_Ocl_Expression_Collections.Internals.To_Holder
               (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualifier);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Association_Class_Call_Exp_Referred_Association_Class then
            --  AssociationClassCallExp::referredAssociationClass : AssociationClass

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Association_Classes.UML_Association_Class_Access'
                 (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Association_Class));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source then
            --  CallExp::source : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Association_Class_Call_Exp_Get;

      ------------------
      -- Bag_Type_Get --
      ------------------

      function Bag_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type then
            --  CollectionType::elementType : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Inherited_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Abstract);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Final_Specialization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Leaf);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute then
            --  DataType::ownedAttribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation then
            --  DataType::ownedOperation : Operation

            return
              AMF.UML.Operations.Collections.UML_Operation_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Operation);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent then
            --  Classifier::powertypeExtent : GeneralizationSet

            return
              AMF.UML.Generalization_Sets.Collections.UML_Generalization_Set_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Powertype_Extent);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case then
            --  Classifier::useCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Bag_Type_Get;

      -----------------------------
      -- Boolean_Literal_Exp_Get --
      -----------------------------

      function Boolean_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Boolean_Literal_Exp_Boolean_Symbol then
            --  BooleanLiteralExp::booleanSymbol : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Boolean_Symbol);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Boolean_Literal_Exp_Get;

      -------------------------
      -- Collection_Item_Get --
      -------------------------

      function Collection_Item_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Item_Item then
            --  CollectionItem::item : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Item));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Collection_Item_Get;

      --------------------------------
      -- Collection_Literal_Exp_Get --
      --------------------------------

      function Collection_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Literal_Exp_Kind then
            --  CollectionLiteralExp::kind : CollectionKind

            return
              AMF.OCL.Holders.Collection_Kinds.To_Holder
               (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Kind);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Literal_Exp_Part then
            --  CollectionLiteralExp::part : CollectionLiteralPart

            return
              AMF.OCL.Collection_Literal_Parts.Collections.OCL_Collection_Literal_Part_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Part);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Collection_Literal_Exp_Get;

      --------------------------
      -- Collection_Range_Get --
      --------------------------

      function Collection_Range_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Range_First then
            --  CollectionRange::first : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_First));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Range_Last then
            --  CollectionRange::last : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Last));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Collection_Range_Get;

      -------------------------
      -- Collection_Type_Get --
      -------------------------

      function Collection_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type then
            --  CollectionType::elementType : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Inherited_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Abstract);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Final_Specialization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Leaf);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute then
            --  DataType::ownedAttribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation then
            --  DataType::ownedOperation : Operation

            return
              AMF.UML.Operations.Collections.UML_Operation_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Operation);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent then
            --  Classifier::powertypeExtent : GeneralizationSet

            return
              AMF.UML.Generalization_Sets.Collections.UML_Generalization_Set_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Powertype_Extent);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case then
            --  Classifier::useCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Collection_Type_Get;

      --------------------------
      -- Enum_Literal_Exp_Get --
      --------------------------

      function Enum_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Enum_Literal_Exp_Referred_Enum_Literal then
            --  EnumLiteralExp::referredEnumLiteral : EnumerationLiteral

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access'
                 (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Enum_Literal));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Enum_Literal_Exp_Get;

      ---------------------------
      -- Expression_In_Ocl_Get --
      ---------------------------

      function Expression_In_Ocl_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Opaque_Expression_Behavior then
            --  OpaqueExpression::behavior : Behavior

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Behaviors.UML_Behavior_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Behavior));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Opaque_Expression_Body then
            --  OpaqueExpression::body : String

            return
              AMF.String_Collections.Internals.To_Holder
               (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Body);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Body_Expression then
            --  ExpressionInOcl::bodyExpression : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Body_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Context_Variable then
            --  ExpressionInOcl::contextVariable : Variable

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Context_Variable));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Generated_Type then
            --  ExpressionInOcl::generatedType : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Generated_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Opaque_Expression_Language then
            --  OpaqueExpression::language : String

            return
              AMF.String_Collections.Internals.To_Holder
               (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Language);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Parameter_Variable then
            --  ExpressionInOcl::parameterVariable : Variable

            return
              AMF.OCL.Variables.Collections.OCL_Variable_Collections.Internals.To_Holder
               (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Parameter_Variable);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Opaque_Expression_Result then
            --  OpaqueExpression::result : Parameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Parameters.UML_Parameter_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Result));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Result_Variable then
            --  ExpressionInOcl::resultVariable : Variable

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Result_Variable));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Expression_In_Ocl_Get;

      ----------------
      -- If_Exp_Get --
      ----------------

      function If_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.If_Exps.OCL_If_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_If_Exp_Condition then
            --  IfExp::condition : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.If_Exps.OCL_If_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Condition));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_If_Exp_Else_Expression then
            --  IfExp::elseExpression : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.If_Exps.OCL_If_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Else_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.If_Exps.OCL_If_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.If_Exps.OCL_If_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.If_Exps.OCL_If_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.If_Exps.OCL_If_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.If_Exps.OCL_If_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.If_Exps.OCL_If_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.If_Exps.OCL_If_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_If_Exp_Then_Expression then
            --  IfExp::thenExpression : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.If_Exps.OCL_If_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Then_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.If_Exps.OCL_If_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.If_Exps.OCL_If_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end If_Exp_Get;

      -----------------------------
      -- Integer_Literal_Exp_Get --
      -----------------------------

      function Integer_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Integer_Literal_Exp_Integer_Symbol then
            --  IntegerLiteralExp::integerSymbol : Integer

            return
              League.Holders.Integers.To_Holder
               (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Integer_Symbol);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Integer_Literal_Exp_Get;

      -----------------------------
      -- Invalid_Literal_Exp_Get --
      -----------------------------

      function Invalid_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Invalid_Literal_Exp_Get;

      ----------------------
      -- Invalid_Type_Get --
      ----------------------

      function Invalid_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Inherited_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Abstract);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Final_Specialization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Leaf);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent then
            --  Classifier::powertypeExtent : GeneralizationSet

            return
              AMF.UML.Generalization_Sets.Collections.UML_Generalization_Set_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Powertype_Extent);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case then
            --  Classifier::useCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Invalid_Type_Get;

      ---------------------
      -- Iterate_Exp_Get --
      ---------------------

      function Iterate_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Body then
            --  LoopExp::body : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Body));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Iterator then
            --  LoopExp::iterator : Variable

            return
              AMF.OCL.Variables.Collections.OCL_Variable_Collections.Internals.To_Holder
               (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Iterator);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Iterate_Exp_Result then
            --  IterateExp::result : Variable

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access'
                 (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Result));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source then
            --  CallExp::source : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Iterate_Exp_Get;

      ----------------------
      -- Iterator_Exp_Get --
      ----------------------

      function Iterator_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Body then
            --  LoopExp::body : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Body));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Iterator then
            --  LoopExp::iterator : Variable

            return
              AMF.OCL.Variables.Collections.OCL_Variable_Collections.Internals.To_Holder
               (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Iterator);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source then
            --  CallExp::source : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Iterator_Exp_Get;

      -----------------
      -- Let_Exp_Get --
      -----------------

      function Let_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Let_Exp_In then
            --  LetExp::in : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_In));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Let_Exp_Variable then
            --  LetExp::variable : Variable

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access'
                 (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Variable));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Let_Exp_Get;

      ---------------------
      -- Message_Exp_Get --
      ---------------------

      function Message_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Argument then
            --  MessageExp::argument : OclExpression

            return
              AMF.OCL.Ocl_Expressions.Collections.OCL_Ocl_Expression_Collections.Internals.To_Holder
               (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Argument);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Called_Operation then
            --  MessageExp::calledOperation : CallOperationAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access'
                 (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Called_Operation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Sent_Signal then
            --  MessageExp::sentSignal : SendSignalAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action_Access'
                 (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Sent_Signal));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Target then
            --  MessageExp::target : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Target));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Message_Exp_Get;

      ----------------------
      -- Message_Type_Get --
      ----------------------

      function Message_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Inherited_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Abstract);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Final_Specialization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Leaf);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent then
            --  Classifier::powertypeExtent : GeneralizationSet

            return
              AMF.UML.Generalization_Sets.Collections.UML_Generalization_Set_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Powertype_Extent);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Type_Referred_Operation then
            --  MessageType::referredOperation : Operation

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Operations.UML_Operation_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Operation));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Type_Referred_Signal then
            --  MessageType::referredSignal : Signal

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Signals.UML_Signal_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Signal));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case then
            --  Classifier::useCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Message_Type_Get;

      --------------------------
      -- Null_Literal_Exp_Get --
      --------------------------

      function Null_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Null_Literal_Exp_Get;

      ----------------------------
      -- Operation_Call_Exp_Get --
      ----------------------------

      function Operation_Call_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Operation_Call_Exp_Argument then
            --  OperationCallExp::argument : OclExpression

            return
              AMF.OCL.Ocl_Expressions.Collections.OCL_Ocl_Expression_Collections.Internals.To_Holder
               (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Argument);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Operation_Call_Exp_Referred_Operation then
            --  OperationCallExp::referredOperation : Operation

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Operations.UML_Operation_Access'
                 (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Operation));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source then
            --  CallExp::source : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Operation_Call_Exp_Get;

      --------------------------
      -- Ordered_Set_Type_Get --
      --------------------------

      function Ordered_Set_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type then
            --  CollectionType::elementType : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Inherited_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Abstract);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Final_Specialization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Leaf);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute then
            --  DataType::ownedAttribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation then
            --  DataType::ownedOperation : Operation

            return
              AMF.UML.Operations.Collections.UML_Operation_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Operation);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent then
            --  Classifier::powertypeExtent : GeneralizationSet

            return
              AMF.UML.Generalization_Sets.Collections.UML_Generalization_Set_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Powertype_Extent);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case then
            --  Classifier::useCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Ordered_Set_Type_Get;

      ---------------------------
      -- Property_Call_Exp_Get --
      ---------------------------

      function Property_Call_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Navigation_Source then
            --  NavigationCallExp::navigationSource : Property

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Properties.UML_Property_Access'
                 (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Navigation_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Qualifier then
            --  NavigationCallExp::qualifier : OclExpression

            return
              AMF.OCL.Ocl_Expressions.Collections.OCL_Ocl_Expression_Collections.Internals.To_Holder
               (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualifier);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Property_Call_Exp_Referred_Property then
            --  PropertyCallExp::referredProperty : Property

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Properties.UML_Property_Access'
                 (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Property));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source then
            --  CallExp::source : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Property_Call_Exp_Get;

      --------------------------
      -- Real_Literal_Exp_Get --
      --------------------------

      function Real_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Real_Literal_Exp_Real_Symbol then
            --  RealLiteralExp::realSymbol : Real

            return
              AMF.Holders.Reals.To_Holder
               (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Real_Symbol);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Real_Literal_Exp_Get;

      -----------------------
      -- Sequence_Type_Get --
      -----------------------

      function Sequence_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type then
            --  CollectionType::elementType : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Inherited_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Abstract);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Final_Specialization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Leaf);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute then
            --  DataType::ownedAttribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation then
            --  DataType::ownedOperation : Operation

            return
              AMF.UML.Operations.Collections.UML_Operation_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Operation);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent then
            --  Classifier::powertypeExtent : GeneralizationSet

            return
              AMF.UML.Generalization_Sets.Collections.UML_Generalization_Set_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Powertype_Extent);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case then
            --  Classifier::useCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Sequence_Type_Get;

      ------------------
      -- Set_Type_Get --
      ------------------

      function Set_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type then
            --  CollectionType::elementType : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Inherited_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Abstract);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Final_Specialization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Leaf);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute then
            --  DataType::ownedAttribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation then
            --  DataType::ownedOperation : Operation

            return
              AMF.UML.Operations.Collections.UML_Operation_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Operation);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent then
            --  Classifier::powertypeExtent : GeneralizationSet

            return
              AMF.UML.Generalization_Sets.Collections.UML_Generalization_Set_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Powertype_Extent);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case then
            --  Classifier::useCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Set_Type_Get;

      -------------------
      -- State_Exp_Get --
      -------------------

      function State_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.State_Exps.OCL_State_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.State_Exps.OCL_State_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.State_Exps.OCL_State_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.State_Exps.OCL_State_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.State_Exps.OCL_State_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.State_Exps.OCL_State_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.State_Exps.OCL_State_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.State_Exps.OCL_State_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_State_Exp_Referred_State then
            --  StateExp::referredState : State

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.States.UML_State_Access'
                 (AMF.OCL.State_Exps.OCL_State_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_State));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.State_Exps.OCL_State_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.State_Exps.OCL_State_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end State_Exp_Get;

      ----------------------------
      -- String_Literal_Exp_Get --
      ----------------------------

      function String_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_String_Literal_Exp_String_Symbol then
            --  StringLiteralExp::stringSymbol : String

            return
              League.Holders.To_Holder
               (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_String_Symbol);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end String_Literal_Exp_Get;

      ---------------------------------
      -- Template_Parameter_Type_Get --
      ---------------------------------

      function Template_Parameter_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Inherited_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Abstract);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Final_Specialization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Leaf);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent then
            --  Classifier::powertypeExtent : GeneralizationSet

            return
              AMF.UML.Generalization_Sets.Collections.UML_Generalization_Set_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Powertype_Extent);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Template_Parameter_Type_Specification then
            --  TemplateParameterType::specification : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Specification);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case then
            --  Classifier::useCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Template_Parameter_Type_Get;

      ---------------------------
      -- Tuple_Literal_Exp_Get --
      ---------------------------

      function Tuple_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Tuple_Literal_Exp_Part then
            --  TupleLiteralExp::part : TupleLiteralPart

            return
              AMF.OCL.Tuple_Literal_Parts.Collections.OCL_Tuple_Literal_Part_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Part);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Tuple_Literal_Exp_Get;

      ----------------------------
      -- Tuple_Literal_Part_Get --
      ----------------------------

      function Tuple_Literal_Part_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Tuple_Literal_Part_Attribute then
            --  TupleLiteralPart::attribute : Property

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Properties.UML_Property_Access'
                 (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Tuple_Literal_Part_Get;

      --------------------
      -- Tuple_Type_Get --
      --------------------

      function Tuple_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Inherited_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Abstract);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Final_Specialization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Leaf);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute then
            --  DataType::ownedAttribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation then
            --  DataType::ownedOperation : Operation

            return
              AMF.UML.Operations.Collections.UML_Operation_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Operation);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent then
            --  Classifier::powertypeExtent : GeneralizationSet

            return
              AMF.UML.Generalization_Sets.Collections.UML_Generalization_Set_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Powertype_Extent);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case then
            --  Classifier::useCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Tuple_Type_Get;

      ------------------
      -- Type_Exp_Get --
      ------------------

      function Type_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Type_Exp_Referred_Type then
            --  TypeExp::referredType : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Type_Exp_Get;

      ---------------------------------------
      -- Unlimited_Natural_Literal_Exp_Get --
      ---------------------------------------

      function Unlimited_Natural_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Unlimited_Natural_Literal_Exp_Unlimited_Natural_Symbol then
            --  UnlimitedNaturalLiteralExp::unlimitedNaturalSymbol : UnlimitedNatural

            return
              AMF.Holders.Unlimited_Naturals.To_Holder
               (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Unlimited_Natural_Symbol);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Unlimited_Natural_Literal_Exp_Get;

      -------------------------------
      -- Unspecified_Value_Exp_Get --
      -------------------------------

      function Unspecified_Value_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Unspecified_Value_Exp_Get;

      ------------------
      -- Variable_Get --
      ------------------

      function Variable_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Variable_Init_Expression then
            --  Variable::initExpression : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Variables.OCL_Variable_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Init_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Variables.OCL_Variable_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Variables.OCL_Variable_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Variables.OCL_Variable_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Variable_Represented_Parameter then
            --  Variable::representedParameter : Parameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Parameters.UML_Parameter_Access'
                 (AMF.OCL.Variables.OCL_Variable_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Represented_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Variables.OCL_Variable_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Variable_Get;

      ----------------------
      -- Variable_Exp_Get --
      ----------------------

      function Variable_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Variable_Exp_Referred_Variable then
            --  VariableExp::referredVariable : Variable

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access'
                 (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Variable));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Variable_Exp_Get;

      -------------------
      -- Void_Type_Get --
      -------------------

      function Void_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            --  Classifier::inheritedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Inherited_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Abstract);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Final_Specialization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Is_Leaf);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member then
            --  Namespace::member : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent then
            --  Classifier::powertypeExtent : GeneralizationSet

            return
              AMF.UML.Generalization_Sets.Collections.UML_Generalization_Set_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Powertype_Extent);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Qualified_Name then
            --  NamedElement::qualifiedName : String

            return
              AMF.Holders.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualified_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case then
            --  Classifier::useCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            return
              AMF.UML.Holders.Visibility_Kinds.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Visibility);

         else
            raise Program_Error;
         end if;
      end Void_Type_Get;

   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_None =>
            raise Program_Error;

         when AMF.Internals.Tables.OCL_Types.E_Any_Type =>
            return Any_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_Association_Class_Call_Exp =>
            return Association_Class_Call_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Bag_Type =>
            return Bag_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_Boolean_Literal_Exp =>
            return Boolean_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Collection_Item =>
            return Collection_Item_Get;

         when AMF.Internals.Tables.OCL_Types.E_Collection_Literal_Exp =>
            return Collection_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Collection_Range =>
            return Collection_Range_Get;

         when AMF.Internals.Tables.OCL_Types.E_Collection_Type =>
            return Collection_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_Enum_Literal_Exp =>
            return Enum_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Expression_In_Ocl =>
            return Expression_In_Ocl_Get;

         when AMF.Internals.Tables.OCL_Types.E_If_Exp =>
            return If_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Integer_Literal_Exp =>
            return Integer_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Invalid_Literal_Exp =>
            return Invalid_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Invalid_Type =>
            return Invalid_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_Iterate_Exp =>
            return Iterate_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Iterator_Exp =>
            return Iterator_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Let_Exp =>
            return Let_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Message_Exp =>
            return Message_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Message_Type =>
            return Message_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_Null_Literal_Exp =>
            return Null_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Operation_Call_Exp =>
            return Operation_Call_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Ordered_Set_Type =>
            return Ordered_Set_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_Property_Call_Exp =>
            return Property_Call_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Real_Literal_Exp =>
            return Real_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Sequence_Type =>
            return Sequence_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_Set_Type =>
            return Set_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_State_Exp =>
            return State_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_String_Literal_Exp =>
            return String_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Template_Parameter_Type =>
            return Template_Parameter_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_Tuple_Literal_Exp =>
            return Tuple_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Tuple_Literal_Part =>
            return Tuple_Literal_Part_Get;

         when AMF.Internals.Tables.OCL_Types.E_Tuple_Type =>
            return Tuple_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_Type_Exp =>
            return Type_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Unlimited_Natural_Literal_Exp =>
            return Unlimited_Natural_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Unspecified_Value_Exp =>
            return Unspecified_Value_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Variable =>
            return Variable_Get;

         when AMF.Internals.Tables.OCL_Types.E_Variable_Exp =>
            return Variable_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_Void_Type =>
            return Void_Type_Get;
      end case;
   end Get;

   --------------------
   -- Get_Meta_Class --
   --------------------

   function Get_Meta_Class (Self : OCL_Element) return CMOF_Element is
   begin
      case OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_None =>
            return 0;

         when AMF.Internals.Tables.OCL_Types.E_Any_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Any_Type;

         when AMF.Internals.Tables.OCL_Types.E_Association_Class_Call_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Association_Class_Call_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Bag_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Bag_Type;

         when AMF.Internals.Tables.OCL_Types.E_Boolean_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Boolean_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Collection_Item =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Item;

         when AMF.Internals.Tables.OCL_Types.E_Collection_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Collection_Range =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Range;

         when AMF.Internals.Tables.OCL_Types.E_Collection_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Type;

         when AMF.Internals.Tables.OCL_Types.E_Enum_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Enum_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Expression_In_Ocl =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Expression_In_Ocl;

         when AMF.Internals.Tables.OCL_Types.E_If_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_If_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Integer_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Integer_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Invalid_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Invalid_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Invalid_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Invalid_Type;

         when AMF.Internals.Tables.OCL_Types.E_Iterate_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Iterate_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Iterator_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Iterator_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Let_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Let_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Message_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Message_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Message_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Message_Type;

         when AMF.Internals.Tables.OCL_Types.E_Null_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Null_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Operation_Call_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Operation_Call_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Ordered_Set_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Ordered_Set_Type;

         when AMF.Internals.Tables.OCL_Types.E_Property_Call_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Property_Call_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Real_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Real_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Sequence_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Sequence_Type;

         when AMF.Internals.Tables.OCL_Types.E_Set_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Set_Type;

         when AMF.Internals.Tables.OCL_Types.E_State_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_State_Exp;

         when AMF.Internals.Tables.OCL_Types.E_String_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_String_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Template_Parameter_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Template_Parameter_Type;

         when AMF.Internals.Tables.OCL_Types.E_Tuple_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Tuple_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Tuple_Literal_Part =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Tuple_Literal_Part;

         when AMF.Internals.Tables.OCL_Types.E_Tuple_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Tuple_Type;

         when AMF.Internals.Tables.OCL_Types.E_Type_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Type_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Unlimited_Natural_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Unlimited_Natural_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Unspecified_Value_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Unspecified_Value_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Variable =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Variable;

         when AMF.Internals.Tables.OCL_Types.E_Variable_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Variable_Exp;

         when AMF.Internals.Tables.OCL_Types.E_Void_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Void_Type;
      end case;
   end Get_Meta_Class;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self     : OCL_Element;
     Property : CMOF_Element;
     Value    : League.Holders.Holder)
   is

      procedure Any_Type_Set;
      --  Sets attribute's value of instance of AnyType class.

      procedure Association_Class_Call_Exp_Set;
      --  Sets attribute's value of instance of AssociationClassCallExp class.

      procedure Bag_Type_Set;
      --  Sets attribute's value of instance of BagType class.

      procedure Boolean_Literal_Exp_Set;
      --  Sets attribute's value of instance of BooleanLiteralExp class.

      procedure Collection_Item_Set;
      --  Sets attribute's value of instance of CollectionItem class.

      procedure Collection_Literal_Exp_Set;
      --  Sets attribute's value of instance of CollectionLiteralExp class.

      procedure Collection_Range_Set;
      --  Sets attribute's value of instance of CollectionRange class.

      procedure Collection_Type_Set;
      --  Sets attribute's value of instance of CollectionType class.

      procedure Enum_Literal_Exp_Set;
      --  Sets attribute's value of instance of EnumLiteralExp class.

      procedure Expression_In_Ocl_Set;
      --  Sets attribute's value of instance of ExpressionInOcl class.

      procedure If_Exp_Set;
      --  Sets attribute's value of instance of IfExp class.

      procedure Integer_Literal_Exp_Set;
      --  Sets attribute's value of instance of IntegerLiteralExp class.

      procedure Invalid_Literal_Exp_Set;
      --  Sets attribute's value of instance of InvalidLiteralExp class.

      procedure Invalid_Type_Set;
      --  Sets attribute's value of instance of InvalidType class.

      procedure Iterate_Exp_Set;
      --  Sets attribute's value of instance of IterateExp class.

      procedure Iterator_Exp_Set;
      --  Sets attribute's value of instance of IteratorExp class.

      procedure Let_Exp_Set;
      --  Sets attribute's value of instance of LetExp class.

      procedure Message_Exp_Set;
      --  Sets attribute's value of instance of MessageExp class.

      procedure Message_Type_Set;
      --  Sets attribute's value of instance of MessageType class.

      procedure Null_Literal_Exp_Set;
      --  Sets attribute's value of instance of NullLiteralExp class.

      procedure Operation_Call_Exp_Set;
      --  Sets attribute's value of instance of OperationCallExp class.

      procedure Ordered_Set_Type_Set;
      --  Sets attribute's value of instance of OrderedSetType class.

      procedure Property_Call_Exp_Set;
      --  Sets attribute's value of instance of PropertyCallExp class.

      procedure Real_Literal_Exp_Set;
      --  Sets attribute's value of instance of RealLiteralExp class.

      procedure Sequence_Type_Set;
      --  Sets attribute's value of instance of SequenceType class.

      procedure Set_Type_Set;
      --  Sets attribute's value of instance of SetType class.

      procedure State_Exp_Set;
      --  Sets attribute's value of instance of StateExp class.

      procedure String_Literal_Exp_Set;
      --  Sets attribute's value of instance of StringLiteralExp class.

      procedure Template_Parameter_Type_Set;
      --  Sets attribute's value of instance of TemplateParameterType class.

      procedure Tuple_Literal_Exp_Set;
      --  Sets attribute's value of instance of TupleLiteralExp class.

      procedure Tuple_Literal_Part_Set;
      --  Sets attribute's value of instance of TupleLiteralPart class.

      procedure Tuple_Type_Set;
      --  Sets attribute's value of instance of TupleType class.

      procedure Type_Exp_Set;
      --  Sets attribute's value of instance of TypeExp class.

      procedure Unlimited_Natural_Literal_Exp_Set;
      --  Sets attribute's value of instance of UnlimitedNaturalLiteralExp class.

      procedure Unspecified_Value_Exp_Set;
      --  Sets attribute's value of instance of UnspecifiedValueExp class.

      procedure Variable_Set;
      --  Sets attribute's value of instance of Variable class.

      procedure Variable_Exp_Set;
      --  Sets attribute's value of instance of VariableExp class.

      procedure Void_Type_Set;
      --  Sets attribute's value of instance of VoidType class.

      ------------------
      -- Any_Type_Set --
      ------------------

      procedure Any_Type_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Abstract
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Final_Specialization
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Leaf
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Any_Type_Set;

      ------------------------------------
      -- Association_Class_Call_Exp_Set --
      ------------------------------------

      procedure Association_Class_Call_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Navigation_Source then
            --  NavigationCallExp::navigationSource : Property

            AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Navigation_Source
               (AMF.UML.Properties.UML_Property_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Association_Class_Call_Exp_Referred_Association_Class then
            --  AssociationClassCallExp::referredAssociationClass : AssociationClass

            AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Association_Class
               (AMF.UML.Association_Classes.UML_Association_Class_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source then
            --  CallExp::source : OclExpression

            AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Source
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Association_Class_Call_Exp_Set;

      ------------------
      -- Bag_Type_Set --
      ------------------

      procedure Bag_Type_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type then
            --  CollectionType::elementType : Classifier

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Element_Type
               (AMF.UML.Classifiers.UML_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Abstract
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Final_Specialization
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Leaf
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Bag_Type_Set;

      -----------------------------
      -- Boolean_Literal_Exp_Set --
      -----------------------------

      procedure Boolean_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Boolean_Literal_Exp_Boolean_Symbol then
            --  BooleanLiteralExp::booleanSymbol : Boolean

            AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Boolean_Symbol
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Boolean_Literal_Exp_Set;

      -------------------------
      -- Collection_Item_Set --
      -------------------------

      procedure Collection_Item_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Item_Item then
            --  CollectionItem::item : OclExpression

            AMF.OCL.Collection_Items.OCL_Collection_Item_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Item
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Collection_Items.OCL_Collection_Item_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Collection_Items.OCL_Collection_Item_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Collection_Items.OCL_Collection_Item_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Collection_Items.OCL_Collection_Item_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Collection_Item_Set;

      --------------------------------
      -- Collection_Literal_Exp_Set --
      --------------------------------

      procedure Collection_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Literal_Exp_Kind then
            --  CollectionLiteralExp::kind : CollectionKind

            AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Kind
               (AMF.OCL.Holders.Collection_Kinds.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Collection_Literal_Exp_Set;

      --------------------------
      -- Collection_Range_Set --
      --------------------------

      procedure Collection_Range_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Range_First then
            --  CollectionRange::first : OclExpression

            AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_First
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Range_Last then
            --  CollectionRange::last : OclExpression

            AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Last
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Collection_Range_Set;

      -------------------------
      -- Collection_Type_Set --
      -------------------------

      procedure Collection_Type_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type then
            --  CollectionType::elementType : Classifier

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Element_Type
               (AMF.UML.Classifiers.UML_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Abstract
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Final_Specialization
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Leaf
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Collection_Type_Set;

      --------------------------
      -- Enum_Literal_Exp_Set --
      --------------------------

      procedure Enum_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Enum_Literal_Exp_Referred_Enum_Literal then
            --  EnumLiteralExp::referredEnumLiteral : EnumerationLiteral

            AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Enum_Literal
               (AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Enum_Literal_Exp_Set;

      ---------------------------
      -- Expression_In_Ocl_Set --
      ---------------------------

      procedure Expression_In_Ocl_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Opaque_Expression_Behavior then
            --  OpaqueExpression::behavior : Behavior

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Behavior
               (AMF.UML.Behaviors.UML_Behavior_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Body_Expression then
            --  ExpressionInOcl::bodyExpression : OclExpression

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Body_Expression
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Context_Variable then
            --  ExpressionInOcl::contextVariable : Variable

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Context_Variable
               (AMF.OCL.Variables.OCL_Variable_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Generated_Type then
            --  ExpressionInOcl::generatedType : Classifier

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Generated_Type
               (AMF.UML.Classifiers.UML_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Result_Variable then
            --  ExpressionInOcl::resultVariable : Variable

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Result_Variable
               (AMF.OCL.Variables.OCL_Variable_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Expression_In_Ocl_Set;

      ----------------
      -- If_Exp_Set --
      ----------------

      procedure If_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_If_Exp_Condition then
            --  IfExp::condition : OclExpression

            AMF.OCL.If_Exps.OCL_If_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Condition
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_If_Exp_Else_Expression then
            --  IfExp::elseExpression : OclExpression

            AMF.OCL.If_Exps.OCL_If_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Else_Expression
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.If_Exps.OCL_If_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.If_Exps.OCL_If_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_If_Exp_Then_Expression then
            --  IfExp::thenExpression : OclExpression

            AMF.OCL.If_Exps.OCL_If_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Then_Expression
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.If_Exps.OCL_If_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.If_Exps.OCL_If_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end If_Exp_Set;

      -----------------------------
      -- Integer_Literal_Exp_Set --
      -----------------------------

      procedure Integer_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Integer_Literal_Exp_Integer_Symbol then
            --  IntegerLiteralExp::integerSymbol : Integer

            AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Integer_Symbol
               (League.Holders.Integers.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Integer_Literal_Exp_Set;

      -----------------------------
      -- Invalid_Literal_Exp_Set --
      -----------------------------

      procedure Invalid_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Invalid_Literal_Exp_Set;

      ----------------------
      -- Invalid_Type_Set --
      ----------------------

      procedure Invalid_Type_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Abstract
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Final_Specialization
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Leaf
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Invalid_Type_Set;

      ---------------------
      -- Iterate_Exp_Set --
      ---------------------

      procedure Iterate_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Body then
            --  LoopExp::body : OclExpression

            AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Body
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Iterate_Exp_Result then
            --  IterateExp::result : Variable

            AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Result
               (AMF.OCL.Variables.OCL_Variable_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source then
            --  CallExp::source : OclExpression

            AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Source
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Iterate_Exp_Set;

      ----------------------
      -- Iterator_Exp_Set --
      ----------------------

      procedure Iterator_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Body then
            --  LoopExp::body : OclExpression

            AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Body
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source then
            --  CallExp::source : OclExpression

            AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Source
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Iterator_Exp_Set;

      -----------------
      -- Let_Exp_Set --
      -----------------

      procedure Let_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Let_Exp_In then
            --  LetExp::in : OclExpression

            AMF.OCL.Let_Exps.OCL_Let_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_In
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Let_Exps.OCL_Let_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Let_Exps.OCL_Let_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Let_Exps.OCL_Let_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Let_Exp_Variable then
            --  LetExp::variable : Variable

            AMF.OCL.Let_Exps.OCL_Let_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Variable
               (AMF.OCL.Variables.OCL_Variable_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Let_Exps.OCL_Let_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Let_Exp_Set;

      ---------------------
      -- Message_Exp_Set --
      ---------------------

      procedure Message_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Called_Operation then
            --  MessageExp::calledOperation : CallOperationAction

            AMF.OCL.Message_Exps.OCL_Message_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Called_Operation
               (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Message_Exps.OCL_Message_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Message_Exps.OCL_Message_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Sent_Signal then
            --  MessageExp::sentSignal : SendSignalAction

            AMF.OCL.Message_Exps.OCL_Message_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Sent_Signal
               (AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Target then
            --  MessageExp::target : OclExpression

            AMF.OCL.Message_Exps.OCL_Message_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Target
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Message_Exps.OCL_Message_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Message_Exps.OCL_Message_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Message_Exp_Set;

      ----------------------
      -- Message_Type_Set --
      ----------------------

      procedure Message_Type_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Abstract
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Final_Specialization
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Leaf
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Type_Referred_Operation then
            --  MessageType::referredOperation : Operation

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Operation
               (AMF.UML.Operations.UML_Operation_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Type_Referred_Signal then
            --  MessageType::referredSignal : Signal

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Signal
               (AMF.UML.Signals.UML_Signal_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Message_Type_Set;

      --------------------------
      -- Null_Literal_Exp_Set --
      --------------------------

      procedure Null_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Null_Literal_Exp_Set;

      ----------------------------
      -- Operation_Call_Exp_Set --
      ----------------------------

      procedure Operation_Call_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Operation_Call_Exp_Referred_Operation then
            --  OperationCallExp::referredOperation : Operation

            AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Operation
               (AMF.UML.Operations.UML_Operation_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source then
            --  CallExp::source : OclExpression

            AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Source
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Operation_Call_Exp_Set;

      --------------------------
      -- Ordered_Set_Type_Set --
      --------------------------

      procedure Ordered_Set_Type_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type then
            --  CollectionType::elementType : Classifier

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Element_Type
               (AMF.UML.Classifiers.UML_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Abstract
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Final_Specialization
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Leaf
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Ordered_Set_Type_Set;

      ---------------------------
      -- Property_Call_Exp_Set --
      ---------------------------

      procedure Property_Call_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Navigation_Source then
            --  NavigationCallExp::navigationSource : Property

            AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Navigation_Source
               (AMF.UML.Properties.UML_Property_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Property_Call_Exp_Referred_Property then
            --  PropertyCallExp::referredProperty : Property

            AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Property
               (AMF.UML.Properties.UML_Property_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source then
            --  CallExp::source : OclExpression

            AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Source
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Property_Call_Exp_Set;

      --------------------------
      -- Real_Literal_Exp_Set --
      --------------------------

      procedure Real_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Real_Literal_Exp_Real_Symbol then
            --  RealLiteralExp::realSymbol : Real

            AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Real_Symbol
               (AMF.Holders.Reals.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Real_Literal_Exp_Set;

      -----------------------
      -- Sequence_Type_Set --
      -----------------------

      procedure Sequence_Type_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type then
            --  CollectionType::elementType : Classifier

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Element_Type
               (AMF.UML.Classifiers.UML_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Abstract
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Final_Specialization
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Leaf
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Sequence_Type_Set;

      ------------------
      -- Set_Type_Set --
      ------------------

      procedure Set_Type_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type then
            --  CollectionType::elementType : Classifier

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Element_Type
               (AMF.UML.Classifiers.UML_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Abstract
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Final_Specialization
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Leaf
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Set_Type_Set;

      -------------------
      -- State_Exp_Set --
      -------------------

      procedure State_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.State_Exps.OCL_State_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.State_Exps.OCL_State_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_State_Exp_Referred_State then
            --  StateExp::referredState : State

            AMF.OCL.State_Exps.OCL_State_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_State
               (AMF.UML.States.UML_State_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.State_Exps.OCL_State_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.State_Exps.OCL_State_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end State_Exp_Set;

      ----------------------------
      -- String_Literal_Exp_Set --
      ----------------------------

      procedure String_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_String_Literal_Exp_String_Symbol then
            --  StringLiteralExp::stringSymbol : String

            AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_String_Symbol
               (League.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end String_Literal_Exp_Set;

      ---------------------------------
      -- Template_Parameter_Type_Set --
      ---------------------------------

      procedure Template_Parameter_Type_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Abstract
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Final_Specialization
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Leaf
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Template_Parameter_Type_Specification then
            --  TemplateParameterType::specification : String

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Specification
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Template_Parameter_Type_Set;

      ---------------------------
      -- Tuple_Literal_Exp_Set --
      ---------------------------

      procedure Tuple_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Tuple_Literal_Exp_Set;

      ----------------------------
      -- Tuple_Literal_Part_Set --
      ----------------------------

      procedure Tuple_Literal_Part_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Tuple_Literal_Part_Attribute then
            --  TupleLiteralPart::attribute : Property

            AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Attribute
               (AMF.UML.Properties.UML_Property_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Tuple_Literal_Part_Set;

      --------------------
      -- Tuple_Type_Set --
      --------------------

      procedure Tuple_Type_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Abstract
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Final_Specialization
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Leaf
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Tuple_Type_Set;

      ------------------
      -- Type_Exp_Set --
      ------------------

      procedure Type_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Type_Exps.OCL_Type_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Type_Exps.OCL_Type_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Type_Exp_Referred_Type then
            --  TypeExp::referredType : Classifier

            AMF.OCL.Type_Exps.OCL_Type_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Type
               (AMF.UML.Classifiers.UML_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Type_Exps.OCL_Type_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Type_Exps.OCL_Type_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Type_Exp_Set;

      ---------------------------------------
      -- Unlimited_Natural_Literal_Exp_Set --
      ---------------------------------------

      procedure Unlimited_Natural_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Unlimited_Natural_Literal_Exp_Unlimited_Natural_Symbol then
            --  UnlimitedNaturalLiteralExp::unlimitedNaturalSymbol : UnlimitedNatural

            AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Unlimited_Natural_Symbol
               (AMF.Holders.Unlimited_Naturals.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Unlimited_Natural_Literal_Exp_Set;

      -------------------------------
      -- Unspecified_Value_Exp_Set --
      -------------------------------

      procedure Unspecified_Value_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Unspecified_Value_Exp_Set;

      ------------------
      -- Variable_Set --
      ------------------

      procedure Variable_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Variable_Init_Expression then
            --  Variable::initExpression : OclExpression

            AMF.OCL.Variables.OCL_Variable_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Init_Expression
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Variables.OCL_Variable_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Variables.OCL_Variable_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Variable_Represented_Parameter then
            --  Variable::representedParameter : Parameter

            AMF.OCL.Variables.OCL_Variable_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Represented_Parameter
               (AMF.UML.Parameters.UML_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Variables.OCL_Variable_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Variables.OCL_Variable_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Variable_Set;

      ----------------------
      -- Variable_Exp_Set --
      ----------------------

      procedure Variable_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Variable_Exp_Referred_Variable then
            --  VariableExp::referredVariable : Variable

            AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Variable
               (AMF.OCL.Variables.OCL_Variable_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type then
            --  TypedElement::type : Type

            AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Variable_Exp_Set;

      -------------------
      -- Void_Type_Set --
      -------------------

      procedure Void_Type_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Abstract then
            --  Classifier::isAbstract : Boolean

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Abstract
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization then
            --  Classifier::isFinalSpecialization : Boolean

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Final_Specialization
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf then
            --  RedefinableElement::isLeaf : Boolean

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Is_Leaf
               (League.Holders.Booleans.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package then
            --  Type::package : Package

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter then
            --  ParameterableElement::templateParameter : TemplateParameter

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility then
            --  NamedElement::visibility : VisibilityKind

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Packageable_Element_Visibility then
            --  PackageableElement::visibility : VisibilityKind

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Visibility
               (AMF.UML.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Void_Type_Set;
   begin
      case OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_None =>
            raise Program_Error;

         when AMF.Internals.Tables.OCL_Types.E_Any_Type =>
            Any_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_Association_Class_Call_Exp =>
            Association_Class_Call_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Bag_Type =>
            Bag_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_Boolean_Literal_Exp =>
            Boolean_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Collection_Item =>
            Collection_Item_Set;

         when AMF.Internals.Tables.OCL_Types.E_Collection_Literal_Exp =>
            Collection_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Collection_Range =>
            Collection_Range_Set;

         when AMF.Internals.Tables.OCL_Types.E_Collection_Type =>
            Collection_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_Enum_Literal_Exp =>
            Enum_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Expression_In_Ocl =>
            Expression_In_Ocl_Set;

         when AMF.Internals.Tables.OCL_Types.E_If_Exp =>
            If_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Integer_Literal_Exp =>
            Integer_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Invalid_Literal_Exp =>
            Invalid_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Invalid_Type =>
            Invalid_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_Iterate_Exp =>
            Iterate_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Iterator_Exp =>
            Iterator_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Let_Exp =>
            Let_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Message_Exp =>
            Message_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Message_Type =>
            Message_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_Null_Literal_Exp =>
            Null_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Operation_Call_Exp =>
            Operation_Call_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Ordered_Set_Type =>
            Ordered_Set_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_Property_Call_Exp =>
            Property_Call_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Real_Literal_Exp =>
            Real_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Sequence_Type =>
            Sequence_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_Set_Type =>
            Set_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_State_Exp =>
            State_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_String_Literal_Exp =>
            String_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Template_Parameter_Type =>
            Template_Parameter_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_Tuple_Literal_Exp =>
            Tuple_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Tuple_Literal_Part =>
            Tuple_Literal_Part_Set;

         when AMF.Internals.Tables.OCL_Types.E_Tuple_Type =>
            Tuple_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_Type_Exp =>
            Type_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Unlimited_Natural_Literal_Exp =>
            Unlimited_Natural_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Unspecified_Value_Exp =>
            Unspecified_Value_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Variable =>
            Variable_Set;

         when AMF.Internals.Tables.OCL_Types.E_Variable_Exp =>
            Variable_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_Void_Type =>
            Void_Type_Set;
      end case;
   end Set;

end AMF.Internals.Tables.OCL_Reflection;
