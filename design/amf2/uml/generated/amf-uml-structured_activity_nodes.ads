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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
--  Because of the concurrent nature of the execution of actions within and 
--  across activities, it can be difficult to guarantee the consistent access 
--  and modification of object memory. In order to avoid race conditions or 
--  other concurrency-related problems, it is sometimes necessary to isolate 
--  the effects of a group of actions from the effects of actions outside the 
--  group. This may be indicated by setting the mustIsolate attribute to true 
--  on a structured activity node. If a structured activity node is 
--  "isolated," then any object used by an action within the node cannot be 
--  accessed by any action outside the node until the structured activity node 
--  as a whole completes. Any concurrent actions that would result in 
--  accessing such objects are required to have their execution deferred until 
--  the completion of the node.
--  A structured activity node is an executable activity node that may have an 
--  expansion into subordinate nodes as an activity group. The subordinate 
--  nodes must belong to only one structured activity node, although they may 
--  be nested.
------------------------------------------------------------------------------
with AMF.UML.Actions;
limited with AMF.UML.Activities;
limited with AMF.UML.Activity_Edges.Collections;
with AMF.UML.Activity_Groups;
limited with AMF.UML.Activity_Nodes.Collections;
limited with AMF.UML.Input_Pins.Collections;
with AMF.UML.Namespaces;
limited with AMF.UML.Output_Pins.Collections;
limited with AMF.UML.Variables.Collections;

package AMF.UML.Structured_Activity_Nodes is

   pragma Preelaborate;

   type UML_Structured_Activity_Node is limited interface
     and AMF.UML.Namespaces.UML_Namespace
     and AMF.UML.Activity_Groups.UML_Activity_Group
     and AMF.UML.Actions.UML_Action;

   type UML_Structured_Activity_Node_Access is
     access all UML_Structured_Activity_Node'Class;
   for UML_Structured_Activity_Node_Access'Storage_Size use 0;

   overriding function Get_Activity
    (Self : not null access constant UML_Structured_Activity_Node)
       return AMF.UML.Activities.UML_Activity_Access is abstract;
   --  Activity immediately containing the node.

   overriding procedure Set_Activity
    (Self : not null access UML_Structured_Activity_Node;
     To   : AMF.UML.Activities.UML_Activity_Access) is abstract;

   not overriding function Get_Edge
    (Self : not null access constant UML_Structured_Activity_Node)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge is abstract;
   --  Edges immediately contained in the structured node.

   not overriding function Get_Must_Isolate
    (Self : not null access constant UML_Structured_Activity_Node)
       return Boolean is abstract;
   --  If true, then the actions in the node execute in isolation from actions 
   --  outside the node.

   not overriding procedure Set_Must_Isolate
    (Self : not null access UML_Structured_Activity_Node;
     To   : Boolean) is abstract;

   not overriding function Get_Node
    (Self : not null access constant UML_Structured_Activity_Node)
       return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node is abstract;
   --  Nodes immediately contained in the group.

   not overriding function Get_Structured_Node_Input
    (Self : not null access constant UML_Structured_Activity_Node)
       return AMF.UML.Input_Pins.Collections.Set_Of_UML_Input_Pin is abstract;

   not overriding function Get_Structured_Node_Output
    (Self : not null access constant UML_Structured_Activity_Node)
       return AMF.UML.Output_Pins.Collections.Set_Of_UML_Output_Pin is abstract;

   not overriding function Get_Variable
    (Self : not null access constant UML_Structured_Activity_Node)
       return AMF.UML.Variables.Collections.Set_Of_UML_Variable is abstract;
   --  A variable defined in the scope of the structured activity node. It has 
   --  no value and may not be accessed

end AMF.UML.Structured_Activity_Nodes;
