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
with AMF.Internals.Links;
with AMF.Internals.Tables.UML_Element_Table;
with AMF.Internals.Tables.UML_Metamodel;
with AMF.Internals.Tables.UML_Types;

separate (AMF.Internals.Factories.UML_Module_Factory)
procedure Construct_Union
 (Element  : AMF.Internals.AMF_Element;
  Property : AMF.Internals.CMOF_Element;
  Link     : AMF.Internals.AMF_Link)
is
   Element_Kind : constant AMF.Internals.Tables.UML_Types.Element_Kinds
     := AMF.Internals.Tables.UML_Element_Table.Table (Element).Kind;
   Opposite     : constant AMF.Internals.AMF_Element
     := AMF.Internals.Links.Opposite_Element (Link, Element);

begin
   case Element_Kind is
      when AMF.Internals.Tables.UML_Types.E_UML_Model =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_Package_Merge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_Packaged_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_Profile_Application then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Conditional_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Conditional_Node_Clause then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Edge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Contained_Edge_In_Group,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_In_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Structured_Node_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Structured_Node_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Subgroup then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Super_Group then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Variable then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Accept_Call_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Accept_Event_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Accept_Call_Action_Return_Information then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Accept_Event_Action_Trigger then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Template_Binding =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Binding_Bound_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Binding_Parameter_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Binding_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Protocol_Conformance =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Protocol_Conformance_General_Machine then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Protocol_Conformance_Specific_Machine then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Broadcast_Signal_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Invocation_Action_Argument then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Operand =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Operand_Fragment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Operand_Guard then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Enumeration =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Enumeration_Owned_Literal then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Protocol_State_Machine =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Protocol_State_Machine_Conformance then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Machine_Connection_Point then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Owned_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Owned_Parameter_Set then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Machine_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Accept_Event_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Accept_Event_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Accept_Event_Action_Trigger then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Template_Parameter =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Parameter_Owned_Default then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Parameter_Owned_Parametered_Element then
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
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Enumeration_Literal =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Deployment_Target_Deployment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Enumeration_Literal_Enumeration then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Instance_Specification_Slot then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Instance_Specification_Specification then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Use =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Use_Actual_Gate then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Use_Argument then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Use_Return_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Remove_Structural_Feature_Value_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structural_Feature_Action_Object then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Remove_Structural_Feature_Value_Action_Remove_At then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Write_Structural_Feature_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Write_Structural_Feature_Action_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Operation_Template_Parameter =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Parameter_Owned_Default then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Parameter_Owned_Parametered_Element then
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
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Template_Parameter_Substitution =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Parameter_Substitution_Owned_Actual then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Parameter_Substitution_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Exception_Handler =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Exception_Handler_Protected_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Protocol_Transition =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Transition_Container then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Transition_Effect then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Transition_Redefined_Transition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Transition_Trigger then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Output_Pin =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Lower_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Node_Upper_Bound then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Upper_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Call_Behavior_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Invocation_Action_Argument then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Call_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Remove_Variable_Value_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Remove_Variable_Value_Action_Remove_At then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Write_Variable_Action_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Package =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_Package_Merge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_Packaged_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_Profile_Application then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Connectable_Element_Template_Parameter =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Parameter_Owned_Default then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Parameter_Owned_Parametered_Element then
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
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Template_Signature =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Signature_Owned_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Signature_Template then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Connection_Point_Reference =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Vertex_Container then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Connection_Point_Reference_State then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Reply_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Reply_Action_Reply_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Reply_Action_Return_Information then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Call_Event =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Call_Operation_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Invocation_Action_Argument then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Call_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Call_Operation_Action_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Interface =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interface_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interface_Owned_Operation then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interface_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interface_Protocol then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Pseudostate =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Vertex_Container then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Pseudostate_State then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Pseudostate_State_Machine then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Action_Execution_Specification =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Connector =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Connector_End then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Connector_Redefined_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Execution_Environment =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Deployment_Target_Deployment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Node_Nested_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Send_Object_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Invocation_Action_Argument then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Send_Object_Action_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Execution_Occurrence_Specification =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Action_Input_Pin =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input_Pin_From_Action then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Lower_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Node_Upper_Bound then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Upper_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Send_Signal_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Invocation_Action_Argument then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Send_Signal_Action_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Central_Buffer_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Node_Upper_Bound then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Test_Identity_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Test_Identity_Action_First then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Test_Identity_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Test_Identity_Action_Second then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Interface_Realization =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Client then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Abstraction_Mapping then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Supplier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Change_Event =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Change_Event_Change_Expression then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Node_Upper_Bound then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Activity =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Edge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Owned_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Owned_Parameter_Set then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Variable then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Class =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Interruptible_Activity_Region =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_In_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interruptible_Activity_Region_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Subgroup then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Super_Group then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Sequence_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Edge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Contained_Edge_In_Group,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_In_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Structured_Node_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Structured_Node_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Subgroup then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Super_Group then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Variable then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Signal =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Signal_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Region =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Edge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Contained_Edge_In_Group,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_In_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Structured_Node_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Structured_Node_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Subgroup then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Super_Group then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Variable then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Signal_Event =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Interval =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Time_Constraint =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Constraint_Specification then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Connector_End =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Lower_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Upper_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Qualifier_Value =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Slot =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Slot_Owning_Instance then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Slot_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Interval_Constraint =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Constraint_Specification then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Time_Event =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Time_Event_When then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Expression =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Expression_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Start_Classifier_Behavior_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Start_Classifier_Behavior_Action_Object then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Extend =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Extend_Condition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Extend_Extended_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Extend_Extension then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Raise_Exception_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Raise_Exception_Action_Exception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Package_Import =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_Import_Imported_Package then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Time_Expression =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Time_Expression_Expr then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Join_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Join_Node_Join_Spec then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Start_Object_Behavior_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Invocation_Action_Argument then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Start_Object_Behavior_Action_Object then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Call_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Read_Extent_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Read_Extent_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Time_Interval =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Consider_Ignore_Fragment =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Combined_Fragment_Cfragment_Gate then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Combined_Fragment_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Extension =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Association_End_Type then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Association_Member_End then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Package_Merge =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_Merge_Merged_Package then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_Merge_Receiving_Package then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Time_Observation =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Lifeline =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Lifeline_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Lifeline_Selector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Read_Is_Classified_Object_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Read_Is_Classified_Object_Action_Object then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Read_Is_Classified_Object_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Constraint =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Constraint_Specification then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Transition =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Transition_Container then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Transition_Effect then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Transition_Redefined_Transition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Transition_Trigger then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Parameter =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameter_Default_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Lower_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Upper_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_State =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Connection then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Connection_Point then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Vertex_Container then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Deferrable_Trigger then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Do_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Entry then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Exit then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Redefined_State then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Activity_Final_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Link_Action_End_Data then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Link_Action_Input_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Read_Link_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Association_End then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Class then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Default_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Deployment_Target_Deployment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Interface then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Lower_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Owning_Association then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Qualifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Redefined_Property then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Upper_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Continuation =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Control_Flow =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Edge_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Edge_Guard then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Edge_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Contained_Edge_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Edge_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Contained_Edge_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Edge_Redefined_Edge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Edge_Weight then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Link_End_Creation_Data =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Link_End_Data_Qualifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Extension_Point =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Extension_Point_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Read_Link_Object_End_Action_Object then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Read_Link_Object_End_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Create_Link_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Link_Action_End_Data then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Link_Action_Input_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Parameter_Set =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameter_Set_Condition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Create_Link_Object_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Link_Action_End_Data then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Link_Action_Input_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Create_Link_Object_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Link_End_Data =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Link_End_Data_Qualifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Final_State =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Connection then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Connection_Point then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Vertex_Container then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Deferrable_Trigger then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Do_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Entry then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Exit then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Redefined_State then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Create_Object_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Create_Object_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Activity_Parameter_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Node_Upper_Bound then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Qualifier_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Read_Link_Object_End_Qualifier_Action_Object then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Read_Link_Object_End_Qualifier_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Deployment_Target_Deployment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Node_Nested_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Trigger =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Link_End_Destruction_Data =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Link_End_Data_Qualifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Object_Flow =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Edge_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Edge_Guard then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Edge_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Contained_Edge_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Edge_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Contained_Edge_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Edge_Redefined_Edge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Edge_Weight then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Part_Decomposition =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Use_Actual_Gate then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Use_Argument then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Use_Return_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Flow_Final_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Fork_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Data_Store_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Node_Upper_Bound then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Data_Type =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Literal_Boolean =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Function_Behavior =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Owned_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Owned_Parameter_Set then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Activity_Partition =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Partition_Edge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Contained_Edge_In_Group,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_In_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Partition_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Subgroup then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Partition_Subpartition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Group_Subgroup_Super_Group,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Super_Group then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Partition_Super_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Group_Subgroup_Super_Group,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Decision_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Unmarshall_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Unmarshall_Action_Object then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Unmarshall_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Gate =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_State_Invariant =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Invariant_Invariant then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Port =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Association_End then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Class then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Default_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Deployment_Target_Deployment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Interface then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Lower_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Owning_Association then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Qualifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Redefined_Property then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Upper_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Literal_Integer =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Read_Self_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Read_Self_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_State_Machine =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Machine_Connection_Point then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Owned_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Owned_Parameter_Set then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_State_Machine_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_General_Ordering =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Generalization =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Generalization_General then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Generalization_Specific then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Classifier_Template_Parameter =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Parameter_Owned_Default then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Parameter_Owned_Parametered_Element then
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
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Literal_Null =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Read_Structural_Feature_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structural_Feature_Action_Object then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Read_Structural_Feature_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Actor =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Dependency =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Client then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Supplier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Clause =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Usage =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Client then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Supplier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Add_Structural_Feature_Value_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Add_Structural_Feature_Value_Action_Insert_At then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structural_Feature_Action_Object then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Write_Structural_Feature_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Write_Structural_Feature_Action_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Use_Case =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Use_Case_Extension_Point then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Literal_Real =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Generalization_Set =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Read_Variable_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Read_Variable_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Deployment =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Client then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Deployment_Configuration then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Supplier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Primitive_Type =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Data_Type_Owned_Operation then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Profile =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_Package_Merge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_Packaged_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_Profile_Application then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Occurrence_Specification =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Realization =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Client then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Abstraction_Mapping then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Supplier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Add_Variable_Value_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Add_Variable_Value_Action_Insert_At then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Write_Variable_Action_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Reception =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavioral_Feature_Owned_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavioral_Feature_Owned_Parameter_Set then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Deployment_Specification =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Deployment_Specification_Deployment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Artifact_Manifestation then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Artifact_Nested_Artifact then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Artifact_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Literal_String =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Image =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Opaque_Action_Input_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Opaque_Action_Output_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Reclassify_Object_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Reclassify_Object_Action_Object then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Profile_Application =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Profile_Application_Applied_Profile then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Profile_Application_Applying_Package then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Clear_Association_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Clear_Association_Action_Object then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Any_Receive_Event =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Stereotype =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Stereotype_Icon then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Include =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Include_Addition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Include_Including_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Artifact =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Artifact_Manifestation then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Artifact_Nested_Artifact then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Artifact_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Value_Pin =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Lower_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Node_Upper_Bound then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Upper_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Value_Pin_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Behavior =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Owned_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Owned_Parameter_Set then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Property =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Association_End then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Class then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Default_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Deployment_Target_Deployment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Interface then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Lower_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Owning_Association then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Qualifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Redefined_Property then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Upper_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Literal_Unlimited_Natural =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Information_Flow =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Information_Flow_Information_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Information_Flow_Information_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Clear_Structural_Feature_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structural_Feature_Action_Object then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Clear_Structural_Feature_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Expression =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Association =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Association_End_Type then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Association_Member_End then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Destroy_Link_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Link_Action_End_Data then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Link_Action_Input_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Clear_Variable_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Loop_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Edge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Contained_Edge_In_Group,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_In_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Structured_Node_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Structured_Node_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Subgroup then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Super_Group then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Variable then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Destroy_Object_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Destroy_Object_Action_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Collaboration =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Collaboration_Collaboration_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Collaboration_Use =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Collaboration_Use_Role_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_String_Expression =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Expression_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_String_Expression_Owning_Expression then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_String_Expression_Sub_Expression then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Information_Item =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Destruction_Occurrence_Specification =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Device =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Deployment_Target_Deployment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Node_Nested_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Combined_Fragment =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Combined_Fragment_Cfragment_Gate then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Combined_Fragment_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Initial_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Association_Class =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Association_End_Type then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Association_Member_End then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Redefinable_Template_Signature =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Template_Signature_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Template_Signature_Extended_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Signature_Owned_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Template_Signature_Template then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Duration =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Duration_Expr then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Manifestation =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Client then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Abstraction_Mapping then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Supplier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Input_Pin =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Lower_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Node_Upper_Bound then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Upper_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Duration_Constraint =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Constraint_Specification then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Merge_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Value_Specification_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Value_Specification_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Value_Specification_Action_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Instance_Specification =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Deployment_Target_Deployment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Instance_Specification_Slot then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Instance_Specification_Specification then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Comment =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Operation =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Operation_Class then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Operation_Datatype then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Operation_Interface then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavioral_Feature_Owned_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavioral_Feature_Owned_Parameter_Set then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Operation_Redefined_Operation then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Duration_Interval =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Message =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Message_Argument then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Message_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Communication_Path =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Association_End_Type then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Association_Member_End then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Duration_Observation =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Variable =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Variable_Activity_Scope then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Lower_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Variable_Scope then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Upper_Value then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Reduce_Action =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Reduce_Action_Collection then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Reduce_Action_Result then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Component =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Component_Packaged_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Structured_Activity_Node =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Edge then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Contained_Edge_In_Group,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Executable_Node_Handler then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_In_Activity then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Interruptible_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Partition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_In_Structured_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Opposite,
              Element,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Postcondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Local_Precondition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Contained_Node_In_Group,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Node_Redefined_Node then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Structured_Node_Input then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Input_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Structured_Node_Output then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Output_Action,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Subgroup then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Group_Super_Group then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Variable then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Instance_Value =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Interaction =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Action then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Collaboration_Use then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Redefinition_Context_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Feature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Formal_Gate then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Inherited_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Interface_Realization then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Lifeline then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Message then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Attribute then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Attribute_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Role_Structured_Classifier,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behaviored_Classifier_Owned_Behavior then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Owned_Connector then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Owned_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Owned_Parameter_Set then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Owned_Reception then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Feature_Feature_Featuring_Classifier,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Owned_Template_Signature then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Owned_Use_Case then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Redefined_Classifier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Classifier_Role then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Substitution then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Templateable_Element_Template_Binding then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Behavior_Execution_Specification =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Region =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Element_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Region_Extended_Region then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Element_Redefined_Element_Redefinable_Element,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Imported_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Member then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Member_Member_Namespace,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Owned_Rule then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Namespace_Package_Import then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Region_State then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Region_State_Machine then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Region_Subvertex then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Region_Transition then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Constraint =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Constraint_Context then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Constraint_Maxint then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Constraint_Minint then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Constraint_Specification then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Element_Import =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Import_Imported_Element then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Import_Importing_Namespace then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Component_Realization =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Component_Realization_Abstraction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Client then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Abstraction_Mapping then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Supplier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Substitution =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Client then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Abstraction_Mapping then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Supplier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Message_Occurrence_Specification =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Interaction then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_Enclosing_Operand then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Owned_Member_Namespace,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Interaction_Fragment_General_Ordering then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);
         end if;

      when AMF.Internals.Tables.UML_Types.E_UML_Abstraction =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Client then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Source_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Abstraction_Mapping then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name_Expression then
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

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameterable_Element_Owning_Template_Parameter then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Source then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Dependency_Supplier then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Target_Directed_Relationship,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Directed_Relationship_Target then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Related_Element_Relationship,
              Element,
              Opposite,
              Link);
         end if;

      when others =>
         null;
   end case;
end Construct_Union;
