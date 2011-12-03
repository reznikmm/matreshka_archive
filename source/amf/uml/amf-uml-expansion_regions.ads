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
--  An expansion region is a structured activity region that executes multiple 
--  times corresponding to elements of an input collection.
------------------------------------------------------------------------------
limited with AMF.UML.Expansion_Nodes.Collections;
with AMF.UML.Structured_Activity_Nodes;

package AMF.UML.Expansion_Regions is

   pragma Preelaborate;

   type UML_Expansion_Region is limited interface
     and AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node;

   type UML_Expansion_Region_Access is
     access all UML_Expansion_Region'Class;
   for UML_Expansion_Region_Access'Storage_Size use 0;

   not overriding function Get_Input_Element
    (Self : not null access constant UML_Expansion_Region)
       return AMF.UML.Expansion_Nodes.Collections.Set_Of_UML_Expansion_Node is abstract;
   --  Getter of ExpansionRegion::inputElement.
   --
   --  An object node that holds a separate element of the input collection 
   --  during each of the multiple executions of the region.

   not overriding function Get_Mode
    (Self : not null access constant UML_Expansion_Region)
       return AMF.UML.UML_Expansion_Kind is abstract;
   --  Getter of ExpansionRegion::mode.
   --
   --  The way in which the executions interact: parallel: all interactions 
   --  are independent iterative: the interactions occur in order of the 
   --  elements stream: a stream of values flows into a single execution

   not overriding procedure Set_Mode
    (Self : not null access UML_Expansion_Region;
     To   : AMF.UML.UML_Expansion_Kind) is abstract;
   --  Setter of ExpansionRegion::mode.
   --
   --  The way in which the executions interact: parallel: all interactions 
   --  are independent iterative: the interactions occur in order of the 
   --  elements stream: a stream of values flows into a single execution

   not overriding function Get_Output_Element
    (Self : not null access constant UML_Expansion_Region)
       return AMF.UML.Expansion_Nodes.Collections.Set_Of_UML_Expansion_Node is abstract;
   --  Getter of ExpansionRegion::outputElement.
   --
   --  An object node that accepts a separate element of the output collection 
   --  during each of the multiple executions of the region. The values are 
   --  formed into a collection that is available when the execution of the 
   --  region is complete.

end AMF.UML.Expansion_Regions;
