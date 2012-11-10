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

package AMF.Factories.DG_Factories is

   pragma Preelaborate;

   type DG_Factory is limited interface
     and AMF.Factories.Factory;

   type DG_Factory_Access is access all DG_Factory'Class;
   for DG_Factory_Access'Storage_Size use 0;

   not overriding function Create_Canvas
    (Self : not null access DG_Factory)
       return AMF.DG.Canvases.DG_Canvas_Access is abstract;

   not overriding function Create_Circle
    (Self : not null access DG_Factory)
       return AMF.DG.Circles.DG_Circle_Access is abstract;

   not overriding function Create_Clip_Path
    (Self : not null access DG_Factory)
       return AMF.DG.Clip_Paths.DG_Clip_Path_Access is abstract;

   not overriding function Create_Ellipse
    (Self : not null access DG_Factory)
       return AMF.DG.Ellipses.DG_Ellipse_Access is abstract;

   not overriding function Create_Group
    (Self : not null access DG_Factory)
       return AMF.DG.Groups.DG_Group_Access is abstract;

   not overriding function Create_Image
    (Self : not null access DG_Factory)
       return AMF.DG.Images.DG_Image_Access is abstract;

   not overriding function Create_Line
    (Self : not null access DG_Factory)
       return AMF.DG.Lines.DG_Line_Access is abstract;

   not overriding function Create_Linear_Gradient
    (Self : not null access DG_Factory)
       return AMF.DG.Linear_Gradients.DG_Linear_Gradient_Access is abstract;

   not overriding function Create_Marked_Element
    (Self : not null access DG_Factory)
       return AMF.DG.Marked_Elements.DG_Marked_Element_Access is abstract;

   not overriding function Create_Marker
    (Self : not null access DG_Factory)
       return AMF.DG.Markers.DG_Marker_Access is abstract;

   not overriding function Create_Path
    (Self : not null access DG_Factory)
       return AMF.DG.Paths.DG_Path_Access is abstract;

   not overriding function Create_Pattern
    (Self : not null access DG_Factory)
       return AMF.DG.Patterns.DG_Pattern_Access is abstract;

   not overriding function Create_Polygon
    (Self : not null access DG_Factory)
       return AMF.DG.Polygons.DG_Polygon_Access is abstract;

   not overriding function Create_Polyline
    (Self : not null access DG_Factory)
       return AMF.DG.Polylines.DG_Polyline_Access is abstract;

   not overriding function Create_Radial_Gradient
    (Self : not null access DG_Factory)
       return AMF.DG.Radial_Gradients.DG_Radial_Gradient_Access is abstract;

   not overriding function Create_Rectangle
    (Self : not null access DG_Factory)
       return AMF.DG.Rectangles.DG_Rectangle_Access is abstract;

   not overriding function Create_Style
    (Self : not null access DG_Factory)
       return AMF.DG.Styles.DG_Style_Access is abstract;

   not overriding function Create_Text
    (Self : not null access DG_Factory)
       return AMF.DG.Texts.DG_Text_Access is abstract;

end AMF.Factories.DG_Factories;
