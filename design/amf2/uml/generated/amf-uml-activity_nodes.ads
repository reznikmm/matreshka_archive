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
--  ActivityNode is an abstract class for points in the flow of an activity 
--  connected by edges.
------------------------------------------------------------------------------
limited with AMF.UML.Activities;
limited with AMF.UML.Activity_Edges.Collections;
limited with AMF.UML.Activity_Groups.Collections;
limited with AMF.UML.Activity_Nodes.Collections;
limited with AMF.UML.Activity_Partitions.Collections;
limited with AMF.UML.Interruptible_Activity_Regions.Collections;
with AMF.UML.Redefinable_Elements;
limited with AMF.UML.Structured_Activity_Nodes;

package AMF.UML.Activity_Nodes is

   pragma Preelaborate;

   type UML_Activity_Node_Interface is limited interface
     and AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Interface;

   type UML_Activity_Node is
     access all UML_Activity_Node_Interface'Class;
   for UML_Activity_Node'Storage_Size use 0;

   not overriding function Get_Activity
    (Self : not null access constant UML_Activity_Node_Interface)
       return AMF.UML.Activities.UML_Activity is abstract;
   --  Activity containing the node.

   not overriding procedure Set_Activity
    (Self : not null access UML_Activity_Node_Interface;
     To   : AMF.UML.Activities.UML_Activity) is abstract;

   not overriding function Get_In_Group
    (Self : not null access constant UML_Activity_Node_Interface)
       return AMF.UML.Activity_Groups.Collections.Set_Of_UML_Activity_Group is abstract;
   --  Groups containing the node.

   not overriding function Get_In_Interruptible_Region
    (Self : not null access constant UML_Activity_Node_Interface)
       return AMF.UML.Interruptible_Activity_Regions.Collections.Set_Of_UML_Interruptible_Activity_Region is abstract;
   --  Interruptible regions containing the node.

   not overriding function Get_In_Partition
    (Self : not null access constant UML_Activity_Node_Interface)
       return AMF.UML.Activity_Partitions.Collections.Set_Of_UML_Activity_Partition is abstract;
   --  Partitions containing the node.

   not overriding function Get_In_Structured_Node
    (Self : not null access constant UML_Activity_Node_Interface)
       return AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node is abstract;
   --  Structured activity node containing the node.

   not overriding procedure Set_In_Structured_Node
    (Self : not null access UML_Activity_Node_Interface;
     To   : AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node) is abstract;

   not overriding function Get_Incoming
    (Self : not null access constant UML_Activity_Node_Interface)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge is abstract;
   --  Edges that have the node as target.

   not overriding function Get_Outgoing
    (Self : not null access constant UML_Activity_Node_Interface)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge is abstract;
   --  Edges that have the node as source.

   not overriding function Get_Redefined_Node
    (Self : not null access constant UML_Activity_Node_Interface)
       return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node is abstract;
   --  Inherited nodes replaced by this node in a specialization of the 
   --  activity.

end AMF.UML.Activity_Nodes;
