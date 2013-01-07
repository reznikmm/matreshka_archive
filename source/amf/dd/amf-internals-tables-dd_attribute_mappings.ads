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
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Internals.Tables.DD_Types;

package AMF.Internals.Tables.DD_Attribute_Mappings is

   pragma Preelaborate;

   DG_Collection_Offset : constant
     array (AMF.Internals.Tables.DD_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 22 .. 27)
       of AMF.Internals.AMF_Collection_Of_Element :=
        (AMF.Internals.Tables.DD_Types.E_None =>
          (others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
          (25     => 1,     --  GraphicalElement::localStyle
           27     => 3,     --  Group::member
           22     => 4,     --  Canvas::packagedFill
           23     => 5,     --  Canvas::packagedMarker
           24     => 6,     --  Canvas::packagedStyle
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Circle =>
          (25     => 1,     --  GraphicalElement::localStyle
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
          (25     => 1,     --  GraphicalElement::localStyle
           27     => 3,     --  Group::member
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Ellipse =>
          (25     => 1,     --  GraphicalElement::localStyle
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Group =>
          (25     => 1,     --  GraphicalElement::localStyle
           27     => 3,     --  Group::member
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Image =>
          (25     => 1,     --  GraphicalElement::localStyle
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Line =>
          (25     => 1,     --  GraphicalElement::localStyle
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Linear_Gradient =>
          (others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
          (25     => 1,     --  GraphicalElement::localStyle
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Marker =>
          (25     => 1,     --  GraphicalElement::localStyle
           27     => 3,     --  Group::member
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Path =>
          (25     => 1,     --  GraphicalElement::localStyle
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Pattern =>
          (others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
          (25     => 1,     --  GraphicalElement::localStyle
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
          (25     => 1,     --  GraphicalElement::localStyle
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Radial_Gradient =>
          (others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Rectangle =>
          (25     => 1,     --  GraphicalElement::localStyle
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Style =>
          (others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Text =>
          (25     => 1,     --  GraphicalElement::localStyle
           26     => 2,     --  GraphicalElement::sharedStyle
           others => 0));

   DG_Member_Offset : constant
     array (AMF.Internals.Tables.DD_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 28 .. 84) of Natural :=
        (AMF.Internals.Tables.DD_Types.E_None =>
          (others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
          (28     => 5,     --  Canvas::backgroundColor
           29     => 4,     --  Canvas::backgroundFill
           38     => 3,     --  GraphicalElement::clipPath
           39     => 2,     --  GraphicalElement::group
           40     => 1,     --  GraphicalElement::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Circle =>
          (30     => 5,     --  Circle::center
           38     => 3,     --  GraphicalElement::clipPath
           39     => 2,     --  GraphicalElement::group
           31     => 4,     --  Circle::radius
           40     => 1,     --  GraphicalElement::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
          (38     => 3,     --  GraphicalElement::clipPath
           32     => 4,     --  ClipPath::clippedElement
           39     => 2,     --  GraphicalElement::group
           40     => 1,     --  GraphicalElement::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Ellipse =>
          (33     => 5,     --  Ellipse::center
           38     => 3,     --  GraphicalElement::clipPath
           39     => 2,     --  GraphicalElement::group
           34     => 4,     --  Ellipse::radii
           40     => 1,     --  GraphicalElement::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Group =>
          (38     => 3,     --  GraphicalElement::clipPath
           39     => 2,     --  GraphicalElement::group
           40     => 1,     --  GraphicalElement::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Image =>
          (41     => 4,     --  Image::bounds
           38     => 3,     --  GraphicalElement::clipPath
           39     => 2,     --  GraphicalElement::group
           42     => 6,     --  Image::isAspectRatioPreserved
           43     => 5,     --  Image::source
           40     => 1,     --  GraphicalElement::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Line =>
          (38     => 3,     --  GraphicalElement::clipPath
           44     => 8,     --  Line::end
           50     => 5,     --  MarkedElement::endMarker
           39     => 2,     --  GraphicalElement::group
           51     => 6,     --  MarkedElement::midMarker
           45     => 7,     --  Line::start
           52     => 4,     --  MarkedElement::startMarker
           40     => 1,     --  GraphicalElement::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Linear_Gradient =>
          (35     => 2,     --  Fill::canvas
           37     => 3,     --  Gradient::stop
           36     => 1,     --  Fill::transform
           46     => 4,     --  LinearGradient::x1
           47     => 5,     --  LinearGradient::x2
           48     => 6,     --  LinearGradient::y1
           49     => 7,     --  LinearGradient::y2
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
          (38     => 3,     --  GraphicalElement::clipPath
           50     => 5,     --  MarkedElement::endMarker
           39     => 2,     --  GraphicalElement::group
           51     => 6,     --  MarkedElement::midMarker
           52     => 4,     --  MarkedElement::startMarker
           40     => 1,     --  GraphicalElement::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Marker =>
          (53     => 4,     --  Marker::canvas
           38     => 3,     --  GraphicalElement::clipPath
           39     => 2,     --  GraphicalElement::group
           54     => 6,     --  Marker::reference
           55     => 5,     --  Marker::size
           40     => 1,     --  GraphicalElement::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Path =>
          (38     => 3,     --  GraphicalElement::clipPath
           56     => 7,     --  Path::command
           50     => 5,     --  MarkedElement::endMarker
           39     => 2,     --  GraphicalElement::group
           51     => 6,     --  MarkedElement::midMarker
           52     => 4,     --  MarkedElement::startMarker
           40     => 1,     --  GraphicalElement::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Pattern =>
          (57     => 4,     --  Pattern::bounds
           35     => 2,     --  Fill::canvas
           58     => 3,     --  Pattern::tile
           36     => 1,     --  Fill::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
          (38     => 3,     --  GraphicalElement::clipPath
           50     => 5,     --  MarkedElement::endMarker
           39     => 2,     --  GraphicalElement::group
           51     => 6,     --  MarkedElement::midMarker
           59     => 7,     --  Polygon::point
           52     => 4,     --  MarkedElement::startMarker
           40     => 1,     --  GraphicalElement::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
          (38     => 3,     --  GraphicalElement::clipPath
           50     => 5,     --  MarkedElement::endMarker
           39     => 2,     --  GraphicalElement::group
           51     => 6,     --  MarkedElement::midMarker
           60     => 7,     --  Polyline::point
           52     => 4,     --  MarkedElement::startMarker
           40     => 1,     --  GraphicalElement::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Radial_Gradient =>
          (35     => 2,     --  Fill::canvas
           61     => 5,     --  RadialGradient::centerX
           62     => 6,     --  RadialGradient::centerY
           63     => 7,     --  RadialGradient::focusX
           64     => 8,     --  RadialGradient::focusY
           65     => 4,     --  RadialGradient::radius
           37     => 3,     --  Gradient::stop
           36     => 1,     --  Fill::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Rectangle =>
          (66     => 4,     --  Rectangle::bounds
           38     => 3,     --  GraphicalElement::clipPath
           67     => 5,     --  Rectangle::cornerRadius
           39     => 2,     --  GraphicalElement::group
           40     => 1,     --  GraphicalElement::transform
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Style =>
          (68     => 1,     --  Style::fill
           69     => 2,     --  Style::fillColor
           70     => 3,     --  Style::fillOpacity
           71     => 12,    --  Style::fontBold
           72     => 10,    --  Style::fontColor
           73     => 11,    --  Style::fontItalic
           74     => 9,     --  Style::fontName
           75     => 8,     --  Style::fontSize
           76     => 14,    --  Style::fontStrikeThrough
           77     => 13,    --  Style::fontUnderline
           78     => 6,     --  Style::strokeColor
           79     => 7,     --  Style::strokeDashLength
           80     => 5,     --  Style::strokeOpacity
           81     => 4,     --  Style::strokeWidth
           others => 0),
         AMF.Internals.Tables.DD_Types.E_DG_Text =>
          (82     => 6,     --  Text::alignment
           83     => 4,     --  Text::bounds
           38     => 3,     --  GraphicalElement::clipPath
           84     => 5,     --  Text::data
           39     => 2,     --  GraphicalElement::group
           40     => 1,     --  GraphicalElement::transform
           others => 0));

end AMF.Internals.Tables.DD_Attribute_Mappings;
