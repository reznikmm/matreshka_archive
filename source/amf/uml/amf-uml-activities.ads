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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
--  An activity is the specification of parameterized behavior as the 
--  coordinated sequencing of subordinate units whose individual elements are 
--  actions.
------------------------------------------------------------------------------
limited with AMF.UML.Activity_Edges.Collections;
limited with AMF.UML.Activity_Groups.Collections;
limited with AMF.UML.Activity_Nodes.Collections;
limited with AMF.UML.Activity_Partitions.Collections;
with AMF.UML.Behaviors;
limited with AMF.UML.Structured_Activity_Nodes.Collections;
limited with AMF.UML.Variables.Collections;

package AMF.UML.Activities is

   pragma Preelaborate;

   type UML_Activity is limited interface
     and AMF.UML.Behaviors.UML_Behavior;

   type UML_Activity_Access is
     access all UML_Activity'Class;
   for UML_Activity_Access'Storage_Size use 0;

   not overriding function Get_Edge
    (Self : not null access constant UML_Activity)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge is abstract;
   --  Getter of Activity::edge.
   --
   --  Edges expressing flow between nodes of the activity.

   not overriding function Get_Group
    (Self : not null access constant UML_Activity)
       return AMF.UML.Activity_Groups.Collections.Set_Of_UML_Activity_Group is abstract;
   --  Getter of Activity::group.
   --
   --  Top-level groups in the activity.

   not overriding function Get_Is_Read_Only
    (Self : not null access constant UML_Activity)
       return Boolean is abstract;
   --  Getter of Activity::isReadOnly.
   --
   --  If true, this activity must not make any changes to variables outside 
   --  the activity or to objects. (This is an assertion, not an executable 
   --  property. It may be used by an execution engine to optimize model 
   --  execution. If the assertion is violated by the action, then the model 
   --  is ill-formed.) The default is false (an activity may make nonlocal 
   --  changes).

   not overriding procedure Set_Is_Read_Only
    (Self : not null access UML_Activity;
     To   : Boolean) is abstract;
   --  Setter of Activity::isReadOnly.
   --
   --  If true, this activity must not make any changes to variables outside 
   --  the activity or to objects. (This is an assertion, not an executable 
   --  property. It may be used by an execution engine to optimize model 
   --  execution. If the assertion is violated by the action, then the model 
   --  is ill-formed.) The default is false (an activity may make nonlocal 
   --  changes).

   not overriding function Get_Is_Single_Execution
    (Self : not null access constant UML_Activity)
       return Boolean is abstract;
   --  Getter of Activity::isSingleExecution.
   --
   --  If true, all invocations of the activity are handled by the same 
   --  execution.

   not overriding procedure Set_Is_Single_Execution
    (Self : not null access UML_Activity;
     To   : Boolean) is abstract;
   --  Setter of Activity::isSingleExecution.
   --
   --  If true, all invocations of the activity are handled by the same 
   --  execution.

   not overriding function Get_Node
    (Self : not null access constant UML_Activity)
       return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node is abstract;
   --  Getter of Activity::node.
   --
   --  Nodes coordinated by the activity.

   not overriding function Get_Partition
    (Self : not null access constant UML_Activity)
       return AMF.UML.Activity_Partitions.Collections.Set_Of_UML_Activity_Partition is abstract;
   --  Getter of Activity::partition.
   --
   --  Top-level partitions in the activity.

   not overriding function Get_Structured_Node
    (Self : not null access constant UML_Activity)
       return AMF.UML.Structured_Activity_Nodes.Collections.Set_Of_UML_Structured_Activity_Node is abstract;
   --  Getter of Activity::structuredNode.
   --
   --  Top-level structured nodes in the activity.

   not overriding function Get_Variable
    (Self : not null access constant UML_Activity)
       return AMF.UML.Variables.Collections.Set_Of_UML_Variable is abstract;
   --  Getter of Activity::variable.
   --
   --  Top-level variables in the activity.

   not overriding function Structured_Node
    (Self : not null access constant UML_Activity)
       return AMF.UML.Structured_Activity_Nodes.Collections.Set_Of_UML_Structured_Activity_Node is abstract;
   --  Operation Activity::structuredNode.
   --
   --  Missing derivation for Activity::/structuredNode : 
   --  StructuredActivityNode

end AMF.UML.Activities;
