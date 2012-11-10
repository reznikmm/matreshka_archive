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
with AMF.DC;
with AMF.DG;
with AMF.Real_Collections;
with Matreshka.Internals.Strings;

package AMF.Internals.Tables.DD_Attributes is

   function Internal_Get_Alignment
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Alignment_Kind;
   procedure Internal_Set_Alignment
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Alignment_Kind);
   --  Text => Text::alignment

   function Internal_Get_Background_Color
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.Optional_DC_Color;
   procedure Internal_Set_Background_Color
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.Optional_DC_Color);
   --  Canvas => Canvas::backgroundColor

   function Internal_Get_Background_Fill
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Background_Fill
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Canvas => Canvas::backgroundFill

   function Internal_Get_Bounds
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Bounds;
   procedure Internal_Set_Bounds
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Bounds);
   --  Image => Image::bounds
   --  Pattern => Pattern::bounds
   --  Rectangle => Rectangle::bounds
   --  Text => Text::bounds

   function Internal_Get_Canvas
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Canvas
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  LinearGradient => Fill::canvas
   --  Marker => Marker::canvas
   --  Pattern => Fill::canvas
   --  RadialGradient => Fill::canvas

   function Internal_Get_Center
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Point;
   procedure Internal_Set_Center
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Point);
   --  Circle => Circle::center
   --  Ellipse => Ellipse::center

   function Internal_Get_Center_X
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real;
   procedure Internal_Set_Center_X
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real);
   --  RadialGradient => RadialGradient::centerX

   function Internal_Get_Center_Y
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real;
   procedure Internal_Set_Center_Y
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real);
   --  RadialGradient => RadialGradient::centerY

   function Internal_Get_Clip_Path
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Clip_Path
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Canvas => GraphicalElement::clipPath
   --  Circle => GraphicalElement::clipPath
   --  ClipPath => GraphicalElement::clipPath
   --  Ellipse => GraphicalElement::clipPath
   --  Group => GraphicalElement::clipPath
   --  Image => GraphicalElement::clipPath
   --  Line => GraphicalElement::clipPath
   --  MarkedElement => GraphicalElement::clipPath
   --  Marker => GraphicalElement::clipPath
   --  Path => GraphicalElement::clipPath
   --  Polygon => GraphicalElement::clipPath
   --  Polyline => GraphicalElement::clipPath
   --  Rectangle => GraphicalElement::clipPath
   --  Text => GraphicalElement::clipPath

   function Internal_Get_Clipped_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Clipped_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ClipPath => ClipPath::clippedElement

   function Internal_Get_Command
    (Self : AMF.Internals.AMF_Element)
       return AMF.DG.Sequence_Of_Path_Command;
   --  Path => Path::command

   function Internal_Get_Corner_Radius
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real;
   procedure Internal_Set_Corner_Radius
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real);
   --  Rectangle => Rectangle::cornerRadius

   function Internal_Get_Data
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Data
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Text => Text::data

   function Internal_Get_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Point;
   procedure Internal_Set_End
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Point);
   --  Line => Line::end

   function Internal_Get_End_Marker
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_End_Marker
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Line => MarkedElement::endMarker
   --  MarkedElement => MarkedElement::endMarker
   --  Path => MarkedElement::endMarker
   --  Polygon => MarkedElement::endMarker
   --  Polyline => MarkedElement::endMarker

   function Internal_Get_Fill
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Fill
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Style => Style::fill

   function Internal_Get_Fill_Color
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.Optional_DC_Color;
   procedure Internal_Set_Fill_Color
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.Optional_DC_Color);
   --  Style => Style::fillColor

   function Internal_Get_Fill_Opacity
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Real;
   procedure Internal_Set_Fill_Opacity
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Real);
   --  Style => Style::fillOpacity

   function Internal_Get_Focus_X
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real;
   procedure Internal_Set_Focus_X
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real);
   --  RadialGradient => RadialGradient::focusX

   function Internal_Get_Focus_Y
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real;
   procedure Internal_Set_Focus_Y
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real);
   --  RadialGradient => RadialGradient::focusY

   function Internal_Get_Font_Bold
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Boolean;
   procedure Internal_Set_Font_Bold
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Boolean);
   --  Style => Style::fontBold

   function Internal_Get_Font_Color
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.Optional_DC_Color;
   procedure Internal_Set_Font_Color
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.Optional_DC_Color);
   --  Style => Style::fontColor

   function Internal_Get_Font_Italic
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Boolean;
   procedure Internal_Set_Font_Italic
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Boolean);
   --  Style => Style::fontItalic

   function Internal_Get_Font_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Font_Name
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Style => Style::fontName

   function Internal_Get_Font_Size
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Real;
   procedure Internal_Set_Font_Size
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Real);
   --  Style => Style::fontSize

   function Internal_Get_Font_Strike_Through
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Boolean;
   procedure Internal_Set_Font_Strike_Through
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Boolean);
   --  Style => Style::fontStrikeThrough

   function Internal_Get_Font_Underline
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Boolean;
   procedure Internal_Set_Font_Underline
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Boolean);
   --  Style => Style::fontUnderline

   function Internal_Get_Group
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Group
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Canvas => GraphicalElement::group
   --  Circle => GraphicalElement::group
   --  ClipPath => GraphicalElement::group
   --  Ellipse => GraphicalElement::group
   --  Group => GraphicalElement::group
   --  Image => GraphicalElement::group
   --  Line => GraphicalElement::group
   --  MarkedElement => GraphicalElement::group
   --  Marker => GraphicalElement::group
   --  Path => GraphicalElement::group
   --  Polygon => GraphicalElement::group
   --  Polyline => GraphicalElement::group
   --  Rectangle => GraphicalElement::group
   --  Text => GraphicalElement::group

   function Internal_Get_Is_Aspect_Ratio_Preserved
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Aspect_Ratio_Preserved
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Image => Image::isAspectRatioPreserved

   function Internal_Get_Local_Style
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Canvas => GraphicalElement::localStyle
   --  Circle => GraphicalElement::localStyle
   --  ClipPath => GraphicalElement::localStyle
   --  Ellipse => GraphicalElement::localStyle
   --  Group => GraphicalElement::localStyle
   --  Image => GraphicalElement::localStyle
   --  Line => GraphicalElement::localStyle
   --  MarkedElement => GraphicalElement::localStyle
   --  Marker => GraphicalElement::localStyle
   --  Path => GraphicalElement::localStyle
   --  Polygon => GraphicalElement::localStyle
   --  Polyline => GraphicalElement::localStyle
   --  Rectangle => GraphicalElement::localStyle
   --  Text => GraphicalElement::localStyle

   function Internal_Get_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Canvas => Group::member
   --  ClipPath => Group::member
   --  Group => Group::member
   --  Marker => Group::member

   function Internal_Get_Mid_Marker
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Mid_Marker
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Line => MarkedElement::midMarker
   --  MarkedElement => MarkedElement::midMarker
   --  Path => MarkedElement::midMarker
   --  Polygon => MarkedElement::midMarker
   --  Polyline => MarkedElement::midMarker

   function Internal_Get_Packaged_Fill
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Canvas => Canvas::packagedFill

   function Internal_Get_Packaged_Marker
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Canvas => Canvas::packagedMarker

   function Internal_Get_Packaged_Style
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Canvas => Canvas::packagedStyle

   function Internal_Get_Point
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.Sequence_Of_DC_Point;
   --  Polygon => Polygon::point
   --  Polyline => Polyline::point

   function Internal_Get_Radii
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Dimension;
   procedure Internal_Set_Radii
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Dimension);
   --  Ellipse => Ellipse::radii

   function Internal_Get_Radius
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real;
   procedure Internal_Set_Radius
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real);
   --  Circle => Circle::radius
   --  RadialGradient => RadialGradient::radius

   function Internal_Get_Reference
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Point;
   procedure Internal_Set_Reference
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Point);
   --  Marker => Marker::reference

   function Internal_Get_Shared_Style
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Canvas => GraphicalElement::sharedStyle
   --  Circle => GraphicalElement::sharedStyle
   --  ClipPath => GraphicalElement::sharedStyle
   --  Ellipse => GraphicalElement::sharedStyle
   --  Group => GraphicalElement::sharedStyle
   --  Image => GraphicalElement::sharedStyle
   --  Line => GraphicalElement::sharedStyle
   --  MarkedElement => GraphicalElement::sharedStyle
   --  Marker => GraphicalElement::sharedStyle
   --  Path => GraphicalElement::sharedStyle
   --  Polygon => GraphicalElement::sharedStyle
   --  Polyline => GraphicalElement::sharedStyle
   --  Rectangle => GraphicalElement::sharedStyle
   --  Text => GraphicalElement::sharedStyle

   function Internal_Get_Size
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Dimension;
   procedure Internal_Set_Size
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Dimension);
   --  Marker => Marker::size

   function Internal_Get_Source
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Source
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Image => Image::source

   function Internal_Get_Start
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Point;
   procedure Internal_Set_Start
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Point);
   --  Line => Line::start

   function Internal_Get_Start_Marker
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Start_Marker
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Line => MarkedElement::startMarker
   --  MarkedElement => MarkedElement::startMarker
   --  Path => MarkedElement::startMarker
   --  Polygon => MarkedElement::startMarker
   --  Polyline => MarkedElement::startMarker

   function Internal_Get_Stop
    (Self : AMF.Internals.AMF_Element)
       return AMF.DG.Set_Of_DG_Gradient_Stop;
   --  LinearGradient => Gradient::stop
   --  RadialGradient => Gradient::stop

   function Internal_Get_Stroke_Color
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.Optional_DC_Color;
   procedure Internal_Set_Stroke_Color
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.Optional_DC_Color);
   --  Style => Style::strokeColor

   function Internal_Get_Stroke_Dash_Length
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real_Collections.Sequence_Of_Real;
   --  Style => Style::strokeDashLength

   function Internal_Get_Stroke_Opacity
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Real;
   procedure Internal_Set_Stroke_Opacity
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Real);
   --  Style => Style::strokeOpacity

   function Internal_Get_Stroke_Width
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Real;
   procedure Internal_Set_Stroke_Width
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Real);
   --  Style => Style::strokeWidth

   function Internal_Get_Tile
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Tile
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Pattern => Pattern::tile

   function Internal_Get_Transform
    (Self : AMF.Internals.AMF_Element)
       return AMF.DG.Sequence_Of_DG_Transform;
   --  Canvas => GraphicalElement::transform
   --  Circle => GraphicalElement::transform
   --  ClipPath => GraphicalElement::transform
   --  Ellipse => GraphicalElement::transform
   --  Group => GraphicalElement::transform
   --  Image => GraphicalElement::transform
   --  Line => GraphicalElement::transform
   --  LinearGradient => Fill::transform
   --  MarkedElement => GraphicalElement::transform
   --  Marker => GraphicalElement::transform
   --  Path => GraphicalElement::transform
   --  Pattern => Fill::transform
   --  Polygon => GraphicalElement::transform
   --  Polyline => GraphicalElement::transform
   --  RadialGradient => Fill::transform
   --  Rectangle => GraphicalElement::transform
   --  Text => GraphicalElement::transform

   function Internal_Get_X1
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real;
   procedure Internal_Set_X1
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real);
   --  LinearGradient => LinearGradient::x1

   function Internal_Get_X2
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real;
   procedure Internal_Set_X2
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real);
   --  LinearGradient => LinearGradient::x2

   function Internal_Get_Y1
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real;
   procedure Internal_Set_Y1
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real);
   --  LinearGradient => LinearGradient::y1

   function Internal_Get_Y2
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real;
   procedure Internal_Set_Y2
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real);
   --  LinearGradient => LinearGradient::y2

end AMF.Internals.Tables.DD_Attributes;
