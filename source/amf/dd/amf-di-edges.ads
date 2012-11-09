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
--  Edge is a diagram element that renders as a polyline, connecting a source 
--  diagram element to a target diagram element, and is positioned relative to 
--  the origin of the diagram.
------------------------------------------------------------------------------
limited with AMF.DC;
with AMF.DI.Diagram_Elements;

package AMF.DI.Edges is

   pragma Preelaborate;

   type DI_Edge is limited interface
     and AMF.DI.Diagram_Elements.DI_Diagram_Element;

   type DI_Edge_Access is
     access all DI_Edge'Class;
   for DI_Edge_Access'Storage_Size use 0;

   not overriding function Get_Source
    (Self : not null access constant DI_Edge)
       return AMF.DI.Diagram_Elements.DI_Diagram_Element_Access is abstract;
   --  Getter of Edge::source.
   --
   --  the edge's source diagram element, i.e. where the edge starts from.

   not overriding function Get_Target
    (Self : not null access constant DI_Edge)
       return AMF.DI.Diagram_Elements.DI_Diagram_Element_Access is abstract;
   --  Getter of Edge::target.
   --
   --  the edge's target diagram element, i.e. where the edge ends at.

   not overriding function Get_Waypoint
    (Self : not null access constant DI_Edge)
       return AMF.DC.Sequence_Of_DC_Point is abstract;
   --  Getter of Edge::waypoint.
   --
   --  an optional list of points relative to the origin of the nesting 
   --  diagram that specifies the connected line segments of the edge

end AMF.DI.Edges;
