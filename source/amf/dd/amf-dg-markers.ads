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
--  Marker is a kind of group that is used as a decoration (e.g. an arrowhead) 
--  for the vertices of a marked graphical element.
------------------------------------------------------------------------------
limited with AMF.DC;
limited with AMF.DG.Canvases;
with AMF.DG.Groups;

package AMF.DG.Markers is

   pragma Preelaborate;

   type DG_Marker is limited interface
     and AMF.DG.Groups.DG_Group;

   type DG_Marker_Access is
     access all DG_Marker'Class;
   for DG_Marker_Access'Storage_Size use 0;

   not overriding function Get_Canvas
    (Self : not null access constant DG_Marker)
       return AMF.DG.Canvases.DG_Canvas_Access is abstract;
   --  Getter of Marker::canvas.
   --
   --  a reference to the canvas that owns this marker.

   not overriding procedure Set_Canvas
    (Self : not null access DG_Marker;
     To   : AMF.DG.Canvases.DG_Canvas_Access) is abstract;
   --  Setter of Marker::canvas.
   --
   --  a reference to the canvas that owns this marker.

   not overriding function Get_Size
    (Self : not null access constant DG_Marker)
       return AMF.DC.DC_Dimension is abstract;
   --  Getter of Marker::size.
   --
   --  the size of the marker

   not overriding procedure Set_Size
    (Self : not null access DG_Marker;
     To   : AMF.DC.DC_Dimension) is abstract;
   --  Setter of Marker::size.
   --
   --  the size of the marker

   not overriding function Get_Reference
    (Self : not null access constant DG_Marker)
       return AMF.DC.DC_Point is abstract;
   --  Getter of Marker::reference.
   --
   --  a point within the bounds of the marker that aligns exactly with the 
   --  marked element's vertex.

   not overriding procedure Set_Reference
    (Self : not null access DG_Marker;
     To   : AMF.DC.DC_Point) is abstract;
   --  Setter of Marker::reference.
   --
   --  a point within the bounds of the marker that aligns exactly with the 
   --  marked element's vertex.

end AMF.DG.Markers;
