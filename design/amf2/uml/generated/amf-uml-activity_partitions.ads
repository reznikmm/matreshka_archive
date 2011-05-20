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
--  An activity partition is a kind of activity group for identifying actions 
--  that have some characteristic in common.
------------------------------------------------------------------------------
limited with AMF.UML.Activity_Edges.Collections;
with AMF.UML.Activity_Groups;
limited with AMF.UML.Activity_Nodes.Collections;
limited with AMF.UML.Activity_Partitions.Collections;
limited with AMF.UML.Elements;

package AMF.UML.Activity_Partitions is

   pragma Preelaborate;

   type UML_Activity_Partition_Interface is limited interface
     and AMF.UML.Activity_Groups.UML_Activity_Group_Interface;

   type UML_Activity_Partition is
     access all UML_Activity_Partition_Interface'Class;
   for UML_Activity_Partition'Storage_Size use 0;

   not overriding function Get_Edge
    (Self : not null access constant UML_Activity_Partition_Interface)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge is abstract;
   --  Edges immediately contained in the group.

   not overriding function Get_Is_Dimension
    (Self : not null access constant UML_Activity_Partition_Interface)
       return Boolean is abstract;
   --  Tells whether the partition groups other partitions along a dimension.

   not overriding procedure Set_Is_Dimension
    (Self : not null access UML_Activity_Partition_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Is_External
    (Self : not null access constant UML_Activity_Partition_Interface)
       return Boolean is abstract;
   --  Tells whether the partition represents an entity to which the 
   --  partitioning structure does not apply.

   not overriding procedure Set_Is_External
    (Self : not null access UML_Activity_Partition_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Node
    (Self : not null access constant UML_Activity_Partition_Interface)
       return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node is abstract;
   --  Nodes immediately contained in the group.

   not overriding function Get_Represents
    (Self : not null access constant UML_Activity_Partition_Interface)
       return AMF.UML.Elements.UML_Element is abstract;
   --  An element constraining behaviors invoked by nodes in the partition.

   not overriding procedure Set_Represents
    (Self : not null access UML_Activity_Partition_Interface;
     To   : AMF.UML.Elements.UML_Element) is abstract;

   not overriding function Get_Subpartition
    (Self : not null access constant UML_Activity_Partition_Interface)
       return AMF.UML.Activity_Partitions.Collections.Set_Of_UML_Activity_Partition is abstract;
   --  Partitions immediately contained in the partition.

   not overriding function Get_Super_Partition
    (Self : not null access constant UML_Activity_Partition_Interface)
       return AMF.UML.Activity_Partitions.UML_Activity_Partition is abstract;
   --  Partition immediately containing the partition.

   not overriding procedure Set_Super_Partition
    (Self : not null access UML_Activity_Partition_Interface;
     To   : AMF.UML.Activity_Partitions.UML_Activity_Partition) is abstract;

end AMF.UML.Activity_Partitions;
