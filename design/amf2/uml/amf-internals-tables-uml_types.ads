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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.Elements;

package AMF.Internals.Tables.UML_Types is

   pragma Preelaborate;

   type Element_Kinds is
    (E_None,
     E_Abstraction,
     E_Accept_Call_Action,
     E_Accept_Event_Action,
     E_Action_Execution_Specification,
     E_Action_Input_Pin,
     E_Activity,
     E_Activity_Final_Node,
     E_Activity_Parameter_Node,
     E_Activity_Partition,
     E_Actor,
     E_Add_Structural_Feature_Value_Action,
     E_Add_Variable_Value_Action,
     E_Any_Receive_Event,
     E_Artifact,
     E_Association,
     E_Association_Class,
     E_Behavior_Execution_Specification,
     E_Broadcast_Signal_Action,
     E_Call_Behavior_Action,
     E_Call_Event,
     E_Call_Operation_Action,
     E_Central_Buffer_Node,
     E_Change_Event,
     E_Class,
     E_Classifier_Template_Parameter,
     E_Clause,
     E_Clear_Association_Action,
     E_Clear_Structural_Feature_Action,
     E_Clear_Variable_Action,
     E_Collaboration,
     E_Collaboration_Use,
     E_Combined_Fragment,
     E_Comment,
     E_Communication_Path,
     E_Component,
     E_Component_Realization,
     E_Conditional_Node,
     E_Connectable_Element_Template_Parameter,
     E_Connection_Point_Reference,
     E_Connector,
     E_Connector_End,
     E_Consider_Ignore_Fragment,
     E_Constraint,
     E_Continuation,
     E_Control_Flow);

   type Member_Kinds is
    (M_None,
     M_Element,
     M_Collection_Of_Element,
     M_Boolean);

   type Member_Record (Kind : Member_Kinds := M_None) is record
      case Kind is
         when M_None =>
            null;

         when M_Element =>
            Element_Value : AMF.Internals.AMF_Element;

         when M_Collection_Of_Element =>
            Collection : AMF.Internals.AMF_Collection_Of_Element;

         when M_Boolean =>
            Boolean_Value : Boolean;
      end case;
   end record;

   type Member_Array is array (Natural range 0 .. 21) of Member_Record;

   type Element_Record (Kind : Element_Kinds := E_None) is record
      case Kind is
         when E_None =>
            null;

         when others =>
            Extent : AMF_Extent;
            Proxy  : AMF.Elements.Element_Access;
            Member : Member_Array;
      end case;
   end record;

end AMF.Internals.Tables.UML_Types;
