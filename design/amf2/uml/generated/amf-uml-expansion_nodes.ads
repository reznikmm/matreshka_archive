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
--  An expansion node is an object node used to indicate a flow across the 
--  boundary of an expansion region. A flow into a region contains a 
--  collection that is broken into its individual elements inside the region, 
--  which is executed once per element. A flow out of a region combines 
--  individual elements into a collection for use outside the region.
------------------------------------------------------------------------------
limited with AMF.UML.Expansion_Regions;
with AMF.UML.Object_Nodes;

package AMF.UML.Expansion_Nodes is

   pragma Preelaborate;

   type UML_Expansion_Node is limited interface
     and AMF.UML.Object_Nodes.UML_Object_Node;

   type UML_Expansion_Node_Access is
     access all UML_Expansion_Node'Class;
   for UML_Expansion_Node_Access'Storage_Size use 0;

   not overriding function Get_Region_As_Input
    (Self : not null access constant UML_Expansion_Node)
       return AMF.UML.Expansion_Regions.UML_Expansion_Region_Access is abstract;
   --  The expansion region for which the node is an input.

   not overriding procedure Set_Region_As_Input
    (Self : not null access UML_Expansion_Node;
     To   : AMF.UML.Expansion_Regions.UML_Expansion_Region_Access) is abstract;

   not overriding function Get_Region_As_Output
    (Self : not null access constant UML_Expansion_Node)
       return AMF.UML.Expansion_Regions.UML_Expansion_Region_Access is abstract;
   --  The expansion region for which the node is an output.

   not overriding procedure Set_Region_As_Output
    (Self : not null access UML_Expansion_Node;
     To   : AMF.UML.Expansion_Regions.UML_Expansion_Region_Access) is abstract;

end AMF.UML.Expansion_Nodes;
