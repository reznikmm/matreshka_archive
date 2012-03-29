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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  Helper subprograms for element modification notification.
------------------------------------------------------------------------------
with AMF.UML;

package AMF.Internals.Tables.UML_Notification is

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.Internals.AMF_Element;
     New_Value : AMF.Internals.AMF_Element);

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Aggregation_Kind;
     New_Value : AMF.UML.UML_Aggregation_Kind);

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Call_Concurrency_Kind;
     New_Value : AMF.UML.UML_Call_Concurrency_Kind);

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Expansion_Kind;
     New_Value : AMF.UML.UML_Expansion_Kind);

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Interaction_Operator_Kind;
     New_Value : AMF.UML.UML_Interaction_Operator_Kind);

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Message_Sort;
     New_Value : AMF.UML.UML_Message_Sort);

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Object_Node_Ordering_Kind;
     New_Value : AMF.UML.UML_Object_Node_Ordering_Kind);

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.Optional_UML_Parameter_Effect_Kind;
     New_Value : AMF.UML.Optional_UML_Parameter_Effect_Kind);

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Parameter_Direction_Kind;
     New_Value : AMF.UML.UML_Parameter_Direction_Kind);

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Pseudostate_Kind;
     New_Value : AMF.UML.UML_Pseudostate_Kind);

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Transition_Kind;
     New_Value : AMF.UML.UML_Transition_Kind);

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.UML_Visibility_Kind;
     New_Value : AMF.UML.UML_Visibility_Kind);

   procedure Notify_Attribute_Set
    (Element   : AMF.Internals.AMF_Element;
     Property  : AMF.Internals.CMOF_Element;
     Old_Value : AMF.UML.Optional_UML_Visibility_Kind;
     New_Value : AMF.UML.Optional_UML_Visibility_Kind);

end AMF.Internals.Tables.UML_Notification;
