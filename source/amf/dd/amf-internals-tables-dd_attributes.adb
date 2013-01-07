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
with AMF.Internals.Links;
with AMF.Internals.Tables.DC_Notification;
with AMF.Internals.Tables.DD_Element_Table;
with AMF.Internals.Tables.DD_Types;
with AMF.Internals.Tables.DG_Metamodel;

package body AMF.Internals.Tables.DD_Attributes is

   use type Matreshka.Internals.Strings.Shared_String_Access;

   --  Canvas
   --
   --     5  Canvas::backgroundColor
   --     4  Canvas::backgroundFill
   --     3  GraphicalElement::clipPath
   --     2  GraphicalElement::group
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     3  Group::member
   --     4  Canvas::packagedFill
   --     5  Canvas::packagedMarker
   --     6  Canvas::packagedStyle
   --     2  GraphicalElement::sharedStyle

   --  Circle
   --
   --     5  Circle::center
   --     3  GraphicalElement::clipPath
   --     2  GraphicalElement::group
   --     4  Circle::radius
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     2  GraphicalElement::sharedStyle

   --  ClipPath
   --
   --     3  GraphicalElement::clipPath
   --     4  ClipPath::clippedElement
   --     2  GraphicalElement::group
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     3  Group::member
   --     2  GraphicalElement::sharedStyle

   --  Ellipse
   --
   --     5  Ellipse::center
   --     3  GraphicalElement::clipPath
   --     2  GraphicalElement::group
   --     4  Ellipse::radii
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     2  GraphicalElement::sharedStyle

   --  Group
   --
   --     3  GraphicalElement::clipPath
   --     2  GraphicalElement::group
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     3  Group::member
   --     2  GraphicalElement::sharedStyle

   --  Image
   --
   --     4  Image::bounds
   --     3  GraphicalElement::clipPath
   --     2  GraphicalElement::group
   --     6  Image::isAspectRatioPreserved
   --     5  Image::source
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     2  GraphicalElement::sharedStyle

   --  Line
   --
   --     3  GraphicalElement::clipPath
   --     8  Line::end
   --     5  MarkedElement::endMarker
   --     2  GraphicalElement::group
   --     6  MarkedElement::midMarker
   --     7  Line::start
   --     4  MarkedElement::startMarker
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     2  GraphicalElement::sharedStyle

   --  LinearGradient
   --
   --     2  Fill::canvas
   --     3  Gradient::stop
   --     1  Fill::transform
   --     4  LinearGradient::x1
   --     5  LinearGradient::x2
   --     6  LinearGradient::y1
   --     7  LinearGradient::y2
   --

   --  MarkedElement
   --
   --     3  GraphicalElement::clipPath
   --     5  MarkedElement::endMarker
   --     2  GraphicalElement::group
   --     6  MarkedElement::midMarker
   --     4  MarkedElement::startMarker
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     2  GraphicalElement::sharedStyle

   --  Marker
   --
   --     4  Marker::canvas
   --     3  GraphicalElement::clipPath
   --     2  GraphicalElement::group
   --     6  Marker::reference
   --     5  Marker::size
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     3  Group::member
   --     2  GraphicalElement::sharedStyle

   --  Path
   --
   --     3  GraphicalElement::clipPath
   --     7  Path::command
   --     5  MarkedElement::endMarker
   --     2  GraphicalElement::group
   --     6  MarkedElement::midMarker
   --     4  MarkedElement::startMarker
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     2  GraphicalElement::sharedStyle

   --  Pattern
   --
   --     4  Pattern::bounds
   --     2  Fill::canvas
   --     3  Pattern::tile
   --     1  Fill::transform
   --

   --  Polygon
   --
   --     3  GraphicalElement::clipPath
   --     5  MarkedElement::endMarker
   --     2  GraphicalElement::group
   --     6  MarkedElement::midMarker
   --     7  Polygon::point
   --     4  MarkedElement::startMarker
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     2  GraphicalElement::sharedStyle

   --  Polyline
   --
   --     3  GraphicalElement::clipPath
   --     5  MarkedElement::endMarker
   --     2  GraphicalElement::group
   --     6  MarkedElement::midMarker
   --     7  Polyline::point
   --     4  MarkedElement::startMarker
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     2  GraphicalElement::sharedStyle

   --  RadialGradient
   --
   --     2  Fill::canvas
   --     5  RadialGradient::centerX
   --     6  RadialGradient::centerY
   --     7  RadialGradient::focusX
   --     8  RadialGradient::focusY
   --     4  RadialGradient::radius
   --     3  Gradient::stop
   --     1  Fill::transform
   --

   --  Rectangle
   --
   --     4  Rectangle::bounds
   --     3  GraphicalElement::clipPath
   --     5  Rectangle::cornerRadius
   --     2  GraphicalElement::group
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     2  GraphicalElement::sharedStyle

   --  Style
   --
   --     1  Style::fill
   --     2  Style::fillColor
   --     3  Style::fillOpacity
   --     12  Style::fontBold
   --     10  Style::fontColor
   --     11  Style::fontItalic
   --     9  Style::fontName
   --     8  Style::fontSize
   --     14  Style::fontStrikeThrough
   --     13  Style::fontUnderline
   --     6  Style::strokeColor
   --     7  Style::strokeDashLength
   --     5  Style::strokeOpacity
   --     4  Style::strokeWidth
   --

   --  Text
   --
   --     6  Text::alignment
   --     4  Text::bounds
   --     3  GraphicalElement::clipPath
   --     5  Text::data
   --     2  GraphicalElement::group
   --     1  GraphicalElement::transform
   --
   --     1  GraphicalElement::localStyle
   --     2  GraphicalElement::sharedStyle

   ----------------------------
   -- Internal_Get_Alignment --
   ----------------------------

   function Internal_Get_Alignment
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Alignment_Kind is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Alignment_Kind_Value;
   end Internal_Get_Alignment;

   -----------------------------------
   -- Internal_Get_Background_Color --
   -----------------------------------

   function Internal_Get_Background_Color
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.Optional_DC_Color is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Color_Holder;
   end Internal_Get_Background_Color;

   ----------------------------------
   -- Internal_Get_Background_Fill --
   ----------------------------------

   function Internal_Get_Background_Fill
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Link, Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Background_Fill;

   -------------------------
   -- Internal_Get_Bounds --
   -------------------------

   function Internal_Get_Bounds
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Bounds is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Bounds_Value;
   end Internal_Get_Bounds;

   -------------------------
   -- Internal_Get_Canvas --
   -------------------------

   function Internal_Get_Canvas
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Linear_Gradient =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Marker =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Pattern =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Radial_Gradient =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Canvas;

   -------------------------
   -- Internal_Get_Center --
   -------------------------

   function Internal_Get_Center
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Point is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Point_Value;
   end Internal_Get_Center;

   ---------------------------
   -- Internal_Get_Center_X --
   ---------------------------

   function Internal_Get_Center_X
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Real_Value;
   end Internal_Get_Center_X;

   ---------------------------
   -- Internal_Get_Center_Y --
   ---------------------------

   function Internal_Get_Center_Y
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Real_Value;
   end Internal_Get_Center_Y;

   ----------------------------
   -- Internal_Get_Clip_Path --
   ----------------------------

   function Internal_Get_Clip_Path
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Circle =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Ellipse =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Group =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Image =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Marker =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Rectangle =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Text =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Clip_Path;

   ----------------------------------
   -- Internal_Get_Clipped_Element --
   ----------------------------------

   function Internal_Get_Clipped_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Link, Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Clipped_Element;

   --------------------------
   -- Internal_Get_Command --
   --------------------------

   function Internal_Get_Command
    (Self : AMF.Internals.AMF_Element)
       return AMF.DG.Sequence_Of_Path_Command is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (7).Path_Collection;
   end Internal_Get_Command;

   --------------------------------
   -- Internal_Get_Corner_Radius --
   --------------------------------

   function Internal_Get_Corner_Radius
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Real_Value;
   end Internal_Get_Corner_Radius;

   -----------------------
   -- Internal_Get_Data --
   -----------------------

   function Internal_Get_Data
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).String_Value;
   end Internal_Get_Data;

   ----------------------
   -- Internal_Get_End --
   ----------------------

   function Internal_Get_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Point is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (8).Point_Value;
   end Internal_Get_End;

   -----------------------------
   -- Internal_Get_End_Marker --
   -----------------------------

   function Internal_Get_End_Marker
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Link, Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_End_Marker;

   -----------------------
   -- Internal_Get_Fill --
   -----------------------

   function Internal_Get_Fill
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Style =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (1).Link, Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Fill;

   -----------------------------
   -- Internal_Get_Fill_Color --
   -----------------------------

   function Internal_Get_Fill_Color
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.Optional_DC_Color is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Color_Holder;
   end Internal_Get_Fill_Color;

   -------------------------------
   -- Internal_Get_Fill_Opacity --
   -------------------------------

   function Internal_Get_Fill_Opacity
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Real_Holder;
   end Internal_Get_Fill_Opacity;

   --------------------------
   -- Internal_Get_Focus_X --
   --------------------------

   function Internal_Get_Focus_X
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (7).Real_Value;
   end Internal_Get_Focus_X;

   --------------------------
   -- Internal_Get_Focus_Y --
   --------------------------

   function Internal_Get_Focus_Y
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (8).Real_Value;
   end Internal_Get_Focus_Y;

   ----------------------------
   -- Internal_Get_Font_Bold --
   ----------------------------

   function Internal_Get_Font_Bold
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Boolean is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (12).Boolean_Holder;
   end Internal_Get_Font_Bold;

   -----------------------------
   -- Internal_Get_Font_Color --
   -----------------------------

   function Internal_Get_Font_Color
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.Optional_DC_Color is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (10).Color_Holder;
   end Internal_Get_Font_Color;

   ------------------------------
   -- Internal_Get_Font_Italic --
   ------------------------------

   function Internal_Get_Font_Italic
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Boolean is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (11).Boolean_Holder;
   end Internal_Get_Font_Italic;

   ----------------------------
   -- Internal_Get_Font_Name --
   ----------------------------

   function Internal_Get_Font_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (9).String_Value;
   end Internal_Get_Font_Name;

   ----------------------------
   -- Internal_Get_Font_Size --
   ----------------------------

   function Internal_Get_Font_Size
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (8).Real_Holder;
   end Internal_Get_Font_Size;

   --------------------------------------
   -- Internal_Get_Font_Strike_Through --
   --------------------------------------

   function Internal_Get_Font_Strike_Through
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Boolean is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (14).Boolean_Holder;
   end Internal_Get_Font_Strike_Through;

   ---------------------------------
   -- Internal_Get_Font_Underline --
   ---------------------------------

   function Internal_Get_Font_Underline
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Boolean is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (13).Boolean_Holder;
   end Internal_Get_Font_Underline;

   ------------------------
   -- Internal_Get_Group --
   ------------------------

   function Internal_Get_Group
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Circle =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Ellipse =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Group =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Image =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Marker =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Rectangle =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Text =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Link, Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Group;

   --------------------------------------------
   -- Internal_Get_Is_Aspect_Ratio_Preserved --
   --------------------------------------------

   function Internal_Get_Is_Aspect_Ratio_Preserved
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Boolean_Value;
   end Internal_Get_Is_Aspect_Ratio_Preserved;

   ------------------------------
   -- Internal_Get_Local_Style --
   ------------------------------

   function Internal_Get_Local_Style
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when AMF.Internals.Tables.DD_Types.E_DG_Circle =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when AMF.Internals.Tables.DD_Types.E_DG_Ellipse =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when AMF.Internals.Tables.DD_Types.E_DG_Group =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when AMF.Internals.Tables.DD_Types.E_DG_Image =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when AMF.Internals.Tables.DD_Types.E_DG_Marker =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when AMF.Internals.Tables.DD_Types.E_DG_Rectangle =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when AMF.Internals.Tables.DD_Types.E_DG_Text =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 1;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Local_Style;

   -------------------------
   -- Internal_Get_Member --
   -------------------------

   function Internal_Get_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 3;

         when AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 3;

         when AMF.Internals.Tables.DD_Types.E_DG_Group =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 3;

         when AMF.Internals.Tables.DD_Types.E_DG_Marker =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 3;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Member;

   -----------------------------
   -- Internal_Get_Mid_Marker --
   -----------------------------

   function Internal_Get_Mid_Marker
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Link, Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Mid_Marker;

   --------------------------------
   -- Internal_Get_Packaged_Fill --
   --------------------------------

   function Internal_Get_Packaged_Fill
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 4;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Packaged_Fill;

   ----------------------------------
   -- Internal_Get_Packaged_Marker --
   ----------------------------------

   function Internal_Get_Packaged_Marker
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 5;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Packaged_Marker;

   ---------------------------------
   -- Internal_Get_Packaged_Style --
   ---------------------------------

   function Internal_Get_Packaged_Style
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 6;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Packaged_Style;

   ------------------------
   -- Internal_Get_Point --
   ------------------------

   function Internal_Get_Point
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.Sequence_Of_DC_Point is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (7).Point_Collection;
   end Internal_Get_Point;

   ------------------------
   -- Internal_Get_Radii --
   ------------------------

   function Internal_Get_Radii
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Dimension is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Dimension_Value;
   end Internal_Get_Radii;

   -------------------------
   -- Internal_Get_Radius --
   -------------------------

   function Internal_Get_Radius
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Real_Value;
   end Internal_Get_Radius;

   ----------------------------
   -- Internal_Get_Reference --
   ----------------------------

   function Internal_Get_Reference
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Point is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Point_Value;
   end Internal_Get_Reference;

   -------------------------------
   -- Internal_Get_Shared_Style --
   -------------------------------

   function Internal_Get_Shared_Style
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when AMF.Internals.Tables.DD_Types.E_DG_Circle =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when AMF.Internals.Tables.DD_Types.E_DG_Ellipse =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when AMF.Internals.Tables.DD_Types.E_DG_Group =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when AMF.Internals.Tables.DD_Types.E_DG_Image =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when AMF.Internals.Tables.DD_Types.E_DG_Marker =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when AMF.Internals.Tables.DD_Types.E_DG_Rectangle =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when AMF.Internals.Tables.DD_Types.E_DG_Text =>
            return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (0).Collection + 2;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Shared_Style;

   -----------------------
   -- Internal_Get_Size --
   -----------------------

   function Internal_Get_Size
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Dimension is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Dimension_Value;
   end Internal_Get_Size;

   -------------------------
   -- Internal_Get_Source --
   -------------------------

   function Internal_Get_Source
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).String_Value;
   end Internal_Get_Source;

   ------------------------
   -- Internal_Get_Start --
   ------------------------

   function Internal_Get_Start
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.DC_Point is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (7).Point_Value;
   end Internal_Get_Start;

   -------------------------------
   -- Internal_Get_Start_Marker --
   -------------------------------

   function Internal_Get_Start_Marker
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Link, Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Link, Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Start_Marker;

   -----------------------
   -- Internal_Get_Stop --
   -----------------------

   function Internal_Get_Stop
    (Self : AMF.Internals.AMF_Element)
       return AMF.DG.Set_Of_DG_Gradient_Stop is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Gradient_Collection;
   end Internal_Get_Stop;

   -------------------------------
   -- Internal_Get_Stroke_Color --
   -------------------------------

   function Internal_Get_Stroke_Color
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.Optional_DC_Color is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Color_Holder;
   end Internal_Get_Stroke_Color;

   -------------------------------------
   -- Internal_Get_Stroke_Dash_Length --
   -------------------------------------

   function Internal_Get_Stroke_Dash_Length
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real_Collections.Sequence_Of_Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (7).Real_Collection;
   end Internal_Get_Stroke_Dash_Length;

   ---------------------------------
   -- Internal_Get_Stroke_Opacity --
   ---------------------------------

   function Internal_Get_Stroke_Opacity
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Real_Holder;
   end Internal_Get_Stroke_Opacity;

   -------------------------------
   -- Internal_Get_Stroke_Width --
   -------------------------------

   function Internal_Get_Stroke_Width
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Real_Holder;
   end Internal_Get_Stroke_Width;

   -----------------------
   -- Internal_Get_Tile --
   -----------------------

   function Internal_Get_Tile
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Pattern =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Link, Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Tile;

   ----------------------------
   -- Internal_Get_Transform --
   ----------------------------

   function Internal_Get_Transform
    (Self : AMF.Internals.AMF_Element)
       return AMF.DG.Sequence_Of_DG_Transform is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (1).Transform_Collection;
   end Internal_Get_Transform;

   ---------------------
   -- Internal_Get_X1 --
   ---------------------

   function Internal_Get_X1
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Real_Value;
   end Internal_Get_X1;

   ---------------------
   -- Internal_Get_X2 --
   ---------------------

   function Internal_Get_X2
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Real_Value;
   end Internal_Get_X2;

   ---------------------
   -- Internal_Get_Y1 --
   ---------------------

   function Internal_Get_Y1
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Real_Value;
   end Internal_Get_Y1;

   ---------------------
   -- Internal_Get_Y2 --
   ---------------------

   function Internal_Get_Y2
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real is
   begin
      return AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (7).Real_Value;
   end Internal_Get_Y2;

   ----------------------------
   -- Internal_Set_Alignment --
   ----------------------------

   procedure Internal_Set_Alignment
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Alignment_Kind)
   is
      Old : AMF.DC.DC_Alignment_Kind;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Alignment_Kind_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Alignment_Kind_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Text_Alignment, Old, To);
   end Internal_Set_Alignment;

   -----------------------------------
   -- Internal_Set_Background_Color --
   -----------------------------------

   procedure Internal_Set_Background_Color
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.Optional_DC_Color)
   is
      Old : AMF.DC.Optional_DC_Color;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Color_Holder;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Color_Holder := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Canvas_Background_Color, Old, To);
   end Internal_Set_Background_Color;

   ----------------------------------
   -- Internal_Set_Background_Fill --
   ----------------------------------

   procedure Internal_Set_Background_Fill
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Canvas_Background_Fill_Canvas,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Background_Fill;

   -------------------------
   -- Internal_Set_Bounds --
   -------------------------

   procedure Internal_Set_Bounds
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Bounds)
   is
      Old : AMF.DC.DC_Bounds;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Bounds_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Bounds_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Image_Bounds, Old, To);
   end Internal_Set_Bounds;

   -------------------------
   -- Internal_Set_Canvas --
   -------------------------

   procedure Internal_Set_Canvas
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Linear_Gradient =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Canvas_Packaged_Fill_Canvas,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Marker =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Canvas_Packaged_Marker_Canvas,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Pattern =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Canvas_Packaged_Fill_Canvas,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Radial_Gradient =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Canvas_Packaged_Fill_Canvas,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Canvas;

   -------------------------
   -- Internal_Set_Center --
   -------------------------

   procedure Internal_Set_Center
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Point)
   is
      Old : AMF.DC.DC_Point;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Point_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Point_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Circle_Center, Old, To);
   end Internal_Set_Center;

   ---------------------------
   -- Internal_Set_Center_X --
   ---------------------------

   procedure Internal_Set_Center_X
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real)
   is
      Old : AMF.Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Real_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Real_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Center_X, Old, To);
   end Internal_Set_Center_X;

   ---------------------------
   -- Internal_Set_Center_Y --
   ---------------------------

   procedure Internal_Set_Center_Y
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real)
   is
      Old : AMF.Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Real_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Real_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Center_Y, Old, To);
   end Internal_Set_Center_Y;

   ----------------------------
   -- Internal_Set_Clip_Path --
   ----------------------------

   procedure Internal_Set_Clip_Path
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Circle =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Ellipse =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Group =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Image =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Marker =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Rectangle =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Text =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Clip_Path;

   ----------------------------------
   -- Internal_Set_Clipped_Element --
   ----------------------------------

   procedure Internal_Set_Clipped_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Graphical_Element_Clip_Path_Clipped_Element,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Clipped_Element;

   --------------------------------
   -- Internal_Set_Corner_Radius --
   --------------------------------

   procedure Internal_Set_Corner_Radius
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real)
   is
      Old : AMF.Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Real_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Real_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Rectangle_Corner_Radius, Old, To);
   end Internal_Set_Corner_Radius;

   -----------------------
   -- Internal_Set_Data --
   -----------------------

   procedure Internal_Set_Data
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old :=
        AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).String_Value;

      DD_Element_Table.Table (Self).Member (5).String_Value := To;
      Matreshka.Internals.Strings.Reference
       (DD_Element_Table.Table (Self).Member (5).String_Value);

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Text_Data, Old, To);
      Matreshka.Internals.Strings.Dereference (Old);
   end Internal_Set_Data;

   ----------------------
   -- Internal_Set_End --
   ----------------------

   procedure Internal_Set_End
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Point)
   is
      Old : AMF.DC.DC_Point;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (8).Point_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (8).Point_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Line_End, Old, To);
   end Internal_Set_End;

   -----------------------------
   -- Internal_Set_End_Marker --
   -----------------------------

   procedure Internal_Set_End_Marker
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_End_Marker_Marked_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_End_Marker_Marked_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_End_Marker_Marked_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_End_Marker_Marked_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_End_Marker_Marked_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_End_Marker;

   -----------------------
   -- Internal_Set_Fill --
   -----------------------

   procedure Internal_Set_Fill
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Style =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Style_Fill_Style,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Fill;

   -----------------------------
   -- Internal_Set_Fill_Color --
   -----------------------------

   procedure Internal_Set_Fill_Color
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.Optional_DC_Color)
   is
      Old : AMF.DC.Optional_DC_Color;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Color_Holder;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (2).Color_Holder := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Fill_Color, Old, To);
   end Internal_Set_Fill_Color;

   -------------------------------
   -- Internal_Set_Fill_Opacity --
   -------------------------------

   procedure Internal_Set_Fill_Opacity
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Real)
   is
      Old : AMF.Optional_Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Real_Holder;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (3).Real_Holder := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Fill_Opacity, Old, To);
   end Internal_Set_Fill_Opacity;

   --------------------------
   -- Internal_Set_Focus_X --
   --------------------------

   procedure Internal_Set_Focus_X
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real)
   is
      Old : AMF.Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (7).Real_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (7).Real_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Focus_X, Old, To);
   end Internal_Set_Focus_X;

   --------------------------
   -- Internal_Set_Focus_Y --
   --------------------------

   procedure Internal_Set_Focus_Y
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real)
   is
      Old : AMF.Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (8).Real_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (8).Real_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Radial_Gradient_Focus_Y, Old, To);
   end Internal_Set_Focus_Y;

   ----------------------------
   -- Internal_Set_Font_Bold --
   ----------------------------

   procedure Internal_Set_Font_Bold
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Boolean)
   is
      Old : AMF.Optional_Boolean;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (12).Boolean_Holder;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (12).Boolean_Holder := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Bold, Old, To);
   end Internal_Set_Font_Bold;

   -----------------------------
   -- Internal_Set_Font_Color --
   -----------------------------

   procedure Internal_Set_Font_Color
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.Optional_DC_Color)
   is
      Old : AMF.DC.Optional_DC_Color;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (10).Color_Holder;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (10).Color_Holder := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Color, Old, To);
   end Internal_Set_Font_Color;

   ------------------------------
   -- Internal_Set_Font_Italic --
   ------------------------------

   procedure Internal_Set_Font_Italic
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Boolean)
   is
      Old : AMF.Optional_Boolean;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (11).Boolean_Holder;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (11).Boolean_Holder := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Italic, Old, To);
   end Internal_Set_Font_Italic;

   ----------------------------
   -- Internal_Set_Font_Name --
   ----------------------------

   procedure Internal_Set_Font_Name
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (9).String_Value;

      DD_Element_Table.Table (Self).Member (9).String_Value := To;

      if DD_Element_Table.Table (Self).Member (9).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (DD_Element_Table.Table (Self).Member (9).String_Value);
      end if;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Name, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Font_Name;

   ----------------------------
   -- Internal_Set_Font_Size --
   ----------------------------

   procedure Internal_Set_Font_Size
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Real)
   is
      Old : AMF.Optional_Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (8).Real_Holder;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (8).Real_Holder := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Size, Old, To);
   end Internal_Set_Font_Size;

   --------------------------------------
   -- Internal_Set_Font_Strike_Through --
   --------------------------------------

   procedure Internal_Set_Font_Strike_Through
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Boolean)
   is
      Old : AMF.Optional_Boolean;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (14).Boolean_Holder;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (14).Boolean_Holder := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Strike_Through, Old, To);
   end Internal_Set_Font_Strike_Through;

   ---------------------------------
   -- Internal_Set_Font_Underline --
   ---------------------------------

   procedure Internal_Set_Font_Underline
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Boolean)
   is
      Old : AMF.Optional_Boolean;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (13).Boolean_Holder;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (13).Boolean_Holder := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Font_Underline, Old, To);
   end Internal_Set_Font_Underline;

   ------------------------
   -- Internal_Set_Group --
   ------------------------

   procedure Internal_Set_Group
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Canvas =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Circle =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Clip_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Ellipse =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Group =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Image =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Marker =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Rectangle =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when AMF.Internals.Tables.DD_Types.E_DG_Text =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Group_Member_Group,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Group;

   --------------------------------------------
   -- Internal_Set_Is_Aspect_Ratio_Preserved --
   --------------------------------------------

   procedure Internal_Set_Is_Aspect_Ratio_Preserved
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Boolean_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Boolean_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Image_Is_Aspect_Ratio_Preserved, Old, To);
   end Internal_Set_Is_Aspect_Ratio_Preserved;

   -----------------------------
   -- Internal_Set_Mid_Marker --
   -----------------------------

   procedure Internal_Set_Mid_Marker
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_Mid_Marker_Marked_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_Mid_Marker_Marked_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_Mid_Marker_Marked_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_Mid_Marker_Marked_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_Mid_Marker_Marked_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Mid_Marker;

   ------------------------
   -- Internal_Set_Radii --
   ------------------------

   procedure Internal_Set_Radii
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Dimension)
   is
      Old : AMF.DC.DC_Dimension;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Dimension_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Dimension_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Ellipse_Radii, Old, To);
   end Internal_Set_Radii;

   -------------------------
   -- Internal_Set_Radius --
   -------------------------

   procedure Internal_Set_Radius
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real)
   is
      Old : AMF.Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Real_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Real_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Circle_Radius, Old, To);
   end Internal_Set_Radius;

   ----------------------------
   -- Internal_Set_Reference --
   ----------------------------

   procedure Internal_Set_Reference
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Point)
   is
      Old : AMF.DC.DC_Point;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Point_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Point_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Marker_Reference, Old, To);
   end Internal_Set_Reference;

   -----------------------
   -- Internal_Set_Size --
   -----------------------

   procedure Internal_Set_Size
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Dimension)
   is
      Old : AMF.DC.DC_Dimension;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Dimension_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Dimension_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Marker_Size, Old, To);
   end Internal_Set_Size;

   -------------------------
   -- Internal_Set_Source --
   -------------------------

   procedure Internal_Set_Source
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old :=
        AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).String_Value;

      DD_Element_Table.Table (Self).Member (5).String_Value := To;
      Matreshka.Internals.Strings.Reference
       (DD_Element_Table.Table (Self).Member (5).String_Value);

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Image_Source, Old, To);
      Matreshka.Internals.Strings.Dereference (Old);
   end Internal_Set_Source;

   ------------------------
   -- Internal_Set_Start --
   ------------------------

   procedure Internal_Set_Start
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.DC_Point)
   is
      Old : AMF.DC.DC_Point;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (7).Point_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (7).Point_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Line_Start, Old, To);
   end Internal_Set_Start;

   -------------------------------
   -- Internal_Set_Start_Marker --
   -------------------------------

   procedure Internal_Set_Start_Marker
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Line =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_Start_Marker_Marked_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Marked_Element =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_Start_Marker_Marked_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_Start_Marker_Marked_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Polygon =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_Start_Marker_Marked_Element,
              Self,
              To);

         when AMF.Internals.Tables.DD_Types.E_DG_Polyline =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Marked_Element_Start_Marker_Marked_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Start_Marker;

   -------------------------------
   -- Internal_Set_Stroke_Color --
   -------------------------------

   procedure Internal_Set_Stroke_Color
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.Optional_DC_Color)
   is
      Old : AMF.DC.Optional_DC_Color;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Color_Holder;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Color_Holder := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Stroke_Color, Old, To);
   end Internal_Set_Stroke_Color;

   ---------------------------------
   -- Internal_Set_Stroke_Opacity --
   ---------------------------------

   procedure Internal_Set_Stroke_Opacity
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Real)
   is
      Old : AMF.Optional_Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Real_Holder;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Real_Holder := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Stroke_Opacity, Old, To);
   end Internal_Set_Stroke_Opacity;

   -------------------------------
   -- Internal_Set_Stroke_Width --
   -------------------------------

   procedure Internal_Set_Stroke_Width
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Real)
   is
      Old : AMF.Optional_Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Real_Holder;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Real_Holder := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Style_Stroke_Width, Old, To);
   end Internal_Set_Stroke_Width;

   -----------------------
   -- Internal_Set_Tile --
   -----------------------

   procedure Internal_Set_Tile
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.DD_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.DD_Types.E_DG_Pattern =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.DG_Metamodel.MA_DG_Pattern_Tile_Pattern,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Tile;

   ---------------------
   -- Internal_Set_X1 --
   ---------------------

   procedure Internal_Set_X1
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real)
   is
      Old : AMF.Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Real_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (4).Real_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Linear_Gradient_X1, Old, To);
   end Internal_Set_X1;

   ---------------------
   -- Internal_Set_X2 --
   ---------------------

   procedure Internal_Set_X2
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real)
   is
      Old : AMF.Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Real_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (5).Real_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Linear_Gradient_X2, Old, To);
   end Internal_Set_X2;

   ---------------------
   -- Internal_Set_Y1 --
   ---------------------

   procedure Internal_Set_Y1
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real)
   is
      Old : AMF.Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Real_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (6).Real_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Linear_Gradient_Y1, Old, To);
   end Internal_Set_Y1;

   ---------------------
   -- Internal_Set_Y2 --
   ---------------------

   procedure Internal_Set_Y2
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real)
   is
      Old : AMF.Real;

   begin
      Old := AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (7).Real_Value;
      AMF.Internals.Tables.DD_Element_Table.Table (Self).Member (7).Real_Value := To;

      AMF.Internals.Tables.DC_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.DG_Metamodel.MP_DG_Linear_Gradient_Y2, Old, To);
   end Internal_Set_Y2;

end AMF.Internals.Tables.DD_Attributes;
