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
    (Self     : AMF.Internals.AMF_Element;
     Property : CMOF_Element) return League.Holders.Holder
   is

      function OCL_Any_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of AnyType class.

      function OCL_Association_Class_Call_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of AssociationClassCallExp class.

      function OCL_Bag_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of BagType class.

      function OCL_Boolean_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of BooleanLiteralExp class.

      function OCL_Collection_Item_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of CollectionItem class.

      function OCL_Collection_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of CollectionLiteralExp class.

      function OCL_Collection_Range_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of CollectionRange class.

      function OCL_Collection_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of CollectionType class.

      function OCL_Enum_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of EnumLiteralExp class.

      function OCL_Expression_In_Ocl_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of ExpressionInOcl class.

      function OCL_If_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of IfExp class.

      function OCL_Integer_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of IntegerLiteralExp class.

      function OCL_Invalid_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of InvalidLiteralExp class.

      function OCL_Invalid_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of InvalidType class.

      function OCL_Iterate_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of IterateExp class.

      function OCL_Iterator_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of IteratorExp class.

      function OCL_Let_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of LetExp class.

      function OCL_Message_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of MessageExp class.

      function OCL_Message_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of MessageType class.

      function OCL_Null_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of NullLiteralExp class.

      function OCL_Operation_Call_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of OperationCallExp class.

      function OCL_Ordered_Set_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of OrderedSetType class.

      function OCL_Property_Call_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of PropertyCallExp class.

      function OCL_Real_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of RealLiteralExp class.

      function OCL_Sequence_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of SequenceType class.

      function OCL_Set_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of SetType class.

      function OCL_State_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of StateExp class.

      function OCL_String_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of StringLiteralExp class.

      function OCL_Template_Parameter_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TemplateParameterType class.

      function OCL_Tuple_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TupleLiteralExp class.

      function OCL_Tuple_Literal_Part_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TupleLiteralPart class.

      function OCL_Tuple_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TupleType class.

      function OCL_Type_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TypeExp class.

      function OCL_Unlimited_Natural_Literal_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of UnlimitedNaturalLiteralExp class.

      function OCL_Unspecified_Value_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of UnspecifiedValueExp class.

      function OCL_Variable_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Variable class.

      function OCL_Variable_Exp_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of VariableExp class.

      function OCL_Void_Type_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of VoidType class.

      ----------------------
      -- OCL_Any_Type_Get --
      ----------------------

      function OCL_Any_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Any_Types.OCL_Any_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Any_Types.OCL_Any_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject then
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
      end OCL_Any_Type_Get;

      ----------------------------------------
      -- OCL_Association_Class_Call_Exp_Get --
      ----------------------------------------

      function OCL_Association_Class_Call_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Navigation_Source_A_Exp9 then
            --  NavigationCallExp::navigationSource : Property

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Properties.UML_Property_Access'
                 (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Navigation_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Qualifier_A_Parent_Nav then
            --  NavigationCallExp::qualifier : OclExpression

            return
              AMF.OCL.Ocl_Expressions.Collections.OCL_Ocl_Expression_Collections.Internals.To_Holder
               (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualifier);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Association_Class_Call_Exp_Referred_Association_Class_A_Referring_Exp then
            --  AssociationClassCallExp::referredAssociationClass : AssociationClass

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Association_Classes.UML_Association_Class_Access'
                 (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Association_Class));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source_A_Applied_Element then
            --  CallExp::source : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Association_Class_Call_Exp_Get;

      ----------------------
      -- OCL_Bag_Type_Get --
      ----------------------

      function OCL_Bag_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type_A_Type1 then
            --  CollectionType::elementType : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype then
            --  DataType::ownedAttribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype then
            --  DataType::ownedOperation : Operation

            return
              AMF.UML.Operations.Collections.UML_Operation_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Operation);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Bag_Types.OCL_Bag_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject then
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
      end OCL_Bag_Type_Get;

      ---------------------------------
      -- OCL_Boolean_Literal_Exp_Get --
      ---------------------------------

      function OCL_Boolean_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Boolean_Literal_Exp_Boolean_Symbol then
            --  BooleanLiteralExp::booleanSymbol : Boolean

            return
              League.Holders.Booleans.To_Holder
               (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Boolean_Symbol);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Boolean_Literal_Exp_Get;

      -----------------------------
      -- OCL_Collection_Item_Get --
      -----------------------------

      function OCL_Collection_Item_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Item_Item_A_Item1 then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Items.OCL_Collection_Item_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Collection_Item_Get;

      ------------------------------------
      -- OCL_Collection_Literal_Exp_Get --
      ------------------------------------

      function OCL_Collection_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Literal_Exp_Part_A_Exp1 then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Collection_Literal_Exp_Get;

      ------------------------------
      -- OCL_Collection_Range_Get --
      ------------------------------

      function OCL_Collection_Range_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Range_First_A_First_Owner then
            --  CollectionRange::first : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_First));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Range_Last_A_Last_Owner then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Collection_Range_Get;

      -----------------------------
      -- OCL_Collection_Type_Get --
      -----------------------------

      function OCL_Collection_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type_A_Type1 then
            --  CollectionType::elementType : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype then
            --  DataType::ownedAttribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype then
            --  DataType::ownedOperation : Operation

            return
              AMF.UML.Operations.Collections.UML_Operation_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Operation);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Collection_Types.OCL_Collection_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject then
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
      end OCL_Collection_Type_Get;

      ------------------------------
      -- OCL_Enum_Literal_Exp_Get --
      ------------------------------

      function OCL_Enum_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Enum_Literal_Exp_Referred_Enum_Literal_A_Literal_Exp then
            --  EnumLiteralExp::referredEnumLiteral : EnumerationLiteral

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access'
                 (AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Enum_Literal));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Enum_Literal_Exp_Get;

      -------------------------------
      -- OCL_Expression_In_Ocl_Get --
      -------------------------------

      function OCL_Expression_In_Ocl_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Opaque_Expression_Behavior_A_Opaque_Expression then
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

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Body_Expression_A_Top_Expression then
            --  ExpressionInOcl::bodyExpression : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Body_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Context_Variable_A_Self_Owner then
            --  ExpressionInOcl::contextVariable : Variable

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Context_Variable));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Generated_Type_A_Owning_Classifier then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Parameter_Variable_A_Var_Owner then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Opaque_Expression_Result_A_Opaque_Expression then
            --  OpaqueExpression::result : Parameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Parameters.UML_Parameter_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Result));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Result_Variable_A_Result_Owner then
            --  ExpressionInOcl::resultVariable : Variable

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Result_Variable));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Expression_In_Ocl_Get;

      --------------------
      -- OCL_If_Exp_Get --
      --------------------

      function OCL_If_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.If_Exps.OCL_If_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_If_Exp_Condition_A_If_Owner then
            --  IfExp::condition : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.If_Exps.OCL_If_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Condition));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_If_Exp_Else_Expression_A_Else_Owner then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.If_Exps.OCL_If_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.If_Exps.OCL_If_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.If_Exps.OCL_If_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.If_Exps.OCL_If_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_If_Exp_Then_Expression_A_Then_Owner then
            --  IfExp::thenExpression : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.If_Exps.OCL_If_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Then_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_If_Exp_Get;

      ---------------------------------
      -- OCL_Integer_Literal_Exp_Get --
      ---------------------------------

      function OCL_Integer_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Integer_Literal_Exp_Get;

      ---------------------------------
      -- OCL_Invalid_Literal_Exp_Get --
      ---------------------------------

      function OCL_Invalid_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Invalid_Literal_Exp_Get;

      --------------------------
      -- OCL_Invalid_Type_Get --
      --------------------------

      function OCL_Invalid_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject then
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
      end OCL_Invalid_Type_Get;

      -------------------------
      -- OCL_Iterate_Exp_Get --
      -------------------------

      function OCL_Iterate_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Body_A_Loop_Body_Owner then
            --  LoopExp::body : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Body));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Iterator_A_Loop_Exp then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Iterate_Exp_Result_A_Base_Exp then
            --  IterateExp::result : Variable

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access'
                 (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Result));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source_A_Applied_Element then
            --  CallExp::source : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Iterate_Exp_Get;

      --------------------------
      -- OCL_Iterator_Exp_Get --
      --------------------------

      function OCL_Iterator_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Body_A_Loop_Body_Owner then
            --  LoopExp::body : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Body));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Iterator_A_Loop_Exp then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source_A_Applied_Element then
            --  CallExp::source : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Iterator_Exp_Get;

      ---------------------
      -- OCL_Let_Exp_Get --
      ---------------------

      function OCL_Let_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Let_Exp_In_A_Exp4 then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
            --  TypedElement::type : Type

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Types.UML_Type_Access'
                 (AMF.OCL.Let_Exps.OCL_Let_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Type));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Let_Exp_Variable_A_Exp5 then
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
      end OCL_Let_Exp_Get;

      -------------------------
      -- OCL_Message_Exp_Get --
      -------------------------

      function OCL_Message_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Argument_A_Exp2 then
            --  MessageExp::argument : OclExpression

            return
              AMF.OCL.Ocl_Expressions.Collections.OCL_Ocl_Expression_Collections.Internals.To_Holder
               (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Argument);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Called_Operation_A_Exp6 then
            --  MessageExp::calledOperation : CallOperationAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access'
                 (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Called_Operation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Sent_Signal_A_Exp7 then
            --  MessageExp::sentSignal : SendSignalAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action_Access'
                 (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Sent_Signal));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Target_A_Exp8 then
            --  MessageExp::target : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Message_Exps.OCL_Message_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Target));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Message_Exp_Get;

      --------------------------
      -- OCL_Message_Type_Get --
      --------------------------

      function OCL_Message_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Type_Referred_Operation_A_Type2 then
            --  MessageType::referredOperation : Operation

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Operations.UML_Operation_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Operation));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Type_Referred_Signal_A_Type3 then
            --  MessageType::referredSignal : Signal

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Signals.UML_Signal_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Signal));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Message_Types.OCL_Message_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Message_Types.OCL_Message_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject then
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
      end OCL_Message_Type_Get;

      ------------------------------
      -- OCL_Null_Literal_Exp_Get --
      ------------------------------

      function OCL_Null_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Null_Literal_Exp_Get;

      --------------------------------
      -- OCL_Operation_Call_Exp_Get --
      --------------------------------

      function OCL_Operation_Call_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Operation_Call_Exp_Argument_A_Parent_Call then
            --  OperationCallExp::argument : OclExpression

            return
              AMF.OCL.Ocl_Expressions.Collections.OCL_Ocl_Expression_Collections.Internals.To_Holder
               (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Argument);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Operation_Call_Exp_Referred_Operation_A_Refering_Exp then
            --  OperationCallExp::referredOperation : Operation

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Operations.UML_Operation_Access'
                 (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Operation));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source_A_Applied_Element then
            --  CallExp::source : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Operation_Call_Exp_Get;

      ------------------------------
      -- OCL_Ordered_Set_Type_Get --
      ------------------------------

      function OCL_Ordered_Set_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type_A_Type1 then
            --  CollectionType::elementType : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype then
            --  DataType::ownedAttribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype then
            --  DataType::ownedOperation : Operation

            return
              AMF.UML.Operations.Collections.UML_Operation_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Operation);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject then
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
      end OCL_Ordered_Set_Type_Get;

      -------------------------------
      -- OCL_Property_Call_Exp_Get --
      -------------------------------

      function OCL_Property_Call_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Navigation_Source_A_Exp9 then
            --  NavigationCallExp::navigationSource : Property

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Properties.UML_Property_Access'
                 (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Navigation_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Qualifier_A_Parent_Nav then
            --  NavigationCallExp::qualifier : OclExpression

            return
              AMF.OCL.Ocl_Expressions.Collections.OCL_Ocl_Expression_Collections.Internals.To_Holder
               (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Qualifier);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Property_Call_Exp_Referred_Property_A_Refering_Exp then
            --  PropertyCallExp::referredProperty : Property

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Properties.UML_Property_Access'
                 (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Property));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source_A_Applied_Element then
            --  CallExp::source : OclExpression

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access'
                 (AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Source));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Property_Call_Exp_Get;

      ------------------------------
      -- OCL_Real_Literal_Exp_Get --
      ------------------------------

      function OCL_Real_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Real_Literal_Exp_Get;

      ---------------------------
      -- OCL_Sequence_Type_Get --
      ---------------------------

      function OCL_Sequence_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type_A_Type1 then
            --  CollectionType::elementType : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype then
            --  DataType::ownedAttribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype then
            --  DataType::ownedOperation : Operation

            return
              AMF.UML.Operations.Collections.UML_Operation_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Operation);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject then
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
      end OCL_Sequence_Type_Get;

      ----------------------
      -- OCL_Set_Type_Get --
      ----------------------

      function OCL_Set_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type_A_Type1 then
            --  CollectionType::elementType : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype then
            --  DataType::ownedAttribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype then
            --  DataType::ownedOperation : Operation

            return
              AMF.UML.Operations.Collections.UML_Operation_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Operation);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Set_Types.OCL_Set_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Set_Types.OCL_Set_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject then
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
      end OCL_Set_Type_Get;

      -----------------------
      -- OCL_State_Exp_Get --
      -----------------------

      function OCL_State_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.State_Exps.OCL_State_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.State_Exps.OCL_State_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.State_Exps.OCL_State_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.State_Exps.OCL_State_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_State_Exp_Referred_State_A_Exp9 then
            --  StateExp::referredState : State

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.States.UML_State_Access'
                 (AMF.OCL.State_Exps.OCL_State_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_State));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_State_Exp_Get;

      --------------------------------
      -- OCL_String_Literal_Exp_Get --
      --------------------------------

      function OCL_String_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_String_Literal_Exp_Get;

      -------------------------------------
      -- OCL_Template_Parameter_Type_Get --
      -------------------------------------

      function OCL_Template_Parameter_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject then
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
      end OCL_Template_Parameter_Type_Get;

      -------------------------------
      -- OCL_Tuple_Literal_Exp_Get --
      -------------------------------

      function OCL_Tuple_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Tuple_Literal_Exp_Part_A_Exp3 then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Tuple_Literal_Exp_Get;

      --------------------------------
      -- OCL_Tuple_Literal_Part_Get --
      --------------------------------

      function OCL_Tuple_Literal_Part_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Tuple_Literal_Part_Attribute_A_Part2 then
            --  TupleLiteralPart::attribute : Property

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Properties.UML_Property_Access'
                 (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Tuple_Literal_Part_Get;

      ------------------------
      -- OCL_Tuple_Type_Get --
      ------------------------

      function OCL_Tuple_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype then
            --  DataType::ownedAttribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype then
            --  DataType::ownedOperation : Operation

            return
              AMF.UML.Operations.Collections.UML_Operation_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Operation);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject then
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
      end OCL_Tuple_Type_Get;

      ----------------------
      -- OCL_Type_Exp_Get --
      ----------------------

      function OCL_Type_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Type_Exp_Referred_Type_A_Exp11 then
            --  TypeExp::referredType : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.OCL.Type_Exps.OCL_Type_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Type));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Type_Exp_Get;

      -------------------------------------------
      -- OCL_Unlimited_Natural_Literal_Exp_Get --
      -------------------------------------------

      function OCL_Unlimited_Natural_Literal_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Unlimited_Natural_Literal_Exp_Get;

      -----------------------------------
      -- OCL_Unspecified_Value_Exp_Get --
      -----------------------------------

      function OCL_Unspecified_Value_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Unspecified_Value_Exp_Get;

      ----------------------
      -- OCL_Variable_Get --
      ----------------------

      function OCL_Variable_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Variable_Init_Expression_A_Initialized_Element then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Variables.OCL_Variable_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Variables.OCL_Variable_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Variable_Represented_Parameter_A_Variable then
            --  Variable::representedParameter : Parameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Parameters.UML_Parameter_Access'
                 (AMF.OCL.Variables.OCL_Variable_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Represented_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Variable_Get;

      --------------------------
      -- OCL_Variable_Exp_Get --
      --------------------------

      function OCL_Variable_Exp_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
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

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Variable_Exp_Referred_Variable_A_Refering_Exp then
            --  VariableExp::referredVariable : Variable

            return
              AMF.Internals.Holders.OCL_Holders.To_Holder
               (AMF.OCL.Variables.OCL_Variable_Access'
                 (AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Referred_Variable));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Variable_Exp_Get;

      -----------------------
      -- OCL_Void_Type_Get --
      -----------------------

      function OCL_Void_Type_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            --  Classifier::attribute : Property

            return
              AMF.UML.Properties.Collections.UML_Property_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Attribute);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Client_Dependency_Dependency_Client then
            --  NamedElement::clientDependency : Dependency

            return
              AMF.UML.Dependencies.Collections.UML_Dependency_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Client_Dependency);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            --  Classifier::collaborationUse : CollaborationUse

            return
              AMF.UML.Collaboration_Uses.Collections.UML_Collaboration_Use_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Collaboration_Use);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            --  Namespace::elementImport : ElementImport

            return
              AMF.UML.Element_Imports.Collections.UML_Element_Import_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            --  Classifier::feature : Feature

            return
              AMF.UML.Features.Collections.UML_Feature_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Feature);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_General_A_Classifier then
            --  Classifier::general : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_General);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Generalization_Generalization_Specific then
            --  Classifier::generalization : Generalization

            return
              AMF.UML.Generalizations.Collections.UML_Generalization_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Generalization);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            --  Namespace::importedMember : PackageableElement

            return
              AMF.UML.Packageable_Elements.Collections.UML_Packageable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Imported_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Member_A_Member_Namespace then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.String_Expressions.UML_String_Expression_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Name_Expression));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Namespace_Namespace_Owned_Member then
            --  NamedElement::namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Namespace));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element_Element_Owner then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            --  Namespace::ownedMember : NamedElement

            return
              AMF.UML.Named_Elements.Collections.UML_Named_Element_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Member);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            --  Namespace::ownedRule : Constraint

            return
              AMF.UML.Constraints.Collections.UML_Constraint_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Rule);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Template_Signature));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            --  Classifier::ownedUseCase : UseCase

            return
              AMF.UML.Use_Cases.Collections.UML_Use_Case_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Use_Case);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner_Element_Owned_Element then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owning_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Packages.UML_Package_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Package));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            --  Namespace::packageImport : PackageImport

            return
              AMF.UML.Package_Imports.Collections.UML_Package_Import_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Package_Import);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Powertype_Extent_Generalization_Set_Powertype then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            --  Classifier::redefinedClassifier : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Classifier);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefined_Element_A_Redefinable_Element then
            --  RedefinableElement::redefinedElement : RedefinableElement

            return
              AMF.UML.Redefinable_Elements.Collections.UML_Redefinable_Element_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefined_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Redefinition_Context_A_Redefinable_Element then
            --  RedefinableElement::redefinitionContext : Classifier

            return
              AMF.UML.Classifiers.Collections.UML_Classifier_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Redefinition_Context);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Representation));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            --  Classifier::substitution : Substitution

            return
              AMF.UML.Substitutions.Collections.UML_Substitution_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Substitution);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            --  TemplateableElement::templateBinding : TemplateBinding

            return
              AMF.UML.Template_Bindings.Collections.UML_Template_Binding_Collections.Internals.To_Holder
               (AMF.OCL.Void_Types.OCL_Void_Type_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Binding);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
            --  ParameterableElement::templateParameter : TemplateParameter

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access'
                 (AMF.OCL.Void_Types.OCL_Void_Type_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Template_Parameter));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Use_Case_Use_Case_Subject then
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
      end OCL_Void_Type_Get;

   begin
      case AMF.Internals.Tables.OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_None =>
            raise Program_Error;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Any_Type =>
            return OCL_Any_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Association_Class_Call_Exp =>
            return OCL_Association_Class_Call_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Bag_Type =>
            return OCL_Bag_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Boolean_Literal_Exp =>
            return OCL_Boolean_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Item =>
            return OCL_Collection_Item_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Literal_Exp =>
            return OCL_Collection_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Range =>
            return OCL_Collection_Range_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Type =>
            return OCL_Collection_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Enum_Literal_Exp =>
            return OCL_Enum_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl =>
            return OCL_Expression_In_Ocl_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_If_Exp =>
            return OCL_If_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Integer_Literal_Exp =>
            return OCL_Integer_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Literal_Exp =>
            return OCL_Invalid_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Type =>
            return OCL_Invalid_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterate_Exp =>
            return OCL_Iterate_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterator_Exp =>
            return OCL_Iterator_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Let_Exp =>
            return OCL_Let_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Exp =>
            return OCL_Message_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Type =>
            return OCL_Message_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Null_Literal_Exp =>
            return OCL_Null_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Operation_Call_Exp =>
            return OCL_Operation_Call_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Ordered_Set_Type =>
            return OCL_Ordered_Set_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Property_Call_Exp =>
            return OCL_Property_Call_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Real_Literal_Exp =>
            return OCL_Real_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Sequence_Type =>
            return OCL_Sequence_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Set_Type =>
            return OCL_Set_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_State_Exp =>
            return OCL_State_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_String_Literal_Exp =>
            return OCL_String_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Template_Parameter_Type =>
            return OCL_Template_Parameter_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Exp =>
            return OCL_Tuple_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Part =>
            return OCL_Tuple_Literal_Part_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Type =>
            return OCL_Tuple_Type_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Type_Exp =>
            return OCL_Type_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Unlimited_Natural_Literal_Exp =>
            return OCL_Unlimited_Natural_Literal_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Unspecified_Value_Exp =>
            return OCL_Unspecified_Value_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Variable =>
            return OCL_Variable_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Variable_Exp =>
            return OCL_Variable_Exp_Get;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Void_Type =>
            return OCL_Void_Type_Get;
      end case;
   end Get;

   --------------------
   -- Get_Meta_Class --
   --------------------

   function Get_Meta_Class
    (Self : AMF.Internals.AMF_Element) return CMOF_Element is
   begin
      case OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_None =>
            return 0;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Any_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Any_Type;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Association_Class_Call_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Association_Class_Call_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Bag_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Bag_Type;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Boolean_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Boolean_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Item =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Item;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Range =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Range;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Collection_Type;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Enum_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Enum_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Expression_In_Ocl;

         when AMF.Internals.Tables.OCL_Types.E_OCL_If_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_If_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Integer_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Integer_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Invalid_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Invalid_Type;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterate_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Iterate_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterator_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Iterator_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Let_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Let_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Message_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Message_Type;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Null_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Null_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Operation_Call_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Operation_Call_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Ordered_Set_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Ordered_Set_Type;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Property_Call_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Property_Call_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Real_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Real_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Sequence_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Sequence_Type;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Set_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Set_Type;

         when AMF.Internals.Tables.OCL_Types.E_OCL_State_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_State_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_String_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_String_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Template_Parameter_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Template_Parameter_Type;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Tuple_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Part =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Tuple_Literal_Part;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Tuple_Type;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Type_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Type_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Unlimited_Natural_Literal_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Unlimited_Natural_Literal_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Unspecified_Value_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Unspecified_Value_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Variable =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Variable;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Variable_Exp =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Variable_Exp;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Void_Type =>
            return AMF.Internals.Tables.OCL_Metamodel.MC_OCL_Void_Type;
      end case;
   end Get_Meta_Class;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self     : AMF.Internals.AMF_Element;
     Property : CMOF_Element;
     Value    : League.Holders.Holder)
   is

      procedure OCL_Any_Type_Set;
      --  Sets attribute's value of instance of AnyType class.

      procedure OCL_Association_Class_Call_Exp_Set;
      --  Sets attribute's value of instance of AssociationClassCallExp class.

      procedure OCL_Bag_Type_Set;
      --  Sets attribute's value of instance of BagType class.

      procedure OCL_Boolean_Literal_Exp_Set;
      --  Sets attribute's value of instance of BooleanLiteralExp class.

      procedure OCL_Collection_Item_Set;
      --  Sets attribute's value of instance of CollectionItem class.

      procedure OCL_Collection_Literal_Exp_Set;
      --  Sets attribute's value of instance of CollectionLiteralExp class.

      procedure OCL_Collection_Range_Set;
      --  Sets attribute's value of instance of CollectionRange class.

      procedure OCL_Collection_Type_Set;
      --  Sets attribute's value of instance of CollectionType class.

      procedure OCL_Enum_Literal_Exp_Set;
      --  Sets attribute's value of instance of EnumLiteralExp class.

      procedure OCL_Expression_In_Ocl_Set;
      --  Sets attribute's value of instance of ExpressionInOcl class.

      procedure OCL_If_Exp_Set;
      --  Sets attribute's value of instance of IfExp class.

      procedure OCL_Integer_Literal_Exp_Set;
      --  Sets attribute's value of instance of IntegerLiteralExp class.

      procedure OCL_Invalid_Literal_Exp_Set;
      --  Sets attribute's value of instance of InvalidLiteralExp class.

      procedure OCL_Invalid_Type_Set;
      --  Sets attribute's value of instance of InvalidType class.

      procedure OCL_Iterate_Exp_Set;
      --  Sets attribute's value of instance of IterateExp class.

      procedure OCL_Iterator_Exp_Set;
      --  Sets attribute's value of instance of IteratorExp class.

      procedure OCL_Let_Exp_Set;
      --  Sets attribute's value of instance of LetExp class.

      procedure OCL_Message_Exp_Set;
      --  Sets attribute's value of instance of MessageExp class.

      procedure OCL_Message_Type_Set;
      --  Sets attribute's value of instance of MessageType class.

      procedure OCL_Null_Literal_Exp_Set;
      --  Sets attribute's value of instance of NullLiteralExp class.

      procedure OCL_Operation_Call_Exp_Set;
      --  Sets attribute's value of instance of OperationCallExp class.

      procedure OCL_Ordered_Set_Type_Set;
      --  Sets attribute's value of instance of OrderedSetType class.

      procedure OCL_Property_Call_Exp_Set;
      --  Sets attribute's value of instance of PropertyCallExp class.

      procedure OCL_Real_Literal_Exp_Set;
      --  Sets attribute's value of instance of RealLiteralExp class.

      procedure OCL_Sequence_Type_Set;
      --  Sets attribute's value of instance of SequenceType class.

      procedure OCL_Set_Type_Set;
      --  Sets attribute's value of instance of SetType class.

      procedure OCL_State_Exp_Set;
      --  Sets attribute's value of instance of StateExp class.

      procedure OCL_String_Literal_Exp_Set;
      --  Sets attribute's value of instance of StringLiteralExp class.

      procedure OCL_Template_Parameter_Type_Set;
      --  Sets attribute's value of instance of TemplateParameterType class.

      procedure OCL_Tuple_Literal_Exp_Set;
      --  Sets attribute's value of instance of TupleLiteralExp class.

      procedure OCL_Tuple_Literal_Part_Set;
      --  Sets attribute's value of instance of TupleLiteralPart class.

      procedure OCL_Tuple_Type_Set;
      --  Sets attribute's value of instance of TupleType class.

      procedure OCL_Type_Exp_Set;
      --  Sets attribute's value of instance of TypeExp class.

      procedure OCL_Unlimited_Natural_Literal_Exp_Set;
      --  Sets attribute's value of instance of UnlimitedNaturalLiteralExp class.

      procedure OCL_Unspecified_Value_Exp_Set;
      --  Sets attribute's value of instance of UnspecifiedValueExp class.

      procedure OCL_Variable_Set;
      --  Sets attribute's value of instance of Variable class.

      procedure OCL_Variable_Exp_Set;
      --  Sets attribute's value of instance of VariableExp class.

      procedure OCL_Void_Type_Set;
      --  Sets attribute's value of instance of VoidType class.

      ----------------------
      -- OCL_Any_Type_Set --
      ----------------------

      procedure OCL_Any_Type_Set is
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Any_Types.OCL_Any_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
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
               (AMF.UML.Holders.Visibility_Kinds.Element (Value));

         else
            raise Program_Error;
         end if;
      end OCL_Any_Type_Set;

      ----------------------------------------
      -- OCL_Association_Class_Call_Exp_Set --
      ----------------------------------------

      procedure OCL_Association_Class_Call_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Navigation_Source_A_Exp9 then
            --  NavigationCallExp::navigationSource : Property

            AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Navigation_Source
               (AMF.UML.Properties.UML_Property_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Association_Class_Call_Exp_Referred_Association_Class_A_Referring_Exp then
            --  AssociationClassCallExp::referredAssociationClass : AssociationClass

            AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Association_Class
               (AMF.UML.Association_Classes.UML_Association_Class_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source_A_Applied_Element then
            --  CallExp::source : OclExpression

            AMF.OCL.Association_Class_Call_Exps.OCL_Association_Class_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Source
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Association_Class_Call_Exp_Set;

      ----------------------
      -- OCL_Bag_Type_Set --
      ----------------------

      procedure OCL_Bag_Type_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type_A_Type1 then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Bag_Types.OCL_Bag_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
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
               (AMF.UML.Holders.Visibility_Kinds.Element (Value));

         else
            raise Program_Error;
         end if;
      end OCL_Bag_Type_Set;

      ---------------------------------
      -- OCL_Boolean_Literal_Exp_Set --
      ---------------------------------

      procedure OCL_Boolean_Literal_Exp_Set is
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Boolean_Literal_Exps.OCL_Boolean_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Boolean_Literal_Exp_Set;

      -----------------------------
      -- OCL_Collection_Item_Set --
      -----------------------------

      procedure OCL_Collection_Item_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Item_Item_A_Item1 then
            --  CollectionItem::item : OclExpression

            AMF.OCL.Collection_Items.OCL_Collection_Item_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Item
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Collection_Items.OCL_Collection_Item_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Collection_Items.OCL_Collection_Item_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Collection_Item_Set;

      ------------------------------------
      -- OCL_Collection_Literal_Exp_Set --
      ------------------------------------

      procedure OCL_Collection_Literal_Exp_Set is
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Collection_Literal_Exps.OCL_Collection_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Collection_Literal_Exp_Set;

      ------------------------------
      -- OCL_Collection_Range_Set --
      ------------------------------

      procedure OCL_Collection_Range_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Range_First_A_First_Owner then
            --  CollectionRange::first : OclExpression

            AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_First
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Range_Last_A_Last_Owner then
            --  CollectionRange::last : OclExpression

            AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Last
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Collection_Ranges.OCL_Collection_Range_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Collection_Range_Set;

      -----------------------------
      -- OCL_Collection_Type_Set --
      -----------------------------

      procedure OCL_Collection_Type_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type_A_Type1 then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Collection_Types.OCL_Collection_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
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
               (AMF.UML.Holders.Visibility_Kinds.Element (Value));

         else
            raise Program_Error;
         end if;
      end OCL_Collection_Type_Set;

      ------------------------------
      -- OCL_Enum_Literal_Exp_Set --
      ------------------------------

      procedure OCL_Enum_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Enum_Literal_Exp_Referred_Enum_Literal_A_Literal_Exp then
            --  EnumLiteralExp::referredEnumLiteral : EnumerationLiteral

            AMF.OCL.Enum_Literal_Exps.OCL_Enum_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Enum_Literal
               (AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Enum_Literal_Exp_Set;

      -------------------------------
      -- OCL_Expression_In_Ocl_Set --
      -------------------------------

      procedure OCL_Expression_In_Ocl_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Opaque_Expression_Behavior_A_Opaque_Expression then
            --  OpaqueExpression::behavior : Behavior

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Behavior
               (AMF.UML.Behaviors.UML_Behavior_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Body_Expression_A_Top_Expression then
            --  ExpressionInOcl::bodyExpression : OclExpression

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Body_Expression
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Context_Variable_A_Self_Owner then
            --  ExpressionInOcl::contextVariable : Variable

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Context_Variable
               (AMF.OCL.Variables.OCL_Variable_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Generated_Type_A_Owning_Classifier then
            --  ExpressionInOcl::generatedType : Classifier

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Generated_Type
               (AMF.UML.Classifiers.UML_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Expression_In_Ocl_Result_Variable_A_Result_Owner then
            --  ExpressionInOcl::resultVariable : Variable

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Result_Variable
               (AMF.OCL.Variables.OCL_Variable_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
            --  ParameterableElement::templateParameter : TemplateParameter

            AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
               (AMF.UML.Holders.Visibility_Kinds.Element (Value));

         else
            raise Program_Error;
         end if;
      end OCL_Expression_In_Ocl_Set;

      --------------------
      -- OCL_If_Exp_Set --
      --------------------

      procedure OCL_If_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_If_Exp_Condition_A_If_Owner then
            --  IfExp::condition : OclExpression

            AMF.OCL.If_Exps.OCL_If_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Condition
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_If_Exp_Else_Expression_A_Else_Owner then
            --  IfExp::elseExpression : OclExpression

            AMF.OCL.If_Exps.OCL_If_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Else_Expression
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.If_Exps.OCL_If_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.If_Exps.OCL_If_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_If_Exp_Then_Expression_A_Then_Owner then
            --  IfExp::thenExpression : OclExpression

            AMF.OCL.If_Exps.OCL_If_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Then_Expression
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_If_Exp_Set;

      ---------------------------------
      -- OCL_Integer_Literal_Exp_Set --
      ---------------------------------

      procedure OCL_Integer_Literal_Exp_Set is
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Integer_Literal_Exps.OCL_Integer_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Integer_Literal_Exp_Set;

      ---------------------------------
      -- OCL_Invalid_Literal_Exp_Set --
      ---------------------------------

      procedure OCL_Invalid_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Invalid_Literal_Exps.OCL_Invalid_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Invalid_Literal_Exp_Set;

      --------------------------
      -- OCL_Invalid_Type_Set --
      --------------------------

      procedure OCL_Invalid_Type_Set is
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Invalid_Types.OCL_Invalid_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
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
               (AMF.UML.Holders.Visibility_Kinds.Element (Value));

         else
            raise Program_Error;
         end if;
      end OCL_Invalid_Type_Set;

      -------------------------
      -- OCL_Iterate_Exp_Set --
      -------------------------

      procedure OCL_Iterate_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Body_A_Loop_Body_Owner then
            --  LoopExp::body : OclExpression

            AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Body
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Iterate_Exp_Result_A_Base_Exp then
            --  IterateExp::result : Variable

            AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Result
               (AMF.OCL.Variables.OCL_Variable_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source_A_Applied_Element then
            --  CallExp::source : OclExpression

            AMF.OCL.Iterate_Exps.OCL_Iterate_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Source
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Iterate_Exp_Set;

      --------------------------
      -- OCL_Iterator_Exp_Set --
      --------------------------

      procedure OCL_Iterator_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Loop_Exp_Body_A_Loop_Body_Owner then
            --  LoopExp::body : OclExpression

            AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Body
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source_A_Applied_Element then
            --  CallExp::source : OclExpression

            AMF.OCL.Iterator_Exps.OCL_Iterator_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Source
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Iterator_Exp_Set;

      ---------------------
      -- OCL_Let_Exp_Set --
      ---------------------

      procedure OCL_Let_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Let_Exp_In_A_Exp4 then
            --  LetExp::in : OclExpression

            AMF.OCL.Let_Exps.OCL_Let_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_In
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Let_Exps.OCL_Let_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Let_Exps.OCL_Let_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
            --  TypedElement::type : Type

            AMF.OCL.Let_Exps.OCL_Let_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Type
               (AMF.UML.Types.UML_Type_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Let_Exp_Variable_A_Exp5 then
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
      end OCL_Let_Exp_Set;

      -------------------------
      -- OCL_Message_Exp_Set --
      -------------------------

      procedure OCL_Message_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Called_Operation_A_Exp6 then
            --  MessageExp::calledOperation : CallOperationAction

            AMF.OCL.Message_Exps.OCL_Message_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Called_Operation
               (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Message_Exps.OCL_Message_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Message_Exps.OCL_Message_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Sent_Signal_A_Exp7 then
            --  MessageExp::sentSignal : SendSignalAction

            AMF.OCL.Message_Exps.OCL_Message_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Sent_Signal
               (AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Exp_Target_A_Exp8 then
            --  MessageExp::target : OclExpression

            AMF.OCL.Message_Exps.OCL_Message_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Target
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Message_Exp_Set;

      --------------------------
      -- OCL_Message_Type_Set --
      --------------------------

      procedure OCL_Message_Type_Set is
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Type_Referred_Operation_A_Type2 then
            --  MessageType::referredOperation : Operation

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Operation
               (AMF.UML.Operations.UML_Operation_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Message_Type_Referred_Signal_A_Type3 then
            --  MessageType::referredSignal : Signal

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Signal
               (AMF.UML.Signals.UML_Signal_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Message_Types.OCL_Message_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
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
               (AMF.UML.Holders.Visibility_Kinds.Element (Value));

         else
            raise Program_Error;
         end if;
      end OCL_Message_Type_Set;

      ------------------------------
      -- OCL_Null_Literal_Exp_Set --
      ------------------------------

      procedure OCL_Null_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Null_Literal_Exps.OCL_Null_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Null_Literal_Exp_Set;

      --------------------------------
      -- OCL_Operation_Call_Exp_Set --
      --------------------------------

      procedure OCL_Operation_Call_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Operation_Call_Exp_Referred_Operation_A_Refering_Exp then
            --  OperationCallExp::referredOperation : Operation

            AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Operation
               (AMF.UML.Operations.UML_Operation_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source_A_Applied_Element then
            --  CallExp::source : OclExpression

            AMF.OCL.Operation_Call_Exps.OCL_Operation_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Source
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Operation_Call_Exp_Set;

      ------------------------------
      -- OCL_Ordered_Set_Type_Set --
      ------------------------------

      procedure OCL_Ordered_Set_Type_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type_A_Type1 then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Ordered_Set_Types.OCL_Ordered_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
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
               (AMF.UML.Holders.Visibility_Kinds.Element (Value));

         else
            raise Program_Error;
         end if;
      end OCL_Ordered_Set_Type_Set;

      -------------------------------
      -- OCL_Property_Call_Exp_Set --
      -------------------------------

      procedure OCL_Property_Call_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Navigation_Call_Exp_Navigation_Source_A_Exp9 then
            --  NavigationCallExp::navigationSource : Property

            AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Navigation_Source
               (AMF.UML.Properties.UML_Property_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Property_Call_Exp_Referred_Property_A_Refering_Exp then
            --  PropertyCallExp::referredProperty : Property

            AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Property
               (AMF.UML.Properties.UML_Property_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Call_Exp_Source_A_Applied_Element then
            --  CallExp::source : OclExpression

            AMF.OCL.Property_Call_Exps.OCL_Property_Call_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Source
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Property_Call_Exp_Set;

      ------------------------------
      -- OCL_Real_Literal_Exp_Set --
      ------------------------------

      procedure OCL_Real_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Real_Literal_Exp_Real_Symbol then
            --  RealLiteralExp::realSymbol : Real

            AMF.OCL.Real_Literal_Exps.OCL_Real_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Real_Symbol
               (AMF.Holders.Reals.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Real_Literal_Exp_Set;

      ---------------------------
      -- OCL_Sequence_Type_Set --
      ---------------------------

      procedure OCL_Sequence_Type_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type_A_Type1 then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Sequence_Types.OCL_Sequence_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
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
               (AMF.UML.Holders.Visibility_Kinds.Element (Value));

         else
            raise Program_Error;
         end if;
      end OCL_Sequence_Type_Set;

      ----------------------
      -- OCL_Set_Type_Set --
      ----------------------

      procedure OCL_Set_Type_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Collection_Type_Element_Type_A_Type1 then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Set_Types.OCL_Set_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
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
               (AMF.UML.Holders.Visibility_Kinds.Element (Value));

         else
            raise Program_Error;
         end if;
      end OCL_Set_Type_Set;

      -----------------------
      -- OCL_State_Exp_Set --
      -----------------------

      procedure OCL_State_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.State_Exps.OCL_State_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.State_Exps.OCL_State_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_State_Exp_Referred_State_A_Exp9 then
            --  StateExp::referredState : State

            AMF.OCL.State_Exps.OCL_State_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_State
               (AMF.UML.States.UML_State_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_State_Exp_Set;

      --------------------------------
      -- OCL_String_Literal_Exp_Set --
      --------------------------------

      procedure OCL_String_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_String_Literal_Exp_String_Symbol then
            --  StringLiteralExp::stringSymbol : String

            AMF.OCL.String_Literal_Exps.OCL_String_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_String_Symbol
               (League.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_String_Literal_Exp_Set;

      -------------------------------------
      -- OCL_Template_Parameter_Type_Set --
      -------------------------------------

      procedure OCL_Template_Parameter_Type_Set is
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Template_Parameter_Type_Specification then
            --  TemplateParameterType::specification : String

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Specification
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Template_Parameter_Types.OCL_Template_Parameter_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
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
               (AMF.UML.Holders.Visibility_Kinds.Element (Value));

         else
            raise Program_Error;
         end if;
      end OCL_Template_Parameter_Type_Set;

      -------------------------------
      -- OCL_Tuple_Literal_Exp_Set --
      -------------------------------

      procedure OCL_Tuple_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Tuple_Literal_Exps.OCL_Tuple_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Tuple_Literal_Exp_Set;

      --------------------------------
      -- OCL_Tuple_Literal_Part_Set --
      --------------------------------

      procedure OCL_Tuple_Literal_Part_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Tuple_Literal_Part_Attribute_A_Part2 then
            --  TupleLiteralPart::attribute : Property

            AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Attribute
               (AMF.UML.Properties.UML_Property_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Tuple_Literal_Parts.OCL_Tuple_Literal_Part_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Tuple_Literal_Part_Set;

      ------------------------
      -- OCL_Tuple_Type_Set --
      ------------------------

      procedure OCL_Tuple_Type_Set is
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Tuple_Types.OCL_Tuple_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
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
               (AMF.UML.Holders.Visibility_Kinds.Element (Value));

         else
            raise Program_Error;
         end if;
      end OCL_Tuple_Type_Set;

      ----------------------
      -- OCL_Type_Exp_Set --
      ----------------------

      procedure OCL_Type_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Type_Exps.OCL_Type_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Type_Exps.OCL_Type_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Type_Exp_Referred_Type_A_Exp11 then
            --  TypeExp::referredType : Classifier

            AMF.OCL.Type_Exps.OCL_Type_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Type
               (AMF.UML.Classifiers.UML_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Type_Exp_Set;

      -------------------------------------------
      -- OCL_Unlimited_Natural_Literal_Exp_Set --
      -------------------------------------------

      procedure OCL_Unlimited_Natural_Literal_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Unlimited_Natural_Literal_Exps.OCL_Unlimited_Natural_Literal_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Unlimited_Natural_Literal_Exp_Set;

      -----------------------------------
      -- OCL_Unspecified_Value_Exp_Set --
      -----------------------------------

      procedure OCL_Unspecified_Value_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Unspecified_Value_Exps.OCL_Unspecified_Value_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Unspecified_Value_Exp_Set;

      ----------------------
      -- OCL_Variable_Set --
      ----------------------

      procedure OCL_Variable_Set is
      begin
         if Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Variable_Init_Expression_A_Initialized_Element then
            --  Variable::initExpression : OclExpression

            AMF.OCL.Variables.OCL_Variable_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Init_Expression
               (AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Variables.OCL_Variable_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Variables.OCL_Variable_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Variable_Represented_Parameter_A_Variable then
            --  Variable::representedParameter : Parameter

            AMF.OCL.Variables.OCL_Variable_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Represented_Parameter
               (AMF.UML.Parameters.UML_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Variable_Set;

      --------------------------
      -- OCL_Variable_Exp_Set --
      --------------------------

      procedure OCL_Variable_Exp_Set is
      begin
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name then
            --  NamedElement::name : String

            AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.OCL_Metamodel.MP_OCL_Variable_Exp_Referred_Variable_A_Refering_Exp then
            --  VariableExp::referredVariable : Variable

            AMF.OCL.Variable_Exps.OCL_Variable_Exp_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Referred_Variable
               (AMF.OCL.Variables.OCL_Variable_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Typed_Element_Type_A_Typed_Element then
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
      end OCL_Variable_Exp_Set;

      -----------------------
      -- OCL_Void_Type_Set --
      -----------------------

      procedure OCL_Void_Type_Set is
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            --  NamedElement::nameExpression : StringExpression

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name_Expression
               (AMF.UML.String_Expressions.UML_String_Expression_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            --  Classifier::ownedTemplateSignature : RedefinableTemplateSignature

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            --  TemplateableElement::ownedTemplateSignature : TemplateSignature

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owned_Template_Signature
               (AMF.UML.Template_Signatures.UML_Template_Signature_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            --  ParameterableElement::owningTemplateParameter : TemplateParameter

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owning_Template_Parameter
               (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Type_Package_Package_Owned_Type then
            --  Type::package : Package

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Package
               (AMF.UML.Packages.UML_Package_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Representation_A_Classifier then
            --  Classifier::representation : CollaborationUse

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Representation
               (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            --  Classifier::templateParameter : ClassifierTemplateParameter

            AMF.OCL.Void_Types.OCL_Void_Type_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Template_Parameter
               (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Template_Parameter_Template_Parameter_Parametered_Element then
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
               (AMF.UML.Holders.Visibility_Kinds.Element (Value));

         else
            raise Program_Error;
         end if;
      end OCL_Void_Type_Set;
   begin
      case OCL_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.OCL_Types.E_None =>
            raise Program_Error;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Any_Type =>
            OCL_Any_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Association_Class_Call_Exp =>
            OCL_Association_Class_Call_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Bag_Type =>
            OCL_Bag_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Boolean_Literal_Exp =>
            OCL_Boolean_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Item =>
            OCL_Collection_Item_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Literal_Exp =>
            OCL_Collection_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Range =>
            OCL_Collection_Range_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Type =>
            OCL_Collection_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Enum_Literal_Exp =>
            OCL_Enum_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl =>
            OCL_Expression_In_Ocl_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_If_Exp =>
            OCL_If_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Integer_Literal_Exp =>
            OCL_Integer_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Literal_Exp =>
            OCL_Invalid_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Type =>
            OCL_Invalid_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterate_Exp =>
            OCL_Iterate_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Iterator_Exp =>
            OCL_Iterator_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Let_Exp =>
            OCL_Let_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Exp =>
            OCL_Message_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Type =>
            OCL_Message_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Null_Literal_Exp =>
            OCL_Null_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Operation_Call_Exp =>
            OCL_Operation_Call_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Ordered_Set_Type =>
            OCL_Ordered_Set_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Property_Call_Exp =>
            OCL_Property_Call_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Real_Literal_Exp =>
            OCL_Real_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Sequence_Type =>
            OCL_Sequence_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Set_Type =>
            OCL_Set_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_State_Exp =>
            OCL_State_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_String_Literal_Exp =>
            OCL_String_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Template_Parameter_Type =>
            OCL_Template_Parameter_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Exp =>
            OCL_Tuple_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Part =>
            OCL_Tuple_Literal_Part_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Type =>
            OCL_Tuple_Type_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Type_Exp =>
            OCL_Type_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Unlimited_Natural_Literal_Exp =>
            OCL_Unlimited_Natural_Literal_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Unspecified_Value_Exp =>
            OCL_Unspecified_Value_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Variable =>
            OCL_Variable_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Variable_Exp =>
            OCL_Variable_Exp_Set;

         when AMF.Internals.Tables.OCL_Types.E_OCL_Void_Type =>
            OCL_Void_Type_Set;
      end case;
   end Set;

end AMF.Internals.Tables.OCL_Reflection;
