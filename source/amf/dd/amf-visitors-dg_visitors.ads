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
with AMF.DG.Canvases;
with AMF.DG.Circles;
with AMF.DG.Clip_Paths;
with AMF.DG.Ellipses;
with AMF.DG.Groups;
with AMF.DG.Images;
with AMF.DG.Linear_Gradients;
with AMF.DG.Lines;
with AMF.DG.Marked_Elements;
with AMF.DG.Markers;
with AMF.DG.Paths;
with AMF.DG.Patterns;
with AMF.DG.Polygons;
with AMF.DG.Polylines;
with AMF.DG.Radial_Gradients;
with AMF.DG.Rectangles;
with AMF.DG.Styles;
with AMF.DG.Texts;

package AMF.Visitors.DG_Visitors is

   pragma Preelaborate;

   type DG_Visitor is limited interface and AMF.Visitors.Abstract_Visitor;

   not overriding procedure Enter_Canvas
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Canvases.DG_Canvas_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Canvas
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Canvases.DG_Canvas_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Circle
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Circles.DG_Circle_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Circle
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Circles.DG_Circle_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Clip_Path
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Clip_Paths.DG_Clip_Path_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Clip_Path
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Clip_Paths.DG_Clip_Path_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Ellipse
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Ellipses.DG_Ellipse_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Ellipse
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Ellipses.DG_Ellipse_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Group
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Groups.DG_Group_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Group
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Groups.DG_Group_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Image
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Images.DG_Image_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Image
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Images.DG_Image_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Line
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Lines.DG_Line_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Line
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Lines.DG_Line_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Linear_Gradient
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Linear_Gradient
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Marked_Element
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Marked_Elements.DG_Marked_Element_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Marked_Element
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Marked_Elements.DG_Marked_Element_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Marker
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Markers.DG_Marker_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Marker
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Markers.DG_Marker_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Path
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Paths.DG_Path_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Path
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Paths.DG_Path_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Pattern
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Patterns.DG_Pattern_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Pattern
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Patterns.DG_Pattern_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Polygon
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Polygons.DG_Polygon_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Polygon
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Polygons.DG_Polygon_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Polyline
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Polylines.DG_Polyline_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Polyline
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Polylines.DG_Polyline_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Radial_Gradient
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Radial_Gradient
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Rectangle
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Rectangles.DG_Rectangle_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Rectangle
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Rectangles.DG_Rectangle_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Style
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Styles.DG_Style_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Style
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Styles.DG_Style_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Text
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Texts.DG_Text_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Text
    (Self    : in out DG_Visitor;
     Element : not null AMF.DG.Texts.DG_Text_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

end AMF.Visitors.DG_Visitors;
