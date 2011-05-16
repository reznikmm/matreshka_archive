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
--  An activity edge is an abstract class for directed connections between two 
--  activity nodes.
--  Activity edges can be contained in interruptible regions.
------------------------------------------------------------------------------
limited with AMF.UML.Activities;
limited with AMF.UML.Activity_Groups;
limited with AMF.UML.Activity_Nodes;
limited with AMF.UML.Activity_Partitions;
limited with AMF.UML.Interruptible_Activity_Regions;
with AMF.UML.Redefinable_Elements;
limited with AMF.UML.Structured_Activity_Nodes;
limited with AMF.UML.Value_Specifications;

package AMF.UML.Activity_Edges is

   pragma Preelaborate;

   type UML_Activity_Edge_Interface is limited interface
     and AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Interface;

   type UML_Activity_Edge is
     access all UML_Activity_Edge_Interface'Class;

   type Set_Of_UML_Activity_Edge is null record;
   type Ordered_Set_Of_UML_Activity_Edge is null record;

   not overriding function Get_Activity
    (Self : not null access constant UML_Activity_Edge_Interface)
       return AMF.UML.Activities.UML_Activity is abstract;
   --  Activity containing the edge.

   not overriding procedure Set_Activity
    (Self : not null access UML_Activity_Edge_Interface;
     To   : AMF.UML.Activities.UML_Activity) is abstract;

   not overriding function Get_Guard
    (Self : not null access constant UML_Activity_Edge_Interface)
       return AMF.UML.Value_Specifications.UML_Value_Specification is abstract;
   --  Specification evaluated at runtime to determine if the edge can be 
   --  traversed.

   not overriding procedure Set_Guard
    (Self : not null access UML_Activity_Edge_Interface;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification) is abstract;

   not overriding function Get_In_Group
    (Self : not null access constant UML_Activity_Edge_Interface)
       return AMF.UML.Activity_Groups.Set_Of_UML_Activity_Group is abstract;
   --  Groups containing the edge.

   not overriding function Get_In_Partition
    (Self : not null access constant UML_Activity_Edge_Interface)
       return AMF.UML.Activity_Partitions.Set_Of_UML_Activity_Partition is abstract;
   --  Partitions containing the edge.

   not overriding function Get_In_Structured_Node
    (Self : not null access constant UML_Activity_Edge_Interface)
       return AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node is abstract;
   --  Structured activity node containing the edge.

   not overriding procedure Set_In_Structured_Node
    (Self : not null access UML_Activity_Edge_Interface;
     To   : AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node) is abstract;

   not overriding function Get_Interrupts
    (Self : not null access constant UML_Activity_Edge_Interface)
       return AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region is abstract;
   --  Region that the edge can interrupt.

   not overriding procedure Set_Interrupts
    (Self : not null access UML_Activity_Edge_Interface;
     To   : AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region) is abstract;

   not overriding function Get_Redefined_Edge
    (Self : not null access constant UML_Activity_Edge_Interface)
       return AMF.UML.Activity_Edges.Set_Of_UML_Activity_Edge is abstract;
   --  Inherited edges replaced by this edge in a specialization of the 
   --  activity.

   not overriding function Get_Source
    (Self : not null access constant UML_Activity_Edge_Interface)
       return AMF.UML.Activity_Nodes.UML_Activity_Node is abstract;
   --  Node from which tokens are taken when they traverse the edge.

   not overriding procedure Set_Source
    (Self : not null access UML_Activity_Edge_Interface;
     To   : AMF.UML.Activity_Nodes.UML_Activity_Node) is abstract;

   not overriding function Get_Target
    (Self : not null access constant UML_Activity_Edge_Interface)
       return AMF.UML.Activity_Nodes.UML_Activity_Node is abstract;
   --  Node to which tokens are put when they traverse the edge.

   not overriding procedure Set_Target
    (Self : not null access UML_Activity_Edge_Interface;
     To   : AMF.UML.Activity_Nodes.UML_Activity_Node) is abstract;

   not overriding function Get_Weight
    (Self : not null access constant UML_Activity_Edge_Interface)
       return AMF.UML.Value_Specifications.UML_Value_Specification is abstract;
   --  The minimum number of tokens that must traverse the edge at the same 
   --  time.

   not overriding procedure Set_Weight
    (Self : not null access UML_Activity_Edge_Interface;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification) is abstract;

end AMF.UML.Activity_Edges;
