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
with AMF.Internals.Tables.CMOF_Element_Table;
with AMF.Internals.Tables.CMOF_Metamodel;
with AMF.Internals.Tables.CMOF_Types;

separate (AMF.Internals.Factories.CMOF_Module_Factory)
procedure Construct_Union
 (Element  : AMF.Internals.AMF_Element;
  Property : AMF.Internals.CMOF_Element;
  Link     : AMF.Internals.AMF_Link)
is
   Element_Kind : constant AMF.Internals.Tables.CMOF_Types.Element_Kinds
     := AMF.Internals.Tables.CMOF_Element_Table.Table (Element).Kind;
   Opposite     : constant AMF.Internals.AMF_Element
     := AMF.Internals.Links.Opposite_Element (Link, Element);

begin
   case Element_Kind is
      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Tag =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Tag_Owner_A_Owned_Tag then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Enumeration =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Data_Type_Owned_Attribute_Property_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal_Enumeration_Literal_Enumeration then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Data_Type_Owned_Operation_Operation_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Class =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute_Property_Class then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation_Operation_Class then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class_A_Class then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_General_Classifier,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Enumeration_Literal =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration_Enumeration_Owned_Literal then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Primitive_Type =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Data_Type_Owned_Attribute_Property_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Data_Type_Owned_Operation_Operation_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Constraint =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification_A_Owning_Constraint then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Element_Import =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Import_Imported_Element_A_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Directed_Relationship_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Import_Importing_Namespace_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Directed_Relationship_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Source_A_Directed_Relationship then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Relationship_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Target_A_Directed_Relationship then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Relationship_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Property =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Datatype_Data_Type_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association_Association_Owned_End then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property_A_Property then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Package_Import =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Import_Imported_Package_A_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Directed_Relationship_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Import_Importing_Namespace_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Directed_Relationship_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Source_A_Directed_Relationship then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Relationship_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Target_A_Directed_Relationship then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Relationship_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Opaque_Expression =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Association =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_End_Type_A_Association then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Relationship_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End_Property_Association then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End_Property_Owning_Association then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Package_Merge =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Merge_Merged_Package_A_Package_Merge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Directed_Relationship_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Merge_Receiving_Package_Package_Package_Merge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Directed_Relationship_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Source_A_Directed_Relationship then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Relationship_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Directed_Relationship_Target_A_Directed_Relationship then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Relationship_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Operation =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class_Class_Owned_Operation then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Datatype_Data_Type_Owned_Operation then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter_Parameter_Operation then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Behavioral_Feature_Owned_Parameter_Owner_Formal_Param,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Behavioral_Feature_Owned_Parameter_A_Owner_Formal_Param then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Raised_Exception_A_Operation then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Behavioral_Feature_Raised_Exception_Behavioral_Feature,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Redefined_Operation_A_Operation then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Expression =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Expression_Operand_A_Expression then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Package =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Nesting_Package_Package_Nested_Package then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Package_Merge_Package_Merge_Receiving_Package then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element_A_Owning_Package then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Comment =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Data_Type =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Element_Import_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature_Feature_Featuring_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Imported_Member_A_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Inherited_Member_A_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Data_Type_Owned_Attribute_Property_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member_Named_Element_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Data_Type_Owned_Operation_Operation_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Classifier_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package_Package_Owned_Type then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.CMOF_Types.E_CMOF_Parameter =>
         if Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation_Operation_Owned_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Namespace_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment_A_Owning_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when others =>
         null;
   end case;
end Construct_Union;
