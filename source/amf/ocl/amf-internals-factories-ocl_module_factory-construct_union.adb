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
with AMF.Internals.Links;
with AMF.Internals.Tables.OCL_Element_Table;
with AMF.Internals.Tables.OCL_Types;
with AMF.Internals.Tables.UML_Metamodel;

separate (AMF.Internals.Factories.OCL_Module_Factory)
procedure Construct_Union
 (Element  : AMF.Internals.AMF_Element;
  Property : AMF.Internals.CMOF_Element;
  Link     : AMF.Internals.AMF_Link)
is
   Element_Kind : constant AMF.Internals.Tables.OCL_Types.Element_Kinds
     := AMF.Internals.Tables.OCL_Element_Table.Table (Element).Kind;
   Opposite     : constant AMF.Internals.AMF_Element
     := AMF.Internals.Links.Opposite_Element (Link, Element);

begin
   case Element_Kind is
      when AMF.Internals.Tables.OCL_Types.E_OCL_State_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Property_Call_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Type =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Bag_Type =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Literal_Part =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Variable_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Boolean_Literal_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Void_Type =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Tuple_Type =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Set_Type =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Null_Literal_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Type_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Sequence_Type =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Expression_In_Ocl =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Ordered_Set_Type =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute_Property_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation_Operation_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Type =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Template_Parameter_Type =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Any_Type =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Type =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Template_Signature_Redefinable_Template_Signature_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature_Template_Signature_Template then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter_Template_Parameter_Owned_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution_Substitution_Substituting_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding_Template_Binding_Bound_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Classifier_Template_Parameter_Parametered_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Iterator_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Unlimited_Natural_Literal_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_String_Literal_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Integer_Literal_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Enum_Literal_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Invalid_Literal_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Operation_Call_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_If_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Association_Class_Call_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Real_Literal_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Iterate_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Message_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Let_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Literal_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Unspecified_Value_Exp =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Variable =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Item =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.OCL_Types.E_OCL_Collection_Range =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression_A_Named_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when others =>
         null;
   end case;
end Construct_Union;
